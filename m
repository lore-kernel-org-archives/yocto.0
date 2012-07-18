Return-Path: <vidal.develone@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16113E00348
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 16:12:37 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so2605876ggn.35
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 16:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=jeoCUCn0ZaXv/tHQZazaDLKyitFo/yASs6suOAmrbis=;
	b=uWABltrukQJzaJdb5I1AR2SczJHgnKMy/Av3s//griBlqUqO6z37GTPBIYHE/BcxqC
	TwfieX59S9LcCRsNx+Wa6i6TUND6WStkAkDvZzzhcp32cT/0UiZwuj4LpSBeDLE/pxM5
	0XNbSC6y6uWEd1Ida3p/ybig3sTSfdLrXEzhqHEsK612K/Ub+J2yE7tQpZ4y27AjZlJJ
	+OWokW95MUKCtVS4iqkzlT6z5XjwJDcUTsMi4mTJ9Qvk2bCguwnHJwRLTFH3SSvKKs5j
	qmCDM8mjV0qY9iFsy7CJTJM4Ls2VPLQTCr57XnxlXN2eVve4rwL/Xqyi8cyv5hnGtKND
	A3Eg==
MIME-Version: 1.0
Received: by 10.50.237.9 with SMTP id uy9mr3643339igc.40.1342653156465; Wed,
	18 Jul 2012 16:12:36 -0700 (PDT)
Received: by 10.64.39.39 with HTTP; Wed, 18 Jul 2012 16:12:36 -0700 (PDT)
Date: Wed, 18 Jul 2012 17:12:36 -0600
Message-ID: <CANwz6nyO57dW5Tn3fnC+JVNWfWYfp2fmAgrEbtF66RKsKy_hOg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: beagleboard not booting
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
X-List-Received-Date: Wed, 18 Jul 2012 23:12:38 -0000
Content-Type: multipart/alternative; boundary=f46d044786ed729a0e04c522cc77

--f46d044786ed729a0e04c522cc77
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I tried the suggestion to try the 3.4 kernel. I didn't get the 3.4 kernel
instead I got the 3.2 kernel and the boot process went much further this
time.

Modified the file /home/vidal/poky/meta-yocto/conf/machine/beagleboard.conf

PREFERRED_VERSION_linux-yocto ?= "3.0%" --> PREFERRED_VERSION_linux-yocto
?= "3.4%"

MACHINE=beagleboard bitbake -v -D -D -D core-sato-image
New files were created /home/vidal/poky/build/tmp/deploy/images
lrwxrwxrwx. 1 vidal users        55 Jul 18 15:56
core-image-sato-beagleboard.jffs2 ->
core-image-sato-beagleboard-20120718203130.rootfs.jffs2
-rw-r--r--. 1 vidal users  61079552 Jul 18 15:56
core-image-sato-beagleboard-20120718203130.rootfs.jffs2
lrwxrwxrwx. 1 vidal users        57 Jul 18 15:56
core-image-sato-beagleboard.tar.bz2 ->
core-image-sato-beagleboard-20120718203130.rootfs.tar.bz2
-rw-r--r--. 1 vidal users  45832645 Jul 18 15:55
core-image-sato-beagleboard-20120718203130.rootfs.tar.bz2
-rw-r--r--. 1 vidal users       294 Jul 18 15:45
README_-_DO_NOT_DELETE_FILES_IN_THIS_DIRECTORY.txt
-rw-r--r--. 1 vidal users  36345272 Jul 18 15:24
modules-3.2.18-yocto-standard-r4.0-beagleboard.tgz
lrwxrwxrwx. 1 vidal users       138 Jul 18 15:24 uImage ->
uImage-3.2.18+git1+07ee09b520579b9f29bd15fefb01fd28b34c6064_1+40bde7a43ef3cd85729ab02464a7ecdf71e522a6-r4.0-beagleboard-20120718203130.bin
lrwxrwxrwx. 1 vidal users       138 Jul 18 15:24 uImage-beagleboard.bin ->
uImage-3.2.18+git1+07ee09b520579b9f29bd15fefb01fd28b34c6064_1+40bde7a43ef3cd85729ab02464a7ecdf71e522a6-r4.0-beagleboard-20120718203130.bin
-rw-r--r--. 1 vidal users   3378560 Jul 18 15:24
uImage-3.2.18+git1+07ee09b520579b9f29bd15fefb01fd28b34c6064_1+40bde7a43ef3cd85729ab02464a7ecdf71e522a6-r4.0-beagleboard-20120718203130.bin
lrwxrwxrwx. 1 vidal users        81 Jul 18 14:33 u-boot-beagleboard.bin ->
u-boot-beagleboard-v2011.06+git28+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
-rwxr-xr-x. 1 vidal users    285124 Jul 18 14:33
u-boot-beagleboard-v2011.06+git28+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin

