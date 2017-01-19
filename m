Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 729FDE00A64; Thu, 19 Jan 2017 10:03:53 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1F98E00A26
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 10:03:48 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 19 Jan 2017 10:03:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,254,1477983600"; d="scan'208";a="1084972760"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga001.jf.intel.com with ESMTP; 19 Jan 2017 10:03:42 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 09:59:36 -0800
Message-Id: <1484848779-10836-3-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484848779-10836-1-git-send-email-juro.bystricky@intel.com>
References: <1484848779-10836-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][PATCH 2/5] qemu-x86.conf: New MACHINE
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
X-List-Received-Date: Thu, 19 Jan 2017 18:03:53 -0000

MACHINE definition for Zephyr BOARD qemu_x86

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 conf/machine/qemu-x86.conf | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 conf/machine/qemu-x86.conf

diff --git a/conf/machine/qemu-x86.conf b/conf/machine/qemu-x86.conf
new file mode 100644
index 0000000..0d595a1
--- /dev/null
+++ b/conf/machine/qemu-x86.conf
@@ -0,0 +1,11 @@
+#@TYPE: Machine
+#@NAME: qemu-x86
+#@DESCRIPTION: Machine for Zephyr BOARD qemu_x86
+
+require conf/machine/include/qemu.inc
+require conf/machine/include/tune-i586.inc
+
+# For runqemu (TBD)
+QB_SYSTEM_NAME = "qemu-system-i386"
+QB_MACHINE = "-machine pc-0.14"
+QB_OPT_APPEND = "-nographic -display none -clock dynticks -no-acpi -balloon none"
-- 
2.7.4


