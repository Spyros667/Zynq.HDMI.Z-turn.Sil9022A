#include <stdio.h>
#include "xil_printf.h"

#include "xparameters.h"
#include "xiic.h"
#include "xgpiops.h"
#include "xil_exception.h"
#include "xinterrupt_wrap.h"
#include "sleep.h"

#include <cstdint>
#include <vector>

#include "Sil9022A.h"

using namespace std;

Sil9022A::Sil9022A ()
{
	raise_RESETn();
	write({0xC7, 0x00});	// Enable TPI (first thing after RESET)
}

void Sil9022A::write (const vector<uint8_t>& v)
{
	uint32_t bytes_written;
	bytes_written = XIic_Send(XIIC_BASEADDRESS, SLAVE_ADDRESS, const_cast<uint8_t*>(v.data()), v.size(), XIIC_STOP);	// Is this ugly, or is it just me!?
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
