#include "platform.h"

#include "sleep.h"		// Needed for: usleep()

#include <cstdio>		// Needed for: printf()
#include <cstdint>		// Needed for: uint8_t
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

	sil.write({0x1A, 0x10});

	// Enable active mode
	// -
	sil.write({0x1E, 0x00});

	sil.write({0x1A, 0x00});

	print("Successfully ran Hello World application\r\n");

	cleanup_platform();
	return 0;
}
