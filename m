Return-Path: <sshilpa.22@gmail.com>
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53FCAE00C8B
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 00:11:22 -0700 (PDT)
Received: by mail-ie0-f179.google.com with SMTP id lx4so1370338iec.24
	for <yocto@yoctoproject.org>; Thu, 03 Apr 2014 00:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=FinbENGyDoptx3N3oFWMiks84z4K7fsscwRsVD+CeiA=;
	b=J9TfsSCs00hxWxplR7wexHge8xs70dIVzPwLkXcMvl9ndv87L9yp/PHGxqTil7A99/
	sbm5Y7nftuN6aS+CnwQK1b1PifNRHrTW+wRdAHI773qSMkL64U6K0LH94dlweVVKAVZO
	u0Bt7zMkRTvukY4TX+zk23M4IBC7BssCAkDAtF3hwHl2+PO5ZU6qws6wXZCSaSTee2bs
	IOoBDo+eSfVYkJ25gRTWzailxYE8uqT1pTtE6h0g4EYb+ZfsDZoAnknkJlNDhk4PP1gT
	o+bX5WwTKoqimswStOHJobq47MMqzB8hh5JM4HL31aH0GCBmz1be/3pzj6rOtCWDpH6V
	j6vQ==
MIME-Version: 1.0
X-Received: by 10.50.43.225 with SMTP id z1mr13418600igl.29.1396509081437;
	Thu, 03 Apr 2014 00:11:21 -0700 (PDT)
Received: by 10.43.48.202 with HTTP; Thu, 3 Apr 2014 00:11:21 -0700 (PDT)
Date: Thu, 3 Apr 2014 12:41:21 +0530
Message-ID: <CABC-JjP3bH8KqkN=uKkOQYiLLyCYZxHvkkjiUDii5Udb7+ToaQ@mail.gmail.com>
From: Shilpa S <sshilpa.22@gmail.com>
To: yocto@yoctoproject.org
Subject: Beagleboard - XM - Kernel 2.6.32
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Apr 2014 07:11:23 -0000
Content-Type: multipart/alternative; boundary=089e010d8dd6ba0b5d04f61e1b49

--089e010d8dd6ba0b5d04f61e1b49
Content-Type: text/plain; charset=ISO-8859-1

Hello,


I am trying to work with camera in beagleboard xm.
I am using kernel 2.6.32 - danny version.

The kernel is not booting further, it hangs up with following message.

"Uncompressing Linux........................................... done,
booting the kernel"

Since I am using the older kernel, I have replaced the serial console from
ttyO2 to ttyS2. Still I end up with same message.

Following is the printenv:

U-Boot SPL 2011.09-01172-gfdbe8b9-dirty (Apr 01 2014 - 12:36:24)
Texas Instruments Revision detection unimplemented
OMAP SD/MMC: 0
reading u-boot.img
reading u-boot.img


U-Boot 2011.09-01172-gfdbe8b9-dirty (Apr 01 2014 - 12:36:24)

OMAP36XX/37XX-GP ES1.2, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
OMAP3 Beagle board + LPDDR/NAND
I2C:   ready
DRAM:  512 MiB
WARNING: Caches not enabled
NAND:  0 MiB
MMC:   OMAP SD/MMC: 0
*** Warning - readenv() failed, using default environment

In:    serial
Out:   serial
Err:   serial
Beagle xM Rev C
No EEPROM on expansion board
No EEPROM on expansion board
Die ID #4f5600029ff80000016830100f021011
Net:   Net Initialization Skipped
No ethernet found.
Hit any key to stop autoboot:  0
OMAP3 beagleboard.org # printenv
baudrate=115200
beaglerev=xMC
bootcmd=if mmc rescan ${mmcdev}; then if userbutton; then setenv bootenv
user.txt;fi;echo SD/MMC found on device ${mmcdev};if run loadbootenv; then
echo Loaded environment from ${bootenv};run importbootenv;fi;if test -n
$uenvcmd; then echo Running uenvcmd ...;run uenvcmd;fi;if run loaduimage;
then run mmcboot;fi;fi;run nandboot;
bootdelay=2
bootenv=uEnv.txt
bootfile=uImage.beagle
buddy=none
buddy2=none
camera=none
console=ttyS2,115200n8
defaultdisplay=dvi
dieid#=4f5600029ff80000016830100f021011
dvimode=640x480MR-16@60
importbootenv=echo Importing environment from mmc ...; env import -t
$loadaddr $filesize
loadaddr=0x80200000
loadbootenv=fatload mmc ${mmcdev} ${loadaddr} ${bootenv}
loadramdisk=fatload mmc ${mmcdev} ${rdaddr} ramdisk.gz
loaduimage=ext2load mmc ${mmcdev}:2 ${loadaddr} /boot/uImage
loaduimagefat=fatload mmc ${mmcdev} ${loadaddr} uImage
mmcargs=setenv bootargs console=${console} ${optargs} mpurate=${mpurate}
buddy=${buddy} buddy2=${buddy2} camera=${camera} vram=${vram}
omapfb.mode=dvi:${dvimode} omapdss.def_disp=${defaultdisplay}
root=${mmcroot} rootfstype=${mmcrootfstype}
mmcboot=echo Booting from mmc ...; run mmcargs; bootm ${loadaddr}
mmcdev=0
mmcroot=/dev/mmcblk0p2 ro
mmcrootfstype=ext3 rootwait
mpurate=auto
nandargs=setenv bootargs console=${console} ${optargs} mpurate=${mpurate}
buddy=${buddy} camera=${camera} vram=${vram} omapfb.mode=dvi:${dvimode}
omapdss.def_disp=${defaultdisplay} root=${nandroot}
rootfstype=${nandrootfstype}
nandboot=echo Booting from nand ...; run nandargs; nand read ${loadaddr}
280000 400000; bootm ${loadaddr}
nandroot=ubi0:rootfs ubi.mtd=4
nandrootfstype=ubifs
ramargs=setenv bootargs console=${console} ${optargs} mpurate=${mpurate}
buddy=${buddy} vram=${vram} omapfb.mode=dvi:${dvimode}
omapdss.def_disp=${defaultdisplay} root=${ramroot}
rootfstype=${ramrootfstype}
ramboot=echo Booting from ramdisk ...; run ramargs; bootm ${loadaddr}
ramroot=/dev/ram0 rw ramdisk_size=65536 initrd=0x81000000,64M
ramrootfstype=ext2
rdaddr=0x81000000
usbtty=cdc_acm
vram=12M

