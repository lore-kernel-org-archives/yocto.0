Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01681E00346
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2012 02:55:02 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so232472yhf.35
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2012 02:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=YTHySn3yTGp+0Sdk7oFtxcni1/se94aJRsqkl4N//Oc=;
	b=imnCf6glyOHe07wE8/kVDMMJhmF56lu7YGQcnxuou6vX/iYl5ldQ/mR2lSRZHLPdGV
	tDDgfqokGXPHhxVam5tnPXL0tnEKA4Q3RfUqZEfKhMQ+l7c6Elozi4OjNXsW6fqma9ym
	dVGyVbkrzaEgid7d/GoNagyvAVKHvfWwt0DFb2C6J5ZhN0hwlEFWUCvckfWQDLjV+YKh
	e8ufV+AbGHNzgTYrSY7ifVTI863r6LhrxNlBTi23121ZrWe0Ck+DEyUlhmkXnj0cwl0A
	gB/tjZYwdgudARqn7zezC6mwckn7pKa+I+XfJmZH4Lpj6sj5u4jlhsIBlclztzCp0gCs
	BfQQ==
Received: by 10.68.231.233 with SMTP id tj9mr36732004pbc.39.1344938101643;
	Tue, 14 Aug 2012 02:55:01 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id hr1sm649855pbc.23.2012.08.14.02.54.56
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 14 Aug 2012 02:55:00 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <4A5B27D0-AF2F-4FBE-B1DC-FEB002F80B76@gmail.com>
Date: Tue, 14 Aug 2012 13:54:53 +0400
Message-Id: <B3DEA1FA-A170-46D6-9BCA-82555C89523C@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
	<CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
	<ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
	<AE25B08B-9B55-4EBA-B39B-2BE263109AA7@gmail.com>
	<E1905E17-0DE0-46BD-B6CF-CD5B87BE816C@gmail.com>
	<D5CC2FFB-E56B-41B1-BC70-9DFC41F54988@gmail.com>
	<CAMKF1soVRDxAQ86HPpPMEB9WL142HCWkOHVqXhGQSN9b4290UQ@mail.gmail.com>
	<651EC518-2C02-4A13-8AE7-0D118BCB3719@gmail.com>
	<CAMKF1sp5hQKC3fEd4TnXHnPMjPyEsCmWHOUuHdd4RLMZMZZb0w@mail.gmail.com>
	<50739671-4885-4C82-9360-C3376960B165@gmail.com>
	<3E8B6BA0-C1A9-4861-B1A1-F15BAAB7B3ED@gmail.com>
	<CAMKF1soQ3o7E6h86xbD9Wh8jCGzHEKmvzpwpYXKjePGcQe-+Yg@mail.gmail.com>
	<6047F1EE-6246-490D-BEC3-EE93F40439FE@gmail.com>
	<4A5B27D0-AF2F-4FBE-B1DC-FEB002F80B76@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Tue, 14 Aug 2012 09:55:03 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8537300A-2D1A-4665-BE95-7BFFBC59F909"

--Apple-Mail=_8537300A-2D1A-4665-BE95-7BFFBC59F909
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Khem,

On Aug 14, 2012, at 12:26 PM, Elvis Dowson wrote:

> So gcc-4.6.3, eglibc-2.13, from poky/denzil branch also failed, the =
same as the poky/master branch with gcc-4.6.3, eglibc-2.13. So I guess =
the I'll need to do a diff between the Denx ELDK 5.2.1 release, which is =
based on poky/denzil, and that of the current poky/denzil branch to see =
which recipes are different, and to try and isolate the cause of the =
kernel panics, when trying to run init=3D/bash/sh.
>=20
> Hopefully, that comparison will yield some clues.

I did a comparision betwen the poky/meta and the eldk/meta directories =
for the denzil branch. The ELDK one is roughly behind by around 2 =
updates to the denzil branch, I think.

One thing that I found, was the the ELDK install the no-float libraries =
for soft-floating point on the target, whereas the current poky/denzil =
branch does not:

diff --git a/tool/yocto/poky/meta/recipes-devtools/gcc/libgcc_4.6.bb =
b/tool/eldk/meta/recipes-devtools/gcc/libgcc_4.6.bb
index 9a8b20d..f75ca34 100644
--- a/tool/yocto/poky/meta/recipes-devtools/gcc/libgcc_4.6.bb
+++ b/tool/eldk/meta/recipes-devtools/gcc/libgcc_4.6.bb
@@ -16,8 +16,10 @@ PACKAGES =3D "\
 FILES_${PN} =3D "${base_libdir}/libgcc*.so.*"
 FILES_${PN}-dev =3D " \
   ${base_libdir}/libgcc*.so \
-  ${libdir}/${TARGET_SYS}/${BINV}/*crt* \
-  ${libdir}/${TARGET_SYS}/${BINV}/libgcc*"
+  ${libdir}/${TARGET_SYS}/${BINV}/crt* \
+  ${libdir}/${TARGET_SYS}/${BINV}/libgcc* \
+  ${libdir}/${TARGET_SYS}/${BINV}/nof/crt* \
+  ${libdir}/${TARGET_SYS}/${BINV}/nof/libgcc*"
 FILES_libgcov${PKGSUFFIX}-dev =3D " \
   ${libdir}/${TARGET_SYS}/${BINV}/libgcov.a"
=20
Could this be the reason? Apart from the one above, here are all the =
other differences under recipes-core. Do let me know if any of them =
stand-out:

diff --git a/tool/yocto/poky/meta/recipes-core/eglibc/eglibc-package.inc =
b/tool/eldk/meta/recipes-core/eglibc/eglibc-package.inc
index 3c371a7..0db221f 100644
--- a/tool/yocto/poky/meta/recipes-core/eglibc/eglibc-package.inc
+++ b/tool/eldk/meta/recipes-core/eglibc/eglibc-package.inc
@@ -20,12 +20,11 @@ USE_LDCONFIG ?=3D "1"
 PKGSUFFIX =3D ""
 PKGSUFFIX_virtclass-nativesdk =3D "-nativesdk"
=20
-PACKAGES =3D "${PN}-dbg ${PN} catchsegv${PKGSUFFIX} sln${PKGSUFFIX} =
nscd${PKGSUFFIX} ldd${PKGSUFFIX} ${PN}-mtrace ${PN}-utils =
eglibc-extra-nss${PKGSUFFIX} eglibc-thread-db${PKGSUFFIX} ${PN}-pic =
${PN}-dev ${PN}-staticdev ${PN}-doc libcidn${PKGSUFFIX} =
libmemusage${PKGSUFFIX} libsegfault${PKGSUFFIX} ${PN}-pcprofile =
libsotruss${PKGSUFFIX}"
+PACKAGES =3D "${PN}-dbg ${PN} catchsegv${PKGSUFFIX} sln${PKGSUFFIX} =
nscd${PKGSUFFIX} ldd${PKGSUFFIX} ${PN}-utils =
eglibc-extra-nss${PKGSUFFIX} eglibc-thread-db${PKGSUFFIX} ${PN}-pic =
${PN}-dev ${PN}-staticdev ${PN}-doc libcidn${PKGSUFFIX} =
libmemusage${PKGSUFFIX} libsegfault${PKGSUFFIX} ${PN}-pcprofile =
libsotruss${PKGSUFFIX}"
=20
 # The ld.so in this eglibc supports the GNU_HASH
 RPROVIDES_${PN} =3D "glibc${PKGSUFFIX} rtld(GNU_HASH)"
 RPROVIDES_${PN}-utils =3D "glibc${PKGSUFFIX}-utils"
-RPROVIDES_${PN}-mtrace =3D "glibc${PKGSUFFIX}-mtrace libc-mtrace"
 RPROVIDES_${PN}-pic =3D "glibc${PKGSUFFIX}-pic"
 RPROVIDES_${PN}-dev =3D "glibc${PKGSUFFIX}-dev"
 RPROVIDES_${PN}-staticdev =3D "glibc${PKGSUFFIX}-staticdev"
@@ -49,13 +48,11 @@ FILES_${PN}-dev_append +=3D "${bindir}/rpcgen =
${libdir}/*_nonshared.a \
 	${base_libdir}/*_nonshared.a ${base_libdir}/*.o =
${datadir}/aclocal"
 FILES_${PN}-staticdev_append +=3D "${libdir}/*.a ${base_libdir}/*.a"
 FILES_nscd${PKGSUFFIX} =3D "${sbindir}/nscd*"
-FILES_${PN}-mtrace =3D "${bindir}/mtrace"
 FILES_${PN}-utils =3D "${bindir}/* ${sbindir}/*"
 FILES_${PN}-dbg +=3D "${libexecdir}/*/.debug ${libdir}/audit/.debug"
 FILES_catchsegv${PKGSUFFIX} =3D "${bindir}/catchsegv"
 RDEPENDS_catchsegv${PKGSUFFIX} =3D "libsegfault"
 RDEPENDS_${PN}-utils +=3D "bash"
-RDEPENDS_${PN}-mtrace +=3D "perl"
 FILES_${PN}-pcprofile =3D "${base_libdir}/libpcprofile.so"
 FILES_eglibc-thread-db${PKGSUFFIX} =3D =
"${base_libdir}/libthread_db.so.* ${base_libdir}/libthread_db-*.so"
 RPROVIDES_${PN}-dev +=3D "libc-dev"
@@ -71,8 +68,6 @@ SUMMARY_ldd =3D "print shared library dependencies"
 DESCRIPTION_ldd =3D "/usr/bin/ldd prints shared library dependencies =
for each program or shared library specified on the command line."
 SUMMARY_${PN}-utils =3D "Miscellaneous utilities provided by eglibc"
 DESCRIPTION_${PN}-utils =3D "Miscellaneous utilities including getconf, =
iconf, locale, gencat, tzselect, zic, rpcinfo, ..."
-SUMMARY_${PN}-mtrace =3D "mtrace utility provided by eglibc"
-DESCRIPTION_${PN}-mtrace =3D "mtrace utility provided by eglibc"
 DESCRIPTION_libsotruss =3D "Library to support sotruss which traces =
calls through PLTs"
=20
 inherit libc-common multilib_header
diff --git a/tool/yocto/poky/meta/recipes-core/eglibc/eglibc.inc =
b/tool/eldk/meta/recipes-core/eglibc/eglibc.inc
index 51061bc..8e3fe50 100644
--- a/tool/yocto/poky/meta/recipes-core/eglibc/eglibc.inc
+++ b/tool/eldk/meta/recipes-core/eglibc/eglibc.inc
@@ -32,8 +32,6 @@ require eglibc-options.inc
=20
 LEAD_SONAME =3D "libc.so"
=20
-CACHED_CONFIGUREVARS +=3D "ac_cv_path_KSH=3D${base_bindir}/bash \
-                       ac_cv_path_BASH_SHELL=3D${base_bindir}/bash"
 GLIBC_EXTRA_OECONF ?=3D ""
 GLIBC_EXTRA_OECONF_virtclass-nativesdk =3D ""
 INHIBIT_DEFAULT_DEPS =3D "1"
