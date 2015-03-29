Return-Path: <tzy13888@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1049CE00970; Sat, 28 Mar 2015 21:59:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tzy13888[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BBCAE0096D
	for <yocto@yoctoproject.org>; Sat, 28 Mar 2015 21:59:29 -0700 (PDT)
Received: by wibg7 with SMTP id g7so66094327wib.1
	for <yocto@yoctoproject.org>; Sat, 28 Mar 2015 21:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=LoG3uAur55IDm5RZBRlSUnRF9niIMN99HeVE7hxgFVQ=;
	b=Z6OizD6LaXaYyWk0TVCYO2H4gK8TDOin3ExuSnvPBcI68GwWm9n6GxVo1vPu9bZfum
	7xFphDHToR763gsz0hgc6PT6nV2jB3G6bKM/4fIlARUhFPqGP4xkyghJq+oH1dkso3as
	Tw5UdgkZ1ImTG8P7N9RAmPhVvH39f5kHlOpcmVqiokPkvKjSWbbz2nc7AyNe8U615kWy
	emXZtOpMYQjV28B3uK5222uvc0WmaeIaTxQzJ3lTz74deOsp48OWBPSOXf2HkSHA6Epv
	NV4XHgdMD2tmmrjV+vZs7TBCjA0BBjY1gkBIbuT3eMTfoGNyjSzd3RC15/+8AZUJlZAH
	RUOg==
MIME-Version: 1.0
X-Received: by 10.194.177.132 with SMTP id cq4mr48783430wjc.99.1427605168837; 
	Sat, 28 Mar 2015 21:59:28 -0700 (PDT)
Received: by 10.27.1.85 with HTTP; Sat, 28 Mar 2015 21:59:28 -0700 (PDT)
Date: Sun, 29 Mar 2015 12:59:28 +0800
Message-ID: <CAH0sG7tjTfYY7Tx_Eb-seWTKWCHLWdCW4Hkx5vgi28KjSGK_1Q@mail.gmail.com>
From: Tzy User <tzy13888@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] RaspberryPi B+, bitbake make killed, unfinished jobs
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
X-List-Received-Date: Sun, 29 Mar 2015 04:59:36 -0000
Content-Type: text/plain; charset=UTF-8

I am trying to build a new kernel for RaspberryPi model B+ with this
configuration:

Build Configuration:
BB_VERSION        = "1.24.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Debian-GNU-Linux-7"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "raspberrypi"
DISTRO            = "poky"
DISTRO_VERSION    = "1.7.1"
TUNE_FEATURES     = "arm armv6 vfp"
TARGET_FPU        = "vfp"
meta
meta-yocto
meta-yocto-bsp    = "dizzy-dev:82c843842854c7e2e87bf7762c3f9e83b3e2bf1b"
meta-raspberrypi  = "dizzy-dev:efd760d0a2c027fe20ed190c56f416d0a47d7c41"


The make gets killed, then waiting for unfinished jobs...
.
/bin/bash /mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/gcc-4.9.1-r0/gcc-4.9.1/gcc/../move-if-change
tmp-opinit.c insn-opinit.c
echo timestamp > s-opinit
build/genautomata
/mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/gcc-4.9.1-r0/gcc-4.9.1/gcc/config/arm/arm.md
\
 insn-conditions.md > tmp-automata.c
/bin/bash: line 1: 16677 Killed                  build/genautomata
/mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/gcc-4.9.1-r0/gcc-4.9.1/gcc/config/arm/arm.md
insn-conditions.md > tmp-automata.c
make[1]: *** [s-automata] Error 137
make[1]: *** Waiting for unfinished jobs....
/bin/bash /mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/gcc-4.9.1-r0/gcc-4.9.1/gcc/../move-if-change
tmp-attrtab.c    insn-attrtab.c
/bin/bash /mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/gcc-4.9.1-r0/gcc-4.9.1/gcc/../move-if-change
tmp-dfatab.c     insn-dfatab.c
/bin/bash /mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work-shared/gcc-4.9.1-r0/gcc-4.9.1/gcc/../move-if-change
tmp-latencytab.c insn-latencytab.c
echo timestamp > s-attrtab
rm gcc.pod
make[1]: Leaving directory
`/mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work/x86_64-poky-linux-gnueabi/gcc-cross-arm/4.9.1-r0/gcc-4.9.1/build.x86_64-linux.arm-poky-linux-gnueabi/gcc'
make: *** [all-gcc] Error 2
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_compile (log file is located at
/mnt/sdb1/projects/yocto/build/raspberrypi-3.18/tmp/work/x86_64-poky-linux-gnueabi/gcc-cross-arm/4.9.1-r0/temp/log.do_compile.15332)


Any clue ?

