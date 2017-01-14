Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0A83E00924; Sat, 14 Jan 2017 11:05:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8672BE0052B
	for <yocto@yoctoproject.org>; Sat, 14 Jan 2017 11:05:38 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 14 Jan 2017 11:05:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,229,1477983600"; d="scan'208";a="1083026089"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga001.jf.intel.com with ESMTP; 14 Jan 2017 11:05:38 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat, 14 Jan 2017 11:01:46 -0800
Message-Id: <1484420513-18100-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][PATCH 0/7] Consolidated pull
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
X-List-Received-Date: Sat, 14 Jan 2017 19:05:42 -0000

This patchset consolidates various fixes and improvements in meta-zephyr.
Notably, it implements support for the Arduino 101 Board. This board contains
a SoC with two CPU cores: Intel MCU ("lakemont") and a Synopsys ARC core.
To support the board, two new toolchains needed to be built as well: One for
Intel IAMCU and one for ARC, none of which is nativelly supported by oe-embedded.
The IAMCU toolchain is built usig standard upstream repositories, but the ARC toolchain
needs to be built using Synopsys ARC repos.
To build Zephyr images for this board, two new MACHINES were implemented:

$ MACHINE=arduino-101 bitbake xxx      : build image for IAMCU core
$ MACHINE=arduino-101-sss bitbake xxx  : build image for ARC core

In general, each BOARD supported by Zephyr needs a corresponding MACHINE
in meta-zephyr. There is a 1:1 mapping between these two, except for some
minor naming discrepancies.

This patch series also contains definitions for a new MACHINE=qemu-cortex-m3,
corresponding to Zephyr BOARD=qemu_cortex_m3.

The patch series was successfully tested with real harware, where the resulting
images were flashed and functioned as expected (kudos to Henry Bruce).



Juro Bystricky (7):
  qemu-cortex-m3: new MACHINE
  zephyr-kernel: refactor common code
  meta-zephyr: Select BOARD via MACHINE
  arduino-101: New MACHINE
  meta-zephyr: Support for ARC toolchain
  arduino-101-sss: New MACHINE
  zephyr-philosophers: also deploy binary image

 README.txt                                         | 12 +--
 conf/distro/machine/include/tune-cortexm3.inc      | 20 -----
 conf/distro/zephyr.conf                            |  6 --
 conf/machine/arduino-101-sss.conf                  | 18 +++++
 conf/machine/arduino-101.conf                      | 10 +++
 conf/machine/include/tune-arc.inc                  | 34 +++++++++
 conf/machine/include/tune-cortexm3.inc             | 20 +++++
 conf/machine/include/tune-iamcu.inc                | 19 +++++
 conf/machine/qemu-cortex-m3.conf                   | 11 +++
 lib/oeqa/utils/qemuzephyrrunner.py                 |  2 +-
 recipes-devtools-arc/binutils/binutils-2.26arc.inc | 37 +++++++++
 .../binutils/binutils-cross-canadian_2.26arc.bb    |  7 ++
 .../binutils/binutils-cross_2.26arc.bb             |  5 ++
 .../cbd8e54244cd02bdcf4f1057be3ce96631f35ac3.patch | 83 ++++++++++++++++++++
 recipes-devtools-arc/gcc/gcc-6.x.arc.inc           | 88 ++++++++++++++++++++++
 .../gcc/gcc-cross-canadian_6.x.arc.bb              |  8 ++
 recipes-devtools-arc/gcc/gcc-cross_6.x.arc .bb     | 11 +++
 recipes-devtools-arc/gcc/gcc-source_6.x.arc.bb     |  2 +
 recipes-devtools-arc/gcc/libgcc_6.x.arc.bb         | 14 ++++
 recipes-kernel/zephyr-kernel/zephyr-image.inc      | 21 +-----
 .../zephyr-kernel/zephyr-kernel-common.inc         | 30 ++++++++
 recipes-kernel/zephyr-kernel/zephyr-kernel.inc     |  4 -
 .../zephyr-kernel/zephyr-philosophers.bb           | 26 +------
 .../zephyr-getchar/zephyr-getchar_git.bb           | 16 +---
 24 files changed, 408 insertions(+), 96 deletions(-)
 delete mode 100644 conf/distro/machine/include/tune-cortexm3.inc
 create mode 100644 conf/machine/arduino-101-sss.conf
 create mode 100644 conf/machine/arduino-101.conf
 create mode 100644 conf/machine/include/tune-arc.inc
 create mode 100644 conf/machine/include/tune-cortexm3.inc
 create mode 100644 conf/machine/include/tune-iamcu.inc
 create mode 100644 conf/machine/qemu-cortex-m3.conf
 create mode 100644 recipes-devtools-arc/binutils/binutils-2.26arc.inc
 create mode 100644 recipes-devtools-arc/binutils/binutils-cross-canadian_2.26arc.bb
 create mode 100644 recipes-devtools-arc/binutils/binutils-cross_2.26arc.bb
 create mode 100644 recipes-devtools-arc/gcc/files/cbd8e54244cd02bdcf4f1057be3ce96631f35ac3.patch
 create mode 100644 recipes-devtools-arc/gcc/gcc-6.x.arc.inc
 create mode 100644 recipes-devtools-arc/gcc/gcc-cross-canadian_6.x.arc.bb
 create mode 100644 recipes-devtools-arc/gcc/gcc-cross_6.x.arc .bb
 create mode 100644 recipes-devtools-arc/gcc/gcc-source_6.x.arc.bb
 create mode 100644 recipes-devtools-arc/gcc/libgcc_6.x.arc.bb
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc

-- 
2.7.4


