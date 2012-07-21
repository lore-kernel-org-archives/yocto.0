Return-Path: <vidal.develone@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A237E013A6
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 08:58:56 -0700 (PDT)
Received: by yenl5 with SMTP id l5so5594991yen.35
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 08:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=4uAYirX9EXZkIWrg+77OhE1K3iLpBXFx81skbcwhRIc=;
	b=v782jiZbXFE80Gpl+o2yzKiX7g/anNueVrTOd13MZsU0fda7sdUniGGhV30Y66K1JB
	X1WvdplFl0SwjVTkxhDMl5YP2jOW/fMDAePJowBBrNijEUR9fes8L7Dl8+jispkkNkBA
	16HV3G+42SrnjUqKnrhSVQ7g5JHR1BxtrATMkuzxy0uCOj7laT+ZIqdg6kQn7uvS7SUQ
	HSETDwYXo2aMIIhWj8aF2tFU6RdSGpEoDO7TXMq2+YCLiPv59RcfXNkoLF7l/Upjyb8H
	cqYNcMLTSOvP4yPgaE3BHSg3ZBDThZ3ADEUU8uZEb6b9a5sjlrRcP+9Vd78vqqyglDbw
	00rA==
MIME-Version: 1.0
Received: by 10.50.237.9 with SMTP id uy9mr7047268igc.40.1342886335265; Sat,
	21 Jul 2012 08:58:55 -0700 (PDT)
Received: by 10.64.39.39 with HTTP; Sat, 21 Jul 2012 08:58:55 -0700 (PDT)
Date: Sat, 21 Jul 2012 09:58:55 -0600
Message-ID: <CANwz6nwKcy7-TeR3W8MnAQxer-yhO3wzWUjm3nsfhuwNLGSHHg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: beagleboard not booting yacto1.2.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 21 Jul 2012 15:58:56 -0000
Content-Type: multipart/alternative; boundary=f46d044786edfcbb5a04c559162d

--f46d044786edfcbb5a04c559162d
Content-Type: text/plain; charset=ISO-8859-1

hello,

verifing that this is ver poky-1.2.1
The post by   Elizabeth Flanagan Wed Jul 18 14:20:41 PDT 2012
Yocto 1.2.1 Released
Flanagan, Elizabeth elizabeth.flanagan at intel.com
Commit Information:
Tree/Branch: denzil
Commit id: 73cdebf60df225ee10f2eb215935be3b61e1b831
git clone -b denzil git://git.yoctoproject.org/poky.git
cd poky
git log
commit 73cdebf60df225ee10f2eb215935be3b61e1b831
I tried the default kernel 3.0 this would get a kernel panic could not
mount the mmc

Modified the file meta-yocto/conf/machine/beagleboard.conf

PREFERRED_VERSION_linux-yocto ?= "3.0%" --> PREFERRED_VERSION_linux-yocto
?= "3.4%"
In this version there is no
/home/vidal/poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
as in version poky-1.2.0
so the kernel was Image Name:   Linux-3.2.9-yocto-standard
git status
# On branch denzil
# Changes not staged for commit:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working
directory)
#
#    modified:   meta-yocto/conf/machine/beagleboard.conf
#
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#    build/
no changes added to commit (use "git add" and/or "git commit -a")

