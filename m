Return-Path: <josefahmad1@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E87AE0030C
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 08:19:46 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eekb15 with SMTP id b15so899477eek.35
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 08:19:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	bh=kFNWpEjPQVPVStu8TQO0LJ6Yp48/g2IlVporD4j5mNw=;
	b=OZ5QF2so9yGiV68cl6QtolQ5zeHmIlVmgCV/2bkdcUFDyD2lVzfN8jCqglsJFcExGg
	owr4GL2XpsTrT7y6ohR9Q65VrtqDjS56HzQtgxyPU4nXSZogZT44TopY3X1kWu5aBYj1
	Aix0L74P+c+XElCL/0F0yHAAR2tql25Qn/Qts=
MIME-Version: 1.0
Received: by 10.213.25.69 with SMTP id y5mr143705ebb.1.1326385185268; Thu, 12
	Jan 2012 08:19:45 -0800 (PST)
Sender: josefahmad1@gmail.com
Received: by 10.213.108.139 with HTTP; Thu, 12 Jan 2012 08:19:45 -0800 (PST)
Date: Thu, 12 Jan 2012 16:19:45 +0000
X-Google-Sender-Auth: BTXso-SXxvcLyM16LutWm8P7KiQ
Message-ID: <CACJvPv3H8QaGffS3kdS1qLogcwn9L1ZsYpzqo6eei6LMK_7=WQ@mail.gmail.com>
From: Josef Ahmad <josef.ahmad@intel.com>
To: yocto@yoctoproject.org
Subject: qemu EFI build failure
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
X-List-Received-Date: Thu, 12 Jan 2012 16:19:47 -0000
Content-Type: text/plain; charset=ISO-8859-1

I tried to build a qemux86 EFI image, by setting:
- in my local.conf: IMAGE_FSTYPES += "live"
- in poly/meta/conf/machine/qemux86.conf: MACHINE_FEATURES += "efi"

The build gave me the following error:



bash-3.00$ bitbake core-image-minimal
Loading cache: 100%
|###################################################################################################################################|
ETA:  00:00:00
Loaded 1083 entries from dependency cache.