mkfs.vfat -F 16 -n  "boot" /dev/sdb1
/dev/sdb1
W95 FAT32 (LBA) (Bootable)

mke2fs -j -L "rootfs" /dev/sdb2
/dev/sdb2
Ext3 (version 1.0)

cd /home/vidal/poky/build/tmp/deploy/images
cp MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0
/run/media/vidal/boot/MLO
cp
u-boot-beagleboard-v2011.06+git28+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
/run/media/vidal/boot/u-boot.bin
cp
uImage-3.2.18+git1+07ee09b520579b9f29bd15fefb01fd28b34c6064_1+40bde7a43ef3cd85729ab02464a7ecdf71e522a6-r4.0-beagleboard-20120718203130.bin
/run/media/vidal/boot/uImage
cp /home/vidal/uEnv.txt /run/media/vidal/boot/

less /run/media/vidal/boot/uEnv.txt
mpurate=auto

dvimode="hd720 omapfb.vram=0:8M,1:4M,2:4M"
vram=16M
optargs="consoleblank=0"
console="tty0 console=ttyO2,115200n8"

cd /run/media/vidal/rootfs/

tar jxvf
/home/vidal/poky/build/tmp/deploy/images/core-image-sato-beagleboard-20120718203130.rootfs.tar.bz2

cd ~/
umount /run/media/vidal/boot
umount /run/media/vidal/rootfs
sync
The boot log is over 4000 lines I took select lines at the begin middle and
end It appears that it is getting much further that with the 3.0 kernel

reading uEnv.txt

130 bytes read
Importing environment from mmc ...
reading uImage

3378560 bytes read
Booting from mmc ...
## Booting kernel from Legacy Image at 82000000 ...
   Image Name:   Linux-3.2.18-yocto-standard
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    3378496 Bytes = 3.2 MiB

gtk-update-icon-cache:740): GdkPixbuf-WARNING **: Cannot open pixbuf loader
mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:740): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:740): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

input: PixArt USB Optical Mouse as
/devices/platform/usbhs-omap.0/ehci-omap.0/us
b1/1-2/1-2.5/1-2.5:1.0/input/input4
generic-usb 0003:093A:2510.0005: input: USB HID v1.11 Mouse [PixArt USB
Optical
Mouse] on usb-ehci-omap.0-2.5/input0
Running postinst /etc/rpm-postinsts/115...
Running postinst /etc/rpm-postinsts/116...
INIT: Entering runlevel: 5
Starting system message bus: dbus.
Starting Connection Manager
Starting Xserver
ip_tables: (C) 2000-2006 Netfilter Core Team
nf_conntrack version 0.5.0 (7721 buckets, 30884 max)

Starting Dropbear SSH server: Will output 1024 bit rsa secret key to
'/etc/dropb
ear/dropbear_rsa_host_key'
Generating key, this may take a while...
Public key portion is:
ssh-rsa
AAAAB3NzaC1yc2EAAAADAQABAAAAgwDCWs+/VxG1kpFFXea8eexz+ZMftcG8eDYv93TjeNhf
NSJATNo9p14jnOAmLdfdZEkEJQbku1qvDWrQoZ2/IeE89SaRm45tAQEnZbfZKIFoAphvNhy2EDuT0pal
Qff0GdQjeP3N9nqHpCgcsPviLK2YVng2XItWUOGbq/p3SmHLZ0CT root@beagleboard
Fingerprint: md5 92:4e:e7:4c:fe:e9:5e:d4:71:1e:1e:76:b0:56:e9:da
dropbear.