diff --git a/tool/yocto/poky/meta/recipes-core/eglibc/eglibc_2.13.bb =
b/tool/eldk/meta/recipes-core/eglibc/eglibc_2.13.bb
index 690f99d..d8a41dc 100644
--- a/tool/yocto/poky/meta/recipes-core/eglibc/eglibc_2.13.bb
+++ b/tool/eldk/meta/recipes-core/eglibc/eglibc_2.13.bb
@@ -3,7 +3,7 @@ require eglibc.inc
 SRCREV =3D "15508"
=20
 DEPENDS +=3D "gperf-native"
-PR =3D "r28"
+PR =3D "r26"
 PR_append =3D "+svnr${SRCPV}"
=20
 EGLIBC_BRANCH=3D"eglibc-2_13"
diff --git a/tool/yocto/poky/meta/recipes-core/eglibc/eglibc_2.15.bb =
b/tool/eldk/meta/recipes-core/eglibc/eglibc_2.15.bb
index f5219d1..713efc3 100644
--- a/tool/yocto/poky/meta/recipes-core/eglibc/eglibc_2.15.bb
+++ b/tool/eldk/meta/recipes-core/eglibc/eglibc_2.15.bb
@@ -3,7 +3,7 @@ require eglibc.inc
 SRCREV =3D "17386"
=20
 DEPENDS +=3D "gperf-native"
-PR =3D "r7"
+PR =3D "r6"
 PR_append =3D "+svnr${SRCPV}"
=20
 EGLIBC_BRANCH=3D"eglibc-2_15"
diff --git =
a/tool/yocto/poky/meta/recipes-core/initrdscripts/files/init-install.sh =
b/tool/eldk/meta/recipes-core/initrdscripts/files/init-install.sh
index 01ff829..90978dd 100644
--- =
a/tool/yocto/poky/meta/recipes-core/initrdscripts/files/init-install.sh
+++ b/tool/eldk/meta/recipes-core/initrdscripts/files/init-install.sh
@@ -16,7 +16,7 @@ swap_ratio=3D5
 found=3D"no"
=20
 echo "Searching for a hard drive..."
-for device in 'hda' 'hdb' 'sda' 'sdb' 'mmcblk0' 'mmcblk1'
+for device in 'hda' 'hdb' 'sda' 'sdb'
   do
   if [ -e /sys/block/${device}/removable ]; then
       if [ "$(cat /sys/block/${device}/removable)" =3D "0" ]; then
@@ -62,7 +62,13 @@ rm -f /etc/udev/scripts/mount*
 #
 # Unmount anything the automounter had mounted
 #
-umount /dev/${device}* 2> /dev/null || /bin/true
+umount /dev/${device} 2> /dev/null || /bin/true
+umount /dev/${device}1 2> /dev/null || /bin/true
+umount /dev/${device}2 2> /dev/null || /bin/true
+umount /dev/${device}3 2> /dev/null || /bin/true
+umount /dev/${device}4 2> /dev/null || /bin/true
+umount /dev/${device}5 2> /dev/null || /bin/true
+umount /dev/${device}6 2> /dev/null || /bin/true
=20
 if [ ! -b /dev/sda ] ; then
     mknod /dev/sda b 8 0
@@ -88,23 +94,14 @@ rootfs_start=3D$((boot_size + 1))
 rootfs_end=3D$((rootfs_start+rootfs_size))
 swap_start=3D$((rootfs_end+1))
=20
-# MMC devices are special in a couple of ways
-# 1) they use a partition prefix character 'p'
-# 2) they are detected asynchronously (need rootwait)
-rootwait=3D""
-part_prefix=3D""
-if [ ! "${device#mmcblk}" =3D "${device}" ]; then
-	part_prefix=3D"p"
-	rootwait=3D"rootwait"
-fi
-bootfs=3D/dev/${device}${part_prefix}1
-rootfs=3D/dev/${device}${part_prefix}2
-swap=3D/dev/${device}${part_prefix}3
+bootfs=3D/dev/${device}1
+rootfs=3D/dev/${device}2
+swap=3D/dev/${device}3
=20
 echo "*****************"
-echo "Boot partition size:   $boot_size MB ($bootfs)"
-echo "Rootfs partition size: $rootfs_size MB ($rootfs)"
-echo "Swap partition size:   $swap_size MB ($swap)"
+echo "Boot partition size:   $boot_size MB (/dev/${device}1)"
+echo "Rootfs partition size: $rootfs_size MB (/dev/${device}2)"
+echo "Swap partition size:   $swap_size MB (/dev/${device}3)"
 echo "*****************"
 echo "Deleting partition table on /dev/${device} ..."
 dd if=3D/dev/zero of=3D/dev/${device} bs=3D512 count=3D2
@@ -112,24 +109,24 @@ dd if=3D/dev/zero of=3D/dev/${device} bs=3D512 =
count=3D2
 echo "Creating new partition table on /dev/${device} ..."
 parted /dev/${device} mklabel msdos
=20
-echo "Creating boot partition on $bootfs"
+echo "Creating boot partition on /dev/${device}1"
 parted /dev/${device} mkpart primary 1 $boot_size
=20
-echo "Creating rootfs partition on $rootfs"
+echo "Creating rootfs partition on /dev/${device}2"
 parted /dev/${device} mkpart primary $rootfs_start $rootfs_end
=20
-echo "Creating swap partition on $swap"
+echo "Creating swap partition on /dev/${device}3"
 parted /dev/${device} mkpart primary $swap_start $disk_size
=20
 parted /dev/${device} print
=20
-echo "Formatting $bootfs to ext2..."
+echo "Formatting /dev/${device}1 to ext2..."
 mkfs.ext3 $bootfs
=20
-echo "Formatting $rootfs to ext3..."
+echo "Formatting /dev/${device}2 to ext3..."
 mkfs.ext3 $rootfs
=20
-echo "Formatting swap partition...($swap)"
+echo "Formatting swap partition...(/dev/${device}3)"
 mkswap $swap
=20
 mkdir /ssd
@@ -153,7 +150,7 @@ fi
=20
 if [ -f /ssd/etc/grub.d/40_custom ] ; then
     echo "Preparing custom grub2 menu..."
-    sed -i "s@__ROOTFS__@$rootfs $rootwait@g" /ssd/etc/grub.d/40_custom
+    sed -i "s@__ROOTFS__@$rootfs@g" /ssd/etc/grub.d/40_custom
     sed -i "s/__VIDEO_MODE__/$3/g" /ssd/etc/grub.d/40_custom
     sed -i "s/__VGA_MODE__/$4/g" /ssd/etc/grub.d/40_custom
     mount $bootfs /bootmnt
diff --git =
a/tool/yocto/poky/meta/recipes-core/initrdscripts/initramfs-live-install_1=
.0.bb =
b/tool/eldk/meta/recipes-core/initrdscripts/initramfs-live-install_1.0.bb
index ac73ef8..793a4b7 100644
--- =
a/tool/yocto/poky/meta/recipes-core/initrdscripts/initramfs-live-install_1=
.0.bb
+++ =
b/tool/eldk/meta/recipes-core/initrdscripts/initramfs-live-install_1.0.bb
@@ -3,7 +3,7 @@ LICENSE =3D "MIT"
 LIC_FILES_CHKSUM =3D =
"file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de2042=
0"
 SRC_URI =3D "file://init-install.sh"
=20
-PR =3D "r7"
+PR =3D "r6"
=20
 RDEPENDS_${PN} =3D "grub parted e2fsprogs-mke2fs"
=20
diff --git a/tool/yocto/poky/meta/recipes-core/ncurses/ncurses.inc =
b/tool/eldk/meta/recipes-core/ncurses/ncurses.inc
index b031119..ae99e2c 100644
--- a/tool/yocto/poky/meta/recipes-core/ncurses/ncurses.inc
+++ b/tool/eldk/meta/recipes-core/ncurses/ncurses.inc
@@ -6,7 +6,7 @@ LIC_FILES_CHKSUM =3D =
"file://ncurses/base/version.c;beginline=3D1;endline=3D27;md5=3Dcbc
 SECTION =3D "libs"
 DEPENDS =3D "ncurses-native"
 DEPENDS_virtclass-native =3D ""
-INC_PR =3D "r9"
+INC_PR =3D "r8"
=20
 inherit autotools binconfig multilib_header
=20
@@ -107,15 +107,10 @@ do_test() {
         diff curses-narrowc.h curses-widec.h
 }
=20
-# Split original _install_opts to two parts.
-# One is the options to install contents, the other is the parameters \
-# when running command "make install"
 _install_opts =3D "\
-  install.libs install.includes install.man \
-"
-_install_cfgs =3D "\
   DESTDIR=3D'${D}' \
   PKG_CONFIG_LIBDIR=3D'${libdir}/pkgconfig' \
+  install.libs install.includes install.man \
 "
