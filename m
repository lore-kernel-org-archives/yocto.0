Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.100.1618333343955641120
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 10:02:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: sakib.sajal@windriver.com)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 13DH2NIw017202
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Tue, 13 Apr 2021 10:02:23 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 13 Apr 2021 10:02:23 -0700
Received: from localhost.localdomain (128.224.73.198) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2106.2 via Frontend Transport; Tue, 13 Apr 2021 10:02:22 -0700
From: sakib.sajal@windriver.com
To: <yocto@lists.yoctoproject.org>
Subject: [PATCH yocto-autobuilder-helper 1/4] config.json: add "collect-data" template
Date: Tue, 13 Apr 2021 13:02:07 -0400
Message-ID: <20210413170210.72845-1-sakib.sajal@windriver.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

collect-data template can run arbitrary commands/scripts
on a regular basis and logs the output in a file.

See oe-core for more details:
    edb7098e9e buildstats.bbclass: add functionality to collect build system stats

Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
---
 config.json | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/config.json b/config.json
index 5bfa240..c43d231 100644
--- a/config.json
+++ b/config.json
@@ -87,6 +87,13 @@
                 "SANITYTARGETS" : "core-image-full-cmdline:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do_testimage"
             }
         },
+	"collect-data" : {
+            "extravars" : [
+                "BB_HEARTBEAT_EVENT = '10'",
+                "BB_LOG_HOST_STAT_ON_INTERVAL = '1'",
+                "BB_LOG_HOST_STAT_CMDS = 'oe-time-dd-test.sh 100'"
+            ]
+        },
         "ptest-qemu" : {
             "BUILDINFO" : true,
             "BBTARGETS" : "core-image-sato-ptest",
-- 
2.25.1