X.Org X Server 1.11.2
Release Date: 2011-11-04
X Protocol Version 11, Revision 0
Build Operating System: Linux 3.3.4-5.fc17.x86_64 x86_64
Current Operating System: Linux beagleboard 3.2.18-yocto-standard #1 Wed
Jul 18
15:18:53 MDT 2012 armv7l
Kernel command line: console=tty0 console=ttyO2,115200n8 mpurate=auto
vram=16M o
mapfb.mode=dvi:hd720 omapfb.vram=0:8M,1:4M,2:4M omapfb.debug=y
omapdss.def_disp=
dvi root=/dev/mmcblk0p2 rw rootfstype=ext3 rootwait
Build Date: 15 July 2012  12:32:41PM

Current version of pixman: 0.26.2
Before reporting problems, check http://wiki.x.org
to make sure that you have the latest version.
Markers: (--) probed, (**) from config file, (==) default setting,
(++) from command line, (!!) notice, (II) informational,
(WW) warning, (EE) error, (NI) not implemented, (??) unknown.
(==) Log file: "/var/log/Xorg.0.log", Time: Wed Jul 18 21:55:10 2012
(==) Using config file: "/etc/X11/xorg.conf"
(==) Using system config directory "/usr/share/X11/xorg.conf.d"
(EE) Failed to load module "extmod" (module does not exist, 0)
(EE) Failed to load module "dbe" (module does not exist, 0)
(EE) Failed to load module "glx" (module does not exist, 0)
Starting advanced power management daemon: (EE) Failed to load module
"record" (
module does not exist, 0)
(EE) Failed to load module "dri" (module does not exist, 0)
(EE) Failed to load module "dri2" (module does not exist, 0)
apmd.
apmd[921]: apmd 3.2.1 interfacing with apm driver 1.13 and APM BIOS 1.2
(EE) omapfb(0): Failed to open /dev/fb2: No such file or directory
(EE) omapfb(0): XVScreenInit failed
Starting syslogd/klogd: done
 * Starting Avahi mDNS/DNS-SD Daemon: avahi-daemon
   ...done.
Starting Telephony daemon
Stopping Bootlog daemon: bootlogd.
D-BUS per-session daemon address is:
unix:abstract=/tmp/dbus-YSsZ7bMMnl,guid=80b
47e1ed801ed95e922788b000000b7

Yocto (Built by Poky 7.0) 1.2+snapshot-20120718 beagleboard ttyO2

beagleboard login: [settings daemon] Forking. run with -n to prevent fork
matchbo
x: Cant find a keycode for keysym 269025056
matchbox: ignoring key shortcut XF86C
alendar=!$contacts

matchbox: Cant find a keycode for keysym 2809
matchbox: ignorin
g key shortcut telephone=!$dates

matchbox: Cant find a keycode for keysym 2690250
50
matchbox: ignoring key shortcut XF86Start=!matchbox-remote -desktop


** (matchbo
x-desktop:1007): WARNING **: Error loading icon: Icon 'computer' not
present in
theme

** (matchbox-desktop:1007): WARNING **: Error loading icon: Icon 'system-fi
le-manager' not present in theme

Thanks for any help I saw in the boot log that the x-server was started but
nothing was displayed on the display.
Any help will be appreciated.

