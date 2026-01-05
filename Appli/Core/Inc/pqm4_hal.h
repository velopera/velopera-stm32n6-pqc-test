#ifndef PQM4_HAL
#define PQM4_HAL

#include <hal.h>

#include <stdint.h>
#include <stddef.h>

void hal_setup(const enum clock_mode clock);

void hal_send_str(const char* in);

uint64_t hal_get_time(void);
size_t hal_get_stack_size(void);
void hal_spraystack(void);
size_t hal_checkstack(void);



#endif
