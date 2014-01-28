Return-Path: <rohit.borse@einfochips.com>
Received: from out05.sjc.mx.trendmicro.com (out05.sjc.mx.trendmicro.com
	[216.99.131.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BC2EE005B4
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2014 06:33:15 -0800 (PST)
Received: from relay09.sjc.mx.trendmicro.com (unknown [10.30.239.136])
	by out05.sjc.mx.trendmicro.com (Postfix) with ESMTP id B5507980448
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2014 14:33:13 +0000 (UTC)
Received: from pune.einfochips.com (unknown [121.241.186.85])
	by relay09.sjc.mx.trendmicro.com (Postfix) with ESMTP id 9CA33980436
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2014 14:33:12 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by pune.einfochips.com (Postfix) with ESMTP id 4F0FF4DE0008
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2014 20:21:43 +0530 (IST)
X-Virus-Scanned: amavisd-new at pune.einfochips.com
Received: from pune.einfochips.com ([127.0.0.1])
	by localhost (pune.einfochips.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2aUrr6DIC68F for <yocto@yoctoproject.org>;
	Tue, 28 Jan 2014 20:21:43 +0530 (IST)
Received: from [10.110.1.204] (unknown [10.110.1.204])
	by pune.einfochips.com (Postfix) with ESMTPSA id 1397F4DE0001
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2014 20:21:43 +0530 (IST)
Message-ID: <52E7C04E.8040301@einfochips.com>
Date: Tue, 28 Jan 2014 20:05:58 +0530
From: Rohit Borse <rohit.borse@einfochips.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto <yocto@yoctoproject.org>
X-TM-AS-Product-Ver: IMHS-1.0.0.1430-7.0.0.1014-20466.007
X-TM-AS-Result: No--14.2000-5.0-31-10
X-TM-AS-Result-Detail: Spam:No-Score:-14.2000-Baseline:ModeratelyHigh-Other:Lowest
X-TMASE-MatchedRID: NepJ7Qyc8f4OuBY41QkXu2zBijri5+RV1peb/DWF8E6HwGEm+CpYGSOG
	KxpqhEhtG7A8qz7wh4lRdQLLLSTz6ADBaeVuVh0CiQy4MG/9Stm063Wh9WVqgiyzhndreFvtauF
	HsAGdpVLl1Q/tfF110Grz/G/ZSbVqbkV4e2xSge56MAxbZtmjb8ut1kLZUPSmSX4mReHFdZ/uJe
	aGD7Y2LlgpWCbva+Mm
X-TM-Deliver-Signature: 7df24db48fddcafccbb2a811d971f564
Subject: log4cplus compilation
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
X-List-Received-Date: Tue, 28 Jan 2014 14:33:18 -0000
X-Groupsio-MsgNum: 17927
Content-Type: multipart/mixed; boundary="------------090609040004000607040108"

--------------090609040004000607040108
Content-Type: text/plain;
	charset="ISO-8859-1";
	format="flowed"
Content-Transfer-Encoding: 7bit


Hi All,
        I am facing problem while compiling log4cplus package. It gives 
error in do_configure().
Please find attachment for error log.

Thanks and Regards,
Rohit


---------------------------------------------------------------------------------------------
Notice: 
This message has been scanned by Trend Micro Mail Security scanner and is believed to be clean
---------------------------------------------------------------------------------------------

--------------090609040004000607040108
Content-Type: text/x-log;
 name="log4cplusError.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="log4cplusError.log"

rohit@rohit-pc:~/AIO_Gateway/Build_SDK/bluegiga-sdk/build$ bitbake log4cplus
Loading cache: 100% |##################################################################################################################| ETA:  00:00:00
Loaded 1171 entries from dependency cache.
Parsing recipes: 100% |################################################################################################################| Time: 00:00:00
Parsing of 892 .bb files complete (891 cached, 1 parsed). 1172 targets, 38 skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        = "1.15.1"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "apx4devkit"
DISTRO            = "bluegiga"
DISTRO_VERSION    = "5.0.0-beta10"
TUNE_FEATURES     = "armv5 dsp thumb arm926ejs"
TARGET_FPU        = "soft"
meta              
meta-yocto        
bluegiga-bsp      
bluegiga-distro   
bluegiga-binary-utils
bluegiga-examples = "<unknown>:<unknown>"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 532 of 798 (ID: 4, /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/yocto/meta/recipes-devtools/log4cplus/log4cplus_1.1.1.bb, do_fetch)
NOTE: package log4cplus-1.1.1-r0: task do_fetch: Started
NOTE: package log4cplus-1.1.1-r0: task do_fetch: Succeeded
NOTE: Running task 788 of 798 (ID: 0, /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/yocto/meta/recipes-devtools/log4cplus/log4cplus_1.1.1.bb, do_unpack)
NOTE: package log4cplus-1.1.1-r0: task do_unpack: Started
NOTE: package log4cplus-1.1.1-r0: task do_unpack: Succeeded
NOTE: Running task 789 of 798 (ID: 1, /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/yocto/meta/recipes-devtools/log4cplus/log4cplus_1.1.1.bb, do_patch)
NOTE: package log4cplus-1.1.1-r0: task do_patch: Started
NOTE: package log4cplus-1.1.1-r0: task do_patch: Succeeded
NOTE: Running task 790 of 798 (ID: 6, /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/yocto/meta/recipes-devtools/log4cplus/log4cplus_1.1.1.bb, do_configure)
NOTE: Running task 791 of 798 (ID: 10, /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/yocto/meta/recipes-devtools/log4cplus/log4cplus_1.1.1.bb, do_populate_lic)
NOTE: package log4cplus-1.1.1-r0: task do_configure: Started
NOTE: package log4cplus-1.1.1-r0: task do_populate_lic: Started
NOTE: package log4cplus-1.1.1-r0: task do_populate_lic: Succeeded
ERROR: Function failed: do_configure (see /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/work/armv5te-bluegiga-linux-gnueabi/log4cplus-1.1.1-r0/temp/log.do_configure.10773 for further information)
ERROR: Logfile of failure stored in: /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/work/armv5te-bluegiga-linux-gnueabi/log4cplus-1.1.1-r0/temp/log.do_configure.10773
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
| ERROR: Function failed: do_configure (see /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/work/armv5te-bluegiga-linux-gnueabi/log4cplus-1.1.1-r0/temp/log.do_configure.10773 for further information)
| automake (GNU automake) 1.11.2
| Copyright (C) 2011 Free Software Foundation, Inc.
| License GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl-2.0.html>
| This is free software: you are free to change and redistribute it.
| There is NO WARRANTY, to the extent permitted by law.
|
| Written by Tom Tromey <tromey@redhat.com>
|        and Alexandre Duret-Lutz <adl@gnu.org>.
| AUTOV is 1.11
| NOTE: Executing autoreconf --verbose --install --force --exclude=autopoint -I /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/work/armv5te-bluegiga-linux-gnueabi/log4cplus-1.1.1-r0/log4cplus-1.1.1/m4/ -I/home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11 -I /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/work/armv5te-bluegiga-linux-gnueabi/log4cplus-1.1.1-r0/log4cplus-1.1.1/aclocal-copy/
| autoreconf: Entering directory `.'
| autoreconf: configure.ac: not using Gettext
| autoreconf: running: aclocal -I /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/work/armv5te-bluegiga-linux-gnueabi/log4cplus-1.1.1-r0/log4cplus-1.1.1/m4/ -I /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11 -I /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/work/armv5te-bluegiga-linux-gnueabi/log4cplus-1.1.1-r0/log4cplus-1.1.1/aclocal-copy/ -I /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/work/armv5te-bluegiga-linux-gnueabi/log4cplus-1.1.1-r0/log4cplus-1.1.1/m4/ -I /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11 -I /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/work/armv5te-bluegiga-linux-gnueabi/log4cplus-1.1.1-r0/log4cplus-1.1.1/aclocal-copy/ --force --warnings=cross -I m4
| aclocal: unknown warning category `cross'
| autoreconf: configure.ac: tracing
| autoreconf: running: libtoolize --copy --force
| libtoolize: putting auxiliary files in `.'.
| libtoolize: copying file `./ltmain.sh'
| libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `m4'.
| libtoolize: copying file `m4/libtool.m4'
| libtoolize: copying file `m4/ltoptions.m4'
| libtoolize: copying file `m4/ltsugar.m4'
| libtoolize: copying file `m4/ltversion.m4'
| libtoolize: copying file `m4/lt~obsolete.m4'
| aclocal: unknown warning category `cross'
| autoreconf: running: /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/sysroots/x86_64-linux/usr/bin/autoconf --include=/home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/work/armv5te-bluegiga-linux-gnueabi/log4cplus-1.1.1-r0/log4cplus-1.1.1/m4/ --include=/home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11 --include=/home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/work/armv5te-bluegiga-linux-gnueabi/log4cplus-1.1.1-r0/log4cplus-1.1.1/aclocal-copy/ --force --warnings=cross
| autoreconf: running: /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/sysroots/x86_64-linux/usr/bin/autoheader --include=/home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/work/armv5te-bluegiga-linux-gnueabi/log4cplus-1.1.1-r0/log4cplus-1.1.1/m4/ --include=/home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11 --include=/home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/build/tmp/work/armv5te-bluegiga-linux-gnueabi/log4cplus-1.1.1-r0/log4cplus-1.1.1/aclocal-copy/ --force --warnings=cross
| autoreconf: running: automake --foreign --add-missing --copy --force-missing --warnings=cross
| automake: unknown warning category `cross'
| configure.ac:11: require Automake 1.12, but have 1.11.2
| autoreconf: automake failed with exit status: 1
| ERROR: autoreconf execution failed.
NOTE: package log4cplus-1.1.1-r0: task do_configure: Failed
ERROR: Task 6 (/home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/yocto/meta/recipes-devtools/log4cplus/log4cplus_1.1.1.bb, do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 791 tasks of which 786 didn't need to be rerun and 1 failed.

Summary: 1 task failed:
  /home/rohit/AIO_Gateway/Build_SDK/bluegiga-sdk/yocto/meta/recipes-devtools/log4cplus/log4cplus_1.1.1.bb, do_configure
Summary: There was 1 ERROR message shown, returning a non-zero exit code.



--------------090609040004000607040108--
