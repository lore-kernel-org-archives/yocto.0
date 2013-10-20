Return-Path: <vidal.develone@gmail.com>
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A59F3E0074B
	for <yocto@yoctoproject.org>; Sun, 20 Oct 2013 10:27:43 -0700 (PDT)
Received: by mail-qa0-f45.google.com with SMTP id ii20so1941939qab.4
	for <yocto@yoctoproject.org>; Sun, 20 Oct 2013 10:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=omwND3NhmBhTQOS9KCynLFX71q0XBgKX2oUwhLu+dKA=;
	b=FmafoGWgUaXEcQuQ454SYU1KXAduQZUcYbDfndp3bTIseRc9rJVc5Nj4t855DSm04H
	MI1ov2lBYsxKx1+pL4FFOUHCv4izwQXw8KP76WZaB435SMQSLpupGb5fPrg5CFmK5kRR
	F2mFn3k50P7LtlXAIcxxlGOhspWGDZk+ZurhKYljUKTvhpC/lOAt1hxwHpS9JrmGkoSU
	P24afrX3s+ILtlD0kTnJfID+abAUSAOXX3h+/7JGHIiLv8TirbhGvdMdRX9EYKwPbYk4
	JVD2AeGdh+9RtZwhoXyqNID6UConla6K890csjXkSYqTd4xyGUlLgGKbu3HmnZPnGQ13
	Bw5w==
MIME-Version: 1.0
X-Received: by 10.49.84.6 with SMTP id u6mr17406327qey.79.1382290063229; Sun,
	20 Oct 2013 10:27:43 -0700 (PDT)
Received: by 10.96.26.37 with HTTP; Sun, 20 Oct 2013 10:27:43 -0700 (PDT)
In-Reply-To: <CA+gsK-oYDGkcCiPxKUP3rVbD2qGRr_8EUNqGO7JNKmZJfU9WEw@mail.gmail.com>
References: <CANwz6nznDfo=40RJ4aZh6BESHbYT3d+CcoTpB+wyaU5qXZ57fA@mail.gmail.com>
	<CA+gsK-oYDGkcCiPxKUP3rVbD2qGRr_8EUNqGO7JNKmZJfU9WEw@mail.gmail.com>
Date: Sun, 20 Oct 2013 11:27:43 -0600
Message-ID: <CANwz6nyNupYz25HvywgLfqMEU0dM8d3EvWjzZYa5uMqKU0YMCA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: uimage instead of zImage
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
X-List-Received-Date: Sun, 20 Oct 2013 17:27:46 -0000
Content-Type: multipart/alternative; boundary=047d7bdc0934320a5c04e92f7cc6

--047d7bdc0934320a5c04e92f7cc6
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I see some values when I do printenv

These are the files on my dos partition
MLO  u-boot.img  uEnv.txt    zImage  zImage-omap3-beagle-xm.dtb

This is what I have in the uEnv.txt file


bootcmd=""
bootfile="zImage"
ethact=""
loadaddr=""
nandboot=""
nandroot=""
nandrootfstype=""
nandargs=""
loaduimage=""
loaduimagefat=""
nandboot=""
mpurate="auto"
bootcmd="mmc rescan ; fatload mmc 0:1 0x80300000 zImage; bootz 0x80300000"
dvimode="hd720 omapfb.vram=0:8M,1:4M,2:4M"
optargs="consoleblank=0"
console="ttyO2 console=tty0,115200n8"
vram=16M
saveenv
printenv

It appears that some of variable get written with other data ie vram I am
setting to 16M but sometimes I see it set to 12M see at the end
I have tried setting the variables manually and executing saveenv
All the ones I don't want set setenv name and then saveenv
still see the same values
when I was using uImage and no
this is what I used for my uEnv.txt
mpurate=auto

bootcmd="mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm 0x80300000"
dvimode="hd720 omapfb.vram=0:8M,1:4M,2:4M"
vram=16M
optargs="consoleblank=0"
console="ttyO2 console=tty0,115200n8"
These were the file on the dos partition
MLO  u-boot.img  uEnv.txt    uImage
This was on a build on 09/21/13
Any and all help will be appreciated.
Thanks

U-Boot SPL 2013.07 (Oct 19 2013 - 09:14:36)
OMAP SD/MMC: 0
reading u-boot.img
reading u-boot.img


U-Boot 2013.07 (Oct 19 2013 - 09:14:36)

