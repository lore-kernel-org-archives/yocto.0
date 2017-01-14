Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E120AE0094C; Sat, 14 Jan 2017 11:05:46 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F1ECE0092C
	for <yocto@yoctoproject.org>; Sat, 14 Jan 2017 11:05:39 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP; 14 Jan 2017 11:05:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,229,1477983600"; d="scan'208";a="1083026096"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga001.jf.intel.com with ESMTP; 14 Jan 2017 11:05:38 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Sat, 14 Jan 2017 11:01:49 -0800
Message-Id: <1484420513-18100-4-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484420513-18100-1-git-send-email-juro.bystricky@intel.com>
References: <1484420513-18100-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][PATCH 3/7] meta-zephyr: Select BOARD via MACHINE
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
X-List-Received-Date: Sat, 14 Jan 2017 19:05:46 -0000

The meaning of BOARD in Zephyr environment is equivalent to MACHINE
in Yocto environment.
Specifying MACHINE will implicitly determine cross-compiler toolchain as well.

There is 1:1 correspondence between Zephyr BOARD and Yocto MACHINE so
a lookup table BOARD:MACHINE may be needed in the future, presently all
that is required is to convert "-" to "_". (Dash to undersocre)

This means that in order to support a new Zephyr board, we simply need to
create a corresponding MACHINE.conf file.

[YOCTO#10894]

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 conf/distro/zephyr.conf                               | 2 --
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 3 +++
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/conf/distro/zephyr.conf b/conf/distro/zephyr.conf
index 9f57c9e..4a832db 100644
--- a/conf/distro/zephyr.conf
+++ b/conf/distro/zephyr.conf
@@ -11,5 +11,3 @@ TCLIBCAPPEND = ""
 TEST_TARGET = "QemuTargetZephyr"
 TEST_SUITES = "zephyr"
 
-BOARD_arm ?= "qemu_cortex_m3"
-BOARD_x86 ?= "qemu_x86"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
index 6fe44b5..30c1a5a 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -4,6 +4,9 @@
 # filesystem.
 IMAGE_NO_MANIFEST = "1"
 
+# Zephyr BOARD is basically our MACHINE, except we must use "-" instead of "_"
+BOARD="$(echo ${MACHINE} | tr - _)"
+
 # oe_runmake isn't used because of the make -e causing issues with some
 # make variables.
 MAKE_COMMAND = "make -j V=1 BOARD=${BOARD} CROSS_COMPILE=${CROSS_COMPILE}"
-- 
2.7.4


