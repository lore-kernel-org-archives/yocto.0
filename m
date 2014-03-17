Return-Path: <isak.lichtenstein@kistler.com>
Received: from mx1.kistler.com (mx1.kistler.com [195.49.77.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED6DAE009C2
	for <yocto@yoctoproject.org>; Mon, 17 Mar 2014 03:32:28 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.97,669,1389740400"; d="scan'208,217";a="9397312"
Received: from unknown (HELO kihagsepp01.int.kistler.com) ([192.168.52.67])
	by mx1.kistler.com with ESMTP/TLS/ADH-AES256-SHA;
	17 Mar 2014 11:32:23 +0100
Received: from mx1.kistler.com (unknown [192.168.52.57])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Mon, 17 Mar 2014 11:32:21 +0100 (CET)
X-IronPort-AV: E=Sophos;i="4.97,669,1389740400"; d="scan'208,217";a="9397310"
Received: from unknown (HELO kicwinex01.int.kistler.com) ([192.168.120.202])
	by mx1.kistler.com with ESMTP/TLS/AES128-SHA; 17 Mar 2014 11:32:20 +0100
Received: from KIHAGWINEX01.int.kistler.com ([fe80::d70:7df0:c903:4e43]) by
	kicwinex01.int.kistler.com ([fe80::59d5:bdd2:5c2c:c69f%11]) with mapi
	id 14.03.0174.001; Mon, 17 Mar 2014 06:32:18 -0400
From: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: Poky core-image-minimal fails
Thread-Index: Ac9By8pARlQFN0VWRTSTxBCSE+Z2VQ==
Date: Mon, 17 Mar 2014 10:32:14 +0000
Message-ID: <91B4C1B91AAEFD42AC985EA0F3D4E6684B31E914@kihagwinex01.int.kistler.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.116]
MIME-Version: 1.0
Subject: Poky core-image-minimal fails
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
X-List-Received-Date: Mon, 17 Mar 2014 10:32:36 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_91B4C1B91AAEFD42AC985EA0F3D4E6684B31E914kihagwinex01int_"

--_000_91B4C1B91AAEFD42AC985EA0F3D4E6684B31E914kihagwinex01int_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm trying to write a recipe for creating an swupdate image for our board b=
ased on poky with TI kernel.

To start, I tried to build core-image-minimal. Unfortunately do_rootfs fail=
s and I don't really understand why?

Following is the build output.

Kind regards

Isak Lichtenstein

lic@Dev:~/base/build$ DISTRO=3Dpoky MACHINE=3Dmyboard-evb bitbake core-imag=
e-minimal
WARNING: Host distribution "Ubuntu-13.10" has not been validated with this =
version of the build system; you may possibly experience unexpected failure=
s. It is recommended that you use a tested distribution.
Loading cache: 100% |######################################################=
###########################################################################=
##############| ETA:  00:00:00
Loaded 1398 entries from dependency cache.
Parsing recipes: 100% |####################################################=
###########################################################################=
##############| Time: 00:00:00
Parsing of 1050 .bb files complete (1049 cached, 1 parsed). 1398 targets, 7=
4 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        =3D "1.20.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-13.10"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "myboard-evb"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.5"
TUNE_FEATURES     =3D "armv7a vfp neon"
TARGET_FPU        =3D "vfp-neon"
meta
meta-yocto
meta-yocto-bsp
meta-ti
meta-staging
meta-myboard =3D "<unknown>:<unknown>"

NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_rootfs (log file is located at /home/lic/myboard=
/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-image-minimal/1.0-r0/te=
mp/log.do_rootfs.23232)
ERROR: Logfile of failure stored in: /home/lic/myboard/build/tmp/work/myboa=
rd_evb-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.2323=
2
Log data follows:
| DEBUG: Executing python function rootfs_process_ignore
| DEBUG: Python function rootfs_process_ignore finished
| DEBUG: Executing python function rootfs_runtime_mapping
| DEBUG: Python function rootfs_runtime_mapping finished
| DEBUG: Executing shell function do_rootfs
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/Packages.
| Updated list of available packages in /home/lic/myboard/build/tmp/work/my=
board_evb-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//var/lib/opkg=
/lists/oe.
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/all/Packages.
| Updated list of available packages in /home/lic/myboard/build/tmp/work/my=
board_evb-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//var/lib/opkg=
/lists/oe-all.
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/arm/Packages.
| Updated list of available packages in /home/lic/myboard/build/tmp/work/my=
board_evb-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//var/lib/opkg=
/lists/oe-arm.
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/P=
ackages.
| Updated list of available packages in /home/lic/myboard/build/tmp/work/my=
board_evb-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//var/lib/opkg=
/lists/oe-armv7a-vfp-neon.
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/myboard_evb/Packa=
ges.
| Updated list of available packages in /home/lic/myboard/build/tmp/work/my=
board_evb-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//var/lib/opkg=
/lists/oe-myboard_evb.
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/Packages.
| Updated list of available packages in /home/lic/myboard/build/tmp/work/my=
board_evb-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//var/lib/opkg=
/lists/oe.
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/all/Packages.
| Updated list of available packages in /home/lic/myboard/build/tmp/work/my=
board_evb-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//var/lib/opkg=
/lists/oe-all.
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/arm/Packages.
| Updated list of available packages in /home/lic/myboard/build/tmp/work/my=
board_evb-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//var/lib/opkg=
/lists/oe-arm.
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/P=
ackages.
| Updated list of available packages in /home/lic/myboard/build/tmp/work/my=
board_evb-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//var/lib/opkg=
/lists/oe-armv7a-vfp-neon.
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/myboard_evb/Packa=
ges.
| Updated list of available packages in /home/lic/myboard/build/tmp/work/my=
board_evb-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//var/lib/opkg=
/lists/oe-myboard_evb.
| Installing run-postinsts (1.0-r9) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/r=
un-postinsts_1.0-r9_armv7a-vfp-neon.ipk.
| Installing update-rc.d (0.7-r5) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/all/update-rc.d_0=
.7-r5_all.ipk.
| Installing packagegroup-core-boot (1.0-r11) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/myboard_evb/packa=
gegroup-core-boot_1.0-r11_myboard_evb.ipk.
| Installing busybox (1.21.1-r1) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/b=
usybox_1.21.1-r1_armv7a-vfp-neon.ipk.
| Installing update-alternatives-cworth (1:0.1.8+svnr653-r13.0) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/u=
pdate-alternatives-cworth_0.1.8+svnr653-r13.0_armv7a-vfp-neon.ipk.
| Installing libc6 (2.18-r0) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/l=
ibc6_2.18-r0_armv7a-vfp-neon.ipk.
| Installing busybox-syslog (1.21.1-r1) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/b=
usybox-syslog_1.21.1-r1_armv7a-vfp-neon.ipk.
| Installing busybox-udhcpc (1.21.1-r1) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/b=
usybox-udhcpc_1.21.1-r1_armv7a-vfp-neon.ipk.
| Installing modutils-initscripts (1.0-r6) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/m=
odutils-initscripts_1.0-r6_armv7a-vfp-neon.ipk.
| Installing busybox-hwclock (1.21.1-r1) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/b=
usybox-hwclock_1.21.1-r1_armv7a-vfp-neon.ipk.
| Installing sysvinit (2.88dsf-r11) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/s=
ysvinit_2.88dsf-r11_armv7a-vfp-neon.ipk.
| Installing sysvinit-pidof (2.88dsf-r11) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/s=
ysvinit-pidof_2.88dsf-r11_armv7a-vfp-neon.ipk.
| Installing sysvinit-inittab (2.88dsf-r9) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/myboard_evb/sysvi=
nit-inittab_2.88dsf-r9_myboard_evb.ipk.
| Installing udev (182-r7) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/u=
dev_182-r7_armv7a-vfp-neon.ipk.
| Installing libkmod2 (14+git0+3b38c7fcb5-r0) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/l=
ibkmod2_14+git0+3b38c7fcb5-r0_armv7a-vfp-neon.ipk.
| Installing libblkid1 (2.23.2-r0) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/l=
ibblkid1_2.23.2-r0_armv7a-vfp-neon.ipk.
| Installing libuuid1 (2.23.2-r0) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/l=
ibuuid1_2.23.2-r0_armv7a-vfp-neon.ipk.
| Installing udev-cache (182-r7) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/u=
dev-cache_182-r7_armv7a-vfp-neon.ipk.
| Installing udev-utils (182-r7) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/u=
dev-utils_182-r7_armv7a-vfp-neon.ipk.
| Installing initscripts (1.0-r141) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/i=
nitscripts_1.0-r141_armv7a-vfp-neon.ipk.
| Installing netbase (1:5.1-r0) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/n=
etbase_5.1-r0_armv7a-vfp-neon.ipk.
| Installing base-files (3.0.14-r73) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/myboard_evb/base-=
files_3.0.14-r73_myboard_evb.ipk.
| Installing init-ifupdown (1.0-r3) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/i=
nit-ifupdown_1.0-r3_armv7a-vfp-neon.ipk.
| Installing base-passwd (3.5.26-r2) to root...
| Downloading file:/home/lic/myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/b=
ase-passwd_3.5.26-r2_armv7a-vfp-neon.ipk.
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//etc/syslog.conf to /e=
tc/syslog.conf.busybox
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//etc/init.d/syslog to =
/etc/init.d/syslog.busybox
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//etc/syslog-startup.co=
nf to /etc/syslog-startup.conf.busybox
|  Adding system startup for /home/lic/myboard/build/tmp/work/myboard_evb-p=
oky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/etc/init.d/syslog.
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/bunzip2 to /b=
in/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/bzcat to /bin=
/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/date to /bin/busy=
box.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/groups to /bi=
n/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/id to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/touch to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/users to /bin=
/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/who to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/patch to /bin=
/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/vi to /bin/busybo=
x.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/find to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/grep to /bin/busy=
box.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/egrep to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/fgrep to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/xargs to /bin=
/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/halt to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/poweroff to /bin=
/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/reboot to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/insmod to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/lsmod to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/modprobe to /bin=
/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/rmmod to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/ash to /bin/busyb=
ox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/sh to /bin/busybo=
x.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/[ to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/[[ to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/sbin/addgroup to =
/bin/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/sbin/adduser to /=
bin/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/ar to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/arp to /bin/busy=
box.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/awk to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/basename to /=
bin/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/cat to /bin/busyb=
ox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/chattr to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/chgrp to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/chmod to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/chown to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/sbin/chroot to /b=
in/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/chvt to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/clear to /bin=
/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/cmp to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/cp to /bin/busybo=
x.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/cpio to /bin/busy=
box.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/cut to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/dc to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/dd to /bin/busybo=
x.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/deallocvt to =
/bin/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/sbin/delgroup to =
/bin/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/sbin/deluser to /=
bin/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/df to /bin/busybo=
x.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/diff to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/dirname to /b=
in/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/dmesg to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/dnsdomainname to =
/bin/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/du to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/dumpkmap to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/dumpleases to=
 /bin/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/echo to /bin/busy=
box.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/env to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/expr to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/false to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/sbin/fbset to /bi=
n/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/fdisk to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/flock to /bin=
/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/free to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/fsck to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/fsck.minix to /b=
in/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/fuser to /bin=
/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/getty to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/gunzip to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/gzip to /bin/busy=
box.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/head to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/hexdump to /b=
in/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/hostname to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/hwclock to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/ifconfig to /bin=
/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/ifdown to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/ifup to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/ip to /bin/busyb=
ox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/kill to /bin/busy=
box.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/killall to /b=
in/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/klogd to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/less to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/ln to /bin/busybo=
x.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/sbin/loadfont to =
/bin/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/loadkmap to /bin=
/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/logger to /bi=
n/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/logname to /b=
in/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/logread to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/losetup to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/ls to /bin/busybo=
x.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/md5sum to /bi=
n/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/microcom to /=
bin/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/mkdir to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/mkfifo to /bi=
n/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/mkfs.minix to /b=
in/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/mknod to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/mkswap to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/mktemp to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/more to /bin/busy=
box.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/mount to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/mv to /bin/busybo=
x.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/nc to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/netstat to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/nohup to /bin=
/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/nslookup to /=
bin/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/od to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/openvt to /bi=
n/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/pidof to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/pivot_root to /b=
in/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/printf to /bi=
n/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/ps to /bin/busybo=
x.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/pwd to /bin/busyb=
ox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/sbin/rdate to /bi=
n/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/readlink to /=
bin/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/realpath to /=
bin/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/renice to /bi=
n/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/reset to /bin=
/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/sbin/rfkill to /b=
in/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/rm to /bin/busybo=
x.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/rmdir to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/route to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/run-parts to =
/bin/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/sed to /bin/busyb=
ox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/seq to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/setconsole to /b=
in/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/sha3sum to /b=
in/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/sleep to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/sort to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/start-stop-daemo=
n to /bin/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/stat to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/strings to /b=
in/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/stty to /bin/busy=
box.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/sulogin to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/swapoff to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/swapon to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/switch_root to /=
bin/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/sync to /bin/busy=
box.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/sysctl to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/syslogd to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/tail to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/tar to /bin/busyb=
ox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/tee to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/telnet to /bi=
n/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/test to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/tftp to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/time to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/top to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/tr to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/true to /bin/busy=
box.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/tty to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/udhcpc to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/sbin/udhcpd to /b=
in/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/umount to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/uname to /bin/bus=
ybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/uniq to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/unzip to /bin=
/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/uptime to /bi=
n/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/usleep to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/watch to /bin=
/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/wc to /bin/bu=
sybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/wget to /bin/=
busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/which to /bin=
/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/whoami to /bi=
n/busybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/yes to /bin/b=
usybox.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/zcat to /bin/busy=
box.nosuid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/ping to /bin/busy=
box.suid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/ping6 to /bin/bus=
ybox.suid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/login to /bin/bus=
ybox.suid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/passwd to /bi=
n/busybox.suid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/su to /bin/busybo=
x.suid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/traceroute to=
 /bin/busybox.suid
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/vlock to /bin=
/busybox.suid
|  Adding system startup for /home/lic/myboard/build/tmp/work/myboard_evb-p=
oky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/etc/init.d/modutils.sh.
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//etc/init.d/functions =
to /etc/init.d/functions.initscripts
|  Adding system startup for /home/lic/myboard/build/tmp/work/myboard_evb-p=
oky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/etc/init.d/hwclock.sh.
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/pidof to /bin/pid=
of.sysvinit
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/init to /sbin/in=
it.sysvinit
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//bin/mountpoint to /bi=
n/mountpoint.sysvinit
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/halt to /sbin/ha=
lt.sysvinit
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/reboot to /sbin/=
reboot.sysvinit
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/runlevel to /sbi=
n/runlevel.sysvinit
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/shutdown to /sbi=
n/shutdown.sysvinit
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//sbin/poweroff to /sbi=
n/poweroff.sysvinit
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/last to /usr/=
bin/last.sysvinit
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/mesg to /usr/=
bin/mesg.sysvinit
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/utmpdump to /=
usr/bin/utmpdump.sysvinit
| update-alternatives: Linking /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs//usr/bin/wall to /usr/=
bin/wall.sysvinit
|  Adding system startup for /home/lic/myboard/build/tmp/work/myboard_evb-p=
oky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/etc/init.d/udev-cache.
|  Adding system startup for /home/lic/myboard/build/tmp/work/myboard_evb-p=
oky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/etc/init.d/udev.
|  Adding system startup for /home/lic/myboard/build/tmp/work/myboard_evb-p=
oky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/etc/init.d/networking.
|  Adding system startup for /home/lic/myboard/build/tmp/work/myboard_evb-p=
oky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/etc/init.d/run-postinsts=
.
| Configuring update-alternatives-cworth.
| Configuring busybox-syslog.
| Configuring libc6.
| Configuring update-rc.d.
| Configuring busybox-udhcpc.
| Configuring busybox.
| Configuring modutils-initscripts.
| Configuring libuuid1.
| Configuring base-files.
| Configuring sysvinit-inittab.
| Configuring initscripts.
| Configuring libblkid1.
| Configuring libkmod2.
| Configuring udev-utils.
| Configuring base-passwd.
| Configuring busybox-hwclock.
| Configuring sysvinit-pidof.
| Configuring sysvinit.
| Configuring udev-cache.
| Configuring udev.
| Configuring netbase.
| Configuring init-ifupdown.
| Configuring packagegroup-core-boot.
| Configuring run-postinsts.
| Building from feeds activated!
| /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/temp/run.do_rootfs.23232: 711: /home/lic/myboard/build/tmp=
/work/myboard_evb-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/run.do_=
rootfs.23232: cannot create /home/lic/myboard/build/tmp/work/myboard_evb-po=
ky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/etc/opkg/local-all-feed.c=
onf: Directory nonexistent
| WARNING: exit code 2 from a shell command.
| ERROR: Function failed: do_rootfs (log file is located at /home/lic/myboa=
rd/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-image-minimal/1.0-r0/=
temp/log.do_rootfs.23232)
ERROR: Task 7 (/home/lic/myboard/yocto/scripts/../..//yocto/poky-dora-10.0.=
0/meta/recipes-core/images/core-image-minimal.bb, do_rootfs) failed with ex=
it code '1'
NOTE: Tasks Summary: Attempted 1517 tasks of which 1516 didn't need to be r=
erun and 1 failed.
No currently running tasks (1516 of 1518)

Summary: 1 task failed:
  /home/lic/myboard/yocto/scripts/../..//yocto/poky-dora-10.0.0/meta/recipe=
s-core/images/core-image-minimal.bb, do_rootfs
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


Isak Lichtenstein
Entwicklungsingenieur Hardware & SW

Kistler Instrumente AG
Eulachstrasse 22, 8408 Winterthur, Switzerland
Direct +41 52 2241 963, Main Office +41 52 224 11 11
isak.lichtenstein@kistler.com<mailto:isak.lichtenstein@kistler.com>, www.ki=
stler.com



Confidentiality Notice:
This e-mail is privileged and confidential and for the use of the addressee=
 only. Should you have received this e-mail in error please notify us by re=
plying directly to the sender or by sending a message to info@kistler.com. =
Unauthorised dissemination, disclosure or copying of the contents of this e=
-mail, or any similar action, is prohibited.




--_000_91B4C1B91AAEFD42AC985EA0F3D4E6684B31E914kihagwinex01int_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Cambria;
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Arial","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE-CH" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Hi all,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">I&#8217;m trying to write =
a recipe for creating an swupdate image for our board based on poky with TI=
 kernel.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">To start, I tried to build=
 core-image-minimal. Unfortunately do_rootfs fails and I don&#8217;t really=
 understand why? &nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Following is the build out=
put.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Kind regards<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Isak Lichtenstein<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">lic@Dev:~/base/build$ DISTRO=
=3Dpoky MACHINE=3Dmyboard-evb bitbake core-image-minimal<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">WARNING: Host distribution &q=
uot;Ubuntu-13.10&quot; has not been validated with this version of the buil=
d system; you may possibly experience unexpected failures. It is recommende=
d
 that you use a tested distribution.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">Loading cache: 100% |########=
###########################################################################=
############################################################|
 ETA:&nbsp; 00:00:00<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">Loaded 1398 entries from depe=
ndency cache.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">Parsing recipes: 100% |######=
###########################################################################=
############################################################|
 Time: 00:00:00<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">Parsing of 1050 .bb files com=
plete (1049 cached, 1 parsed). 1398 targets, 74 skipped, 0 masked, 0 errors=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">NOTE: Resolving any missing t=
ask queue dependencies<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">Build Configuration:<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">BB_VERSION&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.20.0&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">BUILD_SYS&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-linux&quot;<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">NATIVELSBSTRING&nbsp;&nbsp; =
=3D &quot;Ubuntu-13.10&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">TARGET_SYS&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;arm-poky-linux-gnueabi&quot;<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">MACHINE&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;myboard-evb&quot;<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">DISTRO&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;poky&quot;<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">DISTRO_VERSION&nbsp;&nbsp;&nb=
sp; =3D &quot;1.5&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">TUNE_FEATURES&nbsp;&nbsp;&nbs=
p;&nbsp; =3D &quot;armv7a vfp neon&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">TARGET_FPU&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; &nbsp;&nbsp;=3D &quot;vfp-neon&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">meta&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">meta-yocto&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">meta-yocto-bsp&nbsp;&nbsp;&nb=
sp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">meta-ti&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">meta-staging&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">meta-myboard =3D &quot;&lt;un=
known&gt;:&lt;unknown&gt;&quot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">NOTE: Preparing runqueue&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">NOTE: Executing SetScene Task=
s&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">NOTE: Executing RunQueue Task=
s&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">ERROR: Function failed: do_ro=
otfs (log file is located at /home/lic/myboard/build/tmp/work/myboard_evb-p=
oky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.23232)<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">ERROR: Logfile of failure sto=
red in: /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/cor=
e-image-minimal/1.0-r0/temp/log.do_rootfs.23232<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">Log data follows:<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| DEBUG: Executing python fun=
ction rootfs_process_ignore<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| DEBUG: Python function root=
fs_process_ignore finished<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| DEBUG: Executing python fun=
ction rootfs_runtime_mapping<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| DEBUG: Python function root=
fs_runtime_mapping finished<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| DEBUG: Executing shell func=
tion do_rootfs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/Packages.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Updated list of available p=
ackages in /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/=
core-image-minimal/1.0-r0/rootfs//var/lib/opkg/lists/oe.<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/all/Packages.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Updated list of available p=
ackages in /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/=
core-image-minimal/1.0-r0/rootfs//var/lib/opkg/lists/oe-all.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/arm/Packages.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Updated list of available p=
ackages in /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/=
core-image-minimal/1.0-r0/rootfs//var/lib/opkg/lists/oe-arm.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/Packages.<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Updated list of available p=
ackages in /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/=
core-image-minimal/1.0-r0/rootfs//var/lib/opkg/lists/oe-armv7a-vfp-neon.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/myboard_evb/Packages.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Updated list of available p=
ackages in /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/=
core-image-minimal/1.0-r0/rootfs//var/lib/opkg/lists/oe-myboard_evb.<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/Packages.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Updated list of available p=
ackages in /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/=
core-image-minimal/1.0-r0/rootfs//var/lib/opkg/lists/oe.<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/all/Packages.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Updated list of available p=
ackages in /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/=
core-image-minimal/1.0-r0/rootfs//var/lib/opkg/lists/oe-all.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/arm/Packages.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Updated list of available p=
ackages in /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/=
core-image-minimal/1.0-r0/rootfs//var/lib/opkg/lists/oe-arm.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/Packages.<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Updated list of available p=
ackages in /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/=
core-image-minimal/1.0-r0/rootfs//var/lib/opkg/lists/oe-armv7a-vfp-neon.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/myboard_evb/Packages.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Updated list of available p=
ackages in /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/=
core-image-minimal/1.0-r0/rootfs//var/lib/opkg/lists/oe-myboard_evb.<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing run-postinsts (1=
.0-r9) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/run-postinsts_1.0-r9_armv7a-vf=
p-neon.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing update-rc.d (0.7=
-r5) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/all/update-rc.d_0.7-r5_all.ipk.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing packagegroup-cor=
e-boot (1.0-r11) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/myboard_evb/packagegroup-core-boot_1.0-r11_myb=
oard_evb.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing busybox (1.21.1-=
r1) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/busybox_1.21.1-r1_armv7a-vfp-n=
eon.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing update-alternati=
ves-cworth (1:0.1.8&#43;svnr653-r13.0) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/update-alternatives-cworth_0.1=
.8&#43;svnr653-r13.0_armv7a-vfp-neon.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing libc6 (2.18-r0) =
to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/libc6_2.18-r0_armv7a-vfp-neon.=
ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing busybox-syslog (=
1.21.1-r1) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/busybox-syslog_1.21.1-r1_armv7=
a-vfp-neon.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing busybox-udhcpc (=
1.21.1-r1) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/busybox-udhcpc_1.21.1-r1_armv7=
a-vfp-neon.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing modutils-initscr=
ipts (1.0-r6) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/modutils-initscripts_1.0-r6_ar=
mv7a-vfp-neon.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing busybox-hwclock =
(1.21.1-r1) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/busybox-hwclock_1.21.1-r1_armv=
7a-vfp-neon.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing sysvinit (2.88ds=
f-r11) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/sysvinit_2.88dsf-r11_armv7a-vf=
p-neon.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing sysvinit-pidof (=
2.88dsf-r11) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/sysvinit-pidof_2.88dsf-r11_arm=
v7a-vfp-neon.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing sysvinit-inittab=
 (2.88dsf-r9) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/myboard_evb/sysvinit-inittab_2.88dsf-r9_myboar=
d_evb.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing udev (182-r7) to=
 root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/udev_182-r7_armv7a-vfp-neon.ip=
k.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing libkmod2 (14&#43=
;git0&#43;3b38c7fcb5-r0) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/libkmod2_14&#43;git0&#43;3b38c=
7fcb5-r0_armv7a-vfp-neon.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing libblkid1 (2.23.=
2-r0) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/libblkid1_2.23.2-r0_armv7a-vfp=
-neon.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing libuuid1 (2.23.2=
-r0) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/libuuid1_2.23.2-r0_armv7a-vfp-=
neon.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing udev-cache (182-=
r7) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/udev-cache_182-r7_armv7a-vfp-n=
eon.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing udev-utils (182-=
r7) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/udev-utils_182-r7_armv7a-vfp-n=
eon.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing initscripts (1.0=
-r141) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/initscripts_1.0-r141_armv7a-vf=
p-neon.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing netbase (1:5.1-r=
0) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/netbase_5.1-r0_armv7a-vfp-neon=
.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing base-files (3.0.=
14-r73) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/myboard_evb/base-files_3.0.14-r73_myboard_evb.=
ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing init-ifupdown (1=
.0-r3) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/init-ifupdown_1.0-r3_armv7a-vf=
p-neon.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Installing base-passwd (3.5=
.26-r2) to root...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Downloading file:/home/lic/=
myboard/build/tmp/deploy/ipk/armv7a-vfp-neon/base-passwd_3.5.26-r2_armv7a-v=
fp-neon.ipk.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//etc/syslog.conf to /etc/syslog.conf.busybox<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//etc/init.d/syslog to /etc/init.d/syslog.busybox<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//etc/syslog-startup.conf to /etc/syslog-startup.con=
f.busybox<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">|&nbsp; Adding system startup=
 for /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-i=
mage-minimal/1.0-r0/rootfs/etc/init.d/syslog.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/bunzip2 to /bin/busybox.nosuid<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/bzcat to /bin/busybox.nosuid<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/date to /bin/busybox.nosuid<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/groups to /bin/busybox.nosuid<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/id to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/touch to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/users to /bin/busybox.nosuid<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/who to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/patch to /bin/busybox.nosuid<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/vi to /bin/busybox.nosuid<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/find to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/grep to /bin/busybox.nosuid<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/egrep to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/fgrep to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/xargs to /bin/busybox.nosuid<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/halt to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/poweroff to /bin/busybox.nosuid<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/reboot to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/insmod to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/lsmod to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/modprobe to /bin/busybox.nosuid<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/rmmod to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/ash to /bin/busybox.nosuid<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/sh to /bin/busybox.nosuid<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/[ to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/[[ to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/sbin/addgroup to /bin/busybox.nosuid<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/sbin/adduser to /bin/busybox.nosuid<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/ar to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/arp to /bin/busybox.nosuid<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/awk to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/basename to /bin/busybox.nosuid<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/cat to /bin/busybox.nosuid<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/chattr to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/chgrp to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/chmod to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/chown to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/sbin/chroot to /bin/busybox.nosuid<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/chvt to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/clear to /bin/busybox.nosuid<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/cmp to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/cp to /bin/busybox.nosuid<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/cpio to /bin/busybox.nosuid<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/cut to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/dc to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/dd to /bin/busybox.nosuid<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/deallocvt to /bin/busybox.nosuid<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/sbin/delgroup to /bin/busybox.nosuid<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/sbin/deluser to /bin/busybox.nosuid<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/df to /bin/busybox.nosuid<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/diff to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/dirname to /bin/busybox.nosuid<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/dmesg to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/dnsdomainname to /bin/busybox.nosuid<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/du to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/dumpkmap to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/dumpleases to /bin/busybox.nosuid<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/echo to /bin/busybox.nosuid<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/env to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/expr to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/false to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/sbin/fbset to /bin/busybox.nosuid<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/fdisk to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/flock to /bin/busybox.nosuid<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/free to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/fsck to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/fsck.minix to /bin/busybox.nosuid<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/fuser to /bin/busybox.nosuid<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/getty to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/gunzip to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/gzip to /bin/busybox.nosuid<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/head to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/hexdump to /bin/busybox.nosuid<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/hostname to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/hwclock to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/ifconfig to /bin/busybox.nosuid<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/ifdown to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/ifup to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/ip to /bin/busybox.nosuid<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/kill to /bin/busybox.nosuid<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/killall to /bin/busybox.nosuid<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/klogd to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/less to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/ln to /bin/busybox.nosuid<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/sbin/loadfont to /bin/busybox.nosuid<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/loadkmap to /bin/busybox.nosuid<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/logger to /bin/busybox.nosuid<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/logname to /bin/busybox.nosuid<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/logread to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/losetup to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/ls to /bin/busybox.nosuid<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/md5sum to /bin/busybox.nosuid<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/microcom to /bin/busybox.nosuid<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/mkdir to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/mkfifo to /bin/busybox.nosuid<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/mkfs.minix to /bin/busybox.nosuid<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/mknod to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/mkswap to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/mktemp to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/more to /bin/busybox.nosuid<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/mount to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/mv to /bin/busybox.nosuid<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/nc to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/netstat to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/nohup to /bin/busybox.nosuid<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/nslookup to /bin/busybox.nosuid<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/od to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/openvt to /bin/busybox.nosuid<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/pidof to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/pivot_root to /bin/busybox.nosuid<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/printf to /bin/busybox.nosuid<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/ps to /bin/busybox.nosuid<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/pwd to /bin/busybox.nosuid<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/sbin/rdate to /bin/busybox.nosuid<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/readlink to /bin/busybox.nosuid<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/realpath to /bin/busybox.nosuid<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/renice to /bin/busybox.nosuid<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/reset to /bin/busybox.nosuid<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/sbin/rfkill to /bin/busybox.nosuid<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/rm to /bin/busybox.nosuid<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/rmdir to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/route to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/run-parts to /bin/busybox.nosuid<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/sed to /bin/busybox.nosuid<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/seq to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/setconsole to /bin/busybox.nosuid<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/sha3sum to /bin/busybox.nosuid<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/sleep to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/sort to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/start-stop-daemon to /bin/busybox.nosuid<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/stat to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/strings to /bin/busybox.nosuid<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/stty to /bin/busybox.nosuid<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/sulogin to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/swapoff to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/swapon to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/switch_root to /bin/busybox.nosuid<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/sync to /bin/busybox.nosuid<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/sysctl to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/syslogd to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/tail to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/tar to /bin/busybox.nosuid<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/tee to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/telnet to /bin/busybox.nosuid<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/test to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/tftp to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/time to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/top to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/tr to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/true to /bin/busybox.nosuid<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/tty to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/udhcpc to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/sbin/udhcpd to /bin/busybox.nosuid<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/umount to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/uname to /bin/busybox.nosuid<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/uniq to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/unzip to /bin/busybox.nosuid<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/uptime to /bin/busybox.nosuid<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/usleep to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/watch to /bin/busybox.nosuid<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/wc to /bin/busybox.nosuid<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/wget to /bin/busybox.nosuid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/which to /bin/busybox.nosuid<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/whoami to /bin/busybox.nosuid<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/yes to /bin/busybox.nosuid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/zcat to /bin/busybox.nosuid<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/ping to /bin/busybox.suid<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/ping6 to /bin/busybox.suid<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/login to /bin/busybox.suid<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/passwd to /bin/busybox.suid<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/su to /bin/busybox.suid<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/traceroute to /bin/busybox.suid<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/vlock to /bin/busybox.suid<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">|&nbsp; Adding system startup=
 for /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-i=
mage-minimal/1.0-r0/rootfs/etc/init.d/modutils.sh.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//etc/init.d/functions to /etc/init.d/functions.init=
scripts<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">|&nbsp; Adding system startup=
 for /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-i=
mage-minimal/1.0-r0/rootfs/etc/init.d/hwclock.sh.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/pidof to /bin/pidof.sysvinit<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/init to /sbin/init.sysvinit<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//bin/mountpoint to /bin/mountpoint.sysvinit<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/halt to /sbin/halt.sysvinit<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/reboot to /sbin/reboot.sysvinit<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/runlevel to /sbin/runlevel.sysvinit<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/shutdown to /sbin/shutdown.sysvinit<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//sbin/poweroff to /sbin/poweroff.sysvinit<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/last to /usr/bin/last.sysvinit<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/mesg to /usr/bin/mesg.sysvinit<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/utmpdump to /usr/bin/utmpdump.sysvinit<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| update-alternatives: Linkin=
g /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-imag=
e-minimal/1.0-r0/rootfs//usr/bin/wall to /usr/bin/wall.sysvinit<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">|&nbsp; Adding system startup=
 for /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-i=
mage-minimal/1.0-r0/rootfs/etc/init.d/udev-cache.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">|&nbsp; Adding system startup=
 for /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-i=
mage-minimal/1.0-r0/rootfs/etc/init.d/udev.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">|&nbsp; Adding system startup=
 for /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-i=
mage-minimal/1.0-r0/rootfs/etc/init.d/networking.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">|&nbsp; Adding system startup=
 for /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnueabi/core-i=
mage-minimal/1.0-r0/rootfs/etc/init.d/run-postinsts.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring update-alternat=
ives-cworth.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring busybox-syslog.=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring libc6.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring update-rc.d.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring busybox-udhcpc.=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring busybox.<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring modutils-initsc=
ripts.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring libuuid1.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring base-files.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring sysvinit-initta=
b.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring initscripts.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring libblkid1.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring libkmod2.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring udev-utils.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring base-passwd.<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring busybox-hwclock=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring sysvinit-pidof.=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring sysvinit.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring udev-cache.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring udev.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring netbase.<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring init-ifupdown.<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring packagegroup-co=
re-boot.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Configuring run-postinsts.<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| Building from feeds activat=
ed!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| /home/lic/myboard/build/tmp=
/work/myboard_evb-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/run.do_=
rootfs.23232: 711: /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-=
gnueabi/core-image-minimal/1.0-r0/temp/run.do_rootfs.23232:
 cannot create /home/lic/myboard/build/tmp/work/myboard_evb-poky-linux-gnue=
abi/core-image-minimal/1.0-r0/rootfs/etc/opkg/local-all-feed.conf: Director=
y nonexistent<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| WARNING: exit code 2 from a=
 shell command.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">| ERROR: Function failed: do_=
rootfs (log file is located at /home/lic/myboard/build/tmp/work/myboard_evb=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.23232)<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">ERROR: Task 7 (/home/lic/mybo=
ard/yocto/scripts/../..//yocto/poky-dora-10.0.0/meta/recipes-core/images/co=
re-image-minimal.bb, do_rootfs) failed with exit code '1'<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">NOTE: Tasks Summary: Attempte=
d 1517 tasks of which 1516 didn't need to be rerun and 1 failed.<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">No currently running tasks (1=
516 of 1518)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">Summary: 1 task failed:<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">&nbsp; /home/lic/myboard/yoct=
o/scripts/../..//yocto/poky-dora-10.0.0/meta/recipes-core/images/core-image=
-minimal.bb, do_rootfs<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">Summary: There was 1 WARNING =
message shown.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Cambria&quot;,&quot;serif&quot;">Summary: There was 1 ERROR me=
ssage shown, returning a non-zero exit code.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;A=
rial&quot;,&quot;sans-serif&quot;;mso-fareast-language:DE-CH">Isak Lichtens=
tein<br>
Entwicklungsingenieur Hardware &amp; SW<br>
&nbsp;<br>
<b>Kistler Instrumente AG</b><br>
Eulachstrasse 22, 8408 Winterthur, Switzerland<br>
Direct &#43;41 52 2241 963, Main Office &#43;41 52 224 11 11<br>
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;mso-fareast-language:DE-CH"><a href=3D"mailto:isak.lichten=
stein@kistler.com"><span lang=3D"EN-US" style=3D"color:#336699">isak.lichte=
nstein@kistler.com</span></a></span><span lang=3D"EN-US" style=3D"font-size=
:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-la=
nguage:DE-CH">,
</span><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;;mso-fareast-language:DE-CH"><a href=3D"www.kistler.com"><s=
pan lang=3D"EN-US" style=3D"color:#336699">www.kistler.com</span></a></span=
><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quo=
t;,&quot;sans-serif&quot;;mso-fareast-language:DE-CH"><br>
<br>
<br>
<br>
</span><span lang=3D"EN-US" style=3D"font-size:8.0pt;font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;mso-fareast-language:DE-CH">Confidentiality =
Notice:<br>
This e-mail is privileged and confidential and for the use of the addressee=
 only. Should you have received this e-mail in error please notify us by re=
plying directly to the sender or by sending a message to info@kistler.com. =
Unauthorised dissemination, disclosure
 or copying of the contents of this e-mail, or any similar action, is prohi=
bited.</span><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-language:DE-CH"><o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-language:D=
E-CH"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-language:D=
E-CH"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_91B4C1B91AAEFD42AC985EA0F3D4E6684B31E914kihagwinex01int_--
