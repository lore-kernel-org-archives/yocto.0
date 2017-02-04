Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F08B0E00963; Sat,  4 Feb 2017 10:40:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC40CE0073C
	for <yocto@yoctoproject.org>; Sat,  4 Feb 2017 10:40:39 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP; 04 Feb 2017 10:40:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,335,1477983600"; d="scan'208";a="55400531"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga004.jf.intel.com with ESMTP; 04 Feb 2017 10:40:38 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat,  4 Feb 2017 10:36:43 -0800
Message-Id: <1486233410-15671-1-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][morty][PATCH 0/7] consolidated pull for Morty
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
X-List-Received-Date: Sat, 04 Feb 2017 18:40:50 -0000

The attached series of patches containes various improvements for
meta-zephyr. These are intended for a new meta-zephyr branch "morty".


Juro Bystricky (7):
  zephyr-kernel-common.inc: also build qemus if needed
  zephyr-philosophers: use common naming conventions
  zephyr-getchar: minor cleanup
  zephyr-kernel-test-all: implement clean
  zephyrtest.bbclass: refactor
  qemu-*.conf: support for qemuboot
  zephyr-qemuboot.bbclass

 classes/zephyr-qemuboot.bbclass                    | 39 ++++++++++++++++++++++
 classes/zephyrtest.bbclass                         | 10 +++---
 conf/machine/qemu-cortex-m3.conf                   |  8 +++--
 conf/machine/qemu-nios2.conf                       |  7 ++--
 conf/machine/qemu-x86.conf                         |  6 +++-
 .../zephyr-kernel/zephyr-kernel-common.inc         |  7 +++-
 .../zephyr-kernel/zephyr-kernel-test-all.bb        |  1 +
 recipes-kernel/zephyr-kernel/zephyr-kernel.inc     |  3 ++
 .../zephyr-kernel/zephyr-philosophers.bb           |  5 ++-
 .../zephyr-getchar/zephyr-getchar_git.bb           |  3 +-
 10 files changed, 72 insertions(+), 17 deletions(-)
 create mode 100644 classes/zephyr-qemuboot.bbclass

-- 
2.7.4


