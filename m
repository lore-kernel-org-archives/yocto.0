Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.93.22])
 by mx.groups.io with SMTP id smtpd.web10.19769.1599398931226732446
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Sep 2020 06:28:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=yETcD4mV;
 spf=none, err=SPF record not found (domain: optimcloud.com, ip: 46.23.93.22, mailfrom: yocto@optimcloud.com)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id f7133e94
	for <yocto@lists.yoctoproject.org>;
	Sun, 6 Sep 2020 15:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=to
	:from:subject:message-id:date:mime-version:content-type
	:content-transfer-encoding; s=obsd; bh=pJu9cutX1PCgqm+V0BPBvpy4v
	yA79rC+mjjHKDM9rpo=; b=yETcD4mVOojO0kAP5KP2dQU/AchYCIfpY8dslwVPl
	bvlEEt5iUzGFcQPTdwRVYHfVg2W+fmdN8hvDKfKldXLTZPY8DWEkxSA19EjxZ6O4
	SuPNvfCZaSYvOwQM3W5/vCAK56LimxXVea9ClMlxs2vS4lNJgzoOVnnfWaP7pRPh
	+yApLOz2U2aTj5lgKJn/usjMrqZBrkZHaC1h8i6PSyMuxOlNBs6HyCQpoPYCdezY
	5lhQONnLLG0ehY8I0p1QGtOgWt0M/tsCM5kIbVDRvhMNql0dFuxsZcPBtqf/szOc
	EYLs2cGYpBAjN25Quwy7ENzAYbmiQyIkSDFNR0GSMpZqQ==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=to:from
	:subject:message-id:date:mime-version:content-type
	:content-transfer-encoding; q=dns; s=obsd; b=LSo4u3kzkNnIRd3Fzvb
	AJWp8ohrIxFMPZgTamRrqEBMPcecKFiKfALMj0fr/ENeF+BnbwFrVjie48peVEZK
	ezmFq6g9bd6VFZCOmzsX8QWCIU2YuIpguIOIPk7YsSPY47a/J2LNyfxlZEK94SeO
	+qXGEvBsupAsPOmwwOrxfNFVQlGPo+eHYyqSL7M/oXlNz2OP2iZQC5E8GgCvnKyM
	v8rxzc4A4qpo2zH4YtGMzNRR5sad5ggeMj0CL4T3AvAMeWb/RA783b6qvW4TI/BY
	UYfzmTlGhDdoHnqGb6VBtnSYxh0d8+6IC08oJw7uQvxalqHkJ72QAc6IZSnfTsCh
	fxw==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id ce65a3b7 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com
	for <yocto@lists.yoctoproject.org>;
	Sun, 6 Sep 2020 15:28:47 +0200 (CEST)
To: yocto@lists.yoctoproject.org
From: "Yocto" <yocto@optimcloud.com>
Subject: bitbake recipe / Network UPS tool
Message-ID: <731bd3a4-f5e5-6b2b-a537-a2bcb87d986a@optimcloud.com>
Date: Sun, 6 Sep 2020 20:27:29 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Okay heres the bitbake file, the archive manually extracts to, but if i 
run bitbake nut

SECTION = "console/network"

DESCRIPTION = "Network UPS Tools is a collection of programs which 
provide a common\
interface for monitoring and administering UPS, PDU and SCD hardware.\
It uses a layered approach to connect all of the parts."\

LICENSE = "GPLv3"

SRC_URI = "https://github.com/networkupstools/nut/archive/v2.7.4.tar.gz"

LIC_FILES_CHKSUM = 
"file://LICENSE-GPL3;md5=f27defe1e96c2e1ecd4e0c9be8967949"

SRC_URI[md5sum] = "81f5b97ed35fde35d57e1f87f23ad932"
SRC_URI[sha256sum] = 
"d580915fdf7090655c1c7c98eb116b61952553f06f0039b1f93c9f5a13e2d36b"

S = "${WORKDIR}/${PN}-${PV}"

#inherit autotools-brokensep
inherit autotools

EXTRA_OECONF = "--with-usb --with-serial --with-dev"


running bitbake nut i get this result

ERROR: nut-2.7.4-r0 do_configure: autoreconf execution failed.
ERROR: nut-2.7.4-r0 do_configure: Execution of 
'/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947' 
failed with exit code 1:
automake (GNU automake) 1.16.2
Copyright (C) 2020 Free Software Foundation, Inc.
License GPLv2+: GNU GPL version 2 or later 
<https://gnu.org/licenses/gpl-2.0.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Tom Tromey <tromey@redhat.com>
        and Alexandre Duret-Lutz <adl@gnu.org>.
