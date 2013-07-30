Return-Path: <lothar@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 191D1E002E2
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 09:04:51 -0700 (PDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3c4MzQ3Yg1z4KK6l
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 18:04:50 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3c4MzQ3RLwzbbfK
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 18:04:50 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024) with ESMTP id R4YFnKk7MPPm for <yocto@yoctoproject.org>;
	Tue, 30 Jul 2013 18:04:49 +0200 (CEST)
X-Auth-Info: mL3RlkSmUJc6/26MpApmKgd4UDOrFbppBkx1UNeVuQE=
Received: from webmail.mnet-online.de (webmail1.mnet-online.de [212.18.5.57])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 18:04:49 +0200 (CEST)
Received: from host-82-135-33-74.customer.m-online.net
	(host-82-135-33-74.customer.m-online.net [82.135.33.74]) by
	webmail.mnet-online.de (Horde Framework) with HTTP; Tue, 30 Jul 2013
	18:04:49 +0200
Message-ID: <20130730180449.64971389c5lrpxdw@webmail.mnet-online.de>
Date: Tue, 30 Jul 2013 18:04:49 +0200
From: lothar@denx.de
To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) H3 (4.3.5)
Subject: /lib/ld-linux.so.3: No such file or directory
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
X-List-Received-Date: Tue, 30 Jul 2013 16:04:53 -0000
Content-Type: text/plain;
 charset=ISO-8859-1;
 DelSp="Yes";
 format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

Hi Yocto community,

I guess my problem is quite trivial with a little bit of yocto experience. I'm
still quite new to Yocto, though, maybe you can help me, I would appreciate!!

I'm writing a recipe firmware_HEAD.bb. The actions shall be checkout from git,
run "make", copy the result to ${D}/lib/firmware.

DESCRIPTION = "external sdma-firmware blob"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM =  
"file://sdma-gen-image.c;beginline=1;endline=19;md5=8db9f935666ba755af54af9d8611b857"
PR = "r1"
SRC_URI = "git://git.pengutronix.de/git/imx/sdma-firmware.git/"
## curr HEAD: "4aede1eb121e8199d33fe6697f4c91405086000a"
SRCREV = "4aede1eb121e8199d33fe6697f4c91405086000a"
S = "${WORKDIR}/git"
do_install(){
     install -d ${D}/lib/firmware
# TODO
}



Actually an easy task, I thought. Checkout works fine, but the implicit make
fails, having /lib/ld-linux.so.3 already installed under ${sysroot}/lib.



$ MACHINE="m53evk" bitbake -b  
/work/lothar/acme/meta-acme/recipes-kernel/sdma-firmware/sdma-firmware_HEAD.bb  
-f
WARNING: Buildfile specified, dependencies will not be handled. If  
this is not what you want, do not use -b / --buildfile.
NOTE: Tainting hash to force rebuild of task  
/work/lothar/acme/meta-acme/recipes-kernel/sdma-firmware/sdma-firmware_HEAD.bb,  
do_build

Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-17"
TARGET_SYS        = "arm-linux-gnueabi"
MACHINE           = "m53evk"
DISTRO            = "acme"
DISTRO_VERSION    = "5.4"
TUNE_FEATURES     = "armv7a vfp"
TARGET_FPU        = "vfp"
meta
meta-yocto
meta-yocto-bsp
meta-acme         =  
"sandbox-rel-v5.4-2013-06-28:370842ae6e8018c1b1c9094cffaf50b8c8b6eb43"

NOTE: Preparing runqueue
NOTE: Tainting hash to force rebuild of task  
/work/lothar/acme/meta-acme/recipes-kernel/sdma-firmware/sdma-firmware_HEAD.bb,  
do_build
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_compile (see  
/work/lothar/BUILD__XXX__m53evk/tmp/work/armv7a-vfp-linux-gnueabi/sdma-firmware/HEAD-r1/temp/log.do_compile.1413 for further  
information)
ERROR: Logfile of failure stored in:  
/work/lothar/BUILD__XXX__m53evk/tmp/work/armv7a-vfp-linux-gnueabi/sdma-firmware/HEAD-r1/temp/log.do_compile.1413
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 8 -e MAKEFLAGS=
| /lib/ld-linux.so.3: No such file or directory
| make: *** [all] Error 255
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (see  
/work/lothar/BUILD__XXX__m53evk/tmp/work/armv7a-vfp-linux-gnueabi/sdma-firmware/HEAD-r1/temp/log.do_compile.1413 for further  
information)
ERROR: Task 6  
(/work/lothar/acme/meta-acme/recipes-kernel/sdma-firmware/sdma-firmware_HEAD.bb, do_compile) failed with exit code  
'1'
NOTE: Tasks Summary: Attempted 6 tasks of which 5 didn't need to be  
rerun and 1 failed.
No currently running tasks (5 of 14)

Summary: 1 task failed:
    
/work/lothar/acme/meta-acme/recipes-kernel/sdma-firmware/sdma-firmware_HEAD.bb,  
do_compile
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.



Today I already tried several approaches, I had a look into the logs, I set
DEPENDS declarations to libc6-dev, setting LD_LIBRARY_PATH as  
EXTRA_OEMAKE, etc.
Under run.do_compile... I learned the problem has to do with setting  
the CC, but
actually --sysroot is set correctly to /work/lothar/BUILD_.../m53evk  
here exists
already a /work/lothar/BUILD_.../m53evk/lib/ld-linux.so.3 file/link.

My question is now how to solve and fix this recipe and make the cc  
take the correct ld-linux.so.3?

Thank you in advance,
Lothar



