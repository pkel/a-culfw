# Alternative culfw for cul devices
___
**The orginal fimware is cloned from www.culfw.de (thanks for the work to R.K.)**

**This alternative firmware has additional send receive methods and code cleanups.**  
_The compiled firmware can be found at [MediaFire](https://www.mediafire.com/folder/iuf7lue8r578c/a-culfw)_

# Converting an EQ-3 MAX! Cube

Source
- https://blog.loetzimmer.de/2017/10/max-cube-umbau-zu-4-fach-netzwerk-cul.html
- https://archive.is/rLkD1

```shell
nix-shell
cd culfw/Devices/CUBe
make CUBE_BL
make -C bootloader bootloader_CUBE.bin
```

Clear ROM on the Cube by connecting Jumper J1 and power on. This purges
the original firmware. The device should now register a USB COM
interface.

```shell
bossac -ewvb bootloader_CUBE.bin
```

Reconnect the device while pressing the reset button on the bottom to
load the bootloader. LED should flash quickly.

```shell
cp CUBE_BL.bin /var/run/media/patrik/0042-0042/
```

LED should flash more slowly after reboot. Device gets IP over DHCP and
is ready for homegear.
