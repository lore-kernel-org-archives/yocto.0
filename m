Received: from mail1.wrs.com (mail1.wrs.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web09.16985.1625864196438531944
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Jul 2021 13:56:36 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: sakib.sajal@windriver.com)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 169KuZGN010807
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 9 Jul 2021 13:56:36 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 169KuZgA011419
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 9 Jul 2021 13:56:35 -0700 (PDT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 9 Jul 2021 13:56:35 -0700
Received: from localhost.localdomain (128.224.72.142) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.10 via Frontend Transport; Fri, 9 Jul 2021 13:56:34 -0700
From: sakib.sajal@windriver.com
To: <yocto@lists.yoctoproject.org>
Subject: [PATCH yocto-autobuilder-helper 3/4] summarize_top_output.py: summarize data logged on failure
Date: Fri, 9 Jul 2021 16:56:08 -0400
Message-ID: <20210709205609.233487-3-sakib.sajal@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210709205609.233487-1-sakib.sajal@windriver.com>
References: <20210709205609.233487-1-sakib.sajal@windriver.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
---
 scripts/summarize_top_output.py | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/scripts/summarize_top_output.py b/scripts/summarize_top_output.py
index 50c9b0a..4e96ce9 100755
--- a/scripts/summarize_top_output.py
+++ b/scripts/summarize_top_output.py
@@ -168,9 +168,11 @@ def main():
     target = sys.argv[2]
     host_data_dir = "intermittent_failure_host_data"
     directory = os.path.join(dest, target, host_data_dir)
-    for f in glob.glob(directory + "/*_top.txt"):
-        outputs = list_top_outputs(f)
-        short_summary, summary, kernel_summary, zombie_summary, other_build = summarize_top(outputs, target)
-        write_summary(short_summary, summary, kernel_summary, zombie_summary, other_build, target, f)
+    regs = (directory + "/*_top.txt", directory + "/*_failure_*.txt")
+    for exts in regs:
+        for f in glob.glob(exts):
+            outputs = list_top_outputs(f)
+            short_summary, summary, kernel_summary, zombie_summary, other_build = summarize_top(outputs, target)
+            write_summary(short_summary, summary, kernel_summary, zombie_summary, other_build, target, f)
 
 main()
-- 
2.25.1

