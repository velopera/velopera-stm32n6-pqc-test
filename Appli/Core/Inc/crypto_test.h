#ifndef _CRYPTO_TEST
#define _CRYPTO_TEST

#include <stdint.h>
#include <stdlib.h>

#include "hal.h"


// implement these from <hal.h>

void hal_setup(const enum clock_mode clock);
void hal_send_str(const char* in);
uint64_t hal_get_time(void);
size_t hal_get_stack_size(void);
void hal_spraystack(void);
size_t hal_checkstack(void);



// test code

extern int crypto_test();


#endif