OMAP3630/3730-GP ES1.2, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
OMAP3 Beagle board + LPDDR/NAND
I2C:   ready
DRAM:  512 MiB
NAND:  0 MiB
MMC:   OMAP SD/MMC: 0
*** Warning - readenv() failed, using default environment

In:    serial
Out:   serial
Err:   serial
Beagle xM Rev C
No EEPROM on expansion board
Die ID #158000029ff800000160a7450b02602d
musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, bulk combine, bulk split,
HB-ISO
Rx, HB-ISO Tx, SoftConn)
musb-hdrc: MHDRC RTL version 1.800
musb-hdrc: setup fifo_mode 4
musb-hdrc: 28/31 max ep, 16384/16384 memory
USB Peripheral mode controller at 480ab000 using PIO, IRQ 0
Net:   usb_ether
Hit any key to stop autoboot:  3  2  1  0
OMAP3 beagleboard.org # l printenv
baudrate=115200
beaglerev=xMC
bootcmd=mmc dev ${mmcdev}; if mmc rescan; then if run userbutton; then
setenv bo
otenv uEnv.txt;else setenv bootenv user.txt;fi;echo SD/MMC found on device
${mmc
dev};if run loadbootenv; then echo Loaded environment from ${bootenv};run
import
bootenv;fi;if test -n $uenvcmd; then echo Running uenvcmd ...;run
uenvcmd;fi;if
run loaduimage; then run mmcboot;fi;fi;run nandboot;
bootdelay=3
bootenv=uEnv.txt
bootfile=uImage.beagle
buddy=none
camera=none
console=ttyO2,115200n8
defaultdisplay=dvi
dieid#=158000029ff800000160a7450b02602d
dvimode=640x480MR-16@60
ethact=usb_ether
importbootenv=echo Importing environment from mmc ...; env import -t
$loadaddr $
filesize
loadaddr=0x80200000
loadbootenv=fatload mmc ${mmcdev} ${loadaddr} ${bootenv}
loadramdisk=fatload mmc ${mmcdev} ${rdaddr} ramdisk.gz
loaduimage=ext2load mmc ${mmcdev}:2 ${loadaddr} /boot/uImage
loaduimagefat=fatload mmc ${mmcdev} ${loadaddr} uImage
mmcargs=setenv bootargs console=${console} ${optargs} mpurate=${mpurate}
buddy=$
{buddy} camera=${camera} vram=${vram} omapfb.mode=dvi:${dvimode}
omapdss.def_dis
p=${defaultdisplay} root=${mmcroot} rootfstype=${mmcrootfstype}
mmcboot=echo Booting from mmc ...; run mmcargs; bootm ${loadaddr}
mmcdev=0
mmcroot=/dev/mmcblk0p2 rw
mmcrootfstype=ext3 rootwait
mpurate=auto
nandargs=setenv bootargs console=${console} ${optargs} mpurate=${mpurate}
buddy=
${buddy} camera=${camera} vram=${vram} omapfb.mode=dvi:${dvimode}
omapdss.def_di
sp=${defaultdisplay} root=${nandroot} rootfstype=${nandrootfstype}
nandboot=echo Booting from nand ...; run nandargs; nand read ${loadaddr}
280000
400000; bootm ${loadaddr}
nandroot=ubi0:rootfs ubi.mtd=4
nandrootfstype=ubifs
ramargs=setenv bootargs console=${console} ${optargs} mpurate=${mpurate}
buddy=$
{buddy} vram=${vram} omapfb.mode=dvi:${dvimode}
omapdss.def_disp=${defaultdispla
y} root=${ramroot} rootfstype=${ramrootfstype}
ramboot=echo Booting from ramdisk ...; run ramargs; bootm ${loadaddr}
ramroot=/dev/ram0 rw ramdisk_size=65536 initrd=0x81000000,64M
ramrootfstype=ext2
rdaddr=0x81000000
stderr=serial
stdin=serial
stdout=serial
usbtty=cdc_acm
userbutton=if gpio input 173; then run userbutton_xm; else run
userbutton_nonxm;
 fi;
userbutton_nonxm=gpio input 7;
userbutton_xm=gpio input 4;
vram=12M

Environment size: 2359/131068 bytes
OMAP3 beagleboard.org #
* - * Qodem 0.1.2 Capture Generated Sun, 20 Oct 2013 10:59:54 -0600 END * -
*