-rw-r--r--. 1 vidal users  57409536 Jul 20 16:29
core-image-sato-beagleboard-20120720200156.rootfs.jffs2
-rw-r--r--. 1 vidal users  42607308 Jul 20 16:28
core-image-sato-beagleboard-20120720200156.rootfs.tar.bz2
-rw-r--r--. 1 vidal users  57409536 Jul 21 08:06
core-image-sato-beagleboard-20120721135125.rootfs.jffs2
-rw-r--r--. 1 vidal users  42612264 Jul 21 08:05
core-image-sato-beagleboard-20120721135125.rootfs.tar.bz2
lrwxrwxrwx. 1 vidal users        55 Jul 21 08:06
core-image-sato-beagleboard.jffs2 ->
core-image-sato-beagleboard-20120721135125.rootfs.jffs2
lrwxrwxrwx. 1 vidal users        57 Jul 21 08:05
core-image-sato-beagleboard.tar.bz2 ->
core-image-sato-beagleboard-20120721135125.rootfs.tar.bz2
-rw-r--r--. 1 vidal users 205521920 Jul 20 18:50
core-image-sato-qemuarm-20120720223121.rootfs.ext3
-rw-r--r--. 1 vidal users  37671422 Jul 20 18:50
core-image-sato-qemuarm-20120720223121.rootfs.tar.bz2
lrwxrwxrwx. 1 vidal users        50 Jul 20 18:50
core-image-sato-qemuarm.ext3 ->
core-image-sato-qemuarm-20120720223121.rootfs.ext3
lrwxrwxrwx. 1 vidal users        53 Jul 20 18:50
core-image-sato-qemuarm.tar.bz2 ->
core-image-sato-qemuarm-20120720223121.rootfs.tar.bz2
lrwxrwxrwx. 1 vidal users        70 Jul 20 16:04 MLO-beagleboard ->
MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0
-rwxr-xr-x. 1 vidal users     22388 Jul 20 16:04
MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0
-rw-r--r--. 1 vidal users  33114370 Jul 20 18:26
modules-3.2.18-yocto-standard-r1-qemuarm.tgz
-rw-r--r--. 1 vidal users  35180410 Jul 20 16:04
modules-3.2.9-yocto-standard-r1-beagleboard.tgz
-rw-r--r--. 1 vidal users       294 Jul 21 07:54
README_-_DO_NOT_DELETE_FILES_IN_THIS_DIRECTORY.txt
lrwxrwxrwx. 1 vidal users        81 Jul 21 07:54 u-boot-beagleboard.bin ->
u-boot-beagleboard-v2011.06+git12+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
-rwxr-xr-x. 1 vidal users    316348 Jul 21 07:54
u-boot-beagleboard-v2011.06+git12+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
-rw-r--r--. 1 vidal users   3375864 Jul 20 16:04
uImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+90e3138c5a2a390dd6ddf2ed84fe5a9756d43397-r1-beagleboard-20120720200156.bin
lrwxrwxrwx. 1 vidal users       136 Jul 20 16:04 uImage-beagleboard.bin ->
uImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+90e3138c5a2a390dd6ddf2ed84fe5a9756d43397-r1-beagleboard-20120720200156.bin
-rwxr-xr-x. 1 vidal users     22388 Jul 20 16:04
x-load-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0.bin.ift
lrwxrwxrwx. 1 vidal users        81 Jul 20 16:04 x-load-beagleboard.bin.ift
->
x-load-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0.bin.ift
-rw-r--r--. 1 vidal users   3034248 Jul 20 18:26
zImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+259cff0813417d16baaaaf44b00a9f75103ebfcb-r1-qemuarm-20120720223121.bin
lrwxrwxrwx. 1 vidal users       132 Jul 20 18:26 zImage-qemuarm.bin ->
zImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+259cff0813417d16baaaaf44b00a9f75103ebfcb-r1-qemuarm-20120720223121.bin
cp MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0
/run/media/vidal/boot/MLO
cp
u-boot-beagleboard-v2011.06+git12+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
/run/media/vidal/boot/u-boot.bin
cp
uImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+90e3138c5a2a390dd6ddf2ed84fe5a9756d43397-r1-beagleboard-20120720200156.bin
/run/media/vidal/boot/uImage
cp /home/vidal/uEnv.txt /run/media/vidal/boot/
ls /run/media/vidal/boot/
MLO  u-boot.bin  uEnv.txt  uImage

cd /run/media/vidal/rootfs/
tar jxf
/home/vidal/poky/build/tmp/deploy/images/core-image-sato-beagleboard-20120721135125.rootfs.tar.bz2

cd ~/
umount /run/media/vidal/boot
umount /run/media/vidal/rootfs
sync

