
#include <pqm4_hal.h>

#include <stdio.h>
#include <stdint.h>
#include <stddef.h>

void hal_setup(const enum clock_mode clock)
{

}

void hal_send_str(const char* in)
{
	printf(">> %s\n", in);
}

uint64_t hal_get_time(void)
{

}

size_t hal_get_stack_size(void)
{}

void hal_spraystack(void)
{}

size_t hal_checkstack(void)
{
	}

/*
 * Write `n` bytes of high quality random bytes to `buf`
 */
//#define randombytes     PQCLEAN_randombytes
int PQCLEAN_randombytes(uint8_t *output, size_t n)
{}


