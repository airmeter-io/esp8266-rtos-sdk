#!/bin/bash
#
# ESP8266-RTOS-SDK-Docker Action
# Copyright (C) 2020 E01-AIO Automação Ltda.
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
# 
# Author: Nelio Santos <nsfilho@icloud.com>
# Repository: https://github.com/nsfilho/ESP8266-RTOS-SDK-Docker
#
all:
	docker build --rm=true --force-rm=true -t nsfilho/esp8266-rtos-sdk:3.4 ./

# run:
# 	cd ../../../ && docker run -it -v `pwd -P`:/app nsfilho/esp8266-rtos-sdk:3.4 /bin/bash

remove:
	docker stop nsfilho/esp8266-rtos-sdk
	docker rm nsfilho/esp8266-rtos-sdk

push:
	docker push nsfilho/esp8266-rtos-sdk:3.4