On Sat, Oct 19, 2013 at 1:09 PM, Rudolf Streif
<rstreif@linuxfoundation.org>wrote:

> Edward,
>
> Your zImage is booting fine. The kernel starts and then tries to mount the
> root file system. But it cannot find it. It's looking for a UBIFS but
> cannot find it:
>
>
> .
>> VFS: Cannot open root device "ubi0:rootfs" or unknown-block(0,0): error
>> -19
>> Please append a correct "root=" boot option; here are the available
>> partitions:
>> VFS: Unable to mount root fs on unknown-block(0,0)
>> User configuration error - no valid root filesystem found
>> Kernel panic - not syncing: Invalid configuration from end user prevents
>> continu
>> ing
>>
>
>  You may have had additional error messages before the ones above that you
> copied into your e-mail such as:
>
> UBIFS error (pid 1): ubifs_check_node: bad CRC: calculated 0xdfca80ed,
> read 0x7b7c0f6b
> UBIFS error (pid 1): ubifs_check_node: bad node at LEB 0:0
> UBIFS error (pid 1): ubifs_read_node: expected node type 6
>
> That would be an indicator that the UBIFS root file system was not created
> correctly on your flash device. How did you create it?
>
> Rudi
>

--047d7bdc0934320a5c04e92f7cc6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br></div>I see some values when I do prin=
tenv<br><br>These are the files on my dos partition<br>MLO=A0 u-boot.img=A0=
 uEnv.txt=A0=A0=A0 zImage=A0 zImage-omap3-beagle-xm.dtb<br><br>This is what=
 I have in the uEnv.txt file <br>
</div><br><div><br>bootcmd=3D&quot;&quot;<br>bootfile=3D&quot;zImage&quot;<=
br>ethact=3D&quot;&quot;<br>loadaddr=3D&quot;&quot;<br>nandboot=3D&quot;&qu=
ot;<br>nandroot=3D&quot;&quot;<br>nandrootfstype=3D&quot;&quot;<br>nandargs=
=3D&quot;&quot;<br>
loaduimage=3D&quot;&quot;<br>loaduimagefat=3D&quot;&quot;<br>nandboot=3D&qu=
ot;&quot;<br>mpurate=3D&quot;auto&quot;<br>bootcmd=3D&quot;mmc rescan ; fat=
load mmc 0:1 0x80300000 zImage; bootz 0x80300000&quot;<br>dvimode=3D&quot;h=
d720 omapfb.vram=3D0:8M,1:4M,2:4M&quot;<br>
optargs=3D&quot;consoleblank=3D0&quot;<br>console=3D&quot;ttyO2 console=3Dt=
ty0,115200n8&quot;<br>vram=3D16M<br>saveenv<br>printenv<br><br>It appears t=
hat some of variable get written with other data ie vram I am setting to 16=
M but sometimes I see it set to 12M see at the end<br>
I have tried setting the variables manually and executing saveenv<br>All th=
e ones I don&#39;t want set setenv name and then saveenv<br>still see the s=
ame values<br>when I was using uImage and no <br>this is what I used for my=
 uEnv.txt<br>
mpurate=3Dauto<br><br>bootcmd=3D&quot;mmc rescan 0; fatload mmc 0:1 0x80300=
000 uImage; bootm 0x80300000&quot;<br>dvimode=3D&quot;hd720 omapfb.vram=3D0=
:8M,1:4M,2:4M&quot;<br>vram=3D16M<br>optargs=3D&quot;consoleblank=3D0&quot;=
<br>console=3D&quot;ttyO2 console=3Dtty0,115200n8&quot;<br>
These were the file on the dos partition<br>MLO=A0 u-boot.img=A0 uEnv.txt=
=A0=A0=A0 uImage <br>This was on a build on 09/21/13<br></div><div>Any and =
all help will be appreciated.<br></div><div>Thanks<br></div><div><br>U-Boot=
 SPL 2013.07 (Oct 19 2013 - 09:14:36)<br>
OMAP SD/MMC: 0<br>reading u-boot.img<br>reading u-boot.img<br><br><br>U-Boo=
t 2013.07 (Oct 19 2013 - 09:14:36)<br><br>OMAP3630/3730-GP ES1.2, CPU-OPP2,=
 L3-165MHz, Max CPU Clock 1 Ghz<br>OMAP3 Beagle board + LPDDR/NAND<br>I2C:=
