#include "platform.h"

#include "sleep.h"		// usleep()

#include <cstdio>		// printf()
#include <cstdint>		// uint8_t
#include <vector>

using namespace std;

#include "Sil9022A.h"	// Sil9022A abstraction class

int main()
{
	init_platform();
	print("Hello World\r\n");

	// ===========================================
	//  Initialize/ Power up the HDMI transmitter
	// ===========================================
	Sil9022A sil;

	print("Successfully ran Hello World application\r\n");

	cleanup_platform();
	return 0;
}