=20
 python do_install () {
@@ -127,19 +122,11 @@ shell_do_install() {
         # Order of installation is important; widec installs a =
'curses.h'
         # header with more definitions and must be installed last =
hence.
         # Compatibility of these headers will be checked in =
'do_test()'.
-        oe_runmake -C narrowc ${_install_cfgs} ${_install_opts} \
-                install.progs
-
-        # The install.data should run after install.libs, otherwise
-        # there would be a race issue in a very critical conditon, =
since
-        # tic will be run by install.data, and tic needs libtinfo.so
-        # which would be regenerated by install.libs.
-        oe_runmake -C narrowc ${_install_cfgs} \
-                install.data
-
+        oe_runmake -C narrowc ${_install_opts} \
+                install.data install.progs
=20
         ! ${ENABLE_WIDEC} || \
-            oe_runmake -C widec ${_install_cfgs} ${_install_opts}
+            oe_runmake -C widec ${_install_opts}
=20
         cd narrowc
=20
diff --git =
a/tool/yocto/poky/meta/recipes-core/tasks/task-core-tools-debug.bb =
b/tool/eldk/meta/recipes-core/tasks/task-core-tools-debug.bb
index 1dddbb8..3c92f3f 100644
--- a/tool/yocto/poky/meta/recipes-core/tasks/task-core-tools-debug.bb
+++ b/tool/eldk/meta/recipes-core/tasks/task-core-tools-debug.bb
@@ -17,14 +17,10 @@ PACKAGE_ARCH =3D "${MACHINE_ARCH}"
=20
 ALLOW_EMPTY =3D "1"
=20
-MTRACE =3D ""
-MTRACE_libc-glibc =3D "libc-mtrace"
-
 RDEPENDS_${PN} =3D "\
     gdb \
     gdbserver \
     tcf-agent \
     rsync \
     strace \
-    ${MTRACE} \
     "
diff --git a/tool/yocto/poky/meta/recipes-core/uclibc/uclibc.inc =
b/tool/eldk/meta/recipes-core/uclibc/uclibc.inc
index 55ab0c9..893d8fd 100644
--- a/tool/yocto/poky/meta/recipes-core/uclibc/uclibc.inc
+++ b/tool/eldk/meta/recipes-core/uclibc/uclibc.inc
@@ -13,7 +13,7 @@ SECTION =3D "libs"
 LIC_FILES_CHKSUM =3D =
"file://COPYING.LIB;md5=3Da6f89e2100d9b6cdffcea4f398e37343 \
 		    =
file://COPYING.LIB.boilerplate;md5=3Daaddeadcddeb918297e0e4afc52ce46f \
 =
file://${S}/test/regex/testregex.c;startline=3D1;endline=3D31;md5=3D234efb=
227d0a40677f895e4a1e26e960"
-INC_PR =3D "r7"
+INC_PR =3D "r6"
=20
 require uclibc-config.inc
 STAGINGCC =3D "gcc-cross-intermediate"
@@ -48,9 +48,9 @@ RDEPENDS_${PN}-dev =3D "linux-libc-headers-dev"
=20
 INHIBIT_DEFAULT_DEPS =3D "1"
=20
-# Ensure the uclibc-dev package is processed before uclibc-staticdev to =
allow
-# *_nonshared.a libraries to be packaged in the uclibc-dev package.
-PACKAGES =3D "${PN}-dbg ${PN}-dev ${PN}-staticdev ${PN} ${PN}-doc ldd =
uclibc-utils-dbg uclibc-utils uclibc-gconv uclibc-thread-db uclibc-argp =
uclibc-backtrace uclibc-libcrypt uclibc-libintl uclibc-libnsl =
uclibc-libresolv uclibc-libm uclibc-libdl uclibc-libutil =
uclibc-libpthread uclibc-librt"
+PACKAGES =3D+ "ldd uclibc-utils-dbg uclibc-utils uclibc-gconv =
uclibc-thread-db uclibc-argp uclibc-backtrace"
+PACKAGES =3D+ "uclibc-libcrypt uclibc-libintl uclibc-libnsl =
uclibc-libresolv uclibc-libm"
+PACKAGES =3D+ "uclibc-libdl uclibc-libutil uclibc-libpthread =
uclibc-librt"
=20
 FILES_uclibc-libcrypt =3D "${base_libdir}/libcrypt*.so.* =
${base_libdir}/libcrypt-*.so"
 FILES_uclibc-libintl =3D "${base_libdir}/libintl*.so.* =
${base_libdir}/libintl-*.so"
@@ -88,8 +88,7 @@ RPROVIDES_${PN}-dev +=3D "libc-dev virtual-libc-dev"
 # uclibc does not really have libsegfault but then using the one from =
glibc is also not
 # going to work. So we pretend that we have it to make bitbake not pull =
other recipes
 # to satisfy this dependency for the images/tasks
-
-RPROVIDES_uclibc +=3D "libsegfault rtld(GNU_HASH)"
+RPROVIDES_uclibc +=3D "libsegfault"
=20
 SRC_URI =3D "\
         =
http://www.uclibc.org/downloads/uClibc-${PV}.tar.bz2;name=3DuClibc-${PV} =
\
diff --git a/tool/yocto/poky/meta/recipes-devtools/binutils/binutils.inc =
b/tool/eldk/meta/recipes-devtools/binutils/binutils.inc
index 552b808..e343242 100644
--- a/tool/yocto/poky/meta/recipes-devtools/binutils/binutils.inc
+++ b/tool/eldk/meta/recipes-devtools/binutils/binutils.inc
@@ -32,7 +32,6 @@ FILES_${PN}-symlinks =3D " \
 	${bindir}/addr2line \
 	${bindir}/as \
 	${bindir}/c++filt \
-	${bindir}/embedspu \
 	${bindir}/gprof \
 	${bindir}/ld \
 	${bindir}/ld.bfd \
diff --git =
a/tool/yocto/poky/meta/recipes-devtools/dpkg/dpkg/dpkg-deb-avoid-fflush.pa=
tch =
b/tool/yocto/poky/meta/recipes-devtools/dpkg/dpkg/dpkg-deb-avoid-fflush.pa=
tch
deleted file mode 100644
index a5d6b61..0000000
--- =
a/tool/yocto/poky/meta/recipes-devtools/dpkg/dpkg/dpkg-deb-avoid-fflush.pa=
tch
+++ /dev/null
@@ -1,198 +0,0 @@
-=46rom 78eaf928d30d0b16e05d8d63c55a3632a135ed9a Mon Sep 17 00:00:00 =
2001
-From: Guillem Jover <guillem@debian.org>
-Date: Thu, 4 Nov 2010 00:51:13 +0100
-Subject: [PATCH] dpkg-deb: Use fd instead of stream based buffered I/O
-
-Behaviour of fflush() on input streams is undefined per POSIX, avoid
-mixing stream and file descriptor based I/O, and only use the latter
-instead.
-
-Upstream-Status: Backport of revision =
2d420ee1d05033d237462a0075facfe406b08043 (in 1.16.x)
-
----
- dpkg-deb/extract.c |   83 =
++++++++++++++++++++++++++++++++++++++-------------
- 1 files changed, 62 insertions(+), 21 deletions(-)
-
-diff --git a/dpkg-deb/extract.c b/dpkg-deb/extract.c
-index 22aea98..0f5ac88 100644
---- a/dpkg-deb/extract.c
-+++ b/dpkg-deb/extract.c
-@@ -31,6 +31,7 @@
- #include <ctype.h>
- #include <string.h>
- #include <dirent.h>
-+#include <fcntl.h>
- #include <unistd.h>
- #include <ar.h>
- #include <stdbool.h>
-@@ -61,13 +62,41 @@ static void movecontrolfiles(const char *thing) {
- }
-=20
- static void DPKG_ATTR_NORET
--readfail(FILE *a, const char *filename, const char *what)
-+read_fail(int rc, const char *filename, const char *what)
- {
--  if (ferror(a)) {
--    ohshite(_("error reading %s from file %.255s"), what, filename);
--  } else {
-+  if (rc =3D=3D 0)
-     ohshit(_("unexpected end of file in %s in %.255s"),what,filename);
-+  else
-+    ohshite(_("error reading %s from file %.255s"), what, filename);
-+}
-+
-+static ssize_t
-+read_line(int fd, char *buf, size_t min_size, size_t max_size)
-+{
-+  ssize_t line_size =3D 0;
-+  size_t n =3D min_size;
-+
-+  while (line_size < (ssize_t)max_size) {
-+    ssize_t r;
-+    char *nl;
-+
-+    r =3D read(fd, buf + line_size, n);
-+    if (r <=3D 0)
-+      return r;
-+
-+    nl =3D strchr(buf + line_size, '\n');
-+    line_size +=3D r;
-+
-+    if (nl !=3D NULL) {
-+      nl[1] =3D '\0';
-+      return line_size;
-+    }
-+
-+    n =3D 1;
-   }
-+
-+  buf[line_size] =3D '\0';
-+  return line_size;
- }
-=20
- static size_t
-@@ -115,19 +144,26 @@ void extracthalf(const char *debar, const char =
*directory,
-   char versionbuf[40];
-   float versionnum;
-   size_t ctrllennum, memberlen=3D 0;
-+  ssize_t r;
-   int dummy;
-   pid_t c1=3D0,c2,c3;
-   int p1[2], p2[2];
--  FILE *ar;
-+  int arfd;
-   struct stat stab;
-   char nlc;
-   int adminmember;
-   bool oldformat, header_done;
-   struct compressor *decompressor =3D &compressor_gzip;
-  =20
--  ar=3D fopen(debar,"r"); if (!ar) ohshite(_("failed to read archive =
`%.255s'"),debar);
--  if (fstat(fileno(ar),&stab)) ohshite(_("failed to fstat archive"));
--  if (!fgets(versionbuf,sizeof(versionbuf),ar)) =
readfail(ar,debar,_("version number"));
-+  arfd =3D open(debar, O_RDONLY);
-+  if (arfd < 0)
-+    ohshite(_("failed to read archive `%.255s'"), debar);
-+  if (fstat(arfd, &stab))
-+    ohshite(_("failed to fstat archive"));
-+
-+  r =3D read_line(arfd, versionbuf, strlen(DPKG_AR_MAGIC), =
sizeof(versionbuf));
-+  if (r < 0)
-+    read_fail(r, debar, _("archive magic version number"));
-=20
-   if (!strcmp(versionbuf, DPKG_AR_MAGIC)) {
-     oldformat =3D false;
-@@ -137,8 +173,9 @@ void extracthalf(const char *debar, const char =
*directory,
-     for (;;) {
-       struct ar_hdr arh;
-=20
--      if (fread(&arh,1,sizeof(arh),ar) !=3D sizeof(arh))
--        readfail(ar,debar,_("between members"));
-+      r =3D read(arfd, &arh, sizeof(arh));
-+      if (r !=3D sizeof(arh))
-+        read_fail(r, debar, _("archive member header"));
-=20
-       dpkg_ar_normalize_name(&arh);
-=20
-@@ -153,8 +190,9 @@ void extracthalf(const char *debar, const char =
*directory,
-         if (strncmp(arh.ar_name, DEBMAGIC, sizeof(arh.ar_name)) !=3D =
0)
-           ohshit(_("file `%.250s' is not a debian binary archive (try =
dpkg-split?)"),debar);
-         infobuf=3D m_malloc(memberlen+1);
--        if (fread(infobuf,1, memberlen + (memberlen&1), ar) !=3D =
memberlen + (memberlen&1))
--          readfail(ar,debar,_("header info member"));
-+        r =3D read(arfd, infobuf, memberlen + (memberlen & 1));
-+        if ((size_t)r !=3D (memberlen + (memberlen & 1)))
-+          read_fail(r, debar, _("archive information header member"));
-         infobuf[memberlen] =3D '\0';
-         cur=3D strchr(infobuf,'\n');
-         if (!cur) ohshit(_("archive has no newlines in header"));
-@@ -174,7 +212,8 @@ void extracthalf(const char *debar, const char =
*directory,
-           /* Members with `_' are noncritical, and if we don't =
understand them
-            * we skip them.
-            */
--	stream_null_copy(ar, memberlen + (memberlen&1),_("skipped member =
data from %s"), debar);
-+        fd_null_copy(arfd, memberlen + (memberlen & 1),
-+                     _("skipped archive member data from %s"), debar);
-       } else {
- 	if (strncmp(arh.ar_name, ADMINMEMBER, sizeof(arh.ar_name)) =3D=3D =
0)
- 	  adminmember =3D 1;
-@@ -198,7 +237,8 @@ void extracthalf(const char *debar, const char =
*directory,
-           ctrllennum=3D memberlen;
-         }
-         if (!adminmember !=3D !admininfo) {
--	  stream_null_copy(ar, memberlen + (memberlen&1),_("skipped =
member data from %s"), debar);
-+          fd_null_copy(arfd, memberlen + (memberlen & 1),
-+                       _("skipped archive member data from %s"), =
debar);
-         } else {
-           break; /* Yes ! - found it. */
-         }
-@@ -221,8 +261,10 @@ void extracthalf(const char *debar, const char =
*directory,
-     l =3D strlen(versionbuf);
-     if (l && versionbuf[l - 1] =3D=3D '\n')
-       versionbuf[l - 1] =3D '\0';
--    if (!fgets(ctrllenbuf,sizeof(ctrllenbuf),ar))
--      readfail(ar, debar, _("control information length"));
-+
-+    r =3D read_line(arfd, ctrllenbuf, 1, sizeof(ctrllenbuf));
-+    if (r < 0)
-+      read_fail(r, debar, _("archive control member size"));
-     if (sscanf(ctrllenbuf,"%zi%c%d",&ctrllennum,&nlc,&dummy) !=3D2 || =
nlc !=3D '\n')
-       ohshit(_("archive has malformatted control length `%s'"), =
ctrllenbuf);
-=20
-@@ -230,7 +272,8 @@ void extracthalf(const char *debar, const char =
*directory,
-       memberlen =3D ctrllennum;
-     } else {
-       memberlen =3D stab.st_size - ctrllennum - strlen(ctrllenbuf) - =
l;
--      stream_null_copy(ar, ctrllennum, _("skipped control area from =
%s"), debar);
-+      fd_null_copy(arfd, ctrllennum,
-+                   _("skipped archive control member data from %s"), =
debar);
-     }
-=20
-     if (admininfo >=3D 2) {
-@@ -252,13 +295,11 @@ void extracthalf(const char *debar, const char =
*directory,
-=20
-   }
-=20
--  safe_fflush(ar);
--
-   m_pipe(p1);
-   c1 =3D subproc_fork();
-   if (!c1) {
-     close(p1[0]);
--    stream_fd_copy(ar, p1[1], memberlen, _("failed to write to pipe in =
copy"));
-+    fd_fd_copy(arfd, p1[1], memberlen, _("failed to write to pipe in =
copy"));
-     if (close(p1[1]))
-       ohshite(_("failed to close pipe in copy"));
-     exit(0);
-@@ -275,7 +316,7 @@ void extracthalf(const char *debar, const char =
*directory,
-     decompress_filter(decompressor, 0, 1, _("data"));
-   }
-   close(p1[0]);
--  fclose(ar);
-+  close(arfd);
-   if (taroption) close(p2[1]);
-=20
-   if (taroption && directory) {
---=20
-1.7.7.6
-
diff --git a/tool/yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.15.8.7.bb =
b/tool/eldk/meta/recipes-devtools/dpkg/dpkg_1.15.8.7.bb
index 1e7ef25..f1030fa 100644
--- a/tool/yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.15.8.7.bb
+++ b/tool/eldk/meta/recipes-devtools/dpkg/dpkg_1.15.8.7.bb
@@ -5,11 +5,10 @@ SRC_URI +=3D "file://noman.patch \
             file://check_snprintf.patch \
             file://check_version.patch \
             file://perllibdir.patch \
-            file://preinst.patch \
-            file://dpkg-deb-avoid-fflush.patch"
+            file://preinst.patch"
=20
 SRC_URI[md5sum] =3D "d1731d4147c1ea3b537a4d094519a6dc"
 SRC_URI[sha256sum] =3D =
"1ec1376471b04717a4497e5d7a27cd545248c92116898ce0c53ced8ea94267b5"
=20
-PR =3D "${INC_PR}.4"
+PR =3D "${INC_PR}.3"
=20
diff --git a/tool/eldk/meta/recipes-devtools/gcc/gcc-4.6/t-mips.patch =
b/tool/eldk/meta/recipes-devtools/gcc/gcc-4.6/t-mips.patch
new file mode 100644
index 0000000..4786f95
--- /dev/null
+++ b/tool/eldk/meta/recipes-devtools/gcc/gcc-4.6/t-mips.patch
@@ -0,0 +1,10 @@
+--- gcc-4_6-branch/gcc/config/mips/t-mips.orig  2011-09-03 =
05:58:07.000000000 +0300
++++ gcc-4_6-branch/gcc/config/mips/t-mips       2011-10-18 =
19:14:39.000000000 +0300
+@@ -39,3 +39,7 @@
+        cat $(srcdir)/config/fp-bit.c >> fp-bit.c
+
+ LIB2_SIDITI_CONV_FUNCS=3Dyes
++
++MULTILIB_OPTIONS =3D msoft-float
++MULTILIB_DIRNAMES =3D nof
++MULTILIB_MATCHES =3D
diff --git a/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-4.6.inc =
b/tool/eldk/meta/recipes-devtools/gcc/gcc-4.6.inc
index 020e21b..9fd152a 100644
--- a/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-4.6.inc
+++ b/tool/eldk/meta/recipes-devtools/gcc/gcc-4.6.inc
@@ -74,6 +74,7 @@ SRC_URI =3D =
"svn://gcc.gnu.org/svn/gcc/branches;module=3D${BRANCH};proto=3Dhttp \
 	   file://GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch \
 	   file://fortran-cross-compile-hack.patch \
 	   file://cpp-honour-sysroot.patch \
+	   file://t-mips.patch \
 	  "
=20
 SRC_URI_append_sh3  =3D " file://sh3-installfix-fixheaders.patch "
diff --git =
a/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-configure-common.inc =
b/tool/eldk/meta/recipes-devtools/gcc/gcc-configure-common.inc
index 9542dc9..da60089 100644
--- a/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-configure-common.inc
+++ b/tool/eldk/meta/recipes-devtools/gcc/gcc-configure-common.inc
@@ -25,7 +25,8 @@ EXTRA_OECONF_PATHS ?=3D ""
 EXTRA_OECONF_INITIAL ?=3D ""
 EXTRA_OECONF_INTERMEDIATE ?=3D ""
=20
-GCCMULTILIB =3D "--disable-multilib"
+MULTILIB_ARCH_LIST =3D "mips"
+GCCMULTILIB =3D '${@base_contains("MULTILIB_ARCH_LIST", =
"${TARGET_ARCH}", "--enable-multilib", "--disable-multilib",d)}'
=20
 EXTRA_OECONF =3D "${@['--enable-clocale=3Dgeneric', =
''][d.getVar('USE_NLS', True) !=3D 'no']} \
                 --with-gnu-ld \
diff --git =
a/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-package-target.inc =
b/tool/eldk/meta/recipes-devtools/gcc/gcc-package-target.inc
index a499c88..3076670 100644
--- a/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-package-target.inc
+++ b/tool/eldk/meta/recipes-devtools/gcc/gcc-package-target.inc
@@ -1,5 +1,5 @@
 PACKAGES =3D "\
-  ${PN} ${PN}-plugins ${PN}-symlinks \
+  ${PN} ${PN}-symlinks \
   g++ g++-symlinks \
   cpp cpp-symlinks \
   g77 g77-symlinks \
@@ -40,11 +40,6 @@ FILES_${PN}-symlinks =3D "\
   ${bindir}/gccbug \
 "
=20
-FILES_${PN}-plugins =3D "\
-  ${gcclibdir}/${TARGET_SYS}/${BINV}/plugin \
-"
-ALLOW_EMPTY_${PN}-plugins =3D "1"
-
 FILES_g77 =3D "\
   ${bindir}/${TARGET_PREFIX}g77 \
   ${libexecdir}/gcc/${TARGET_SYS}/${BINV}/f771 \
@@ -93,7 +88,6 @@ do_install () {
 	rm -r ${D}${libdir}/gcc/${TARGET_SYS}/${BINV}/install-tools
 	rm -r ${D}${libexecdir}/gcc/${TARGET_SYS}/${BINV}/install-tools
 	rm -rf ${D}${libexecdir}/gcc/${TARGET_SYS}/${BINV}/*.la
-	rmdir ${D}${includedir}
=20
 	# Hack around specs file assumptions
 	test -f ${D}${libdir}/gcc/${TARGET_SYS}/${BINV}/specs && sed -i =
-e '/^*cross_compile:$/ { n; s/1/0/; }' =
${D}${libdir}/gcc/${TARGET_SYS}/${BINV}/specs
diff --git a/tool/yocto/poky/meta/recipes-devtools/gcc/libgcc_4.6.bb =
b/tool/eldk/meta/recipes-devtools/gcc/libgcc_4.6.bb
index 9a8b20d..f75ca34 100644
--- a/tool/yocto/poky/meta/recipes-devtools/gcc/libgcc_4.6.bb
+++ b/tool/eldk/meta/recipes-devtools/gcc/libgcc_4.6.bb
@@ -16,8 +16,10 @@ PACKAGES =3D "\
 FILES_${PN} =3D "${base_libdir}/libgcc*.so.*"
 FILES_${PN}-dev =3D " \
   ${base_libdir}/libgcc*.so \
-  ${libdir}/${TARGET_SYS}/${BINV}/*crt* \
-  ${libdir}/${TARGET_SYS}/${BINV}/libgcc*"
+  ${libdir}/${TARGET_SYS}/${BINV}/crt* \
+  ${libdir}/${TARGET_SYS}/${BINV}/libgcc* \
+  ${libdir}/${TARGET_SYS}/${BINV}/nof/crt* \
+  ${libdir}/${TARGET_SYS}/${BINV}/nof/libgcc*"
 FILES_libgcov${PKGSUFFIX}-dev =3D " \
   ${libdir}/${TARGET_SYS}/${BINV}/libgcov.a"
=20

Best regards,

Elvis Dowson=

--Apple-Mail=_8537300A-2D1A-4665-BE95-7BFFBC59F909
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Khem,<div><br><div><div>On Aug 14, 2012, at 12:26 PM, Elvis Dowson =
wrote:</div><div><br></div><blockquote type=3D"cite"><div>So gcc-4.6.3, =
eglibc-2.13, from poky/denzil branch also failed, the same as the =
poky/master branch with gcc-4.6.3, eglibc-2.13. So I guess the I'll need =
to do a diff between the Denx ELDK 5.2.1 release, which is based on =
poky/denzil, and that of the current poky/denzil branch to see which =
recipes are different, and to try and isolate the cause of the kernel =
panics, when trying to run init=3D/bash/sh.</div><div><br>Hopefully, =
that comparison will yield some =
clues.<br></div></blockquote></div><br><div>I did a comparision betwen =
the poky/meta and the eldk/meta directories for the denzil branch. The =
ELDK one is roughly behind by around 2 updates to the denzil branch, I =
think.</div><div><br></div><div>One thing that I found, was the the ELDK =
install the no-float libraries for soft-floating point on the target, =
whereas the current poky/denzil branch does =
not:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-devtools/gcc/libgcc_4.6.bb =
b/tool/eldk/meta/recipes-devtools/gcc/libgcc_4.6.bb</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
9a8b20d..f75ca34 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-devtools/gcc/libgcc_4.6.bb</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/tool/eldk/meta/recipes-devtools/gcc/libgcc_4.6.bb</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -16,8 +16,10 =
@@ PACKAGES =3D "\</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;FILES_${PN} =3D =
"${base_libdir}/libgcc*.so.*"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;FILES_${PN}-dev =3D " \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; =
&nbsp;${base_libdir}/libgcc*.so \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/*crt* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/libgcc*"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/crt* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/libgcc* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/nof/crt* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/nof/libgcc*"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;FILES_libgcov${PKGSUFFIX}-dev =3D " =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/libgcov.a"</font></div><div>&nbsp;</=
div></div><div>Could this be the reason?&nbsp;Apart from the one above, =
here are all the other differences under recipes-core. Do let me know if =
any of them stand-out:</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-core/eglibc/eglibc-package.inc =
b/tool/eldk/meta/recipes-core/eglibc/eglibc-package.inc</font></div><div><=
font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
3c371a7..0db221f 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-core/eglibc/eglibc-package.inc</font></div>=
<div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/tool/eldk/meta/recipes-core/eglibc/eglibc-package.inc</font></div><div><=
font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -20,12 =
+20,11 @@ USE_LDCONFIG ?=3D "1"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;PKGSUFFIX =3D =
""</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;PKGSUFFIX_virtclass-nativesdk =3D =
"-nativesdk"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-PACKAGES =3D =
"${PN}-dbg ${PN} catchsegv${PKGSUFFIX} sln${PKGSUFFIX} nscd${PKGSUFFIX} =
ldd${PKGSUFFIX} ${PN}-mtrace ${PN}-utils eglibc-extra-nss${PKGSUFFIX} =
eglibc-thread-db${PKGSUFFIX} ${PN}-pic ${PN}-dev ${PN}-staticdev =
${PN}-doc libcidn${PKGSUFFIX} libmemusage${PKGSUFFIX} =
libsegfault${PKGSUFFIX} ${PN}-pcprofile =
libsotruss${PKGSUFFIX}"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+PACKAGES =3D "${PN}-dbg ${PN} =
catchsegv${PKGSUFFIX} sln${PKGSUFFIX} nscd${PKGSUFFIX} ldd${PKGSUFFIX} =
${PN}-utils eglibc-extra-nss${PKGSUFFIX} eglibc-thread-db${PKGSUFFIX} =
${PN}-pic ${PN}-dev ${PN}-staticdev ${PN}-doc libcidn${PKGSUFFIX} =
libmemusage${PKGSUFFIX} libsegfault${PKGSUFFIX} ${PN}-pcprofile =
libsotruss${PKGSUFFIX}"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;# The ld.so =
in this eglibc supports the GNU_HASH</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;RPROVIDES_${PN} =3D "glibc${PKGSUFFIX} =
rtld(GNU_HASH)"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;RPROVIDES_${PN}-utils =3D =
"glibc${PKGSUFFIX}-utils"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-RPROVIDES_${PN}-mtrace =3D "glibc${PKGSUFFIX}-mtrace =
libc-mtrace"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;RPROVIDES_${PN}-pic =3D =
"glibc${PKGSUFFIX}-pic"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;RPROVIDES_${PN}-dev =3D =
"glibc${PKGSUFFIX}-dev"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;RPROVIDES_${PN}-staticdev =3D =
"glibc${PKGSUFFIX}-staticdev"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -49,13 +48,11 =
@@ FILES_${PN}-dev_append +=3D "${bindir}/rpcgen ${libdir}/*_nonshared.a =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>${base_libdir}/*_nonshared.a ${base_libdir}/*.o =
${datadir}/aclocal"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;FILES_${PN}-staticdev_append +=3D =
"${libdir}/*.a ${base_libdir}/*.a"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;FILES_nscd${PKGSUFFIX} =3D =
"${sbindir}/nscd*"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-FILES_${PN}-mtrace =3D =
"${bindir}/mtrace"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;FILES_${PN}-utils =3D "${bindir}/* =
${sbindir}/*"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;FILES_${PN}-dbg +=3D =
"${libexecdir}/*/.debug ${libdir}/audit/.debug"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;FILES_catchsegv${PKGSUFFIX} =3D =
"${bindir}/catchsegv"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;RDEPENDS_catchsegv${PKGSUFFIX} =3D =
"libsegfault"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;RDEPENDS_${PN}-utils +=3D =
"bash"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-RDEPENDS_${PN}-mtrace +=3D "perl"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;FILES_${PN}-pcprofile =3D =
"${base_libdir}/libpcprofile.so"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;FILES_eglibc-thread-db${PKGSUFFIX} =3D =
"${base_libdir}/libthread_db.so.* =
${base_libdir}/libthread_db-*.so"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;RPROVIDES_${PN}-dev +=3D =
"libc-dev"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">@@ -71,8 +68,6 @@ SUMMARY_ldd =3D "print =
shared library dependencies"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;DESCRIPTION_ldd =3D "/usr/bin/ldd prints shared library =
dependencies for each program or shared library specified on the command =
line."</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;SUMMARY_${PN}-utils =3D "Miscellaneous utilities =
provided by eglibc"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;DESCRIPTION_${PN}-utils =3D =
"Miscellaneous utilities including getconf, iconf, locale, gencat, =
tzselect, zic, rpcinfo, ..."</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-SUMMARY_${PN}-mtrace =3D "mtrace utility provided by =
eglibc"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-DESCRIPTION_${PN}-mtrace =3D "mtrace utility provided by =
eglibc"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;DESCRIPTION_libsotruss =3D "Library to support sotruss =
which traces calls through PLTs"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;inherit libc-common =
multilib_header</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-core/eglibc/eglibc.inc =
b/tool/eldk/meta/recipes-core/eglibc/eglibc.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
51061bc..8e3fe50 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-core/eglibc/eglibc.inc</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/tool/eldk/meta/recipes-core/eglibc/eglibc.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -32,8 +32,6 @@ =
require eglibc-options.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;LEAD_SONAME =3D =
"libc.so"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-CACHED_CONFIGUREVARS +=3D =
"ac_cv_path_KSH=3D${base_bindir}/bash \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
ac_cv_path_BASH_SHELL=3D${base_bindir}/bash"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;GLIBC_EXTRA_OECONF ?=3D ""</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;GLIBC_EXTRA_OECONF_virtclass-nativesdk =3D =
""</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;INHIBIT_DEFAULT_DEPS =3D "1"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-core/eglibc/eglibc_2.13.bb =
b/tool/eldk/meta/recipes-core/eglibc/eglibc_2.13.bb</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
690f99d..d8a41dc 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-core/eglibc/eglibc_2.13.bb</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/tool/eldk/meta/recipes-core/eglibc/eglibc_2.13.bb</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -3,7 +3,7 @@ =
require eglibc.inc</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;SRCREV =3D =
"15508"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;DEPENDS +=3D =
"gperf-native"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-PR =3D "r28"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+PR =3D =
"r26"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;PR_append =3D "+svnr${SRCPV}"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" =
size=3D"2">&nbsp;EGLIBC_BRANCH=3D"eglibc-2_13"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-core/eglibc/eglibc_2.15.bb =
b/tool/eldk/meta/recipes-core/eglibc/eglibc_2.15.bb</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
f5219d1..713efc3 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-core/eglibc/eglibc_2.15.bb</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/tool/eldk/meta/recipes-core/eglibc/eglibc_2.15.bb</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -3,7 +3,7 @@ =
require eglibc.inc</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;SRCREV =3D =
"17386"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;DEPENDS +=3D =
"gperf-native"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-PR =3D "r7"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+PR =3D =
"r6"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;PR_append =3D "+svnr${SRCPV}"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" =
size=3D"2">&nbsp;EGLIBC_BRANCH=3D"eglibc-2_15"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-core/initrdscripts/files/init-install.sh =
b/tool/eldk/meta/recipes-core/initrdscripts/files/init-install.sh</font></=
div><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index=
 01ff829..90978dd 100644</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-core/initrdscripts/files/init-install.sh</f=
ont></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">+++ =
b/tool/eldk/meta/recipes-core/initrdscripts/files/init-install.sh</font></=
div><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ =
-16,7 +16,7 @@ swap_ratio=3D5</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;found=3D"no"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;echo "Searching for a hard =
drive..."</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-for device in 'hda' 'hdb' 'sda' 'sdb' =
'mmcblk0' 'mmcblk1'</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+for device in 'hda' 'hdb' 'sda' =
'sdb'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp;do</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp;if [ =
-e /sys/block/${device}/removable ]; then</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp;if [ "$(cat /sys/block/${device}/removable)" =3D "0" ]; =
then</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">@@ -62,7 +62,13 @@ rm -f =
/etc/udev/scripts/mount*</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">&nbsp;#</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;# Unmount =
anything the automounter had mounted</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;#</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-umount /dev/${device}* 2&gt; /dev/null || =
/bin/true</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+umount /dev/${device} 2&gt; /dev/null || =
/bin/true</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+umount /dev/${device}1 2&gt; /dev/null || =
/bin/true</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+umount /dev/${device}2 2&gt; /dev/null || =
/bin/true</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+umount /dev/${device}3 2&gt; /dev/null || =
/bin/true</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+umount /dev/${device}4 2&gt; /dev/null || =
/bin/true</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+umount /dev/${device}5 2&gt; /dev/null || =
/bin/true</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+umount /dev/${device}6 2&gt; /dev/null || =
/bin/true</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;if [ ! -b =
/dev/sda ] ; then</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp;mknod /dev/sda b 8 =
0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">@@ -88,23 +94,14 @@ rootfs_start=3D$((boot_size + =
1))</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;rootfs_end=3D$((rootfs_start+rootfs_size))</font></div><d=
iv><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;swap_start=3D$((rootfs_end+1))</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-# MMC devices are special in a couple of =
ways</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-# 1) they use a partition prefix character =
'p'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-# 2) they are detected asynchronously (need =
rootwait)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-rootwait=3D""</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-part_prefix=3D""</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-if [ ! =
"${device#mmcblk}" =3D "${device}" ]; then</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>part_prefix=3D"p"</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">-<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	=
</span>rootwait=3D"rootwait"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-fi</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" =
size=3D"2">-bootfs=3D/dev/${device}${part_prefix}1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-rootfs=3D/dev/${device}${part_prefix}2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-swap=3D/dev/${device}${part_prefix}3</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">+bootfs=3D/dev/${device}1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">+rootfs=3D/dev/${device}2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">+swap=3D/dev/${device}3</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;echo =
"*****************"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-echo "Boot partition size: &nbsp; $boot_size =
MB ($bootfs)"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-echo "Rootfs partition size: $rootfs_size MB =
($rootfs)"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-echo "Swap partition size: &nbsp; $swap_size =
MB ($swap)"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+echo "Boot partition size: &nbsp; $boot_size =
MB (/dev/${device}1)"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+echo "Rootfs partition size: $rootfs_size MB =
(/dev/${device}2)"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+echo "Swap partition size: &nbsp; $swap_size =
MB (/dev/${device}3)"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;echo =
"*****************"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;echo "Deleting partition table on =
/dev/${device} ..."</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;dd if=3D/dev/zero of=3D/dev/${device} =
bs=3D512 count=3D2</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">@@ -112,24 +109,24 @@ dd if=3D/dev/zero =
of=3D/dev/${device} bs=3D512 count=3D2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;echo =
"Creating new partition table on /dev/${device} =
..."</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;parted /dev/${device} mklabel =
msdos</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-echo "Creating boot partition on =
$bootfs"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">+echo "Creating boot partition on =
/dev/${device}1"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;parted /dev/${device} mkpart primary 1 =
$boot_size</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-echo "Creating =
rootfs partition on $rootfs"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+echo "Creating =
rootfs partition on /dev/${device}2"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;parted =
/dev/${device} mkpart primary $rootfs_start =
$rootfs_end</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-echo "Creating =
swap partition on $swap"</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">+echo "Creating swap partition on =
/dev/${device}3"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;parted /dev/${device} mkpart primary =
$swap_start $disk_size</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;parted =
/dev/${device} print</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-echo "Formatting =
$bootfs to ext2..."</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+echo "Formatting /dev/${device}1 to =
ext2..."</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp;mkfs.ext3 $bootfs</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-echo "Formatting $rootfs to =
ext3..."</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">+echo "Formatting /dev/${device}2 to =
ext3..."</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp;mkfs.ext3 $rootfs</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-echo "Formatting swap =
partition...($swap)"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+echo "Formatting swap =
partition...(/dev/${device}3)"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;mkswap =
$swap</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;mkdir /ssd</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -153,7 +150,7 =
@@ fi</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;if [ -f /ssd/etc/grub.d/40_custom ] ; =
then</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp;echo "Preparing custom grub2 =
menu..."</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">- &nbsp; &nbsp;sed -i "s@__ROOTFS__@$rootfs $rootwait@g" =
/ssd/etc/grub.d/40_custom</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ &nbsp; &nbsp;sed =
-i "s@__ROOTFS__@$rootfs@g" =
/ssd/etc/grub.d/40_custom</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp;sed -i "s/__VIDEO_MODE__/$3/g" =
/ssd/etc/grub.d/40_custom</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp;sed -i "s/__VGA_MODE__/$4/g" =
/ssd/etc/grub.d/40_custom</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp;mount $bootfs /bootmnt</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-core/initrdscripts/initramfs-live-install_1=
.0.bb =
b/tool/eldk/meta/recipes-core/initrdscripts/initramfs-live-install_1.0.bb<=
/font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">index ac73ef8..793a4b7 100644</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-core/initrdscripts/initramfs-live-install_1=
.0.bb</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">+++ =
b/tool/eldk/meta/recipes-core/initrdscripts/initramfs-live-install_1.0.bb<=
/font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">@@ -3,7 +3,7 @@ LICENSE =3D "MIT"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;LIC_FILES_CHKSUM =3D "<a =
href=3D"file:///${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361=
b4de20420">file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a03843=
61b4de20420</a>"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;SRC_URI =3D "<a =
href=3D"file:///init-install.sh">file://init-install.sh</a>"</font></div><=
div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-PR =3D "r7"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+PR =3D =
"r6"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;RDEPENDS_${PN} =3D "grub parted =
e2fsprogs-mke2fs"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-core/ncurses/ncurses.inc =
b/tool/eldk/meta/recipes-core/ncurses/ncurses.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
b031119..ae99e2c 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-core/ncurses/ncurses.inc</font></div><div><=
font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/tool/eldk/meta/recipes-core/ncurses/ncurses.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -6,7 +6,7 @@ =
LIC_FILES_CHKSUM =3D "<a =
href=3D"file:///ncurses/base/version.c;beginline=3D1;endline=3D27;md5=3Dcb=
c">file://ncurses/base/version.c;beginline=3D1;endline=3D27;md5=3Dcbc</a><=
/font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;SECTION =3D "libs"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;DEPENDS =3D =
"ncurses-native"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;DEPENDS_virtclass-native =3D =
""</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-INC_PR =3D "r9"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+INC_PR =3D =
"r8"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;inherit autotools binconfig =
multilib_header</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -107,15 +107,10 =
@@ do_test() {</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;diff =
curses-narrowc.h curses-widec.h</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;}</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-# Split original =
_install_opts to two parts.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-# One is the =
options to install contents, the other is the parameters =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-# when running command "make install"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;_install_opts =
=3D "\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">- &nbsp;install.libs install.includes install.man =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-_install_cfgs =3D "\</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; =
&nbsp;DESTDIR=3D'${D}' \</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">&nbsp; =
&nbsp;PKG_CONFIG_LIBDIR=3D'${libdir}/pkgconfig' \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;install.libs install.includes install.man \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;python =
do_install () {</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">@@ -127,19 +122,11 @@ shell_do_install() =
{</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Order of installation is =
important; widec installs a 'curses.h'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp;# header with more definitions and must be installed =
last hence.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# =
Compatibility of these headers will be checked in =
'do_test()'.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; &nbsp; &nbsp;oe_runmake -C =
narrowc ${_install_cfgs} ${_install_opts} \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;install.progs</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
&nbsp; &nbsp;# The install.data should run after install.libs, =
otherwise</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; &nbsp; &nbsp;# there would be =
a race issue in a very critical conditon, since</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
&nbsp; &nbsp;# tic will be run by install.data, and tic needs =
libtinfo.so</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; &nbsp; &nbsp;# which would be =
regenerated by install.libs.</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
&nbsp; &nbsp;oe_runmake -C narrowc ${_install_cfgs} =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;install.data</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ &nbsp; &nbsp; =
&nbsp; &nbsp;oe_runmake -C narrowc ${_install_opts} =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;install.data install.progs</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;! =
${ENABLE_WIDEC} || \</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;oe_runmake -C widec ${_install_cfgs} =
${_install_opts}</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;oe_runmake -C widec ${_install_opts}</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;cd =
narrowc</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-core/tasks/task-core-tools-debug.bb =
b/tool/eldk/meta/recipes-core/tasks/task-core-tools-debug.bb</font></div><=
div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
1dddbb8..3c92f3f 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-core/tasks/task-core-tools-debug.bb</font><=
/div><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/tool/eldk/meta/recipes-core/tasks/task-core-tools-debug.bb</font></div><=
div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ =
-17,14 +17,10 @@ PACKAGE_ARCH =3D =
"${MACHINE_ARCH}"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;ALLOW_EMPTY =
=3D "1"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-MTRACE =3D ""</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-MTRACE_libc-glibc =
=3D "libc-mtrace"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;RDEPENDS_${PN}=
 =3D "\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp;gdb \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp;gdbserver \</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp; &nbsp;tcf-agent =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp;rsync \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp; =
&nbsp;strace \</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp;${MTRACE} =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp;"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-core/uclibc/uclibc.inc =
b/tool/eldk/meta/recipes-core/uclibc/uclibc.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
55ab0c9..893d8fd 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-core/uclibc/uclibc.inc</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/tool/eldk/meta/recipes-core/uclibc/uclibc.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -13,7 +13,7 @@ =
SECTION =3D "libs"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;LIC_FILES_CHKSUM =3D "<a =
href=3D"file:///COPYING.LIB;md5=3Da6f89e2100d9b6cdffcea4f398e37343">file:/=
/COPYING.LIB;md5=3Da6f89e2100d9b6cdffcea4f398e37343</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
		</span> &nbsp; &nbsp;<a =
href=3D"file:///COPYING.LIB.boilerplate;md5=3Daaddeadcddeb918297e0e4afc52c=
e46f">file://COPYING.LIB.boilerplate;md5=3Daaddeadcddeb918297e0e4afc52ce46=
f</a> \</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;<a =
href=3D"file:///${S}/test/regex/testregex.c;startline=3D1;endline=3D31;md5=
=3D234efb227d0a40677f895e4a1e26e960">file://${S}/test/regex/testregex.c;st=
artline=3D1;endline=3D31;md5=3D234efb227d0a40677f895e4a1e26e960</a>"</font=
></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-INC_PR =3D "r7"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+INC_PR =3D =
"r6"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;require =
uclibc-config.inc</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;STAGINGCC =3D =
"gcc-cross-intermediate"</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">@@ -48,9 +48,9 @@ RDEPENDS_${PN}-dev =3D =
"linux-libc-headers-dev"</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;INHIBIT_DEFAULT_DEPS =3D "1"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-# Ensure the uclibc-dev package is processed =
before uclibc-staticdev to allow</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-# *_nonshared.a =
libraries to be packaged in the uclibc-dev =
package.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">-PACKAGES =3D "${PN}-dbg ${PN}-dev ${PN}-staticdev ${PN} =
${PN}-doc ldd uclibc-utils-dbg uclibc-utils uclibc-gconv =
uclibc-thread-db uclibc-argp uclibc-backtrace uclibc-libcrypt =
uclibc-libintl uclibc-libnsl uclibc-libresolv uclibc-libm uclibc-libdl =
uclibc-libutil uclibc-libpthread uclibc-librt"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+PACKAGES =3D+ =
"ldd uclibc-utils-dbg uclibc-utils uclibc-gconv uclibc-thread-db =
uclibc-argp uclibc-backtrace"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+PACKAGES =3D+ =
"uclibc-libcrypt uclibc-libintl uclibc-libnsl uclibc-libresolv =
uclibc-libm"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+PACKAGES =3D+ "uclibc-libdl uclibc-libutil =
uclibc-libpthread uclibc-librt"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;FILES_uclibc-libcrypt =3D =
"${base_libdir}/libcrypt*.so.* =
${base_libdir}/libcrypt-*.so"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;FILES_uclibc-libintl =3D "${base_libdir}/libintl*.so.* =
${base_libdir}/libintl-*.so"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -88,8 +88,7 @@ =
RPROVIDES_${PN}-dev +=3D "libc-dev =
virtual-libc-dev"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;# uclibc does not really have =
libsegfault but then using the one from glibc is also =
not</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;# going to work. So we pretend that we have it to make =
bitbake not pull other recipes</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;# to satisfy =
this dependency for the images/tasks</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-RPROVIDES_uclibc +=3D "libsegfault =
rtld(GNU_HASH)"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+RPROVIDES_uclibc +=3D =
"libsegfault"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;SRC_URI =3D =
"\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"http://www.uclibc.org/downloads/uClibc-${PV}.tar.bz2;name=3DuClibc=
-${PV}">http://www.uclibc.org/downloads/uClibc-${PV}.tar.bz2;name=3DuClibc=
-${PV}</a> \</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-devtools/binutils/binutils.inc =
b/tool/eldk/meta/recipes-devtools/binutils/binutils.inc</font></div><div><=
font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
552b808..e343242 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-devtools/binutils/binutils.inc</font></div>=
<div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/tool/eldk/meta/recipes-devtools/binutils/binutils.inc</font></div><div><=
font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -32,7 =
+32,6 @@ FILES_${PN}-symlinks =3D " \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>${bindir}/addr2line \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>${bindir}/as \</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>${bindir}/c++filt =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>${bindir}/embedspu \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>${bindir}/gprof \</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">&nbsp;<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>${bindir}/ld =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span>${bindir}/ld.bfd \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-devtools/dpkg/dpkg/dpkg-deb-avoid-fflush.pa=
tch =
b/tool/yocto/poky/meta/recipes-devtools/dpkg/dpkg/dpkg-deb-avoid-fflush.pa=
tch</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">deleted file mode 100644</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
a5d6b61..0000000</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-devtools/dpkg/dpkg/dpkg-deb-avoid-fflush.pa=
tch</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">+++ /dev/null</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">@@ -1,198 +0,0 @@</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-=46rom =
78eaf928d30d0b16e05d8d63c55a3632a135ed9a Mon Sep 17 00:00:00 =
2001</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-From: Guillem Jover &lt;<a =
href=3D"mailto:guillem@debian.org">guillem@debian.org</a>&gt;</font></div>=
<div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-Date: =
Thu, 4 Nov 2010 00:51:13 +0100</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-Subject: [PATCH] =
dpkg-deb: Use fd instead of stream based buffered =
I/O</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-Behaviour of fflush() on input streams is =
undefined per POSIX, avoid</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-mixing stream and =
file descriptor based I/O, and only use the =
latter</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-instead.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-Upstream-Status: =
Backport of revision 2d420ee1d05033d237462a0075facfe406b08043 (in =
1.16.x)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">----</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- =
dpkg-deb/extract.c | &nbsp; 83 =
++++++++++++++++++++++++++++++++++++++-------------</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- 1 files =
changed, 62 insertions(+), 21 deletions(-)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-diff --git a/dpkg-deb/extract.c =
b/dpkg-deb/extract.c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-index 22aea98..0f5ac88 =
100644</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">---- a/dpkg-deb/extract.c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-+++ =
b/dpkg-deb/extract.c</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-@@ -31,6 +31,7 @@</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- #include =
&lt;ctype.h&gt;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- #include =
&lt;string.h&gt;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- #include =
&lt;dirent.h&gt;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+#include =
&lt;fcntl.h&gt;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- #include =
&lt;unistd.h&gt;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- #include =
&lt;ar.h&gt;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- #include =
&lt;stdbool.h&gt;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-@@ -61,13 +62,41 @@ static void =
movecontrolfiles(const char *thing) {</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- =
}</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- static void =
DPKG_ATTR_NORET</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--readfail(FILE *a, const char *filename, =
const char *what)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+read_fail(int rc, const char *filename, =
const char *what)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- {</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-- &nbsp;if =
(ferror(a)) {</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-- &nbsp; &nbsp;ohshite(_("error reading %s =
from file %.255s"), what, filename);</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-- &nbsp;} else =
{</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+ &nbsp;if (rc =3D=3D 0)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
ohshit(_("unexpected end of file in %s in =
%.255s"),what,filename);</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">-+ &nbsp;else</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-+ &nbsp; =
&nbsp;ohshite(_("error reading %s from file %.255s"), what, =
filename);</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+}</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+static ssize_t</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-+read_line(int =
fd, char *buf, size_t min_size, size_t max_size)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+{</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp;ssize_t line_size =3D =
0;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+ &nbsp;size_t n =3D min_size;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp;while (line_size &lt; =
(ssize_t)max_size) {</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp;ssize_t =
r;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+ &nbsp; &nbsp;char *nl;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp;r =3D read(fd, buf + =
line_size, n);</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp;if (r &lt;=3D =
0)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+ &nbsp; &nbsp; &nbsp;return r;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp;nl =3D strchr(buf + =
line_size, '\n');</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp;line_size +=3D =
r;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp;if (nl !=3D NULL) =
{</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+ &nbsp; &nbsp; &nbsp;nl[1] =3D '\0';</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp; =
&nbsp;return line_size;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp;}</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp;n =3D =
1;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">- &nbsp; }</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-+ =
&nbsp;buf[line_size] =3D '\0';</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-+ &nbsp;return =
line_size;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- }</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- static size_t</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-@@ -115,19 =
+144,26 @@ void extracthalf(const char *debar, const char =
*directory,</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; char =
versionbuf[40];</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; float =
versionnum;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; size_t ctrllennum, memberlen=3D =
0;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+ &nbsp;ssize_t r;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; int =
dummy;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">- &nbsp; pid_t c1=3D0,c2,c3;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; int =
p1[2], p2[2];</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-- &nbsp;FILE *ar;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-+ &nbsp;int =
arfd;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">- &nbsp; struct stat stab;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; char =
nlc;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">- &nbsp; int adminmember;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; bool =
oldformat, header_done;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; struct compressor *decompressor =3D =
&amp;compressor_gzip;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp;&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-- &nbsp;ar=3D =
fopen(debar,"r"); if (!ar) ohshite(_("failed to read archive =
`%.255s'"),debar);</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-- &nbsp;if (fstat(fileno(ar),&amp;stab)) =
ohshite(_("failed to fstat archive"));</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-- &nbsp;if =
(!fgets(versionbuf,sizeof(versionbuf),ar)) readfail(ar,debar,_("version =
number"));</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp;arfd =3D open(debar, =
O_RDONLY);</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp;if (arfd &lt; =
0)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+ &nbsp; &nbsp;ohshite(_("failed to read archive `%.255s'"), =
debar);</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+ &nbsp;if (fstat(arfd, &amp;stab))</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-+ &nbsp; =
&nbsp;ohshite(_("failed to fstat archive"));</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp;r =3D read_line(arfd, versionbuf, =
strlen(DPKG_AR_MAGIC), sizeof(versionbuf));</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-+ &nbsp;if (r =
&lt; 0)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+ &nbsp; &nbsp;read_fail(r, debar, _("archive magic version =
number"));</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; if =
(!strcmp(versionbuf, DPKG_AR_MAGIC)) {</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
oldformat =3D false;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-@@ -137,8 +173,9 @@ void extracthalf(const =
char *debar, const char *directory,</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
for (;;) {</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; &nbsp; struct ar_hdr =
arh;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-- &nbsp; &nbsp; &nbsp;if =
(fread(&amp;arh,1,sizeof(arh),ar) !=3D =
sizeof(arh))</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-- &nbsp; &nbsp; &nbsp; =
&nbsp;readfail(ar,debar,_("between members"));</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp; =
&nbsp;r =3D read(arfd, &amp;arh, sizeof(arh));</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp; =
&nbsp;if (r !=3D sizeof(arh))</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp; =
&nbsp; &nbsp;read_fail(r, debar, _("archive member =
header"));</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
&nbsp; dpkg_ar_normalize_name(&amp;arh);</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-@@ -153,8 +190,9 @@ void extracthalf(const =
char *debar, const char *directory,</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
&nbsp; &nbsp; if (strncmp(<a href=3D"http://arh.ar">arh.ar</a>_name, =
DEBMAGIC, sizeof(<a href=3D"http://arh.ar">arh.ar</a>_name)) !=3D =
0)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ohshit(_("file `%.250s' =
is not a debian binary archive (try =
dpkg-split?)"),debar);</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; &nbsp; &nbsp; infobuf=3D =
m_malloc(memberlen+1);</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-- &nbsp; &nbsp; &nbsp; &nbsp;if =
(fread(infobuf,1, memberlen + (memberlen&amp;1), ar) !=3D memberlen + =
(memberlen&amp;1))</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-- &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;readfail(ar,debar,_("header info member"));</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp; =
&nbsp; &nbsp;r =3D read(arfd, infobuf, memberlen + (memberlen &amp; =
1));</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+ &nbsp; &nbsp; &nbsp; &nbsp;if ((size_t)r !=3D (memberlen + =
(memberlen &amp; 1)))</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;read_fail(r, debar, _("archive information header =
member"));</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; &nbsp; &nbsp; =
infobuf[memberlen] =3D '\0';</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
&nbsp; &nbsp; cur=3D strchr(infobuf,'\n');</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
&nbsp; &nbsp; if (!cur) ohshit(_("archive has no newlines in =
header"));</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-@@ -174,7 +212,8 @@ void extracthalf(const =
char *debar, const char *directory,</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; /* Members with `_' are noncritical, and if we =
don't understand them</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* =
we skip them.</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;*/</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">--<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stream_null_copy(ar, memberlen + (memberlen&amp;1),_("skipped =
member data from %s"), debar);</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp; =
&nbsp; &nbsp;fd_null_copy(arfd, memberlen + (memberlen &amp; =
1),</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; _("skipped archive member data from %s"), =
debar);</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">- &nbsp; &nbsp; &nbsp; } else {</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>if =
(strncmp(<a href=3D"http://arh.ar">arh.ar</a>_name, ADMINMEMBER, =
sizeof(<a href=3D"http://arh.ar">arh.ar</a>_name)) =3D=3D =
0)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">- <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span> &nbsp;adminmember =3D 1;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-@@ -198,7 +237,8 =
@@ void extracthalf(const char *debar, const char =
*directory,</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
ctrllennum=3D memberlen;</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; &nbsp; &nbsp; =
}</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">- &nbsp; &nbsp; &nbsp; &nbsp; if (!adminmember !=3D =
!admininfo) {</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span> &nbsp;stream_null_copy(ar, =
memberlen + (memberlen&amp;1),_("skipped member data from %s"), =
debar);</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;fd_null_copy(arfd, =
memberlen + (memberlen &amp; 1),</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
_("skipped archive member data from %s"), debar);</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
&nbsp; &nbsp; } else {</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; break; =
/* Yes ! - found it. */</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; &nbsp; &nbsp; =
}</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-@@ -221,8 +261,10 @@ void extracthalf(const char *debar, =
const char *directory,</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; l =3D =
strlen(versionbuf);</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; if (l &amp;&amp; versionbuf[l =
- 1] =3D=3D '\n')</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; &nbsp; versionbuf[l - 1] =3D =
'\0';</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-- &nbsp; &nbsp;if =
(!fgets(ctrllenbuf,sizeof(ctrllenbuf),ar))</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-- &nbsp; &nbsp; =
&nbsp;readfail(ar, debar, _("control information =
length"));</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp;r =
=3D read_line(arfd, ctrllenbuf, 1, =
sizeof(ctrllenbuf));</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp;if (r &lt; =
0)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-+ &nbsp; &nbsp; &nbsp;read_fail(r, debar, _("archive control =
member size"));</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; if =
(sscanf(ctrllenbuf,"%zi%c%d",&amp;ctrllennum,&amp;nlc,&amp;dummy) !=3D2 =
|| nlc !=3D '\n')</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; &nbsp; ohshit(_("archive has =
malformatted control length `%s'"), ctrllenbuf);</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-@@ -230,7 +272,8 @@ void extracthalf(const =
char *debar, const char *directory,</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
&nbsp; memberlen =3D ctrllennum;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; } =
else {</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">- &nbsp; &nbsp; &nbsp; memberlen =3D stab.st_size - =
ctrllennum - strlen(ctrllenbuf) - l;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-- &nbsp; &nbsp; =
&nbsp;stream_null_copy(ar, ctrllennum, _("skipped control area from =
%s"), debar);</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp; &nbsp;fd_null_copy(arfd, =
ctrllennum,</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; _("skipped archive control member data from %s"), =
debar);</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">- &nbsp; &nbsp; }</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; if (admininfo &gt;=3D 2) =
{</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-@@ -252,13 +295,11 @@ void extracthalf(const char *debar, =
const char *directory,</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; =
}</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-- =
&nbsp;safe_fflush(ar);</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; =
m_pipe(p1);</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; c1 =3D =
subproc_fork();</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; if (!c1) {</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
close(p1[0]);</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-- &nbsp; &nbsp;stream_fd_copy(ar, p1[1], =
memberlen, _("failed to write to pipe in copy"));</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-+ &nbsp; =
&nbsp;fd_fd_copy(arfd, p1[1], memberlen, _("failed to write to pipe in =
copy"));</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">- &nbsp; &nbsp; if (close(p1[1]))</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
&nbsp; ohshite(_("failed to close pipe in =
copy"));</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">- &nbsp; &nbsp; exit(0);</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-@@ -275,7 +316,7 =
@@ void extracthalf(const char *debar, const char =
*directory,</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; &nbsp; =
decompress_filter(decompressor, 0, 1, _("data"));</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; =
}</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">- &nbsp; close(p1[0]);</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-- =
&nbsp;fclose(ar);</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-+ &nbsp;close(arfd);</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp; if =
(taroption) close(p2[1]);</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">- &nbsp; if (taroption &amp;&amp; directory) =
{</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">---&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-1.7.7.6</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.15.8.7.bb =
b/tool/eldk/meta/recipes-devtools/dpkg/dpkg_1.15.8.7.bb</font></div><div><=
font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
1e7ef25..f1030fa 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-devtools/dpkg/dpkg_1.15.8.7.bb</font></div>=
<div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/tool/eldk/meta/recipes-devtools/dpkg/dpkg_1.15.8.7.bb</font></div><div><=
font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -5,11 =
+5,10 @@ SRC_URI +=3D "<a =
href=3D"file:///noman.patch">file://noman.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///check_snprintf.patch">file://check_snprintf.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///check_version.patch">file://check_version.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///perllibdir.patch">file://perllibdir.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///preinst.patch">file://preinst.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///dpkg-deb-avoid-fflush.patch">file://dpkg-deb-avoid-fflush.=
patch</a>"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"file:///preinst.patch">file://preinst.patch</a>"</font></div><div>=
<font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;SRC_URI[md5sum] =3D =
"d1731d4147c1ea3b537a4d094519a6dc"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;SRC_URI[sha256sum] =3D =
"1ec1376471b04717a4497e5d7a27cd545248c92116898ce0c53ced8ea94267b5"</font><=
/div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-PR =3D "${INC_PR}.4"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+PR =3D =
"${INC_PR}.3"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">diff --git =
a/tool/eldk/meta/recipes-devtools/gcc/gcc-4.6/t-mips.patch =
b/tool/eldk/meta/recipes-devtools/gcc/gcc-4.6/t-mips.patch</font></div><di=
v><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">new file =
mode 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">index 0000000..4786f95</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">--- =
/dev/null</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+++ =
b/tool/eldk/meta/recipes-devtools/gcc/gcc-4.6/t-mips.patch</font></div><di=
v><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -0,0 =
+1,10 @@</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">+--- gcc-4_6-branch/gcc/config/mips/t-mips.orig =
&nbsp;2011-09-03 05:58:07.000000000 +0300</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">++++ =
gcc-4_6-branch/gcc/config/mips/t-mips &nbsp; &nbsp; &nbsp; 2011-10-18 =
19:14:39.000000000 +0300</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">+@@ -39,3 +39,7 @@</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ &nbsp; &nbsp; =
&nbsp; &nbsp;cat $(srcdir)/config/fp-bit.c &gt;&gt; =
fp-bit.c</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">+</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+ =
LIB2_SIDITI_CONV_FUNCS=3Dyes</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">++</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">++MULTILIB_OPTIONS =3D =
msoft-float</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">++MULTILIB_DIRNAMES =3D =
nof</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">++MULTILIB_MATCHES =3D</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-4.6.inc =
b/tool/eldk/meta/recipes-devtools/gcc/gcc-4.6.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
020e21b..9fd152a 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-4.6.inc</font></div><div><=
font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/tool/eldk/meta/recipes-devtools/gcc/gcc-4.6.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -74,6 +74,7 @@ =
SRC_URI =3D "<a =
href=3D"svn://gcc.gnu.org/svn/gcc/branches;module=3D${BRANCH};proto=3Dhttp=
">svn://gcc.gnu.org/svn/gcc/branches;module=3D${BRANCH};proto=3Dhttp</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span> &nbsp; <a =
href=3D"file:///GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch">file://GPLUSPLUS=
_INCLUDE_DIR_with_sysroot.patch</a> \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span> &nbsp; =
<a =
href=3D"file:///fortran-cross-compile-hack.patch">file://fortran-cross-com=
pile-hack.patch</a> \</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span> &nbsp; <a =
href=3D"file:///cpp-honour-sysroot.patch">file://cpp-honour-sysroot.patch<=
/a> \</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">+<span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span> &nbsp; <a href=3D"file:///t-mips.patch">file://t-mips.patch</a> =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;<span class=3D"Apple-tab-span" style=3D"white-space:pre">=
	</span> &nbsp;"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;SRC_URI_append_sh3 &nbsp;=3D " <a =
href=3D"file:///sh3-installfix-fixheaders.patch">file://sh3-installfix-fix=
headers.patch</a> "</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-configure-common.inc =
b/tool/eldk/meta/recipes-devtools/gcc/gcc-configure-common.inc</font></div=
><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
9542dc9..da60089 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-configure-common.inc</font=
></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">+++ =
b/tool/eldk/meta/recipes-devtools/gcc/gcc-configure-common.inc</font></div=
><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ =
-25,7 +25,8 @@ EXTRA_OECONF_PATHS ?=3D ""</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;EXTRA_OECONF_INITIAL ?=3D ""</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;EXTRA_OECONF_INTERMEDIATE ?=3D =
""</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-GCCMULTILIB =3D =
"--disable-multilib"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">+MULTILIB_ARCH_LIST =3D =
"mips"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">+GCCMULTILIB =3D '${@base_contains("MULTILIB_ARCH_LIST", =
"${TARGET_ARCH}", "--enable-multilib", =
"--disable-multilib",d)}'</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;EXTRA_OECONF =3D =
"${@['--enable-clocale=3Dgeneric', ''][d.getVar('USE_NLS', True) !=3D =
'no']} \</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;--with-gnu-ld \</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-package-target.inc =
b/tool/eldk/meta/recipes-devtools/gcc/gcc-package-target.inc</font></div><=
div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
a499c88..3076670 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-devtools/gcc/gcc-package-target.inc</font><=
/div><div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/tool/eldk/meta/recipes-devtools/gcc/gcc-package-target.inc</font></div><=
div><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -1,5 =
+1,5 @@</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;PACKAGES =3D "\</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- &nbsp;${PN} =
${PN}-plugins ${PN}-symlinks \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ &nbsp;${PN} =
${PN}-symlinks \</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; &nbsp;g++ g++-symlinks =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp;cpp cpp-symlinks \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; &nbsp;g77 =
g77-symlinks \</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">@@ -40,11 +40,6 @@ FILES_${PN}-symlinks =3D =
"\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; &nbsp;${bindir}/gccbug \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-FILES_${PN}-plugins=
 =3D "\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">- &nbsp;${gcclibdir}/${TARGET_SYS}/${BINV}/plugin =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">-ALLOW_EMPTY_${PN}-plugins =3D =
"1"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">-</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;FILES_g77 =3D "\</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; =
&nbsp;${bindir}/${TARGET_PREFIX}g77 \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; =
&nbsp;${libexecdir}/gcc/${TARGET_SYS}/${BINV}/f771 =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">@@ -93,7 +88,6 @@ do_install () {</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>rm -r =
${D}${libdir}/gcc/${TARGET_SYS}/${BINV}/install-tools</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>rm -r =
${D}${libexecdir}/gcc/${TARGET_SYS}/${BINV}/install-tools</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>rm -rf =
${D}${libexecdir}/gcc/${TARGET_SYS}/${BINV}/*.la</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">-<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>rmdir =
${D}${includedir}</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span># Hack =
around specs file assumptions</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>test -f =
${D}${libdir}/gcc/${TARGET_SYS}/${BINV}/specs &amp;&amp; sed -i -e =
'/^*cross_compile:$/ { n; s/1/0/; }' =
${D}${libdir}/gcc/${TARGET_SYS}/${BINV}/specs</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">diff --git =
a/tool/yocto/poky/meta/recipes-devtools/gcc/libgcc_4.6.bb =
b/tool/eldk/meta/recipes-devtools/gcc/libgcc_4.6.bb</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">index =
9a8b20d..f75ca34 100644</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">--- =
a/tool/yocto/poky/meta/recipes-devtools/gcc/libgcc_4.6.bb</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+++ =
b/tool/eldk/meta/recipes-devtools/gcc/libgcc_4.6.bb</font></div><div><font=
 class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">@@ -16,8 +16,10 =
@@ PACKAGES =3D "\</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp;FILES_${PN} =3D =
"${base_libdir}/libgcc*.so.*"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;FILES_${PN}-dev =3D " \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; =
&nbsp;${base_libdir}/libgcc*.so \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/*crt* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">- =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/libgcc*"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/crt* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/libgcc* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/nof/crt* \</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">+ =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/nof/libgcc*"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp;FILES_libgcov${PKGSUFFIX}-dev =3D " =
\</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; =
&nbsp;${libdir}/${TARGET_SYS}/${BINV}/libgcov.a"</font></div><div>&nbsp;</=
div></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></div></body></html>=

--Apple-Mail=_8537300A-2D1A-4665-BE95-7BFFBC59F909--