=A0=A0 ready<br>
DRAM:=A0 512 MiB<br>NAND:=A0 0 MiB<br>MMC:=A0=A0 OMAP SD/MMC: 0<br>*** Warn=
ing - readenv() failed, using default environment<br><br>In:=A0=A0=A0 seria=
l<br>Out:=A0=A0 serial<br>Err:=A0=A0 serial<br>Beagle xM Rev C<br>No EEPROM=
 on expansion board<br>
Die ID #158000029ff800000160a7450b02602d<br>musb-hdrc: ConfigData=3D0xde (U=
TMI-8, dyn FIFOs, bulk combine, bulk split, HB-ISO <br>Rx, HB-ISO Tx, SoftC=
onn)<br>musb-hdrc: MHDRC RTL version 1.800 <br>musb-hdrc: setup fifo_mode 4=
<br>
musb-hdrc: 28/31 max ep, 16384/16384 memory<br>USB Peripheral mode controll=
er at 480ab000 using PIO, IRQ 0<br>Net:=A0=A0 usb_ether<br>Hit any key to s=
top autoboot:=A0 3=A0 2=A0 1=A0 0 <br>OMAP3 <a href=3D"http://beagleboard.o=
rg">beagleboard.org</a> # l printenv<br>
baudrate=3D115200<br>beaglerev=3DxMC<br>bootcmd=3Dmmc dev ${mmcdev}; if mmc=
 rescan; then if run userbutton; then setenv bo<br>otenv uEnv.txt;else sete=
nv bootenv user.txt;fi;echo SD/MMC found on device ${mmc<br>dev};if run loa=
dbootenv; then echo Loaded environment from ${bootenv};run import<br>
bootenv;fi;if test -n $uenvcmd; then echo Running uenvcmd ...;run uenvcmd;f=
i;if <br>run loaduimage; then run mmcboot;fi;fi;run nandboot;<br>bootdelay=
=3D3<br>bootenv=3DuEnv.txt<br>bootfile=3DuImage.beagle<br>buddy=3Dnone<br>c=
amera=3Dnone<br>
console=3DttyO2,115200n8<br>defaultdisplay=3Ddvi<br>dieid#=3D158000029ff800=
000160a7450b02602d<br>dvimode=3D640x480MR-16@60<br>ethact=3Dusb_ether<br>im=
portbootenv=3Decho Importing environment from mmc ...; env import -t $loada=
ddr $<br>
filesize<br>loadaddr=3D0x80200000<br>loadbootenv=3Dfatload mmc ${mmcdev} ${=
loadaddr} ${bootenv}<br>loadramdisk=3Dfatload mmc ${mmcdev} ${rdaddr} ramdi=
sk.gz<br>loaduimage=3Dext2load mmc ${mmcdev}:2 ${loadaddr} /boot/uImage<br>=
loaduimagefat=3Dfatload mmc ${mmcdev} ${loadaddr} uImage<br>
mmcargs=3Dsetenv bootargs console=3D${console} ${optargs} mpurate=3D${mpura=
te} buddy=3D$<br>{buddy} camera=3D${camera} vram=3D${vram} omapfb.mode=3Ddv=
i:${dvimode} omapdss.def_dis<br>p=3D${defaultdisplay} root=3D${mmcroot} roo=
tfstype=3D${mmcrootfstype}<br>
mmcboot=3Decho Booting from mmc ...; run mmcargs; bootm ${loadaddr}<br>mmcd=
ev=3D0<br>mmcroot=3D/dev/mmcblk0p2 rw<br>mmcrootfstype=3Dext3 rootwait<br>m=
purate=3Dauto<br>nandargs=3Dsetenv bootargs console=3D${console} ${optargs}=
 mpurate=3D${mpurate} buddy=3D<br>
${buddy} camera=3D${camera} vram=3D${vram} omapfb.mode=3Ddvi:${dvimode} oma=
pdss.def_di<br>sp=3D${defaultdisplay} root=3D${nandroot} rootfstype=3D${nan=
drootfstype}<br>nandboot=3Decho Booting from nand ...; run nandargs; nand r=
ead ${loadaddr} 280000 <br>
400000; bootm ${loadaddr}<br>nandroot=3Dubi0:rootfs ubi.mtd=3D4<br>nandroot=
fstype=3Dubifs<br>ramargs=3Dsetenv bootargs console=3D${console} ${optargs}=
 mpurate=3D${mpurate} buddy=3D$<br>{buddy} vram=3D${vram} omapfb.mode=3Ddvi=