Texas Instruments X-Loader 1.5.0 (Jul 19 2012 - 17:05:29)
Beagle xM
Reading boot sector
Loading u-boot.bin from mmc


U-Boot 2011.06 (Jul 19 2012 - 21:25:33)

OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
OMAP3 Beagle board + LPDDR/NAND
I2C:   ready
DRAM:  512 MiB
NAND:  0 MiB
MMC:   OMAP SD/MMC: 0
*** Warning - readenv() failed, using default environment

In:    serial
Out:   serial
Err:   serial
Beagle unknown 0x02
No EEPROM on expansion board
Die ID #158000029ff800000160a7450b02602d
Hit any key to stop autoboot: 10  9  8  7  6  5  4  3  2  1  0
SD/MMC found on device 0
reading uEnv.txt

130 bytes read
Importing environment from mmc ...
reading uImage

3375856 bytes read
Booting from mmc ...
## Booting kernel from Legacy Image at 82000000 ...
   Image Name:   Linux-3.2.9-yocto-standard
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    3375792 Bytes = 3.2 MiB
   Load Address: 80008000
   Entry Point:  80008000
   Verifying Checksum ... OK
   Loading Kernel Image ... OK
OK

Starting kernel ...

Uncompressing Linux... done, booting the kernel.
This ver finds the mmc but does not
get to login screen on serial port or display
nothing displayed on beagleboard monitor expection sato display.
smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex, lpa 0x45E1 but no
IP assigned.

The lines below just keep repeating.

Mouse] on usb-ehci-omap.0-2.5/input0
usb 1-2.5: USB disconnect, device number 65
usb 1-2.5: new low-speed USB device number 66 using ehci-omap
input: PixArt USB Optical Mouse as
/devices/platform/usbhs-omap.0/ehci-omap.0/us
b1/1-2/1-2.5/1-2.5:1.0/input/input63
generic-usb 0003:093A:2510.0040: input: USB HID v1.11 Mouse [PixArt USB
Optical
Mouse] on usb-ehci-omap.0-2.5/input0
usb 1-2.5: USB disconnect, device number 66
usb 1-2.5: new low-speed USB device number 67 using ehci-omap
input: PixArt USB Optical Mouse as
/devices/platform/usbhs-omap.0/ehci-omap.0/us
b1/1-2/1-2.5/1-2.5:1.0/input/input64
generic-usb 0003:093A:2510.0041: input:    USB HID v1.11 Mouse [PixArt USB
Optical
Mouse] on usb-ehci-omap.0-2.5/input0
usb 1-2.5: USB disconnect, device number 67
usb 1-2.5: new low-speed USB device number 68 using ehci-omap
input: PixArt USB Optical Mouse    as
/devices/platform/usbhs-omap.0/ehci-omap.0/us
b1/1-2/1-2.5/1-2.5:1.0/input/input65
generic-usb 0003:093A:2510.0042: input: USB HID v1.11 Mouse [PixArt USB
Optical
Mouse] on usb-ehci-omap.0-2.5/input0

Is there any other information that I can provide?
Any help will be appreciated
Regards

--f46d044786edfcbb5a04c559162d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