AUTOV is 1.16
autoreconf: Entering directory `.'
autoreconf: configure.ac: not using Gettext
autoreconf: running: aclocal 
--system-acdir=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot/usr/share/aclocal/ 
--automake-acdir=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal-1.16 
-I 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/nut-2.7.4/m4/ 
-I 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/ 
--force -I m4
autoreconf: configure.ac: tracing
autoreconf: running: libtoolize --copy --force
libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, '.'.
libtoolize: copying file './ltmain.sh'
libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
libtoolize: copying file 'm4/libtool.m4'
libtoolize: copying file 'm4/ltoptions.m4'
libtoolize: copying file 'm4/ltsugar.m4'
libtoolize: copying file 'm4/ltversion.m4'
libtoolize: copying file 'm4/lt~obsolete.m4'
autoreconf: running: 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/bin/autoconf 
--include=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/nut-2.7.4/m4/ 
--include=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/ 
--force
autoreconf: running: 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/bin/autoheader 
--include=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/nut-2.7.4/m4/ 
--include=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/ 
--force
autoreconf: running: automake --add-missing --copy --force-missing
configure.ac:19: installing './compile'
configure.ac:15: installing './missing'
clients/Makefile.am: installing './depcomp'
configure.ac:1268: error: required file 
'scripts/augeas/nutupsconf.aug.in' not found
configure.ac:1268: error: required file 'scripts/devd/nut-usb.conf.in' 
not found
configure.ac:1268: error: required file 
'scripts/udev/nut-usbups.rules.in' not found
autoreconf: automake failed with exit status: 1
WARNING: 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947:301 
exit 1 from 'exit 1'
WARNING: Backtrace (BB generated script):
     #1: bbfatal_log, 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947, 
line 301
     #2: die, 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947, 
line 246
     #3: autotools_do_configure, 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947, 
line 234
     #4: do_configure, 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947, 
line 150
     #5: main, 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947, 
line 305

Backtrace (metadata-relative locations):
     #1: bbfatal_log, 
/var/home/dingo/overc/poky/meta/classes/logging.bbclass, line 72
     #2: die, /var/home/dingo/overc/poky/meta/classes/base.bbclass, line 56
     #3: autotools_do_configure, 
/var/home/dingo/overc/poky/meta/classes/autotools.bbclass, line 232
     #4: do_configure, autogenerated, line 2
ERROR: Logfile of failure stored in: 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/log.do_configure.635947
Log data follows:
| DEBUG: Executing shell function autotools_preconfigure
| DEBUG: Shell function autotools_preconfigure finished
| DEBUG: Executing python function autotools_aclocals
| DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 
'bit-64', 'x86_64-linux', 'common']
| DEBUG: Python function autotools_aclocals finished
| DEBUG: Executing shell function do_configure
| automake (GNU automake) 1.16.2
| Copyright (C) 2020 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later 
<https://gnu.org/licenses/gpl-2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|
| Written by Tom Tromey <tromey@redhat.com>
|        and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1.16
| NOTE: Executing ACLOCAL="aclocal 
--system-acdir=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot/usr/share/aclocal/ 
--automake-acdir=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal-1.16" 
autoreconf -Wcross --verbose --install --force --exclude=autopoint -I 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/nut-2.7.4/m4/ 
-I 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/
| autoreconf: Entering directory `.'
| autoreconf: configure.ac: not using Gettext
| autoreconf: running: aclocal 
--system-acdir=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot/usr/share/aclocal/ 
--automake-acdir=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal-1.16 
-I 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/nut-2.7.4/m4/ 
-I 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/ 
--force -I m4
| autoreconf: configure.ac: tracing
| autoreconf: running: libtoolize --copy --force
| libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, '.'.
| libtoolize: copying file './ltmain.sh'
| libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
| libtoolize: copying file 'm4/libtool.m4'
| libtoolize: copying file 'm4/ltoptions.m4'
| libtoolize: copying file 'm4/ltsugar.m4'
| libtoolize: copying file 'm4/ltversion.m4'
| libtoolize: copying file 'm4/lt~obsolete.m4'
| autoreconf: running: 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/bin/autoconf 
--include=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/nut-2.7.4/m4/ 
--include=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/ 
--force
| autoreconf: running: 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/bin/autoheader 
--include=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/nut-2.7.4/m4/ 
--include=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/ 
--force
| autoreconf: running: automake --add-missing --copy --force-missing
| configure.ac:19: installing './compile'
| configure.ac:15: installing './missing'
| clients/Makefile.am: installing './depcomp'
| configure.ac:1268: error: required file 
'scripts/augeas/nutupsconf.aug.in' not found
| configure.ac:1268: error: required file 'scripts/devd/nut-usb.conf.in' 
not found
| configure.ac:1268: error: required file 
'scripts/udev/nut-usbups.rules.in' not found
| autoreconf: automake failed with exit status: 1
| ERROR: autoreconf execution failed.
| WARNING: 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947:301 
exit 1 from 'exit 1'
| WARNING: Backtrace (BB generated script):
|     #1: bbfatal_log, 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947, 
line 301
|     #2: die, 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947, 
line 246
|     #3: autotools_do_configure, 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947, 
line 234
|     #4: do_configure, 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947, 
line 150
|     #5: main, 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947, 
line 305
| ERROR: Execution of 
'/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947' 
failed with exit code 1:
| automake (GNU automake) 1.16.2
| Copyright (C) 2020 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later 
<https://gnu.org/licenses/gpl-2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|
| Written by Tom Tromey <tromey@redhat.com>
|        and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1.16
| autoreconf: Entering directory `.'
| autoreconf: configure.ac: not using Gettext
| autoreconf: running: aclocal 
--system-acdir=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot/usr/share/aclocal/ 
--automake-acdir=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal-1.16 
-I 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/nut-2.7.4/m4/ 
-I 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/ 
--force -I m4
| autoreconf: configure.ac: tracing
| autoreconf: running: libtoolize --copy --force
| libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, '.'.
| libtoolize: copying file './ltmain.sh'
| libtoolize: putting macros in AC_CONFIG_MACRO_DIRS, 'm4'.
| libtoolize: copying file 'm4/libtool.m4'
| libtoolize: copying file 'm4/ltoptions.m4'
| libtoolize: copying file 'm4/ltsugar.m4'
| libtoolize: copying file 'm4/ltversion.m4'
| libtoolize: copying file 'm4/lt~obsolete.m4'
| autoreconf: running: 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/bin/autoconf 
--include=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/nut-2.7.4/m4/ 
--include=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/ 
--force
| autoreconf: running: 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/bin/autoheader 
--include=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/nut-2.7.4/m4/ 
--include=/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/recipe-sysroot-native/usr/share/aclocal/ 
--force
| autoreconf: running: automake --add-missing --copy --force-missing
| configure.ac:19: installing './compile'
| configure.ac:15: installing './missing'
| clients/Makefile.am: installing './depcomp'
| configure.ac:1268: error: required file 
'scripts/augeas/nutupsconf.aug.in' not found
| configure.ac:1268: error: required file 'scripts/devd/nut-usb.conf.in' 
not found
| configure.ac:1268: error: required file 
'scripts/udev/nut-usbups.rules.in' not found
| autoreconf: automake failed with exit status: 1
| WARNING: 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947:301 
exit 1 from 'exit 1'
| WARNING: Backtrace (BB generated script):
|     #1: bbfatal_log, 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947, 
line 301
|     #2: die, 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947, 
line 246
|     #3: autotools_do_configure, 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947, 
line 234
|     #4: do_configure, 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947, 
line 150
|     #5: main, 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/temp/run.do_configure.635947, 
line 305
|
| Backtrace (metadata-relative locations):
|     #1: bbfatal_log, 
/var/home/dingo/overc/poky/meta/classes/logging.bbclass, line 72
|     #2: die, /var/home/dingo/overc/poky/meta/classes/base.bbclass, line 56
|     #3: autotools_do_configure, 
/var/home/dingo/overc/poky/meta/classes/autotools.bbclass, line 232
|     #4: do_configure, autogenerated, line 2
ERROR: Task 
(/var/home/dingo/overc/meta-ups/recipes-support/nut/nut_2.7.4.bb:do_configure) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 528 tasks of which 527 didn't need to be 
rerun and 1 failed.

Summary: 1 task failed:
/var/home/dingo/overc/meta-ups/recipes-support/nut/nut_2.7.4.bb:do_configure
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

ls /var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/
build  license-destdir  nut-2.7.4  recipe-sysroot recipe-sysroot-native  
temp

and ls 
/var/home/dingo/overc/build/tmp/work/corei7-64-overc-linux/nut/2.7.4-r0/nut-2.7.4
aclocal.m4  autom4te.cache  compile       config.sub    COPYING docs     
INSTALL      lib           ltmain.sh    Makefile.am NEWS     
server       TODO
AUTHORS     clients         conf          configure     data drivers  
INSTALL.nut  LICENSE-GPL2  m4           Makefile.in README   
test-driver  tools
autogen.sh  common          config.guess  configure.ac  depcomp include  
install-sh   LICENSE-GPL3  MAINTAINERS  missing scripts  tests        
UPGRADING

