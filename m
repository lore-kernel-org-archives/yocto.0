Received: from mail1.wrs.com (mail1.wrs.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web08.17023.1625864182434661941
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Jul 2021 13:56:22 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: sakib.sajal@windriver.com)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 169KuLNw010802
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 9 Jul 2021 13:56:22 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 169KuLc7011416
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 9 Jul 2021 13:56:21 -0700 (PDT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 9 Jul 2021 13:56:20 -0700
Received: from localhost.localdomain (128.224.72.142) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.10 via Frontend Transport; Fri, 9 Jul 2021 13:56:19 -0700
From: sakib.sajal@windriver.com
To: <yocto@lists.yoctoproject.org>
Subject: [PATCH yocto-autobuilder-helper 1/4] config.json: collect data on failure by default
Date: Fri, 9 Jul 2021 16:56:06 -0400
Message-ID: <20210709205609.233487-1-sakib.sajal@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
---
 config.json | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index f54081b..99593c8 100644
--- a/config.json
+++ b/config.json
@@ -61,7 +61,9 @@
             "RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'",
             "BB_HEARTBEAT_EVENT = '60'",
             "BB_LOG_HOST_STAT_ON_INTERVAL = '1'",
-            "BB_LOG_HOST_STAT_CMDS_INTERVAL = 'oe-time-dd-test.sh 100'"
+            "BB_LOG_HOST_STAT_CMDS_INTERVAL = 'oe-time-dd-test.sh -c 100 -t 15'",
+            "BB_LOG_HOST_STAT_ON_FAILURE = '1'",
+            "BB_LOG_HOST_STAT_CMDS_FAILURE = 'oe-time-dd-test.sh -l'"
         ]
     },
     "templates" : {
-- 
2.25.1

