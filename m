Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF0F2E0049D; Mon, 23 Jan 2017 16:05:06 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B168EE003DB
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 16:05:04 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga105.fm.intel.com with ESMTP; 23 Jan 2017 16:05:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,276,1477983600"; d="scan'208";a="56403518"
Received: from juro-precision-t5610.jf.intel.com ([10.7.198.149])
	by orsmga005.jf.intel.com with ESMTP; 23 Jan 2017 16:05:03 -0800
From: Juro Bystricky <juro.bystricky@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 23 Jan 2017 16:00:47 -0800
Message-Id: <1485216048-33088-4-git-send-email-juro.bystricky@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1485216048-33088-1-git-send-email-juro.bystricky@intel.com>
References: <1485216048-33088-1-git-send-email-juro.bystricky@intel.com>
Cc: jurobystricky@hotmail.com
Subject: [meta-zephyr][PATCH 3/4] zephyr-kernel-test.inc: exclude tests not suitable for Nios2
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

Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
index ecc183c..2e92ca2 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
@@ -12,6 +12,9 @@ ZEPHYRTESTS_remove_arm += "test_critical"
 #Remove ARM specific tests
 ZEPHYRTESTS_remove_x86 += "test_context test_arm_irq_vector_table"
 
+#Remove tests not intended for Nios2
+ZEPHYRTESTS_remove_nios2 += "test_context test_arm_irq_vector_table test_mem_safe"
+
 # List of all available tests
 ZEPHYRTESTS = " \
     test_arm_irq_vector_table  \
-- 
2.7.4


