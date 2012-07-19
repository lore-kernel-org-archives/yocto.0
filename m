Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EB9DE0070B
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 21:37:21 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q6J4bHgA005980
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 18 Jul 2012 21:37:18 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.164) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 18 Jul 2012 21:37:17 -0700
Message-ID: <50078EEB.6090707@windriver.com>
Date: Thu, 19 Jul 2012 00:36:59 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Edward Vidal <vidal.develone@gmail.com>
References: <CANwz6nyO57dW5Tn3fnC+JVNWfWYfp2fmAgrEbtF66RKsKy_hOg@mail.gmail.com>
In-Reply-To: <CANwz6nyO57dW5Tn3fnC+JVNWfWYfp2fmAgrEbtF66RKsKy_hOg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: beagleboard not booting
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
X-List-Received-Date: Thu, 19 Jul 2012 04:37:21 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-07-18 7:12 PM, Edward Vidal wrote:
> Hello,
> I tried the suggestion to try the 3.4 kernel. I didn't get the 3.4
> kernel instead I got the 3.2 kernel and the boot process went much
> further this time.

Progress is good. You ended up with the 3.2 kernel because the
meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend doesn't have
compatibility set for the beagleboard. If you uncomment the beagleboard,
you'll get a 3.4.4 build.

I'll gear up to try some of my own builds and boots shortly as well.

Cheers,

Bruce

