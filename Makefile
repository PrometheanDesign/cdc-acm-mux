CROSS := /opt/raspbian/tools/arm-bcm2708/arm-bcm2708-linux-gnueabi/bin/arm-bcm2708-linux-gnueabi-
ARCH := arm
PWD := $(shell pwd)
obj-m := cdc-acm-mux.o
KERNELDIR := /$(PWD)/../linux
default:
	$(MAKE) -j 4 -C $(KERNELDIR) M=$(PWD) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS) modules

clean:
	$(MAKE) -j 4 -C $(KERNELDIR) M=$(PWD) ARCH=$(ARCH) clean