hello,<br><br>verifing that this is ver poky-1.2.1<br>The post by=A0=A0 Eli=
zabeth Flanagan Wed Jul 18 14:20:41 PDT 2012<br>Yocto 1.2.1 Released<br>Fla=
nagan, Elizabeth elizabeth.flanagan at <a href=3D"http://intel.com">intel.c=
om</a> <br>
Commit Information:<br>Tree/Branch: denzil<br>Commit id: 73cdebf60df225ee10=
f2eb215935be3b61e1b831<br>git clone -b denzil git://<a href=3D"http://git.y=
octoproject.org/poky.git">git.yoctoproject.org/poky.git</a> <br>cd poky<br>
git log<br>commit 73cdebf60df225ee10f2eb215935be3b61e1b831<br>I tried the d=
efault kernel 3.0 this would get a kernel panic could not mount the mmc<br>=
<br>Modified the file meta-yocto/conf/machine/beagleboard.conf<br><br>PREFE=
RRED_VERSION_linux-yocto ?=3D &quot;3.0%&quot; --&gt; PREFERRED_VERSION_lin=
ux-yocto ?=3D &quot;3.4%&quot;<br>
In this version there is no /home/vidal/poky/meta-yocto/recipes-kernel/linu=
x/linux-yocto_3.4.bbappend as in version poky-1.2.0<br>so the kernel was Im=
age Name:=A0=A0 Linux-3.2.9-yocto-standard<br>git status<br># On branch den=
zil<br>
# Changes not staged for commit:<br>#=A0=A0 (use &quot;git add &lt;file&gt;=
...&quot; to update what will be committed)<br>#=A0=A0 (use &quot;git check=
out -- &lt;file&gt;...&quot; to discard changes in working directory)<br>#<=
br>#=A0=A0=A0 modified:=A0=A0 meta-yocto/conf/machine/beagleboard.conf<br>
#<br># Untracked files:<br>#=A0=A0 (use &quot;git add &lt;file&gt;...&quot;=
 to include in what will be committed)<br>#<br>#=A0=A0=A0 build/<br>no chan=
ges added to commit (use &quot;git add&quot; and/or &quot;git commit -a&quo=
t;)<br>
<br>-rw-r--r--. 1 vidal users=A0 57409536 Jul 20 16:29 core-image-sato-beag=
leboard-20120720200156.rootfs.jffs2<br>-rw-r--r--. 1 vidal users=A0 4260730=
8 Jul 20 16:28 core-image-sato-beagleboard-20120720200156.rootfs.tar.bz2<br=
>
-rw-r--r--. 1 vidal users=A0 57409536 Jul 21 08:06 core-image-sato-beaglebo=
ard-20120721135125.rootfs.jffs2<br>-rw-r--r--. 1 vidal users=A0 42612264 Ju=
l 21 08:05 core-image-sato-beagleboard-20120721135125.rootfs.tar.bz2<br>lrw=
xrwxrwx. 1 vidal users=A0=A0=A0=A0=A0=A0=A0 55 Jul 21 08:06 core-image-sato=
-beagleboard.jffs2 -&gt; core-image-sato-beagleboard-20120721135125.rootfs.=
jffs2<br>
lrwxrwxrwx. 1 vidal users=A0=A0=A0=A0=A0=A0=A0 57 Jul 21 08:05 core-image-s=
ato-beagleboard.tar.bz2 -&gt; core-image-sato-beagleboard-20120721135125.ro=
otfs.tar.bz2<br>-rw-r--r--. 1 vidal users 205521920 Jul 20 18:50 core-image=
-sato-qemuarm-20120720223121.rootfs.ext3<br>
-rw-r--r--. 1 vidal users=A0 37671422 Jul 20 18:50 core-image-sato-qemuarm-=
20120720223121.rootfs.tar.bz2<br>lrwxrwxrwx. 1 vidal users=A0=A0=A0=A0=A0=
=A0=A0 50 Jul 20 18:50 core-image-sato-qemuarm.ext3 -&gt; core-image-sato-q=
emuarm-20120720223121.rootfs.ext3<br>
lrwxrwxrwx. 1 vidal users=A0=A0=A0=A0=A0=A0=A0 53 Jul 20 18:50 core-image-s=
ato-qemuarm.tar.bz2 -&gt; core-image-sato-qemuarm-20120720223121.rootfs.tar=
.bz2<br>lrwxrwxrwx. 1 vidal users=A0=A0=A0=A0=A0=A0=A0 70 Jul 20 16:04 MLO-=
beagleboard -&gt; MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb=
331871f915-r0<br>
-rwxr-xr-x. 1 vidal users=A0=A0=A0=A0 22388 Jul 20 16:04 MLO-beagleboard-1.=
5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0<br>-rw-r--r--. 1 vidal=
 users=A0 33114370 Jul 20 18:26 modules-3.2.18-yocto-standard-r1-qemuarm.tg=
