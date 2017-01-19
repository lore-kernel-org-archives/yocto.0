Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B64D8E00A6B; Thu, 19 Jan 2017 10:03:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76BB6E00A08
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 10:03:48 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 19 Jan 2017 10:03:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,254,1477983600"; d="scan'208";a="1084972756"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga001.jf.intel.com with ESMTP; 19 Jan 2017 10:03:42 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 09:59:34 -0800
Message-Id: <1484848779-10836-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][PATCH 0/5] Consolidated pull
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
X-List-Received-Date: Thu, 19 Jan 2017 18:03:51 -0000

This set of patches provides:

1. Support for Zephyr menuconfig and devshell.
   These are meant to modify project settings: menuconfig is used to change
   kernel configuration, devshell makes it easier to manually edit Zephyr
   prj.conf files

2. New MACHINE qemu-x86, corresponding to the zephyr BOARD qemu_x86

3. Support for "newlib", for all supported toolchains: x86, IAMCU, ARM and ARC.

4. Minor housekeeping (removed unneeded patches, modified descriptions, etc.)



Juro Bystricky (5):
  qemu-cortex-m3.conf: updated NAME/DESCRIPTION
  qemu-x86.conf: New MACHINE
  gcc (ARC): removed unneeded patches
  zephyr.bbclass: support for image configuration
  meta-zephyr: newlib support

 classes/zephyr.bbclass                             |  53 +++
 conf/distro/zephyr.conf                            |   1 +
 conf/machine/qemu-cortex-m3.conf                   |   4 +-
 conf/machine/qemu-x86.conf                         |  11 +
 recipes-core/newlib/newlib/assert-fiprintf.patch   |  23 ++
 .../newlib/newlib/gettimeofday-header-fix.patch    |  20 ++
 .../newlib/newlib/iamcu-commit-5d3ad3b.patch       | 399 +++++++++++++++++++++
 recipes-core/newlib/newlib_2.%.bb                  |  83 +++++
 recipes-core/newlib/newlib_2.%.bbappend            |  23 ++
 recipes-devtools-arc/gcc/gcc-6.x.arc.inc           |   2 -
 recipes-devtools/gcc/libgcc_6.%.bbappend           |   3 +
 .../zephyr-kernel/files/Makefile.toolchain.yocto   |  19 +-
 recipes-kernel/zephyr-kernel/zephyr-image.inc      |   8 +-
 .../zephyr-kernel/zephyr-kernel-common.inc         |  19 +-
 .../zephyr-kernel/zephyr-philosophers.bb           |  10 +-
 .../zephyr-getchar/zephyr-getchar_git.bb           |  10 +-
 16 files changed, 657 insertions(+), 31 deletions(-)
 create mode 100644 classes/zephyr.bbclass
 create mode 100644 conf/machine/qemu-x86.conf
 create mode 100644 recipes-core/newlib/newlib/assert-fiprintf.patch
 create mode 100644 recipes-core/newlib/newlib/gettimeofday-header-fix.patch
 create mode 100644 recipes-core/newlib/newlib/iamcu-commit-5d3ad3b.patch
 create mode 100644 recipes-core/newlib/newlib_2.%.bb
 create mode 100644 recipes-core/newlib/newlib_2.%.bbappend
 create mode 100644 recipes-devtools/gcc/libgcc_6.%.bbappend

-- 
2.7.4