:${dvimode} omapdss.def_disp=3D${defaultdispla<br>
y} root=3D${ramroot} rootfstype=3D${ramrootfstype}<br>ramboot=3Decho Bootin=
g from ramdisk ...; run ramargs; bootm ${loadaddr}<br>ramroot=3D/dev/ram0 r=
w ramdisk_size=3D65536 initrd=3D0x81000000,64M<br>ramrootfstype=3Dext2<br>r=
daddr=3D0x81000000<br>
stderr=3Dserial<br>stdin=3Dserial<br>stdout=3Dserial<br>usbtty=3Dcdc_acm<br=
>userbutton=3Dif gpio input 173; then run userbutton_xm; else run userbutto=
n_nonxm;<br>=A0fi;<br>userbutton_nonxm=3Dgpio input 7;<br>userbutton_xm=3Dg=
pio input 4;<br>
vram=3D12M<br><br>Environment size: 2359/131068 bytes<br>OMAP3 <a href=3D"h=
ttp://beagleboard.org">beagleboard.org</a> # <br>* - * Qodem 0.1.2 Capture =
Generated Sun, 20 Oct 2013 10:59:54 -0600 END * - *<br></div></div><div cla=
ss=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Sat, Oct 19, 2013 at 1:09 PM, Rudolf =
Streif <span dir=3D"ltr">&lt;<a href=3D"mailto:rstreif@linuxfoundation.org"=
 target=3D"_blank">rstreif@linuxfoundation.org</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">
<div dir=3D"ltr">Edward,<div><br></div><div>Your zImage is booting fine. Th=
e kernel starts and then tries to mount the root file system. But it cannot=
 find it. It&#39;s looking for a UBIFS but cannot find it:</div><div class=
=3D"gmail_extra">

<br><br><div class=3D"gmail_quote"><div class=3D"im"><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-=
left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex"><div =
dir=3D"ltr">
<div><div>
.<br>
VFS: Cannot open root device &quot;ubi0:rootfs&quot; or unknown-block(0,0):=
 error -19<br>Please append a correct &quot;root=3D&quot; boot option; here=
 are the available partitions:<br>VFS: Unable to mount root fs on unknown-b=
lock(0,0)<br>


User configuration error - no valid root filesystem found<br>Kernel panic -=
 not syncing: Invalid configuration from end user prevents continu<br>ing<b=
r></div></div></div></blockquote><div><br></div></div><div>=A0You may have =
had additional error messages before the ones above that you copied into yo=
ur e-mail such as:</div>

<div><br></div><div><span style=3D"color:rgb(51,51,51);font-family:Arial;fo=
nt-size:12px;line-height:18px">UBIFS error (pid 1): ubifs_check_node: bad C=
RC: calculated 0xdfca80ed, read 0x7b7c0f6b</span><br style=3D"color:rgb(51,=
51,51);font-family:Arial;font-size:12px;line-height:18px">

<span style=3D"color:rgb(51,51,51);font-family:Arial;font-size:12px;line-he=
ight:18px">UBIFS error (pid 1): ubifs_check_node: bad node at LEB 0:0</span=
><br style=3D"color:rgb(51,51,51);font-family:Arial;font-size:12px;line-hei=
ght:18px">

<span style=3D"color:rgb(51,51,51);font-family:Arial;font-size:12px;line-he=
ight:18px">UBIFS error (pid 1): ubifs_read_node: expected node type 6</span=
><br style=3D"color:rgb(51,51,51);font-family:Arial;font-size:12px;line-hei=
ght:18px">

</div><div><span style=3D"color:rgb(51,51,51);font-family:Arial;font-size:1=
2px;line-height:18px"><br></span></div><div><span style=3D"color:rgb(51,51,=
51);font-family:Arial;font-size:12px;line-height:18px">That would be an ind=
icator that the UBIFS root file system was not created correctly on your fl=
ash device. How did you create it?</span></div>

<div><span style=3D"color:rgb(51,51,51);font-family:Arial;font-size:12px;li=
ne-height:18px"><br></span></div><div><span style=3D"color:rgb(51,51,51);fo=
nt-family:Arial;font-size:12px;line-height:18px">Rudi</span></div></div>
</div></div>
</blockquote></div><br></div>

--047d7bdc0934320a5c04e92f7cc6--
