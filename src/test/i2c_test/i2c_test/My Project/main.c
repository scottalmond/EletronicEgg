#include <atmel_start.h>

#include "driver_examples.h"
#include "driver_init.h"
#include "utils.h"

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();

	/* Replace with your application code */
	while (1) {
			struct io_descriptor *I2C_0_io;

			i2c_m_sync_get_io_descriptor(&I2C_0, &I2C_0_io);
			i2c_m_sync_enable(&I2C_0);
			i2c_m_sync_set_slaveaddr(&I2C_0, 0x6B, I2C_M_SEVEN);//IC address; BQ25155: 
			//io_write(I2C_0_io, (uint8_t *)"Hello World!", 12);
			
			uint8_t reg_addr = 0x6F;
			uint8_t reg_value = 0x00; //expect 0x35 on reset (53 dec)
			
			// https://github.com/tinic/Pendant2019/blob/master/sdd1306.cpp
			io_write(I2C_0_io, &reg_addr, 1);//send the register address to read from
			io_read(I2C_0_io, &reg_value, 1); //read one byte
			
			delay_ms(1000+reg_value);
			
			//en_Ls_ldo od lsctrl to enable/disable ldo
	}
}