>
> Modified the file /home/vidal/poky/meta-yocto/conf/machine/beagleboard.conf
>
> PREFERRED_VERSION_linux-yocto ?= "3.0%" -->
> PREFERRED_VERSION_linux-yocto ?= "3.4%"
>
> MACHINE=beagleboard bitbake -v -D -D -D core-sato-image
> New files were created /home/vidal/poky/build/tmp/deploy/images
> lrwxrwxrwx. 1 vidal users 55 Jul 18 15:56
> core-image-sato-beagleboard.jffs2 ->
> core-image-sato-beagleboard-20120718203130.rootfs.jffs2
> -rw-r--r--. 1 vidal users 61079552 Jul 18 15:56
> core-image-sato-beagleboard-20120718203130.rootfs.jffs2
> lrwxrwxrwx. 1 vidal users 57 Jul 18 15:56
> core-image-sato-beagleboard.tar.bz2 ->
> core-image-sato-beagleboard-20120718203130.rootfs.tar.bz2
> -rw-r--r--. 1 vidal users 45832645 Jul 18 15:55
> core-image-sato-beagleboard-20120718203130.rootfs.tar.bz2
> -rw-r--r--. 1 vidal users 294 Jul 18 15:45
> README_-_DO_NOT_DELETE_FILES_IN_THIS_DIRECTORY.txt
> -rw-r--r--. 1 vidal users 36345272 Jul 18 15:24
> modules-3.2.18-yocto-standard-r4.0-beagleboard.tgz
> lrwxrwxrwx. 1 vidal users 138 Jul 18 15:24 uImage ->
> uImage-3.2.18+git1+07ee09b520579b9f29bd15fefb01fd28b34c6064_1+40bde7a43ef3cd85729ab02464a7ecdf71e522a6-r4.0-beagleboard-20120718203130.bin
> lrwxrwxrwx. 1 vidal users 138 Jul 18 15:24 uImage-beagleboard.bin ->
> uImage-3.2.18+git1+07ee09b520579b9f29bd15fefb01fd28b34c6064_1+40bde7a43ef3cd85729ab02464a7ecdf71e522a6-r4.0-beagleboard-20120718203130.bin
> -rw-r--r--. 1 vidal users 3378560 Jul 18 15:24
> uImage-3.2.18+git1+07ee09b520579b9f29bd15fefb01fd28b34c6064_1+40bde7a43ef3cd85729ab02464a7ecdf71e522a6-r4.0-beagleboard-20120718203130.bin
> lrwxrwxrwx. 1 vidal users 81 Jul 18 14:33 u-boot-beagleboard.bin ->
> u-boot-beagleboard-v2011.06+git28+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
> -rwxr-xr-x. 1 vidal users 285124 Jul 18 14:33
> u-boot-beagleboard-v2011.06+git28+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
>
> mkfs.vfat -F 16 -n "boot" /dev/sdb1
> /dev/sdb1
> W95 FAT32 (LBA) (Bootable)
>
> mke2fs -j -L "rootfs" /dev/sdb2
> /dev/sdb2
> Ext3 (version 1.0)
>
> cd /home/vidal/poky/build/tmp/deploy/images
> cp
> MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0
> /run/media/vidal/boot/MLO
> cp
> u-boot-beagleboard-v2011.06+git28+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
> /run/media/vidal/boot/u-boot.bin
> cp
> uImage-3.2.18+git1+07ee09b520579b9f29bd15fefb01fd28b34c6064_1+40bde7a43ef3cd85729ab02464a7ecdf71e522a6-r4.0-beagleboard-20120718203130.bin
> /run/media/vidal/boot/uImage
> cp /home/vidal/uEnv.txt /run/media/vidal/boot/
>
> less /run/media/vidal/boot/uEnv.txt
> mpurate=auto
>
> dvimode="hd720 omapfb.vram=0:8M,1:4M,2:4M"
> vram=16M
> optargs="consoleblank=0"
> console="tty0 console=ttyO2,115200n8"
>
> cd /run/media/vidal/rootfs/
>
> tar jxvf
> /home/vidal/poky/build/tmp/deploy/images/core-image-sato-beagleboard-20120718203130.rootfs.tar.bz2
>
> cd ~/
> umount /run/media/vidal/boot
> umount /run/media/vidal/rootfs
> sync
> The boot log is over 4000 lines I took select lines at the begin middle
> and end It appears that it is getting much further that with the 3.0 kernel
>
> reading uEnv.txt
>
> 130 bytes read
> Importing environment from mmc ...
> reading uImage
>
> 3378560 bytes read
> Booting from mmc ...
> ## Booting kernel from Legacy Image at 82000000 ...
> Image Name: Linux-3.2.18-yocto-standard
> Image Type: ARM Linux Kernel Image (uncompressed)
> Data Size: 3378496 Bytes = 3.2 MiB
>
> gtk-update-icon-cache:740): GdkPixbuf-WARNING **: Cannot open pixbuf
> loader mod
> ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
> directo
> ry
>
> (gtk-update-icon-cache:740): GdkPixbuf-WARNING **: Cannot open pixbuf
> loader mod
> ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
> directo
> ry
>
> (gtk-update-icon-cache:740): GdkPixbuf-WARNING **: Cannot open pixbuf
> loader mod
> ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
> directo
> ry
>
> input: PixArt USB Optical Mouse as
> /devices/platform/usbhs-omap.0/ehci-omap.0/us
> b1/1-2/1-2.5/1-2.5:1.0/input/input4
> generic-usb 0003:093A:2510.0005: input: USB HID v1.11 Mouse [PixArt USB
> Optical
> Mouse] on usb-ehci-omap.0-2.5/input0
> Running postinst /etc/rpm-postinsts/115...
> Running postinst /etc/rpm-postinsts/116...
> INIT: Entering runlevel: 5
> Starting system message bus: dbus.
> Starting Connection Manager
> Starting Xserver
> ip_tables: (C) 2000-2006 Netfilter Core Team
> nf_conntrack version 0.5.0 (7721 buckets, 30884 max)
>
> Starting Dropbear SSH server: Will output 1024 bit rsa secret key to
> '/etc/dropb
> ear/dropbear_rsa_host_key'
> Generating key, this may take a while...
> Public key portion is:
> ssh-rsa
> AAAAB3NzaC1yc2EAAAADAQABAAAAgwDCWs+/VxG1kpFFXea8eexz+ZMftcG8eDYv93TjeNhf
> NSJATNo9p14jnOAmLdfdZEkEJQbku1qvDWrQoZ2/IeE89SaRm45tAQEnZbfZKIFoAphvNhy2EDuT0pal
> Qff0GdQjeP3N9nqHpCgcsPviLK2YVng2XItWUOGbq/p3SmHLZ0CT root@beagleboard
> Fingerprint: md5 92:4e:e7:4c:fe:e9:5e:d4:71:1e:1e:76:b0:56:e9:da
> dropbear.
>
> X.Org X Server 1.11.2
> Release Date: 2011-11-04
> X Protocol Version 11, Revision 0
> Build Operating System: Linux 3.3.4-5.fc17.x86_64 x86_64
> Current Operating System: Linux beagleboard 3.2.18-yocto-standard #1 Wed
> Jul 18
> 15:18:53 MDT 2012 armv7l
> Kernel command line: console=tty0 console=ttyO2,115200n8 mpurate=auto
> vram=16M o
> mapfb.mode=dvi:hd720 omapfb.vram=0:8M,1:4M,2:4M omapfb.debug=y
> omapdss.def_disp=
> dvi root=/dev/mmcblk0p2 rw rootfstype=ext3 rootwait
> Build Date: 15 July 2012 12:32:41PM
>
> Current version of pixman: 0.26.2
> Before reporting problems, check http://wiki.x.org
> to make sure that you have the latest version.
> Markers: (--) probed, (**) from config file, (==) default setting,
> (++) from command line, (!!) notice, (II) informational,
> (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
> (==) Log file: "/var/log/Xorg.0.log", Time: Wed Jul 18 21:55:10 2012
> (==) Using config file: "/etc/X11/xorg.conf"
> (==) Using system config directory "/usr/share/X11/xorg.conf.d"
> (EE) Failed to load module "extmod" (module does not exist, 0)
> (EE) Failed to load module "dbe" (module does not exist, 0)
> (EE) Failed to load module "glx" (module does not exist, 0)
> Starting advanced power management daemon: (EE) Failed to load module
> "record" (
> module does not exist, 0)
> (EE) Failed to load module "dri" (module does not exist, 0)
> (EE) Failed to load module "dri2" (module does not exist, 0)
> apmd.
> apmd[921]: apmd 3.2.1 interfacing with apm driver 1.13 and APM BIOS 1.2
> (EE) omapfb(0): Failed to open /dev/fb2: No such file or directory
> (EE) omapfb(0): XVScreenInit failed
> Starting syslogd/klogd: done
> * Starting Avahi mDNS/DNS-SD Daemon: avahi-daemon
> ...done.
> Starting Telephony daemon
> Stopping Bootlog daemon: bootlogd.
> D-BUS per-session daemon address is:
> unix:abstract=/tmp/dbus-YSsZ7bMMnl,guid=80b
> 47e1ed801ed95e922788b000000b7
>
> Yocto (Built by Poky 7.0) 1.2+snapshot-20120718 beagleboard ttyO2
>
> beagleboard login: [settings daemon] Forking. run with -n to prevent fork
> matchbo
> x: Cant find a keycode for keysym 269025056
> matchbox: ignoring key shortcut XF86C
> alendar=!$contacts
>
> matchbox: Cant find a keycode for keysym 2809
> matchbox: ignorin
> g key shortcut telephone=!$dates
>
> matchbox: Cant find a keycode for keysym 2690250
> 50
> matchbox: ignoring key shortcut XF86Start=!matchbox-remote -desktop
>
>
> ** (matchbo
> x-desktop:1007): WARNING **: Error loading icon: Icon 'computer' not
> present in
> theme
>
> ** (matchbox-desktop:1007): WARNING **: Error loading icon: Icon 'system-fi
> le-manager' not present in theme
>
> Thanks for any help I saw in the boot log that the x-server was started
> but nothing was displayed on the display.
> Any help will be appreciated.
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


