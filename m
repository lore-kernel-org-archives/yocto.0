Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD7D14C808F9
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2011 03:15:53 -0500 (CDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Thu, 30 Jun 2011 16:15:16 +0800
Received: from [192.168.0.101] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Thu, 30 Jun 2011
	16:15:15 +0800
From: NiQingliang <niqingliang@insigma.com.cn>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 30 Jun 2011 16:18:39 +0800
X-Mailer: Evolution 3.0.2 
Message-ID: <1309421919.28587.2.camel@localhost.localdomain>
MIME-Version: 1.0
Subject: mpc8315 ubifs fail
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
X-List-Received-Date: Thu, 30 Jun 2011 08:16:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

hello, does any one tested rootfs formats execpt the default "tar.gz" on
mpc8315?

I added follow sentence in mpc8315e-rdb.conf
IMAGE_FSTYPES += "ubifs"

and get follow error.



NOTE: package core-image-minimal-1.0-r0: task do_rootfs: Started
ERROR:
'/media/Datum/yocto/poky/meta/recipes-core/images/core-image-minimal.bb'
failed
ERROR: Logfile of failure stored
in: /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/temp/log.do_rootfs.10589
Log data follows:
| Generating solve db
for /media/Datum/yocto/build_mpc8315erdb/tmp/deploy/rpm/mpc8315e_rdb...
|    total:               1      0.000000 MB      1.442006 secs
|    fingerprint:       819      0.008270 MB      0.031820 secs
|    install:           273      0.000000 MB      0.320556 secs
|    dbadd:             273      0.000000 MB      0.312151 secs
|    dbget:            2695      0.000000 MB      0.004221 secs
|    dbput:             273      1.428948 MB      0.257721 secs
|    readhdr:          2731      2.793536 MB      0.377335 secs
|    hdrload:          1365      4.161236 MB      0.006957 secs
|    hdrget:          49433      0.000000 MB      0.041538 secs
| Generating solve db
for /media/Datum/yocto/build_mpc8315erdb/tmp/deploy/rpm/ppc603e...
|    total:               1      0.000000 MB      7.484153 secs
|    fingerprint:      3612      0.072922 MB      0.153439 secs
|    install:          1204      0.000000 MB      1.590757 secs
|    dbadd:            1204      0.000000 MB      1.560741 secs
|    dbget:           26715      0.000000 MB      0.025684 secs
|    dbput:            1204      7.017472 MB      1.366692 secs
|    readhdr:         12041     13.942562 MB      3.227930 secs
|    hdrload:          7446     28.703306 MB      0.034632 secs
|    hdrget:         222565      0.000000 MB      0.179700 secs
| Generating solve db
for /media/Datum/yocto/build_mpc8315erdb/tmp/deploy/rpm/all...
|    total:               1      0.000000 MB      0.072481 secs
|    fingerprint:        18      0.000024 MB      0.000227 secs
|    install:             6      0.000000 MB      0.023966 secs
|    dbadd:               6      0.000000 MB      0.021870 secs
|    dbget:              19      0.000000 MB      0.000061 secs
|    dbput:               6      0.018276 MB      0.003660 secs
|    readhdr:            61      0.036768 MB      0.014909 secs
|    hdrload:            33      0.061968 MB      0.000142 secs
|    hdrget:            983      0.000000 MB      0.002318 secs
| Generating solve db
for /media/Datum/yocto/build_mpc8315erdb/tmp/deploy/rpm/all...
| Processing task-core-boot...
| error: LOOP:
| error: removing eglibc-dev-2.13-r3+svnr14157.ppc603e
"Requires: /lib/libnss_hesiod.so.2" from tsort relations.
| error: removing eglibc-extra-nss-2.13-r3+svnr14157.ppc603e "Requires:
eglibc-dev >= 2.13" from tsort relations.
| error: LOOP:
| error: removing busybox-udhcpc-1.18.4-r4.ppc603e
"Requires(post): /bin/sh" from tsort relations.
| error: removing busybox-1.18.4-r4.ppc603e "Requires(hint):
busybox-udhcpc" from tsort relations.
| error: LOOP:
| error: removing eglibc-dev-2.13-r3+svnr14157.ppc603e
"Requires: /lib/libcidn.so.1" from tsort relations.
| error: removing libcidn1-2.13-r3+svnr14157.ppc603e "Requires:
eglibc-dev >= 2.13" from tsort relations.
| error: LOOP:
| error: removing busybox-syslog-1.18.4-r4.ppc603e
"Requires(post): /bin/sh" from tsort relations.
| error: removing busybox-1.18.4-r4.ppc603e "Requires(hint):
busybox-syslog" from tsort relations.
| error: LOOP:
| error: removing eglibc-dev-2.13-r3+svnr14157.ppc603e "Requires: eglibc
= 2.13-r3+svnr14157" from tsort relations.
| error: removing eglibc-2.13-r3+svnr14157.ppc603e "Requires: eglibc-dev
>= 2.13" from tsort relations.
| error: LOOP:
| error: removing eglibc-dev-2.13-r3+svnr14157.ppc603e
"Requires: /lib/libthread_db.so.1" from tsort relations.
| error: removing libthread-db1-2.13-r3+svnr14157.ppc603e "Requires:
eglibc-dev >= 2.13" from tsort relations.
| error: LOOP:
| error: removing libudev0-164-r2.ppc603e "Requires: udev = 164-r2" from
tsort relations.
| error: removing udev-164-r2.ppc603e "Requires: libudev0 >= 164" from
tsort relations.
|
Manifest: /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs/install/install.manifest
| error: LOOP:
| error: removing eglibc-dev-2.13-r3+svnr14157.ppc603e
"Requires: /lib/libnss_hesiod.so.2" from tsort relations.
| error: removing eglibc-extra-nss-2.13-r3+svnr14157.ppc603e "Requires:
eglibc-dev >= 2.13" from tsort relations.
| error: LOOP:
| error: removing busybox-1.18.4-r4.ppc603e "Requires(hint):
busybox-udhcpc" from tsort relations.
| error: removing busybox-udhcpc-1.18.4-r4.ppc603e
"Requires(post): /bin/sh" from tsort relations.
| error: LOOP:
| error: removing eglibc-dev-2.13-r3+svnr14157.ppc603e
"Requires: /lib/libcidn.so.1" from tsort relations.
| error: removing libcidn1-2.13-r3+svnr14157.ppc603e "Requires:
eglibc-dev >= 2.13" from tsort relations.
| error: LOOP:
| error: removing busybox-1.18.4-r4.ppc603e "Requires(hint):
busybox-syslog" from tsort relations.
| error: removing busybox-syslog-1.18.4-r4.ppc603e
"Requires(post): /bin/sh" from tsort relations.
| error: LOOP:
| error: removing eglibc-dev-2.13-r3+svnr14157.ppc603e "Requires: eglibc
= 2.13-r3+svnr14157" from tsort relations.
| error: removing eglibc-2.13-r3+svnr14157.ppc603e "Requires: eglibc-dev
>= 2.13" from tsort relations.
| error: LOOP:
| error: removing libthread-db1-2.13-r3+svnr14157.ppc603e "Requires:
eglibc-dev >= 2.13" from tsort relations.
| error: removing eglibc-dev-2.13-r3+svnr14157.ppc603e
"Requires: /lib/libthread_db.so.1" from tsort relations.
| error: LOOP:
| error: removing udev-164-r2.ppc603e "Requires: libudev0 >= 164" from
tsort relations.
| error: removing libudev0-164-r2.ppc603e "Requires: udev = 164-r2" from
tsort relations.
| Preparing...
##################################################
| pciutils-ids
##################################################
| udev-extraconf
##################################################
| usbutils-ids
##################################################
| linux-libc-headers-dev
##################################################
| task-core-boot
##################################################
| initscripts
##################################################
| update-alternatives-cworth
##################################################
| base-files
##################################################
| update-rc.d
##################################################
| sysvinit-inittab
##################################################
| eglibc-extra-nss
##################################################
| libcidn1
##################################################
| busybox-udhcpc
##################################################
| eglibc
##################################################
| busybox-syslog
##################################################
| eglibc-dev
##################################################
| libthread-db1
##################################################
| busybox
##################################################
| libusb-1.0-0
##################################################
| libattr1
##################################################
| libz1
##################################################
| tinylogin
##################################################
| udev-cache
##################################################
| modutils-initscripts
##################################################
| keymaps
##################################################
| sysvinit
##################################################
| netbase
##################################################
| base-passwd
##################################################
| console-tools
##################################################
| sysvinit-pidof
##################################################
| libusb-compat
##################################################
| libacl1
##################################################
| libglib-2.0-0
##################################################
| udev
##################################################
| libudev0
##################################################
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//etc/init.d/syslog to syslog.busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//etc/syslog.conf to syslog.conf.busybox
|  Adding system startup
for /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs/etc/init.d/syslog.
|  Adding system startup
for /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs/etc/init.d/busybox-udhcpc.
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/bunzip2 to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/bzcat to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/date to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/base64 to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/patch to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/find to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/grep to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/egrep to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/fgrep to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/xargs to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/bootchartd to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/halt to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/poweroff to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/reboot to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/insmod to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/lsmod to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/modinfo to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/modprobe to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/rmmod to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/sbin/nbd-client to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/iostat to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/mpstat to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/pmap to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/powertop to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/smemcap to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/ash to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/sh to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/blockdev to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/rev to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/[ to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/[[ to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/ar to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/awk to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/basename to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/cat to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/chattr to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/chgrp to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/chmod to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/chown to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/sbin/chroot to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/chvt to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/clear to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/cmp to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/cp to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/cpio to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/cut to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/dc to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/dd to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/deallocvt to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/df to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/diff to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/dirname to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/dmesg to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/dnsdomainname to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/du to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/dumpkmap to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/dumpleases to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/echo to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/env to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/expr to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/false to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/sbin/fbset to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/fdisk to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/fgconsole to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/flock to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/free to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/fsck to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/fsck.minix to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/fuser to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/gunzip to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/gzip to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/head to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/hexdump to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/hostname to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/hwclock to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/id to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/ifconfig to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/ifdown to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/ifup to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/ip to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/kill to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/killall to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/klogd to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/less to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/ln to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/sbin/loadfont to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/loadkmap to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/logger to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/logname to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/logread to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/losetup to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/ls to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/md5sum to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/microcom to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/mkdir to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/mkfifo to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/mkfs.minix to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/mknod to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/mkswap to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/mktemp to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/more to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/mount to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/mv to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/nc to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/netstat to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/nohup to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/nslookup to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/od to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/openvt to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/pidof to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/ping to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/pivot_root to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/printf to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/ps to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/pwd to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/sbin/rdate to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/readlink to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/realpath to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/renice to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/reset to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/rm to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/rmdir to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/route to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/run-parts to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/sed to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/seq to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/setconsole to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/sleep to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/sort to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/start-stop-daemon to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/strings to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/stty to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/swapoff to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/swapon to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/switch_root to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/sync to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/sysctl to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/syslogd to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/tail to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/tar to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/tee to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/telnet to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/test to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/tftp to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/time to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/top to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/touch to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/tr to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/traceroute to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/true to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/tty to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/udhcpc to ../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/sbin/udhcpd to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/umount to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/uname to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/uniq to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/unxz to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/unzip to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/uptime to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/usleep to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/vi to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/watch to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/wc to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/wget to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/which to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/who to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/whoami to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/xzcat to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/xz to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/yes to ../../bin/busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/zcat to busybox
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/chvt to chvt.console-tools
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/deallocvt to deallocvt.console-tools
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/openvt to openvt.console-tools
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/fgconsole to fgconsole.console-tools
|  Adding system startup
for /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs/etc/init.d/keymap.sh.
|  Adding system startup
for /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs/etc/init.d/modutils.sh.
|  Adding system startup
for /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs/etc/init.d/networking.
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//bin/pidof to pidof.sysvinit
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/halt to halt.sysvinit
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/reboot to reboot.sysvinit
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/shutdown to shutdown.sysvinit
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/poweroff to poweroff.sysvinit
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/last to last.sysvinit
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/mesg to mesg.sysvinit
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//usr/bin/wall to wall.sysvinit
| update-alternatives:
Linking /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs//sbin/init to /sbin/init.sysvinit
|  Adding system startup
for /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs/etc/init.d/udev-cache.
|  Adding system startup
for /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs/etc/init.d/udev.
| log_check:
Using /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/temp/log.do_rootfs.10589 as logfile
| Logfile is clean
| Building feeds for [poky]..
| executing: ldconfig
-r /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/rootfs -c new -v
| /lib:
| 	librt.so.1 -> librt-2.13.so
| 	ld.so.1 -> ld-2.13.so
| 	libBrokenLocale.so.1 -> libBrokenLocale-2.13.so
| 	libcrypt.so.1 -> libcrypt-2.13.so
| 	libanl.so.1 -> libanl-2.13.so
| 	libnss_hesiod.so.2 -> libnss_hesiod-2.13.so
| 	libdl.so.2 -> libdl-2.13.so
| 	libnss_nisplus.so.2 -> libnss_nisplus-2.13.so
| 	libattr.so.1 -> libattr.so.1.1.0
| 	libthread_db.so.1 -> libthread_db-1.0.so
| 	libutil.so.1 -> libutil-2.13.so
| 	libpthread.so.0 -> libpthread-2.13.so
| 	libc.so.6 -> libc-2.13.so
| 	libnsl.so.1 -> libnsl-2.13.so
| 	libcidn.so.1 -> libcidn-2.13.so
| 	libresolv.so.2 -> libresolv-2.13.so
| 	libnss_dns.so.2 -> libnss_dns-2.13.so
| 	libnss_files.so.2 -> libnss_files-2.13.so
| 	libgudev-1.0.so.0 -> libgudev-1.0.so.0.0.1
| 	libacl.so.1 -> libacl.so.1.1.0
| 	libnss_compat.so.2 -> libnss_compat-2.13.so
| 	libudev.so.0 -> libudev.so.0.9.3
| 	libm.so.6 -> libm-2.13.so
| 	libnss_nis.so.2 -> libnss_nis-2.13.so
| /usr/lib:
| 	libgio-2.0.so.0 -> libgio-2.0.so.0.2800.8
| 	libusb-0.1.so.4 -> libusb-0.1.so.4.4.4
| 	libgmodule-2.0.so.0 -> libgmodule-2.0.so.0.2800.8
| 	libgobject-2.0.so.0 -> libgobject-2.0.so.0.2800.8
| 	libctutils.so.0 -> libctutils.so.0.0.0
| 	libcfont.so.0 -> libcfont.so.0.0.0
| 	libctgeneric.so.0 -> libctgeneric.so.0.0.0
| 	libz.so.1 -> libz.so.1.2.5
| 	libgthread-2.0.so.0 -> libgthread-2.0.so.0.2800.8
| 	libglib-2.0.so.0 -> libglib-2.0.so.0.2800.8
| 	libconsole.so.0 -> libconsole.so.0.0.0
| 	libusb-1.0.so.0 -> libusb-1.0.so.0.0.0
| saving cache in big endian encoding
| Size before prelinking 145911.
| Size after prelinking 146115.
| Error: min. I/O unit was not specified (use -h for help)
| ERROR: Function 'do_rootfs' failed
(see /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/temp/log.do_rootfs.10589 for further information)
| ERROR: Function 'do_rootfs' failed
(see /media/Datum/yocto/build_mpc8315erdb/tmp/work/mpc8315e_rdb-poky-linux/core-image-minimal-1.0-r0/temp/log.do_rootfs.10589 for further information)
NOTE: package core-image-minimal-1.0-r0: task do_rootfs: Failed
ERROR: Task 8
(/media/Datum/yocto/poky/meta/recipes-core/images/core-image-minimal.bb,
do_rootfs) failed with exit code '1'

-- 
倪庆亮
TEL:    13588371863
E-MAIL: niqingliang@insigma.com.cn
BLOG:   http://niqingliang2003.wordpress.com



