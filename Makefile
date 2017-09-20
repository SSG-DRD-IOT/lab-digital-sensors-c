#
# Copyright (c) 2017 Intel Corporation.
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

all:	blinky-LED lcd_temp_sensor

blinky-LED:	blinky-LED.c
	gcc blinky-LED.c -o blinky-LED -lmraa

lcd_temp_sensor:	temperature.c
	gcc temperature.c -o lcd_temp_sensor -I/usr/include/upm -lupmc-temperature -lupmc-utilities -lmraa -lm -lupm-jhd1313m1 -lupmc-jhd1313m1 -lupm-lcm1602 -lupmc-lcm1602

clean:
	rm -rf blinky-LED
	rm -rf lcd_temp_sensor
	rm -rf *.o
