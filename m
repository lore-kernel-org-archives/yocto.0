Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.17032.1625864199672230320
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Jul 2021 13:56:39 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: sakib.sajal@windriver.com)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 169KudrQ019116
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 9 Jul 2021 13:56:39 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 9 Jul 2021 13:56:38 -0700
Received: from localhost.localdomain (128.224.72.142) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.10 via Frontend Transport; Fri, 9 Jul 2021 13:56:37 -0700
From: sakib.sajal@windriver.com
To: <yocto@lists.yoctoproject.org>
Subject: [PATCH yocto-autobuilder-helper 4/4] scripts/generate-testresult-index.py: update index to list host data
Date: Fri, 9 Jul 2021 16:56:09 -0400
Message-ID: <20210709205609.233487-4-sakib.sajal@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210709205609.233487-1-sakib.sajal@windriver.com>
References: <20210709205609.233487-1-sakib.sajal@windriver.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Host data is collected on failure by default. List the collected files
in the index.

Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
---
 scripts/generate-testresult-index.py | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/scripts/generate-testresult-index.py b/scripts/generate-testresult-index.py
index d85d606..5c33778 100755
--- a/scripts/generate-testresult-index.py
+++ b/scripts/generate-testresult-index.py
@@ -152,13 +152,15 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
         buildhistory.append((reldir + "testresults/qemuarm/buildhistory.txt", "qemuarm"))
 
     hd = []
-    counter = 0
-    # do we really need the loop?
-    for p in glob.glob(buildpath + "/*/*/host_stats*top_summary.txt"):
+    for p in glob.glob(buildpath + "/*/*/host_stats*summary.txt"):
         n_split = p.split(build)
         res = reldir[0:-1] + n_split[1]
-        hd.append((res, str(counter)))
-        counter += 1
+        n = os.path.basename(p).split("host_stats_")[-1]
+        if "failure" in n:
+            n = n.split("_summary.txt")[0]
+        elif "top" in n:
+            n = n.split("_top_summary.txt")[0]
+        hd.append((res, n))
 
 
     branch = get_build_branch(buildpath)
-- 
2.25.1

