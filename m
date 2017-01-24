Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 699BDE004D2; Mon, 23 Jan 2017 16:05:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DFACE0033D
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 16:05:03 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga105.fm.intel.com with ESMTP; 23 Jan 2017 16:05:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,276,1477983600"; d="scan'208";a="56403506"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga005.jf.intel.com with ESMTP; 23 Jan 2017 16:05:02 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Jan 2017 16:00:44 -0800
Message-Id: <1485216048-33088-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][PATCH 0/4] Support for Zephyr qemu_nios2 board
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
X-List-Received-Date: Tue, 24 Jan 2017 00:05:06 -0000

This set of patches implements the support for Zephyr qemu_nios2.
It implements the full toolchain (binutils, GCC, newlib) and also
QEMU for Altera Nios2. The Nios2 support is fairly minimalistic,
no tunes to support HW multiply, HW divide etc. as they are not required
by Zephyr.

Upstream QEMU does not support Nios2, so a patch was needed to provide
the Nios2 emulation (CPU, intc, timer, ...)

As with all other supported Zephyr boards, the BOARD=qemu_nios2 required
the creation of a corresponding MACHINE=qemu-nios2

Usage is described in the (updated) README.txt file.


Juro Bystricky (4):
  qemu-nios2: New MACHINE
  qemuzephyrrunner.py: support for qemu-nios2
  zephyr-kernel-test.inc: exclude tests not suitable for Nios2
  README.txt: Updated for qemu-nios2

 README.txt                                         |   32 +-
 conf/machine/include/tune-nios2.inc                |   19 +
 conf/machine/qemu-nios2.conf                       |   11 +
 lib/oeqa/utils/qemuzephyrrunner.py                 |    6 +
 .../qemu/files/nios2-add-support.patch             | 9239 ++++++++++++++++++++
 recipes-devtools/qemu/qemu_2.7.%.bbappend          |   12 +
 .../zephyr-kernel/zephyr-kernel-test.inc           |    3 +
 7 files changed, 9309 insertions(+), 13 deletions(-)
 create mode 100644 conf/machine/include/tune-nios2.inc
 create mode 100644 conf/machine/qemu-nios2.conf
 create mode 100644 recipes-devtools/qemu/files/nios2-add-support.patch
 create mode 100644 recipes-devtools/qemu/qemu_2.7.%.bbappend

-- 
2.7.4


