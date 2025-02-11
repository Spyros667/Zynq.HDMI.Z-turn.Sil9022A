/**
* This file consists of a interrupt mode design example to demonstrate the use
* of repeated start using the XIic driver.
*
* The XIic_MasterSend() API is used to transmit the data and XIic_MasterRecv()
* API is used to receive the data.
*
* The IIC devices that are present on the Xilinx boards do not support the
* repeated start option. These examples have been tested with an IIC
* device external to the boards.
*
******************************************************************************/

/***************************** Include Files *********************************/

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "xparameters.h"
#include "xiic.h"
#include "xgpiops.h"
#include "xil_exception.h"
#include "xinterrupt_wrap.h"
#include "sleep.h"

#include <cstdint>
#include <vector>

using namespace std;

#include "Sil9022A.h"

int main()
{
	init_platform();

	print("Hello World\r\n");

	// Initialize
	//	Drop reset
	//	Enable TPI
	//	Enable source termination
	// -
	Sil9022A sil;
	vector<uint8_t> tmp;

	// Verify ID (0xB00203)
	// -
	do
	{
		tmp = sil.read({0x1B}, 3);
		fflush(stdout);
	} while (tmp[0] != 0xB0 or tmp[1] != 0x02 or tmp[2] != 0x03);
	
	// Enable source termination
	// -
	sil.write({0xBC, 0x01, 0x82});
	tmp = sil.read({0xBE}, 1);
	tmp[0] |= 0x01;
	sil.write({0xBE, tmp[0]});

	//sil.write({0x1A, 0x00});
	
	//do
	//{
		//tmp = sil.read({0x1A}, 1);
		//usleep(100e3);
	//} while (tmp[0] != 0x01);

	//sil.write({0x3C, 0x00});
	//sil.write({0x3D, 0xFF});
	//sil.write({0x40, 0xC0});

	sil.write({0x1A, 0x10});
	//sil.write({0x60, 0x04});
	//sil.write({0x63, 0x30});
	//sil.read({0x60}, 1);

	// Enable active mode
	// -
	sil.write({0x1E, 0x00});

	// Set display parameters
	// -
	//sil.write({
		//0x00,
		//0xE4, 0x3E,
			//0x70, 0x17,
		//0x3C, 0x00,
		//0x40, 0x06,
		//0xB0, 0x04,
		//0x70,
		//0x00,
		//0x00,
	//});

	sil.write({0x1A, 0x00});
	sil.read({0x1A}, 1);

	while (true)
	{
		sil.read({0x3D}, 3);
		sil.read({0x3E}, 2);
		sil.read({0x3F}, 1);
		//sil.write({0x3C, 0xFF});
		//sil.write({0x40, 0xC0});
		sil.read({0x40}, 1);
		sil.read({0x1E}, 1);
		sil.read({0x61}, 1);
		//sil.write({0x3D, 0xFF});
		usleep(1.3e6);
		//printf("resetting..\r\n");
		//sil.write({0x40, 0x01});
		//usleep(5e6);
	}

	print("Successfully ran Hello World application\r\n");

	cleanup_platform();
	return 0;
}
