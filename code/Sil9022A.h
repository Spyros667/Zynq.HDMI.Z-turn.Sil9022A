#include "xparameters.h"	// Needed for: XPAR_XIIC_0_BASEADDR, XPAR_XGPIOPS_0_BASEADDR

#include "xiic.h"			// Needed for: Talking to Sil9022A (through AXI)
#include "xgpiops.h"		// Needed for: Raising RESETn on the Sil9022A
#include "sleep.h"

#include <cstdio>			// Needed for: printf()
#include <cstdint>			// Needed for: uint8_t
#include <vector>

using namespace std;

constexpr uint8_t  SLAVE_ADDRESS       = 0x3B;
constexpr uint32_t XGPIOPS_BASEADDR    = XPAR_XGPIOPS_0_BASEADDR;	// (Set according to <parameters.h>)
constexpr uint32_t XIIC_BASEADDRESS	   = XPAR_XIIC_0_BASEADDR;		// (Set according to <parameters.h>)
constexpr uint32_t Sil9022A_RESETn_pin = 51;						// (MIO51)

class Sil9022A
{
public:
	Sil9022A ();

	void write (const vector<uint8_t>& v);
	vector<uint8_t> read (const vector<uint8_t>& v, const uint32_t& size);
	
private:
	XGpioPs XGpioPs_init (void) const;
	void raise_RESETn (void) const;
	void wait (void) const;
	void print_vec (const vector<uint8_t>& v) const;
	void print_vec (const uint8_t& reg, const vector<uint8_t>& v) const;
};
