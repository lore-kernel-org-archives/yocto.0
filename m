Received: from mga09.intel.com (mga09.intel.com [])
 by mx.groups.io with SMTP id smtpd.web10.6500.1585651694403689486
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2020 03:48:20 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: iIdf3xza3RdPhq+CDmv8/TiU76APkYekIPHzpvtS+BxJTkhcLoEcRv6yYaByShbByykb9IO+fJ
 ZrWbL6+RuJjA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Mar 2020 03:48:17 -0700
IronPort-SDR: DpP4INnCE62tnhCsD/A9Np6Paeqd2Z5sSYlJ1tXmv7lQZBn/HIm2Kt7f4Ww8wxoYfI/EuC+1F8
 5bfkoo0gD2Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,327,1580803200"; 
   d="scan'208";a="252195535"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga006.jf.intel.com with ESMTP; 31 Mar 2020 03:48:16 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 4/5] zephyr-kernel-test.inc: remove 'boot_page_table' kernel test
Date: Tue, 31 Mar 2020 18:54:00 +0800
Message-Id: <20200331105401.23726-4-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200331105401.23726-1-naveen.kumar.saini@intel.com>
References: <20200331105401.23726-1-naveen.kumar.saini@intel.com>

'boot_page_table' moved from kernel tests.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
index d7572ef..65da7e8 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-test.inc
@@ -21,7 +21,6 @@ ZEPHYRTESTS_remove = "gen_isr_table spinlock smp mp"
 
 # List of all available kernel tests
 ZEPHYRTESTS = " \
-    boot_page_table \
     common \
     context \
     critical \
-- 
2.17.1

