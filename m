Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.101.1618333345400679092
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 10:02:25 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: sakib.sajal@windriver.com)
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 13DH2P1l017211
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Tue, 13 Apr 2021 10:02:25 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 13 Apr 2021 10:02:24 -0700
Received: from localhost.localdomain (128.224.73.198) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2106.2 via Frontend Transport; Tue, 13 Apr 2021 10:02:24 -0700
From: sakib.sajal@windriver.com
To: <yocto@lists.yoctoproject.org>
Subject: [PATCH yocto-autobuilder-helper 4/4] generate-testresult-index.py: publish host data collected by collect-data template
Date: Tue, 13 Apr 2021 13:02:10 -0400
Message-ID: <20210413170210.72845-4-sakib.sajal@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210413170210.72845-1-sakib.sajal@windriver.com>
References: <20210413170210.72845-1-sakib.sajal@windriver.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Add a column "Host Data" to publish the host data collected.

Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
---
 scripts/generate-testresult-index.py | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/scripts/generate-testresult-index.py b/scripts/generate-testresult-index.py
index d9d577e..7fdc17c 100755
--- a/scripts/generate-testresult-index.py
+++ b/scripts/generate-testresult-index.py
@@ -33,6 +33,7 @@ index_templpate = """
   <th>Performance Reports</th>
   <th>ptest Logs</th>
   <th>Buildhistory</th>
+  <th>Host Data</th>
 </tr>
 </thead>
 <tdata>
@@ -57,6 +58,11 @@ index_templpate = """
      <a href="{{bh[0]}}">{{bh[1]}}</a>
    {% endfor %}
    </td>
+   <td>
+   {% for hd in entry[8] %}
+     <a href="{{hd[0]}}">{{hd[1]}}</a>
+   {% endfor %}
+   </td>
 </tr>
 {% endfor %}
 </tdata>
@@ -145,9 +151,19 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
     if os.path.exists(buildpath + "/qemuarm/buildhistory.txt"):
         buildhistory.append((reldir + "testresults/qemuarm/buildhistory.txt", "qemuarm"))
 
+    hd = []
+    counter = 0
+    # do we really need the loop?
+    for p in glob.glob(buildpath + "/*/*/host_stats*top.txt"):
+        n_split = p.split(build)
+        res = reldir[0:-1] + n_split[1]
+        hd.append((res, str(counter)))
+        counter += 1
+
+
     branch = get_build_branch(buildpath)
 
-    entries.append((build, reldir, btype, testreport, branch, buildhistory, perfreports, ptestlogs))
+    entries.append((build, reldir, btype, testreport, branch, buildhistory, perfreports, ptestlogs, hd))
 
     # Also ensure we have saved out log data for ptest runs to aid debugging
     if "ptest" in btype or btype in ["full", "quick"]:
-- 
2.25.1

