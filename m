Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 043FDE004D2; Mon, 23 Jan 2017 16:05:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFF27E00480
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 16:05:04 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga105.fm.intel.com with ESMTP; 23 Jan 2017 16:05:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,276,1477983600"; d="scan'208";a="56403515"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga005.jf.intel.com with ESMTP; 23 Jan 2017 16:05:03 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Jan 2017 16:00:46 -0800
Message-Id: <1485216048-33088-3-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1485216048-33088-1-git-send-email-juro.bystricky@intel.com>
References: <1485216048-33088-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][PATCH 2/4] qemuzephyrrunner.py: support for qemu-nios2
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
X-List-Received-Date: Tue, 24 Jan 2017 00:05:07 -0000

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 lib/oeqa/utils/qemuzephyrrunner.py | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/lib/oeqa/utils/qemuzephyrrunner.py b/lib/oeqa/utils/qemuzephyrrunner.py
index 441e0d6..2011434 100644
--- a/lib/oeqa/utils/qemuzephyrrunner.py
+++ b/lib/oeqa/utils/qemuzephyrrunner.py
@@ -74,6 +74,12 @@ class QemuZephyrRunner(QemuRunner):
         elif 'x86' in self.machine:
             qemu_binary = 'qemu-system-i386'
             qemu_machine_args = '-machine type=pc-0.14'
+        elif 'nios2' in self.machine:
+            qemu_binary = 'qemu-system-nios2'
+            qemu_machine_args = '-machine altera_10m50_zephyr'
+        else:
+            bb.error("Unsupported QEMU: %s" % self.machine)
+            return False
 
         self.origchldhandler = signal.getsignal(signal.SIGCHLD)
         signal.signal(signal.SIGCHLD, self.handleSIGCHLD)
-- 
2.7.4