OE Build Configuration:
BB_VERSION        = "1.15.0"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.1+snapshot-20120111"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta
meta-yocto        = "(nobranch):468998cddbe1a803096c9b357e1b5daa3b7e8c2e"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 1082 of 1701 (ID: 139,
/tmp/localdisk/josef/yocto-stable/poky/meta/recipes-bsp/grub/grub-efi-native_1.99.bb,
do_configure)
NOTE: Running task 1682 of 1701 (ID: 97,
/tmp/localdisk/josef/yocto-stable/poky/meta/recipes-core/images/core-image-minimal-initramfs.bb,
do_rootfs)
NOTE: package grub-efi-i586-native-1.99-r2: task do_configure: Started
NOTE: package core-image-minimal-initramfs-1.0-r0: task do_rootfs: Started
NOTE: package core-image-minimal-initramfs-1.0-r0: task do_rootfs: Succeeded
ERROR: Function 'do_configure' failed (see
/tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/temp/log.do_configure.8536
for further information)
ERROR: Logfile of failure stored in:
/tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/temp/log.do_configure.8536
Log data follows:
| automake (GNU automake) 1.11.2
| Copyright (C) 2011 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later
<http://gnu.org/licenses/gpl-2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|
| Written by Tom Tromey <tromey@redhat.com>
|        and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1.11
| NOTE: Executing autoreconf --verbose --install --force
--exclude=autopoint -I
/tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/grub-1.99/aclocal-copy/
-I /tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/grub-1.99/m4/
-I/tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
-I /tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/grub-1.99/aclocal-copy/
| autoreconf: Entering directory `.'
| autoreconf: configure.ac: not using Gettext
| autoreconf: running: aclocal -I
/tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/grub-1.99/aclocal-copy/
-I /tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/grub-1.99/m4/
-I /tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
-I /tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/grub-1.99/aclocal-copy/
-I /tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/grub-1.99/aclocal-copy/
-I /tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/grub-1.99/m4/
-I /tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
-I /tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/grub-1.99/aclocal-copy/
--force --warnings=cross -I m4
| aclocal: unknown warning category `cross'
| configure.ac:515: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:317: grub_CHECK_ENABLE_EXECUTE_STACK is expanded from...
| configure.ac:515: the top level
| configure.ac:518: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:397: grub_CHECK_PIE is expanded from...
| configure.ac:518: the top level
| configure.ac:526: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:344: grub_CHECK_STACK_PROTECTOR is expanded from...
| configure.ac:526: the top level
| configure.ac:532: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:363: grub_CHECK_STACK_ARG_PROBE is expanded from...
| configure.ac:532: the top level
| autoreconf: configure.ac: tracing
| configure.ac:515: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:317: grub_CHECK_ENABLE_EXECUTE_STACK is expanded from...
| configure.ac:515: the top level
| configure.ac:518: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:397: grub_CHECK_PIE is expanded from...
| configure.ac:518: the top level
| configure.ac:526: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:344: grub_CHECK_STACK_PROTECTOR is expanded from...
| configure.ac:526: the top level
| configure.ac:532: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:363: grub_CHECK_STACK_ARG_PROBE is expanded from...
| configure.ac:532: the top level
| autoreconf: configure.ac: AM_GNU_GETTEXT is used, but not
AM_GNU_GETTEXT_VERSION
| autoreconf: configure.ac: not using Libtool
| autoreconf: running:
/tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/sysroots/x86_64-linux/usr/bin/autoconf
--include=/tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/grub-1.99/aclocal-copy/
--include=/tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/grub-1.99/m4/
--include=/tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
--include=/tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/grub-1.99/aclocal-copy/
--force --warnings=cross
| configure.ac:515: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:317: grub_CHECK_ENABLE_EXECUTE_STACK is expanded from...
| configure.ac:515: the top level
| configure.ac:518: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:397: grub_CHECK_PIE is expanded from...
| configure.ac:518: the top level
| configure.ac:526: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:344: grub_CHECK_STACK_PROTECTOR is expanded from...
| configure.ac:526: the top level
| configure.ac:532: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:363: grub_CHECK_STACK_ARG_PROBE is expanded from...
| configure.ac:532: the top level
| autoreconf: running:
/tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/sysroots/x86_64-linux/usr/bin/autoheader
--include=/tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/grub-1.99/aclocal-copy/
--include=/tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/grub-1.99/m4/
--include=/tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
--include=/tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/grub-1.99/aclocal-copy/
--force --warnings=cross
| configure.ac:515: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:317: grub_CHECK_ENABLE_EXECUTE_STACK is expanded from...
| configure.ac:515: the top level
| configure.ac:518: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:397: grub_CHECK_PIE is expanded from...
| configure.ac:518: the top level
| configure.ac:526: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:344: grub_CHECK_STACK_PROTECTOR is expanded from...
| configure.ac:526: the top level
| configure.ac:532: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:363: grub_CHECK_STACK_ARG_PROBE is expanded from...
| configure.ac:532: the top level
| autoreconf: running: automake --foreign --add-missing --copy
--force-missing --warnings=cross
| automake: unknown warning category `cross'
| configure.ac:515: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:317: grub_CHECK_ENABLE_EXECUTE_STACK is expanded from...
| configure.ac:515: the top level
| configure.ac:518: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:397: grub_CHECK_PIE is expanded from...
| configure.ac:518: the top level
| configure.ac:526: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanERROR:
Function 'do_configure' failed (see
/tmp/localdisk/josef/yocto-stable/mytestbuild/tmp/work/x86_64-linux/grub-efi-i586-native-1.99-r2/temp/log.do_configure.8536
for further information)
| ded from...
| acinclude.m4:344: grub_CHECK_STACK_PROTECTOR is expanded from...
| configure.ac:526: the top level
| configure.ac:532: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call
detected in body
| ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
| acinclude.m4:363: grub_CHECK_STACK_ARG_PROBE is expanded from...
| configure.ac:532: the top level
| conf/Makefile.common:150: `pkglibdir' is not a legitimate directory
for `SCRIPTS'
| grub-core/Makefile.am:5:   `conf/Makefile.common' included from here
| conf/Makefile.common:140: `pkglibdir' is not a legitimate directory for `DATA'
| grub-core/Makefile.am:5:   `conf/Makefile.common' included from here
| conf/Makefile.common:150: `pkglibdir' is not a legitimate directory
for `SCRIPTS'
| Makefile.am:6:   `conf/Makefile.common' included from here
| conf/Makefile.common:140: `pkglibdir' is not a legitimate directory for `DATA'
| Makefile.am:6:   `conf/Makefile.common' included from here
| autoreconf: automake failed with exit status: 1
| ERROR: autoreconf execution failed.
NOTE: package grub-efi-i586-native-1.99-r2: task do_configure: Failed
ERROR: Task 139
(/tmp/localdisk/josef/yocto-stable/poky/meta/recipes-bsp/grub/grub-efi-native_1.99.bb,
do_configure) failed with exit code '1'
ERROR: '/tmp/localdisk/josef/yocto-stable/poky/meta/recipes-bsp/grub/grub-efi-native_1.99.bb'
failed



Has anyone encountered the same error?  I'm not sure I set up the
correct configuration. Also, is there another way to append "efi" to
MACHINE_FEATURES rather than by modifying qemux86.conf?

Thanks in advance,

- Josef

