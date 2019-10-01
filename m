Return-Path: <lm@zork.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E15C0E00D4E; Tue,  1 Oct 2019 01:40:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
X-Greylist: delayed 393 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 Oct 2019 01:40:24 PDT
Received: from black.zork.pl (black.zork.pl [178.32.202.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B112EE00D33
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2019 01:40:24 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by black.zork.pl (Postfix) with ESMTP id 96678147412
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2019 10:33:49 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zork.pl
Received: from black.zork.pl ([127.0.0.1])
	by localhost (black.zork.pl [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SWiT6l_F-h70 for <yocto@yoctoproject.org>;
	Tue,  1 Oct 2019 10:33:47 +0200 (CEST)
Received: from [10.21.42.199] (unknown [91.198.80.161])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest
	SHA256) (No client certificate requested)
	by black.zork.pl (Postfix) with ESMTPSA id 2DA51147410
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2019 10:33:47 +0200 (CEST)
From: =?UTF-8?Q?=c5=81ukasz_Michalski?= <lm@zork.pl>
To: yocto@yoctoproject.org
Message-ID: <a327cddf-067b-f9ed-a069-aec36c2f9fd0@zork.pl>
Date: Tue, 1 Oct 2019 10:33:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.0
MIME-Version: 1.0
Subject: RPI Kernel compile error (meta-raspberrypi)
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
X-List-Received-Date: Tue, 01 Oct 2019 08:40:28 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-PH
Content-Transfer-Encoding: 8bit

Hi,

I am trying to bitbake meta-raspberrypi image from current warrior branch:

Build Configuration:
BB_VERSION           = "1.42.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "arm-poky-linux-gnueabi"
MACHINE              = "raspberrypi3"
DISTRO               = "poky"
DISTRO_VERSION       = "2.7.1"
TUNE_FEATURES        = "arm vfp cortexa7 neon vfpv4 thumb callconvention-hard"
TARGET_FPU           = "hard"
meta
meta-poky
meta-yocto-bsp       = "warrior:6d2e12e79211b31cdf5ea824fb9a8be54ba9a9eb"
meta-oe
meta-python
meta-networking      = "warrior:3bdbf72e3a4bf18a4a2c7afbde4f7ab773aeded9"
meta-raspberrypi     = "warrior:0750d5d2bc9596f35d5d61bb0ff657be4b02bfdc"

Kernel compilation fails with this error:

| make[3]: *** No rule to make target 'arch/arm/boot/dts/overlays/hifiberry-dacplusdsp.dtbo'.  Stop.
| make[2]: *** [arch/arm/Makefile:345: overlays/hifiberry-dacplusdsp.dtbo] Error 2
| make[1]: *** [Makefile:146: sub-make] Error 2
| make: *** [Makefile:24: __sub-make] Error 2
| ERROR: oe_runmake failed
| WARNING: /home/zork/data/yocto-wallscreen-build/tmp/work/raspberrypi3-poky-linux-gnueabi/linux-raspberrypi/1_4.19.71+gitAUTOINC+13ce09db83-r0/temp/run.do_compile.26619:1 exit 1 from 'exit 1'
| ERROR: Function failed: do_compile (log file is located at /home/zork/data/yocto-wallscreen-build/tmp/work/raspberrypi3-poky-linux-gnueabi/linux-raspberrypi/1_4.19.71+gitAUTOINC+13ce09db83-r0/temp/log.do_compile.26619)
ERROR: Task (/home/zork/sources/homehq/yocto/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.19.bb:do_compile) failed with exit code '1'

I checked BUILD_DIR/work-shared/rasbperrypi3/kernel-source and there is no such file:
[zork@serenity arm]$ ls -l boot/dts/overlays/hifiberry-*
-rw-r--r-- 1 zork users  575 Sep 30 20:12 boot/dts/overlays/hifiberry-amp-overlay.dts
-rw-r--r-- 1 zork users  490 Sep 30 20:12 boot/dts/overlays/hifiberry-dac-overlay.dts
-rw-r--r-- 1 zork users 1260 Sep 30 20:12 boot/dts/overlays/hifiberry-dacplusadc-overlay.dts
-rw-r--r-- 1 zork users 1198 Sep 30 20:12 boot/dts/overlays/hifiberry-dacplusadcpro-overlay.dts
-rw-r--r-- 1 zork users 1050 Sep 30 20:12 boot/dts/overlays/hifiberry-dacplus-overlay.dts
-rw-r--r-- 1 zork users  639 Sep 30 20:12 boot/dts/overlays/hifiberry-digi-overlay.dts
-rw-r--r-- 1 zork users  705 Sep 30 20:12 boot/dts/overlays/hifiberry-digi-pro-overlay.dts

bitbake checked kernel sources version:

[zork@serenity arm]$ cd yocto-wallscreen-build/tmp/work-shared/raspberrypi3/kernel-source
[zork@serenity arm]$ git status
On branch rpi-4.19.y
Your branch is behind 'origin/rpi-4.19.y' by 413 commits, and can be fast-forwarded.

[zork@serenity arm]$ git rev-parse HEAD
13ce09db830e0c2fe524460b0673afb974359bc2

So it seems that bitbake checked out old version of rpi-4.19.y branch. In this version there is no hifiberry-dacplusdsp overlay.

I am new to yocto/bitbake and kernel recipe is a complicated one. Anyone can help me fix this error?

Thanks,
Łukasz

