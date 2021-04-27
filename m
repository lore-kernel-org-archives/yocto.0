Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web09.2966.1619558793105437852
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Apr 2021 14:26:33 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: sakib.sajal@windriver.com)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 13RLQVQn018599
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Tue, 27 Apr 2021 14:26:31 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 27 Apr 2021 14:26:31 -0700
Received: from localhost.localdomain (128.224.72.87) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.4 via Frontend Transport; Tue, 27 Apr 2021 14:26:30 -0700
From: sakib.sajal@windriver.com
To: <yocto@lists.yoctoproject.org>
Subject: [PATCH yocto-autobuilder-helper] config.json: update variable for change in buildstats.bbclass
Date: Tue, 27 Apr 2021 17:26:26 -0400
Message-ID: <20210427212626.176702-1-sakib.sajal@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index fc83012..f82664c 100644
--- a/config.json
+++ b/config.json
@@ -59,7 +59,7 @@
             "RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'",
             "BB_HEARTBEAT_EVENT = '60'",
             "BB_LOG_HOST_STAT_ON_INTERVAL = '1'",
-            "BB_LOG_HOST_STAT_CMDS = 'oe-time-dd-test.sh 100'"
+            "BB_LOG_HOST_STAT_CMDS_INTERVAL = 'oe-time-dd-test.sh 100'"
         ]
     },
     "templates" : {
-- 
2.25.1

