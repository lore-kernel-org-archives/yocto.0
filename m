Return-Path: <dallas.a.clement@gmail.com>
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B2E9E00347
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 12:20:59 -0700 (PDT)
Received: by wgbfa7 with SMTP id fa7so1866625wgb.28
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 12:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=uW6v9oQBGeYvne+IS2qmCFaEX9A+axOFWFlyjkgHZGQ=;
	b=DKB3Sv4+QzaqOYw+FPTNrTbwSQYpHUHTW/6bJtOSthsZy7ijuHv+dBV4sh8eeOT+Cd
	GmMYZ1O11u3oUg/Hx+Lct1islf777yqkqQEMPF+NLLW2/wgL0jXaqgRkqz9JLJtiYU7C
	zba4O5JZ1vf3vtrZb/3me5VBQE4ixrJFsn6sWrhyzTD4LkfTeY9H77zd1iM94Ue68546
	Lvl2gz/tRAZbjNy1g+hAfM6JN8t5pT4CbU/4U2J536C24P0MnE10jUjIr8zsFsn8Gb4V
	6ChWO/o52p97bxlK2S4AMgoH3Cc5daFIgJtDPT9lp9BWosNOKSW+x0EhZkI+JdNuZ8Bl
	3yFw==
MIME-Version: 1.0
Received: by 10.216.61.77 with SMTP id v55mr2387829wec.160.1342120858452; Thu,
	12 Jul 2012 12:20:58 -0700 (PDT)
Received: by 10.180.109.162 with HTTP; Thu, 12 Jul 2012 12:20:58 -0700 (PDT)
Date: Thu, 12 Jul 2012 14:20:58 -0500
Message-ID: <CAE9DZUS20851zBEYJOM65QufJCx0gHCLnhgfb=7VXbpdkeq4eA@mail.gmail.com>
From: Dallas Clement <dallas.a.clement@gmail.com>
To: yocto@yoctoproject.org
Subject: external toolchain
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
X-List-Received-Date: Thu, 12 Jul 2012 19:21:00 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm trying to use an external pre-built toolchain to build my distro.
I added a "TCMODE ?= "external-sourcery" to my local.conf and modified
the external-sourcery include file as follows:

diff --git a/meta/conf/distro/include/tcmode-external-sourcery.inc
b/meta/conf/distro/include/tcmode-external-source
index 1635eec..3ba564a 100644
--- a/meta/conf/distro/include/tcmode-external-sourcery.inc
+++ b/meta/conf/distro/include/tcmode-external-sourcery.inc
@@ -2,14 +2,16 @@
 # Configuration to use external Sourcery G++ toolchain
 #

-EXTERNAL_TOOLCHAIN ?= "/usr/local/csl/${TARGET_ARCH}"
+#EXTERNAL_TOOLCHAIN ?= "/usr/local/csl/${TARGET_ARCH}"
+EXTERNAL_TOOLCHAIN ?=
"/opt/armada-sdk-5.0-64k/armv7-marvell-linux-gnueabi-softfp"

 TOOLCHAIN_PATH_ADD = "${EXTERNAL_TOOLCHAIN}/bin:"
 PATH =. "${TOOLCHAIN_PATH_ADD}"

 CSL_TARGET_SYS_powerpc ?= "powerpc-linux-gnu"
 CSL_TARGET_SYS_powerpc64 ?= "powerpc-linux-gnu"
-CSL_TARGET_SYS_arm ?= "arm-none-linux-gnueabi"
+#CSL_TARGET_SYS_arm ?= "arm-none-linux-gnueabi"
+CSL_TARGET_SYS_arm ?= "arm-marvell-linux-gnueabi"
 CSL_TARGET_SYS_mips ?= "mips-linux-gnu"
 CSL_TARGET_SYS_mipsel ?= "mips-linux-gnu"
 CSL_TARGET_SYS_mips64 ?= "mips-linux-gnu"

bitbake is able to find my toolchain, but it eventually fails trying
to install the external sourcery toolchain for arm.

ERROR: Function failed: do_install (see
/development/dallasc/yocto/poky/build/tmp/work/armv5te-poky-linux-gnueabi/external-sourcery-toolchain-201111-0.-r7/temp/log.do_install.4466
for further information)
ERROR: Logfile of failure stored in:
/development/dallasc/yocto/poky/build/tmp/work/armv5te-poky-linux-gnueabi/external-sourcery-toolchain-201111-0.-r7/temp/log.do_install.4466
Log data follows:
| DEBUG: Executing shell function do_install
| ERROR: Function failed: do_install (see
/development/dallasc/yocto/poky/build/tmp/work/armv5te-poky-linux-gnueabi/external-sourcery-toolchain-201111-0.-r7/temp/log.do_install.4466
for further information)
| mv: cannot stat
`/development/dallasc/yocto/poky/build/tmp/work/armv5te-poky-linux-gnueabi/external-sourcery-toolchain-201111-0.-r7/image/usr/lib/bin/*':
No such file or directory
NOTE: package external-sourcery-toolchain-201111-0.-r7: task do_install: Failed
ERROR: Task 422
(/development/dallasc/yocto/poky/meta/recipes-core/meta/external-sourcery-toolchain.bb,
do_install) failed with exit code '1'

Should I be modifying this external-sourcery-toolchain recipe to point
to my toolchain sysroot area?  Just not sure what all needs to be done
to use my own toolchain.

Thanks