z<br>-rw-r--r--. 1 vidal users=A0 35180410 Jul 20 16:04 modules-3.2.9-yocto=
-standard-r1-beagleboard.tgz<br>
-rw-r--r--. 1 vidal users=A0=A0=A0=A0=A0=A0 294 Jul 21 07:54 README_-_DO_NO=
T_DELETE_FILES_IN_THIS_DIRECTORY.txt<br>lrwxrwxrwx. 1 vidal users=A0=A0=A0=
=A0=A0=A0=A0 81 Jul 21 07:54 u-boot-beagleboard.bin -&gt; u-boot-beagleboar=
d-v2011.06+git12+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin<br>
-rwxr-xr-x. 1 vidal users=A0=A0=A0 316348 Jul 21 07:54 u-boot-beagleboard-v=
2011.06+git12+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin<br>-rw-r--r--=
. 1 vidal users=A0=A0 3375864 Jul 20 16:04 uImage-3.2.18+git1+49f931bc294d5=
b6be60502bbd448cff5aa766235_1+90e3138c5a2a390dd6ddf2ed84fe5a9756d43397-r1-b=
eagleboard-20120720200156.bin<br>
lrwxrwxrwx. 1 vidal users=A0=A0=A0=A0=A0=A0 136 Jul 20 16:04 uImage-beagleb=
oard.bin -&gt; uImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_=
1+90e3138c5a2a390dd6ddf2ed84fe5a9756d43397-r1-beagleboard-20120720200156.bi=
n<br>-rwxr-xr-x. 1 vidal users=A0=A0=A0=A0 22388 Jul 20 16:04 x-load-beagle=
board-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0.bin.ift<br>
lrwxrwxrwx. 1 vidal users=A0=A0=A0=A0=A0=A0=A0 81 Jul 20 16:04 x-load-beagl=
eboard.bin.ift -&gt; x-load-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe3=
9f32bb331871f915-r0.bin.ift<br>-rw-r--r--. 1 vidal users=A0=A0 3034248 Jul =
20 18:26 zImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+259c=
ff0813417d16baaaaf44b00a9f75103ebfcb-r1-qemuarm-20120720223121.bin<br>
lrwxrwxrwx. 1 vidal users=A0=A0=A0=A0=A0=A0 132 Jul 20 18:26 zImage-qemuarm=
.bin -&gt; zImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+25=
9cff0813417d16baaaaf44b00a9f75103ebfcb-r1-qemuarm-20120720223121.bin<br>cp =
MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0 /run=
/media/vidal/boot/MLO<br>
cp u-boot-beagleboard-v2011.06+git12+b1af6f532e0d348b153d5c148369229d24af36=
1a-r1.bin /run/media/vidal/boot/u-boot.bin<br>cp uImage-3.2.18+git1+49f931b=
c294d5b6be60502bbd448cff5aa766235_1+90e3138c5a2a390dd6ddf2ed84fe5a9756d4339=
7-r1-beagleboard-20120720200156.bin /run/media/vidal/boot/uImage<br>
cp /home/vidal/uEnv.txt /run/media/vidal/boot/<br>ls /run/media/vidal/boot/=
<br>MLO=A0 u-boot.bin=A0 uEnv.txt=A0 uImage<br>=A0<br>cd /run/media/vidal/r=
ootfs/<br>tar jxf /home/vidal/poky/build/tmp/deploy/images/core-image-sato-=
beagleboard-20120721135125.rootfs.tar.bz2 <br>
cd ~/<br>umount /run/media/vidal/boot <br>umount /run/media/vidal/rootfs<br=
>sync<br><br>Texas Instruments X-Loader 1.5.0 (Jul 19 2012 - 17:05:29)<br>B=
eagle xM<br>Reading boot sector<br>Loading u-boot.bin from mmc<br><br><br>
U-Boot 2011.06 (Jul 19 2012 - 21:25:33)<br><br>OMAP3630/3730-GP ES2.1, CPU-=
OPP2, L3-165MHz, Max CPU Clock 1 Ghz<br>OMAP3 Beagle board + LPDDR/NAND<br>=
I2C:=A0=A0 ready<br>DRAM:=A0 512 MiB<br>NAND:=A0 0 MiB<br>MMC:=A0=A0 OMAP S=
D/MMC: 0<br>
*** Warning - readenv() failed, using default environment<br><br>In:=A0=A0=
=A0 serial<br>Out:=A0=A0 serial<br>Err:=A0=A0 serial<br>Beagle unknown 0x02=
<br>No EEPROM on expansion board<br>Die ID #158000029ff800000160a7450b02602=
d<br>Hit any key to stop autoboot: 10=A0 9=A0 8=A0 7=A0 6=A0 5=A0 4=A0 3=A0=
 2=A0 1=A0 0 <br>
