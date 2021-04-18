Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web12.13814.1618764948842022123
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Apr 2021 09:55:48 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: randy.macleod@windriver.com)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 13IGtlcm015186
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Sun, 18 Apr 2021 09:55:47 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Sun, 18 Apr 2021 09:55:46 -0700
Received: from vme.wrs.com (172.25.44.2) by ala-exchng01.corp.ad.wrs.com
 (147.11.82.252) with Microsoft SMTP Server id 15.1.2242.4 via Frontend
 Transport; Sun, 18 Apr 2021 09:55:46 -0700
From: "Randy MacLeod" <randy.macleod@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [PATCH yocto-autobuilder-helper] config.json: measure every 60 seconds
Date: Sun, 18 Apr 2021 12:55:45 -0400
Message-ID: <20210418165545.150523-1-Randy.MacLeod@windriver.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

With the previous interval of 10 seconds, there would be
serveral times when the system was very busy and the
script would not return before the next run was scheduled
resulting in no measurement. In addition, build:
   https://autobuilder.yocto.io/pub/non-release/20210417-13/
produced 17 files with top output with top running 454 times
and that's a bit too much data to analyze for each run. By
decreasing the measurements, we'll find the worse problems
first, fix them and then we can increase the freqency of
measurement if needed.

Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index aad5257..962d8ae 100644
--- a/config.json
+++ b/config.json
@@ -56,7 +56,7 @@
             "BB_DISKMON_DIRS = 'STOPTASKS,${TMPDIR},1G,100K STOPTASKS,${DL_DIR},1G STOPTASKS,${SSTATE_DIR},1G STOPTASKS,/tmp,100M,100K ABORT,${TMPDIR},100M,1K ABORT,${DL_DIR},100M ABORT,${SSTATE_DIR},100M ABORT,/tmp,10M,1K'",
             "BB_HASHSERVE = 'typhoon.yocto.io:8686'",
             "RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'",
-            "BB_HEARTBEAT_EVENT = '10'",
+            "BB_HEARTBEAT_EVENT = '60'",
             "BB_LOG_HOST_STAT_ON_INTERVAL = '1'",
             "BB_LOG_HOST_STAT_CMDS = 'oe-time-dd-test.sh 100'"
         ]
-- 
2.27.0

