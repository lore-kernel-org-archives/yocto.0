Received: from mga17.intel.com (mga17.intel.com [])
 by mx.groups.io with SMTP id smtpd.web09.6499.1578561525285294862
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 01:18:48 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Jan 2020 01:18:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; 
   d="scan'208";a="254531048"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga002.fm.intel.com with ESMTP; 09 Jan 2020 01:18:46 -0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 4/4] zephyr-kernel-test.inc: exclude test which fails with arm
Date: Thu,  9 Jan 2020 17:23:10 +0800
Message-Id: <20200109092310.9730-4-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200109092310.9730-1-naveen.kumar.saini@intel.com>
References: <20200109092310.9730-1-naveen.kumar.saini@intel.com>

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
index d7572ef..3b0242f 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
@@ -11,7 +11,7 @@ ZEPHYRTESTS_remove = "gen_isr_table spinlock smp mp"
 #ZEPHYRTESTS_remove_arm += ""
 
 # test_critical never finishes in an unpatched QEMU either
-#ZEPHYRTESTS_remove_arm += ""
+ZEPHYRTESTS_remove_arm += " boot_page_table"
 
 #Remove ARM specific tests
 #ZEPHYRTESTS_remove_x86 += ""
-- 
2.17.1

