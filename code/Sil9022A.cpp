#include "Sil9022A.h"

extern "C"
{
	#include "xiic.h"		// XIic_Send(), XIic_Recv()
	#include "xgpiops.h"	// XGpioPs
	#include "sleep.h"		// usleep()
}

#include <cstdio>	// printf()
#include <cstdint>	// uint8_t
#include <vector>	// vector

using namespace std;

Sil9022A::Sil9022A (void)
{
	vector<uint8_t> vtmp;

	raise_RESETn();

	// ================================================
	//  Enable TPI (Transmitter Programming Interface)
	//  Should be done right after RESET
	// ================================================
	write({0xC7, 0x00});	// Enable TPI (first thing after RESET)

	// ======================================================================================
	//  Wait for ID to stabilize. ID should be 0xB00203 (in addition to a reading from 0x30)
	// ======================================================================================
	do
	{
		vtmp = read(0x1B, 3);
	} while (vtmp[0] != 0xB0 or vtmp[1] != 0x02 or vtmp[2] != 0x03);

	// ==============================================
	//  Change [power] state, from D2 to D0 (active)
	// ==============================================

	//sil.write({0x1A, 0x10});	// Disable TMDS output (default)
	write({0x1E, 0x00});	// Change mode (D2 -> D0)
	//write({0x1A, 0x00});	// Enable TMDS output (DVI version)
	write({0x1A, 0x01});	// Enable TMDS output (HDMI version TODO does this matter? HDMI only? includes audio!)

	// =============================================================================================
	//  Enable transmitter source termination (this may not be needed, depending? on the schematic)
	// =============================================================================================
	write({0xBC, 0x01, 0x82});
	vtmp = read(0xBE, 1);
	vtmp[0] |= 0x01;
	write({0xBE, vtmp[0]});
}

void Sil9022A::write (const vector<uint8_t>& v)
{
	uint32_t bytes_written;
	bytes_written = XIic_Send(XIIC_BASEADDRESS, SLAVE_ADDRESS, const_cast<uint8_t*>(v.data()), v.size(), XIIC_STOP);	// Is the const_cast ugly, or is it just me!?
	if (bytes_written != v.size())
	{
		printf("%s:%d\r\n", __FILE__, __LINE__);
	}
}

vector<uint8_t> Sil9022A::read (const vector<uint8_t>& v, const uint32_t& size)
{
	// Send register address [first]
	// -
	write(v);

	// Read from register address
	// -
	vector<uint8_t> result(size);
	uint32_t bytes_read;
	bytes_read = XIic_Recv(XIIC_BASEADDRESS, SLAVE_ADDRESS, result.data(), result.capacity(), XIIC_STOP);
	if (bytes_read != result.capacity())
	{
		printf("%s:%d\r\n", __FILE__, __LINE__);
	}

	// [Debug]
	// -
	print_vec(v[0], result);
	
	return result;
}

XGpioPs Sil9022A::XGpioPs_init (void) const
{
	XGpioPs Gpio;
	XGpioPs_Config* ConfigPtr;
	int Status;

	ConfigPtr = XGpioPs_LookupConfig(XGPIOPS_BASEADDR);
	if (ConfigPtr == NULL)
	{
		printf("ERROR %d\r\n", __LINE__);
	}

	Status = XGpioPs_CfgInitialize(&Gpio, ConfigPtr, ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS)
	{
		printf("ERROR %d %d\r\n", __LINE__, Status);
	}

	return Gpio;
}

void Sil9022A::raise_RESETn (void) const
{
	auto Gpio = XGpioPs_init();
	XGpioPs_SetDirectionPin(&Gpio, Sil9022A_RESETn_pin, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, Sil9022A_RESETn_pin, 1);

	XGpioPs_WritePin(&Gpio, Sil9022A_RESETn_pin, 1);
}

void Sil9022A::wait (void) const
{
	usleep(1e3);
}

void Sil9022A::print_vec (const vector<uint8_t>& v) const
{
	for (const auto& byte: v)
	{
		printf("%02x ", byte);
	}
	printf("\r\n");
}

void Sil9022A::print_vec (const uint8_t& reg, const vector<uint8_t>& v) const
{
	printf("%02Xh: ", reg);
	print_vec(v);
}