--f46d044786ed729a0e04c522cc77
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br>I tried the suggestion to try the 3.4 kernel. I didn&#39;t get th=
e 3.4 kernel instead I got the 3.2 kernel and the boot process went much fu=
rther this time.<br><br>Modified the file /home/vidal/poky/meta-yocto/conf/=
machine/beagleboard.conf<br>
<br>PREFERRED_VERSION_linux-yocto ?=3D &quot;3.0%&quot; --&gt; PREFERRED_VE=
RSION_linux-yocto ?=3D &quot;3.4%&quot;<br><br>MACHINE=3Dbeagleboard bitbak=
e -v -D -D -D core-sato-image<br>New files were created /home/vidal/poky/bu=
ild/tmp/deploy/images<br>
lrwxrwxrwx. 1 vidal users=A0=A0=A0=A0=A0=A0=A0 55 Jul 18 15:56 core-image-s=
ato-beagleboard.jffs2 -&gt; core-image-sato-beagleboard-20120718203130.root=
fs.jffs2<br>-rw-r--r--. 1 vidal users=A0 61079552 Jul 18 15:56 core-image-s=
ato-beagleboard-20120718203130.rootfs.jffs2<br>
lrwxrwxrwx. 1 vidal users=A0=A0=A0=A0=A0=A0=A0 57 Jul 18 15:56 core-image-s=
ato-beagleboard.tar.bz2 -&gt; core-image-sato-beagleboard-20120718203130.ro=
otfs.tar.bz2<br>-rw-r--r--. 1 vidal users=A0 45832645 Jul 18 15:55 core-ima=
ge-sato-beagleboard-20120718203130.rootfs.tar.bz2<br>
-rw-r--r--. 1 vidal users=A0=A0=A0=A0=A0=A0 294 Jul 18 15:45 README_-_DO_NO=
T_DELETE_FILES_IN_THIS_DIRECTORY.txt<br>-rw-r--r--. 1 vidal users=A0 363452=
72 Jul 18 15:24 modules-3.2.18-yocto-standard-r4.0-beagleboard.tgz<br>lrwxr=
wxrwx. 1 vidal users=A0=A0=A0=A0=A0=A0 138 Jul 18 15:24 uImage -&gt; uImage=
-3.2.18+git1+07ee09b520579b9f29bd15fefb01fd28b34c6064_1+40bde7a43ef3cd85729=
ab02464a7ecdf71e522a6-r4.0-beagleboard-20120718203130.bin<br>
lrwxrwxrwx. 1 vidal users=A0=A0=A0=A0=A0=A0 138 Jul 18 15:24 uImage-beagleb=
oard.bin -&gt; uImage-3.2.18+git1+07ee09b520579b9f29bd15fefb01fd28b34c6064_=
1+40bde7a43ef3cd85729ab02464a7ecdf71e522a6-r4.0-beagleboard-20120718203130.=
bin<br>-rw-r--r--. 1 vidal users=A0=A0 3378560 Jul 18 15:24 uImage-3.2.18+g=
it1+07ee09b520579b9f29bd15fefb01fd28b34c6064_1+40bde7a43ef3cd85729ab02464a7=
ecdf71e522a6-r4.0-beagleboard-20120718203130.bin<br>
lrwxrwxrwx. 1 vidal users=A0=A0=A0=A0=A0=A0=A0 81 Jul 18 14:33 u-boot-beagl=
eboard.bin -&gt; u-boot-beagleboard-v2011.06+git28+b1af6f532e0d348b153d5c14=
8369229d24af361a-r1.bin<br>-rwxr-xr-x. 1 vidal users=A0=A0=A0 285124 Jul 18=
 14:33 u-boot-beagleboard-v2011.06+git28+b1af6f532e0d348b153d5c148369229d24=
