Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web12.85.1618333344292316794
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 10:02:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: sakib.sajal@windriver.com)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 13DH2NIA017205
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Tue, 13 Apr 2021 10:02:24 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 13 Apr 2021 10:02:23 -0700
Received: from localhost.localdomain (128.224.73.198) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2106.2 via Frontend Transport; Tue, 13 Apr 2021 10:02:23 -0700
From: sakib.sajal@windriver.com
To: <yocto@lists.yoctoproject.org>
Subject: [PATCH yocto-autobuilder-helper 2/4] config.json: collect data by default
Date: Tue, 13 Apr 2021 13:02:08 -0400
Message-ID: <20210413170210.72845-2-sakib.sajal@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210413170210.72845-1-sakib.sajal@windriver.com>
References: <20210413170210.72845-1-sakib.sajal@windriver.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

add the variables required to collect data to "defaults"
so that data is collected on all builds.

Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
---
 config.json | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index c43d231..cd82047 100644
--- a/config.json
+++ b/config.json
@@ -55,7 +55,10 @@
             "SDK_INCLUDE_TOOLCHAIN = '1'",
             "BB_DISKMON_DIRS = 'STOPTASKS,${TMPDIR},1G,100K STOPTASKS,${DL_DIR},1G STOPTASKS,${SSTATE_DIR},1G STOPTASKS,/tmp,100M,100K ABORT,${TMPDIR},100M,1K ABORT,${DL_DIR},100M ABORT,${SSTATE_DIR},100M ABORT,/tmp,10M,1K'",
             "BB_HASHSERVE = 'typhoon.yocto.io:8686'",
-            "RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'"
+            "RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'",
+            "BB_HEARTBEAT_EVENT = '10'",
+            "BB_LOG_HOST_STAT_ON_INTERVAL = '1'",
+            "BB_LOG_HOST_STAT_CMDS = 'oe-time-dd-test.sh 100'"
         ]
     },
     "templates" : {
-- 
2.25.1

