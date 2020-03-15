#include <atmel_start.h>

#include "driver_examples.h"
#include "driver_init.h"
#include "utils.h"

#include "hal_i2c_m_sync.h"

int32_t bq25155_dev_write_reg(struct i2c_m_sync_desc *const i2c, uint8_t reg_addr, uint8_t val) {
	uint8_t buf[2];
	struct _i2c_m_msg msg;

	buf[0] = reg_addr;
	buf[1] = val;

	msg.addr = i2c->slave_addr;
	msg.len = sizeof(buf);
	msg.flags = I2C_M_STOP;
	msg.buffer = buf;

	return i2c_m_sync_transfer(&i2c->device, &msg);
}

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();

	/* Replace with your application code */
	while (1) {
			struct io_descriptor *I2C_0_io;

			uint8_t reg_id_addr = 0x6F;
			uint8_t reg_id_value = 0x00; //expect 0x35 on reset (53 dec)

			i2c_m_sync_get_io_descriptor(&I2C_0, &I2C_0_io);
			i2c_m_sync_enable(&I2C_0);
			i2c_m_sync_set_slaveaddr(&I2C_0, 0x6B, I2C_M_SEVEN);//IC address; BQ25155: 
			/*
			//io_write(I2C_0_io, (uint8_t *)"Hello World!", 12);
			
			
			// https://github.com/tinic/Pendant2019/blob/master/sdd1306.cpp
			io_write(I2C_0_io, &reg_id_addr, 1);//send the register address to read from
			io_read(I2C_0_io, &reg_id_value, 1); //read one byte
			
			i2c_m_sync_disable(&I2C_0);
			
			delay_ms(reg_id_value);
			*/
			
			//reg_id_value = 0x00;
			i2c_m_sync_cmd_read(&I2C_0, reg_id_addr, &reg_id_value, 1);
			delay_ms(reg_id_value);
			
			// -----------------
			
			//en_Ls_ldo od lsctrl to enable/disable ldo
			
			//pmid_ctrl
			
			/*
			uint8_t reg_ldoctrl_addr=0x1D;
			uint8_t reg_ldoctrl_value = 0b00110000;//disable ldo
			
			i2c_m_sync_get_io_descriptor(&I2C_0, &I2C_0_io);
			i2c_m_sync_enable(&I2C_0);
			i2c_m_sync_set_slaveaddr(&I2C_0, 0x6B, I2C_M_SEVEN);//IC address; BQ25155: 
			
			//io_write(I2C_0_io, &reg_ldoctrl_addr, 1);//send the register address to read from
			//io_write(I2C_0_io, &reg_ldoctrl_value, 1);
			
			//i2c_m_sync_disable(&I2C_0);
			
			i2c_m_sync_cmd_write(&I2C_0, reg_ldoctrl_addr, &reg_ldoctrl_value, 1);
			
			i2c_m_sync_get_io_descriptor(&I2C_0, &I2C_0_io);
			i2c_m_sync_enable(&I2C_0);
			i2c_m_sync_set_slaveaddr(&I2C_0, 0x6B, I2C_M_SEVEN);//IC address; BQ25155: 
			i2c_m_sync_cmd_read(&I2C_0, reg_ldoctrl_addr, &reg_ldoctrl_value, 1);
			
			delay_ms(reg_ldoctrl_value); //TP5 is LDO output
			
			*/
			
			
			uint8_t reg_ICCTRL1_addr=0x36;
			uint8_t reg_ICCTRL1_value = 0b00000000;//11;//0b00110000;//disable ldo
			
			//i2c_m_sync_get_io_descriptor(&I2C_0, &I2C_0_io);
			//i2c_m_sync_enable(&I2C_0);
			//i2c_m_sync_set_slaveaddr(&I2C_0, 0x6B, I2C_M_SEVEN);//IC address; BQ25155:    | 0b10000000
			
			//write --> transfer https://www.avrfreaks.net/forum/i2cmsynccmdwrite-confusion
			bq25155_dev_write_reg(&I2C_0, reg_ICCTRL1_addr, reg_ICCTRL1_value); 
			
			delay_ms(100);
			
			//i2c_m_sync_get_io_descriptor(&I2C_0, &I2C_0_io);
			//i2c_m_sync_enable(&I2C_0);
			//i2c_m_sync_set_slaveaddr(&I2C_0, 0x6B, I2C_M_SEVEN);//IC address; BQ25155: 
			i2c_m_sync_cmd_read(&I2C_0, reg_ICCTRL1_addr, &reg_ICCTRL1_value, 1);
			
			delay_ms(reg_ICCTRL1_value); //TP5 is LDO output
			
	}
}