af361a-r1.bin<br>
<br>mkfs.vfat -F 16 -n=A0 &quot;boot&quot; /dev/sdb1<br>/dev/sdb1=A0 <br>W9=
5 FAT32 (LBA) (Bootable)<br><br>mke2fs -j -L &quot;rootfs&quot; /dev/sdb2<b=
r>/dev/sdb2<br>Ext3 (version 1.0)<br><br>cd /home/vidal/poky/build/tmp/depl=
oy/images<br>
cp MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0 /=
run/media/vidal/boot/MLO<br>cp=A0 u-boot-beagleboard-v2011.06+git28+b1af6f5=
32e0d348b153d5c148369229d24af361a-r1.bin /run/media/vidal/boot/u-boot.bin<b=
r>
cp uImage-3.2.18+git1+07ee09b520579b9f29bd15fefb01fd28b34c6064_1+40bde7a43e=
f3cd85729ab02464a7ecdf71e522a6-r4.0-beagleboard-20120718203130.bin /run/med=
ia/vidal/boot/uImage<br>cp /home/vidal/uEnv.txt /run/media/vidal/boot/<br>
<br>less /run/media/vidal/boot/uEnv.txt<br>mpurate=3Dauto<br><br>dvimode=3D=
&quot;hd720 omapfb.vram=3D0:8M,1:4M,2:4M&quot;<br>vram=3D16M<br>optargs=3D&=
quot;consoleblank=3D0&quot;<br>console=3D&quot;tty0 console=3DttyO2,115200n=
8&quot;<br><br>
cd /run/media/vidal/rootfs/<br><br>tar jxvf /home/vidal/poky/build/tmp/depl=
oy/images/core-image-sato-beagleboard-20120718203130.rootfs.tar.bz2<br><br>=
cd ~/<br>umount /run/media/vidal/boot<br>umount /run/media/vidal/rootfs<br>
sync<br>The boot log is over 4000 lines I took select lines at the begin mi=
ddle and end It appears that it is getting much further that with the 3.0 k=
ernel <br>=A0<br>reading uEnv.txt<br><br>130 bytes read<br>Importing enviro=
nment from mmc ...<br>
reading uImage<br><br>3378560 bytes read<br>Booting from mmc ...<br>## Boot=
ing kernel from Legacy Image at 82000000 ...<br>=A0=A0 Image Name:=A0=A0 Li=
nux-3.2.18-yocto-standard<br>=A0=A0 Image Type:=A0=A0 ARM Linux Kernel Imag=
e (uncompressed)<br>
=A0=A0 Data Size:=A0=A0=A0 3378496 Bytes =3D 3.2 MiB<br><br>gtk-update-icon=
-cache:740): GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>ule fil=
e &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such file or d=
irecto<br>
ry<br><br>(gtk-update-icon-cache:740): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:740): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>input: PixArt USB Optical Mouse as /devices/plat=
form/usbhs-omap.0/ehci-omap.0/us<br>b1/1-2/1-2.5/1-2.5:1.0/input/input4<br>
generic-usb 0003:093A:2510.0005: input: USB HID v1.11 Mouse [PixArt USB Opt=
ical <br>Mouse] on usb-ehci-omap.0-2.5/input0<br>Running postinst /etc/rpm-=
postinsts/115...<br>Running postinst /etc/rpm-postinsts/116...<br>INIT: Ent=
ering runlevel: 5<br>
Starting system message bus: dbus.<br>Starting Connection Manager<br>Starti=
ng Xserver<br>ip_tables: (C) 2000-2006 Netfilter Core Team<br>nf_conntrack =
version 0.5.0 (7721 buckets, 30884 max)<br><br>Starting Dropbear SSH server=
: Will output 1024 bit rsa secret key to &#39;/etc/dropb<br>
ear/dropbear_rsa_host_key&#39;<br>Generating key, this may take a while...<=
br>Public key portion is:<br>ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgwDCWs+/Vx=
G1kpFFXea8eexz+ZMftcG8eDYv93TjeNhf<br>NSJATNo9p14jnOAmLdfdZEkEJQbku1qvDWrQo=
Z2/IeE89SaRm45tAQEnZbfZKIFoAphvNhy2EDuT0pal<br>
Qff0GdQjeP3N9nqHpCgcsPviLK2YVng2XItWUOGbq/p3SmHLZ0CT root@beagleboard<br>Fi=
ngerprint: md5 92:4e:e7:4c:fe:e9:5e:d4:71:1e:1e:76:b0:56:e9:da<br>dropbear.=
<br><br>X.Org X Server 1.11.2<br>Release Date: 2011-11-04<br>X Protocol Ver=
sion 11, Revision 0<br>
Build Operating System: Linux 3.3.4-5.fc17.x86_64 x86_64 <br>Current Operat=
ing System: Linux beagleboard 3.2.18-yocto-standard #1 Wed Jul 18 <br>15:18=
:53 MDT 2012 armv7l<br>Kernel command line: console=3Dtty0 console=3DttyO2,=
115200n8 mpurate=3Dauto vram=3D16M o<br>
mapfb.mode=3Ddvi:hd720 omapfb.vram=3D0:8M,1:4M,2:4M omapfb.debug=3Dy omapds=
s.def_disp=3D<br>dvi root=3D/dev/mmcblk0p2 rw rootfstype=3Dext3 rootwait<br=
>Build Date: 15 July 2012=A0 12:32:41PM<br>=A0<br>Current version of pixman=
: 0.26.2<br>
Before reporting problems, check <a href=3D"http://wiki.x.org">http://wiki.=
x.org</a><br>to make sure that you have the latest version.<br>Markers: (--=
) probed, (**) from config file, (=3D=3D) default setting,<br>(++) from com=
mand line, (!!) notice, (II) informational,<br>
(WW) warning, (EE) error, (NI) not implemented, (??) unknown.<br>(=3D=3D) L=
og file: &quot;/var/log/Xorg.0.log&quot;, Time: Wed Jul 18 21:55:10 2012<br=
>(=3D=3D) Using config file: &quot;/etc/X11/xorg.conf&quot;<br>(=3D=3D) Usi=
ng system config directory &quot;/usr/share/X11/xorg.conf.d&quot;<br>
(EE) Failed to load module &quot;extmod&quot; (module does not exist, 0)<br=
>(EE) Failed to load module &quot;dbe&quot; (module does not exist, 0)<br>(=
EE) Failed to load module &quot;glx&quot; (module does not exist, 0)<br>
Starting advanced power management daemon: (EE) Failed to load module &quot=
;record&quot; (<br>module does not exist, 0)<br>(EE) Failed to load module =
&quot;dri&quot; (module does not exist, 0)<br>(EE) Failed to load module &q=
uot;dri2&quot; (module does not exist, 0)<br>
apmd.<br>apmd[921]: apmd 3.2.1 interfacing with apm driver 1.13 and APM BIO=
S 1.2<br>(EE) omapfb(0): Failed to open /dev/fb2: No such file or directory=
<br>(EE) omapfb(0): XVScreenInit failed<br>Starting syslogd/klogd: done<br>
=A0* Starting Avahi mDNS/DNS-SD Daemon: avahi-daemon<br>=A0=A0 ...done.<br>=
Starting Telephony daemon<br>Stopping Bootlog daemon: bootlogd.<br>D-BUS pe=
r-session daemon address is: unix:abstract=3D/tmp/dbus-YSsZ7bMMnl,guid=3D80=
b<br>47e1ed801ed95e922788b000000b7<br>
<br>Yocto (Built by Poky 7.0) 1.2+snapshot-20120718 beagleboard ttyO2<br><b=
r>beagleboard login: [settings daemon] Forking. run with -n to prevent fork=
<br>matchbo<br>x: Cant find a keycode for keysym 269025056<br>matchbox: ign=
oring key shortcut XF86C<br>
alendar=3D!$contacts<br><br>matchbox: Cant find a keycode for keysym 2809<b=
r>matchbox: ignorin<br>g key shortcut telephone=3D!$dates<br><br>matchbox: =
Cant find a keycode for keysym 2690250<br>50<br>matchbox: ignoring key shor=
tcut XF86Start=3D!matchbox-remote -desktop<br>
<br><br>** (matchbo<br>x-desktop:1007): WARNING **: Error loading icon: Ico=
n &#39;computer&#39; not present in <br>theme<br><br>** (matchbox-desktop:1=
007): WARNING **: Error loading icon: Icon &#39;system-fi<br>le-manager&#39=
; not present in theme<br>
<br>Thanks for any help I saw in the boot log that the x-server was started=
 but nothing was displayed on the display.<br>Any help will be appreciated.=
<br><br>

--f46d044786ed729a0e04c522cc77--