Environment size: 2132/131068 bytes
OMAP3 beagleboard.org # boot
The user button is currently NOT pressed.
SD/MMC found on device 0
reading uEnv.txt

** Unable to read "uEnv.txt" from mmc 0:1 **
Loading file "/boot/uImage" from mmc device 0:2 (xxa2)
3141760 bytes read
Booting from mmc ...
## Booting kernel from Legacy Image at 80200000 ...
   Image Name:   Linux-2.6.32
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    3141696 Bytes = 3 MiB
   Load Address: 80008000
   Entry Point:  80008000
   Verifying Checksum ... OK
   Loading Kernel Image ... OK
OK

Starting kernel ...

Uncompressing
Linux...........................................................................................................................................................................................................
done, booting the kernel.



Please help me to solve this issue !

Thanks and Regards,
Shilpa

--089e010d8dd6ba0b5d04f61e1b49
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div class=3D"gmail_quote"><div dir=3D"ltr"><div><di=
v class=3D"h5"><br><div><br>I am trying to work with camera in beagleboard =
xm.<br><div class=3D"gmail_quote"><div dir=3D"ltr"><div><div><div><div><div=
><div>I am using kernel 2.6.32 - danny version.<br>

<br></div>The kernel is not booting further, it hangs up with following mes=
sage.<br>
<br>&quot;Uncompressing Linux........................................... do=
ne, booting the kernel&quot;<br></div><br>Since I am using the older kernel=
, I have replaced the serial console from ttyO2 to ttyS2. Still I end up wi=
th same message. <br>



<br></div>Following is the printenv:<br><br>U-Boot SPL 2011.09-01172-gfdbe8=
b9-dirty (Apr 01 2014 - 12:36:24)<br>Texas Instruments Revision detection u=
nimplemented<br>OMAP SD/MMC: 0<br>reading u-boot.img<br>reading u-boot.img<=
br>



<br><br>U-Boot 2011.09-01172-gfdbe8b9-dirty (Apr 01 2014 - 12:36:24)<br><br=
>OMAP36XX/37XX-GP ES1.2, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz<br>OMAP3 =
Beagle board + LPDDR/NAND<br>I2C:=A0=A0 ready<br>DRAM:=A0 512 MiB<br>WARNIN=
G: Caches not enabled<br>



NAND:=A0 0 MiB<br>MMC:=A0=A0 OMAP SD/MMC: 0<br>*** Warning - readenv() fail=
ed, using default environment<br><br>In:=A0=A0=A0 serial<br>Out:=A0=A0 seri=
al<br>Err:=A0=A0 serial<br>Beagle xM Rev C<br>No EEPROM on expansion board<=
br>No EEPROM on expansion board<br>



Die ID #4f5600029ff80000016830100f021011<br>Net:=A0=A0 Net Initialization S=
kipped<br>No ethernet found.<br>Hit any key to stop autoboot:=A0 0 <br>OMAP=
3 <a href=3D"http://beagleboard.org" target=3D"_blank">beagleboard.org</a> =
# printenv<br>


baudrate=3D115200<br>
beaglerev=3DxMC<br>bootcmd=3Dif mmc rescan ${mmcdev}; then if userbutton;=
=20
then setenv bootenv user.txt;fi;echo SD/MMC found on device ${mmcdev};if
 run loadbootenv; then echo Loaded environment from ${bootenv};run=20
