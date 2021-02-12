mmc dev 0
fatload mmc 0:1 ${kernel_addr_r} zImage
setenv bootargs console=tty0 console=ttyAMA0,115200 earlyprintk root=/dev/mmcblk0p2 rootwait
bootz ${kernel_addr_r} - ${fdt_addr}
