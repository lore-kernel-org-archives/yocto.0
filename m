Received: from heian.cn.fujitsu.com (heian.cn.fujitsu.com [183.91.158.132])
 by mx.groups.io with SMTP id smtpd.web11.32882.1585211617536868157
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Mar 2020 01:33:37 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: cn.fujitsu.com, ip: 183.91.158.132, mailfrom: lixm.fnst@cn.fujitsu.com)
X-IronPort-AV: E=Sophos;i="5.72,307,1580745600"; 
   d="scan'208";a="87363725"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 26 Mar 2020 16:33:32 +0800
Received: from G08CNEXMBPEKD06.g08.fujitsu.local (unknown [10.167.33.206])
	by cn.fujitsu.com (Postfix) with ESMTP id 7733C49DF12A
	for <yocto@lists.yoctoproject.org>; Thu, 26 Mar 2020 16:23:17 +0800 (CST)
Received: from G08CNEXCHPEKD05.g08.fujitsu.local (10.167.33.203) by
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Thu, 26 Mar 2020 16:33:27 +0800
Received: from g08.fujitsu.local (10.167.218.89) by
 G08CNEXCHPEKD05.g08.fujitsu.local (10.167.33.209) with Microsoft SMTP Server
 id 15.0.1497.2 via Frontend Transport; Thu, 26 Mar 2020 16:33:28 +0800
From: "Li, Xiaoming" <lixm.fnst@cn.fujitsu.com>
To: <yocto@lists.yoctoproject.org>
CC: <leimaohui@cn.fujitsu.com>
Subject: [PATCH] Fix the wrongly placed description.
Date: Thu, 26 Mar 2020 09:27:42 -0700
Message-ID: <20200326162742.9258-1-lixm.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-yoursite-MailScanner-ID: 7733C49DF12A.AE9C5
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: lixm.fnst@cn.fujitsu.com
X-Spam-Status: No
Content-Type: text/plain

Signed-off-by: Li Xiaoming <lixm.fnst@cn.fujitsu.com>
---
 classes/fossdriver-host.bbclass | 6 ++----
 classes/fossology-rest.bbclass  | 9 ++++++---
 2 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/classes/fossdriver-host.bbclass b/classes/fossdriver-host.bbclass
index 840d3d3..bbf84e5 100644
--- a/classes/fossdriver-host.bbclass
+++ b/classes/fossdriver-host.bbclass
@@ -9,10 +9,8 @@
 #   http://www.spdx.org
 #
 # Note:
-# 1) Make sure fossology (after 3.5.0)(https://hub.docker.com/r/fossology/fossology/) has beed started on your host
-# 2) spdx files will be output to the path which is defined as[SPDX_DEPLOY_DIR].
-#    By default, SPDX_DEPLOY_DIR is tmp/deploy/
-# 3) Added TOKEN has been set in conf/local.conf
+# 1) Make sure fossdriver has beed installed in your host;
+# 2) By default,spdx files will be output to the path which is defined as [SPDX_DEPLOY_DIR] in conf/local.conf.
 #
 
 inherit spdx-common
diff --git a/classes/fossology-rest.bbclass b/classes/fossology-rest.bbclass
index 87e348a..48e16f3 100644
--- a/classes/fossology-rest.bbclass
+++ b/classes/fossology-rest.bbclass
@@ -9,9 +9,12 @@
 #   http://www.spdx.org
 #
 # Note:
-# 1) Make sure fossdriver has beed installed in your host
-# 2) By default,spdx files will be output to the path which is defined as[SPDX_DEPLOY_DIR] 
-#    in ./meta/conf/spdx-dosocs.conf.
+# 1) Make sure FOSSology (>= 3.5.0)(https://hub.docker.com/r/fossology/fossology/) has beed started on your host;
+# 2) spdx files will be output to the path which is defined as [SPDX_DEPLOY_DIR] in conf/local.conf;
+#    By default, SPDX_DEPLOY_DIR is tmp/deploy/sdpx;
+# 3) Added TOKEN has been set in conf/local.conf.
+#
+
 inherit spdx-common
 FOSSOLOGY_SERVER ?= "http://127.0.0.1:8081/repo"
 
-- 
2.17.1