importbootenv;fi;if test -n $uenvcmd; then echo Running uenvcmd ...;run=20
uenvcmd;fi;if run loaduimage; then run mmcboot;fi;fi;run nandboot;<br>
bootdelay=3D2<br>bootenv=3DuEnv.txt<br>bootfile=3DuImage.beagle<br>buddy=3D=
none<br>buddy2=3Dnone<br>camera=3Dnone<br>console=3DttyS2,115200n8<br>defau=
ltdisplay=3Ddvi<br>dieid#=3D4f5600029ff80000016830100f021011<br>dvimode=3D6=
40x480MR-16@60<br>



importbootenv=3Decho Importing environment from mmc ...; env import -t $loa=
daddr $filesize<br>loadaddr=3D0x80200000<br>loadbootenv=3Dfatload mmc ${mmc=
dev} ${loadaddr} ${bootenv}<br>loadramdisk=3Dfatload mmc ${mmcdev} ${rdaddr=
} ramdisk.gz<br>



loaduimage=3Dext2load mmc ${mmcdev}:2 ${loadaddr} /boot/uImage<br>loaduimag=
efat=3Dfatload mmc ${mmcdev} ${loadaddr} uImage<br>mmcargs=3Dsetenv
 bootargs console=3D${console} ${optargs} mpurate=3D${mpurate}=20
buddy=3D${buddy} buddy2=3D${buddy2} camera=3D${camera} vram=3D${vram}=20
omapfb.mode=3Ddvi:${dvimode} omapdss.def_disp=3D${defaultdisplay} root=3D${=
mmcroot} rootfstype=3D${mmcrootfstype}<br>
mmcboot=3Decho Booting from mmc ...; run mmcargs; bootm ${loadaddr}<br>mmcd=
ev=3D0<br>mmcroot=3D/dev/mmcblk0p2 ro<br>mmcrootfstype=3Dext3 rootwait<br>m=
purate=3Dauto<br>nandargs=3Dsetenv
 bootargs console=3D${console} ${optargs} mpurate=3D${mpurate}=20
buddy=3D${buddy} camera=3D${camera} vram=3D${vram} omapfb.mode=3Ddvi:${dvim=
ode}=20
omapdss.def_disp=3D${defaultdisplay} root=3D${nandroot} rootfstype=3D${nand=
rootfstype}<br>
nandboot=3Decho Booting from nand ...; run nandargs; nand read ${loadaddr} =
280000 400000; bootm ${loadaddr}<br>nandroot=3Dubi0:rootfs ubi.mtd=3D4<br>n=
androotfstype=3Dubifs<br>ramargs=3Dsetenv
 bootargs console=3D${console} ${optargs} mpurate=3D${mpurate}=20
buddy=3D${buddy} vram=3D${vram} omapfb.mode=3Ddvi:${dvimode}=20
omapdss.def_disp=3D${defaultdisplay} root=3D${ramroot} rootfstype=3D${ramro=
otfstype}<br>
ramboot=3Decho Booting from ramdisk ...; run ramargs; bootm ${loadaddr}<br>=
ramroot=3D/dev/ram0 rw ramdisk_size=3D65536 initrd=3D0x81000000,64M<br>ramr=
ootfstype=3Dext2<br>rdaddr=3D0x81000000<br>usbtty=3Dcdc_acm<br>vram=3D12M<b=
r><br>Environment size: 2132/131068 bytes<br>



OMAP3 <a href=3D"http://beagleboard.org" target=3D"_blank">beagleboard.org<=
/a> # boot<br>The user button is currently NOT pressed.<br>SD/MMC found on =
device 0<br>reading uEnv.txt<br><br>** Unable to read &quot;uEnv.txt&quot; =
from mmc 0:1 **<br>



Loading file &quot;/boot/uImage&quot; from mmc device 0:2 (xxa2)<br>3141760=
 bytes read<br>Booting from mmc ...<br>## Booting kernel from Legacy Image =
at 80200000 ...<br>=A0=A0 Image Name:=A0=A0 Linux-2.6.32<br>=A0=A0 Image Ty=
pe:=A0=A0 ARM Linux Kernel Image (uncompressed)<br>



=A0=A0 Data Size:=A0=A0=A0 3141696 Bytes =3D 3 MiB<br>=A0=A0 Load Address: =
80008000<br>=A0=A0 Entry Point:=A0 80008000<br>=A0=A0 Verifying Checksum ..=
. OK<br>=A0=A0 Loading Kernel Image ... OK<br>OK<br><br>Starting kernel ...=
<br><br>Uncompressing Linux................................................=
...........................................................................=
...........................................................................=
..... done, booting the kernel.<br>



<br><br><br></div>Please help me to solve this issue !<br><br></div>Thanks =
and Regards,<br></div>Shilpa</div>
</div><br></div></div></div></div>
</div><br></div>

--089e010d8dd6ba0b5d04f61e1b49--
