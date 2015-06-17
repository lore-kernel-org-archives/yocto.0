Return-Path: <cavallini.koan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7BCFE00A3B; Wed, 17 Jun 2015 08:56:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cavallini.koan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 496EEE00998
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 08:56:26 -0700 (PDT)
Received: by wibdq8 with SMTP id dq8so58581587wib.1
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 08:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=y3GOkb22ZCDwuK8VT5sjpDHcT7RmkVFurwWZc0Rw96s=;
	b=PVe27fku9bEePFGuwcpVIopsNQnOIeUeY5FXgk1/ByfHtb8G3DpSg0FsUSb5tdbeR2
	FjUb6+znuRhmpd5Ievys6nu5IVlNWgjrc6f3ACYbvIrgI8r7znUozPiVKxQ15lXXioXO
	CnLWxwKBKU57s7nL4vaF04x6JYDxbVC9GXyQn70YaDANHpWO7GhUmkNus22l6f6zMcRi
	rXLVSwPYtKxBErHc5lEbtf6syFksGrbojY6XFxbotYseLnHmbppI5UcfWbeno50rZ+Wq
	zT2ox8yOPFhpOonrjbWA5rkg/RuXYTlaUo9dW80cA7UZQ8o8n86cau5Pe1HBmGr9Pi2+
	43Ew==
MIME-Version: 1.0
X-Received: by 10.180.160.210 with SMTP id xm18mr19000053wib.93.1434556585719; 
	Wed, 17 Jun 2015 08:56:25 -0700 (PDT)
Received: by 10.194.201.131 with HTTP; Wed, 17 Jun 2015 08:56:25 -0700 (PDT)
Date: Wed, 17 Jun 2015 17:56:25 +0200
Message-ID: <CAFQ+Dij3q-k0eakxRoE5sq+sTwPv-r+K_YKF_qW7ai8VpY3uCg@mail.gmail.com>
From: Marco Cavallini <cavallini.koan@gmail.com>
To: yocto@yoctoproject.org
Subject: No rule to make target `Makefile.in' SITE files ['endian-little', 'bit-32', 'arm-common', 'common-linux', ...]
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
X-List-Received-Date: Wed, 17 Jun 2015 15:56:32 -0000
Content-Type: text/plain; charset=UTF-8

Hello,
I'm trying to create a recipe rdesktop_1.8.3.bb but I get an error
hard to understand.
With Yocto 'daisy' the same recipe worked without complaining.
To avoid any temporary misconfiguraton I deleted the sstate and tmp
and rebuilt core-image-minimal from scratch and then rdesktop but the
error is always present.
I'd like to know what is wrong with inherit autotools now using
'dizzy' and what is this DEBUG: SITE files ['endian-little', 'bit-32',
'arm-common', 'common-linux', 'common-glibc', 'arm-linux',
'arm-linux-gnueabi', 'common']

Thank you


This is my recipe:
$ cat rdesktop_1.8.3.bb
---------------------------------
DESCRIPTION = "Rdesktop rdp client for X"
HOMEPAGE = "http://www.rdesktop.org"
SECTION = "x11/network"
LICENSE = "GPL"
LIC_FILES_CHKSUM = "file://COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949"
SRC_URI = "${SOURCEFORGE_MIRROR}/rdesktop/rdesktop-${PV}.tar.gz"
inherit autotools
EXTRA_OECONF = "--with-openssl=${STAGING_EXECPREFIXDIR}
--disable-credssp --disable-smartcard"
SRC_URI[md5sum] = "86e8b368a7c715e74ded92e0d7912dc5"
SRC_URI[sha256sum] =
"88b20156b34eff5f1b453f7c724e0a3ff9370a599e69c01dc2bf0b5e650eece4"


And I get this error:
$ bitbake rdesktop

Build Configuration:
BB_VERSION        = "1.24.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "imx6solosabresd"
DISTRO            = "poky"
DISTRO_VERSION    = "1.7.2"
TUNE_FEATURES     = "arm armv7a vfp neon callconvention-hard cortexa9"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "dizzy:9c4ff467f66428488b1cd9798066a8cb5d6b4c3b"
meta-oe           = "dizzy:5b6f39ce325d490fc382d5d59c5b8b9d5fa38b38"
meta-fsl-arm      = "dizzy:db1571f40c375a398a8cdbb42de4c4f272ab0cd1"
meta-fsl-arm-extra = "dizzy:794e46e0b0a3e7e270a2f3c217d8fe5751a6b2c6"
meta-mh          = "dizzy:9c4ff467f66428488b1cd9798066a8cb5d6b4c3b"

...
ERROR: Function failed: do_compile (log file is located at
/home/mc/yocto-fsl-dizzy/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/rdesktop/1.8.3-r0/temp/log.do_compile.3066)
ERROR: Logfile of failure stored in:
/home/mc/yocto-fsl-dizzy/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/rdesktop/1.8.3-r0/temp/log.do_compile.3066
Log data follows:
| DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',
'common']
| DEBUG: Executing shell function do_compile
| NOTE: make -j 8
| make: *** No rule to make target `Makefile.in', needed by `Makefile'.  Stop.
| ERROR: oe_runmake failed
| WARNING: /home/mc/yocto-fsl-dizzy/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/rdesktop/1.8.3-r0/temp/run.do_compile.3066:1
exit 1 from
|   exit 1
| ERROR: Function failed: do_compile (log file is located at
/home/mc/yocto-fsl-dizzy/poky/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/rdesktop/1.8.3-r0/temp/log.do_compile.3066)
ERROR: Task 6 (/home/mc/yocto-fsl-dizzy/poky/meta-mh/recipes-connectivity/rdesktop/rdesktop_1.8.3.bb,
do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 545 tasks of which 544 didn't need to
be rerun and 1 failed.
No currently running tasks (522 of 554)

Summary: 1 task failed:
  /home/mc/yocto-fsl-dizzy/poky/meta-mh/recipes-connectivity/rdesktop/rdesktop_1.8.3.bb,
do_compile
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

--
Marco