SD/MMC found on device 0<br>reading uEnv.txt<br><br>130 bytes read<br>Impor=
ting environment from mmc ...<br>reading uImage<br><br>3375856 bytes read<b=
r>Booting from mmc ...<br>## Booting kernel from Legacy Image at 82000000 .=
..<br>
=A0=A0 Image Name:=A0=A0 Linux-3.2.9-yocto-standard<br>=A0=A0 Image Type:=
=A0=A0 ARM Linux Kernel Image (uncompressed)<br>=A0=A0 Data Size:=A0=A0=A0 =
3375792 Bytes =3D 3.2 MiB<br>=A0=A0 Load Address: 80008000<br>=A0=A0 Entry =
Point:=A0 80008000<br>=A0=A0 Verifying Checksum ... OK<br>
=A0=A0 Loading Kernel Image ... OK<br>OK<br><br>Starting kernel ...<br><br>=
Uncompressing Linux... done, booting the kernel.<br>This ver finds the mmc =
but does not<br>get to login screen on serial port or display<br>nothing di=
splayed on beagleboard monitor expection sato display.<br>
smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex, lpa 0x45E1 but no =
IP assigned.<br><br>The lines below just keep repeating.<br><br>Mouse] on u=
sb-ehci-omap.0-2.5/input0<br>usb 1-2.5: USB disconnect, device number 65<br=
>
usb 1-2.5: new low-speed USB device number 66 using ehci-omap<br>input: Pix=
Art USB Optical Mouse as /devices/platform/usbhs-omap.0/ehci-omap.0/us<br>b=
1/1-2/1-2.5/1-2.5:1.0/input/input63<br>generic-usb 0003:093A:2510.0040: inp=
ut: USB HID v1.11 Mouse [PixArt USB Optical<br>
Mouse] on usb-ehci-omap.0-2.5/input0<br>usb 1-2.5: USB disconnect, device n=
umber 66<br>usb 1-2.5: new low-speed USB device number 67 using ehci-omap<b=
r>input: PixArt USB Optical Mouse as /devices/platform/usbhs-omap.0/ehci-om=
ap.0/us<br>
b1/1-2/1-2.5/1-2.5:1.0/input/input64<br>generic-usb 0003:093A:2510.0041: in=
put:=A0=A0=A0 USB HID v1.11 Mouse [PixArt USB Optical<br>Mouse] on usb-ehci=
-omap.0-2.5/input0<br>usb 1-2.5: USB disconnect, device number 67<br>usb 1-=
2.5: new low-speed USB device number 68 using ehci-omap<br>
input: PixArt USB Optical Mouse=A0=A0=A0 as /devices/platform/usbhs-omap.0/=
ehci-omap.0/us<br>b1/1-2/1-2.5/1-2.5:1.0/input/input65<br>generic-usb 0003:=
093A:2510.0042: input: USB HID v1.11 Mouse [PixArt USB Optical<br>Mouse] on=
 usb-ehci-omap.0-2.5/input0<br>
=A0<br>Is there any other information that I can provide?<br>Any help will =
be appreciated <br>Regards<br>

--f46d044786edfcbb5a04c559162d--
