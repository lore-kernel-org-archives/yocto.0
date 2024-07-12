Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84B2EC3DA45
	for <webhook@archiver.kernel.org>; Fri, 12 Jul 2024 16:14:13 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.11780.1720800848023491625
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jul 2024 09:14:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UkNOvBLx;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4267300145eso17318135e9.3
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jul 2024 09:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1720800846; x=1721405646; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=X4OORO1gR5zxD5psujOuiVLRlJ1oiNNgKi2eqhvIxE0=;
        b=UkNOvBLxDEdkCeX8Dv9uVv0YTYpnNeMWfWb3QFVZA6CYy0d67OBI1v3/wGFQUzZpWS
         8DZ8JiXVLazPSM7HwaUu4zTjq1uu6U7Xosoam+rQCvA41+Xvdz4czkCOb1fPvwvsSwLq
         kZqx2P8ab1Fq7Y+IWOVLI0BYBWCSWvKX2hKUI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720800846; x=1721405646;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X4OORO1gR5zxD5psujOuiVLRlJ1oiNNgKi2eqhvIxE0=;
        b=ccd3Mofu9fyRjjzCiMo3Pmo3ve+lsnd4E15kNiv5zpVzmCyzIsqvmfu9Keu1FYiJNp
         SO/7ErNreIv9F3CdN7CW9xDH3mBrzEPUsF7wfQsrhA5bvccwPHx055ifRvBQ2M2pnMX6
         f2kD9A0FTnxw1otILfXQI7SycT/A2EFvIlvDsYl4ZCKEfQCzkRccfSPiFpS1QX3W8ONM
         MN8b7pv9TtUmyE9LgEhhQdGzHq66NCP4hU1Ev9bw9OO1iW85SIjDFJDnyYyuybmcw27j
         aKnTJZNtl936BVOJ55iQ6TIksTJW8Nm00dncJLUjawIhthYdbmMYePYPXL3i3IQqHz8u
         PC7w==
X-Gm-Message-State: AOJu0YyIRT7LzgxhxWWX6XYNM5K6f5y6iI4TI3OCJbjjo9QUiHUMnHgZ
	HF20JsXv2Xq0nho8R2WIHvZSkzHCui0T/oWWJ2IbMSCqbx33FWV43CIhkZyv58nFJwJ2+xnEq3n
	2
X-Google-Smtp-Source: AGHT+IHfh7NicacHrkkj1D5U4xJXEJ9ikpv1v16TRUe8joaMLYG0YIdKCdNfCvd5euJdY+BbS+4TeA==
X-Received: by 2002:a05:600c:4930:b0:426:5269:982c with SMTP id 5b1f17b1804b1-426707f8939mr89856075e9.28.1720800845881;
        Fri, 12 Jul 2024 09:14:05 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:c138:9d7a:7e79:ba70])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4279f268175sm27542685e9.19.2024.07.12.09.14.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jul 2024 09:14:05 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] scripts: Split ptest log extraction to separate script
Date: Fri, 12 Jul 2024 17:14:04 +0100
Message-ID: <20240712161404.1663344-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Jul 2024 16:14:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63481

The ptest extraction should really happen separately to the index generation,
move it to do so.

Add code to only consider directories changed in the last 7 days to make
the script faster.

Add an indexing target to config.json to trigger the script.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 config.json                          |  6 +++
 scripts/generate-ptest-logs.py       | 78 ++++++++++++++++++++++++++++
 scripts/generate-testresult-index.py | 14 -----
 3 files changed, 84 insertions(+), 14 deletions(-)
 create mode 100755 scripts/generate-ptest-logs.py

diff --git a/config.json b/config.json
index 6907f26..07bbd8e 100644
--- a/config.json
+++ b/config.json
@@ -1343,6 +1343,12 @@
                 "EXTRACMDS": [ "${SCRIPTSDIR}/run-abint ${HELPERRESULTSDIR}/../../abint/"]
             }
         },
+        "indexing" : {
+            "step1" : {
+                "shortname" : "Extract ptest logs",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/generate-ptest-logs.py /srv/autobuilder/autobuilder.yocto.io/pub/non-release/"]
+            }
+        },
         "meta-mingw" : {
             "NEEDREPOS" : ["poky", "meta-mingw"],
             "MACHINE" : "qemux86-64",
diff --git a/scripts/generate-ptest-logs.py b/scripts/generate-ptest-logs.py
new file mode 100755
index 0000000..9565f2f
--- /dev/null
+++ b/scripts/generate-ptest-logs.py
@@ -0,0 +1,78 @@
+#!/usr/bin/env python3
+#
+# Copyright Linux Foundation, Richard Purdie
+#
+# SPDX-License-Identifier: GPL-2.0-only
+#
+
+import argparse
+import os
+import glob
+import re
+import time
+import subprocess
+
+def parse_args(argv=None):
+    """Parse command line arguments"""
+    parser = argparse.ArgumentParser(
+            description="Generate separate ptest logs from any testresults.json files",
+            formatter_class=argparse.ArgumentDefaultsHelpFormatter)
+
+    parser.add_argument('path', help='path to directory to index')
+
+    return parser.parse_args(argv)
+
+args = parse_args()
+path = os.path.abspath(args.path)
+
+# Pad so 20190601-1 becomes 20190601-000001 and sorts correctly
+def keygen(k):
+    m = re.match(r"(\d+)-(\d+)", k)
+    if m:
+        k1, k2 = m.groups()
+        return k1 + "-" + k2.rjust(6, '0')
+    else:
+        return k
+
+current_time = time.time()
+
+# number of seconds in 7 days
+days = 7 * 24 * 60 * 60
+
+for build in sorted(os.listdir(path), key=keygen, reverse=True):
+    buildpath = os.path.join(path, build, "testresults")
+    if not os.path.exists(buildpath):
+        # No test results
+        continue
+    reldir = "./" + build + "/"
+    modified_time = os.stat(buildpath).st_mtime
+
+    # Only consider things in the last X days
+    if (modified_time < (current_time - days):
+        continue
+
+    btype = "other"
+    files = os.listdir(buildpath)
+    if os.path.exists(buildpath + "/a-full-posttrigger") or \
+            os.path.exists(buildpath + "/a-full"):
+        btype = "full"
+    elif os.path.exists(buildpath + "/a-quick-posttrigger") or \
+            os.path.exists(buildpath + "/a-quick"):
+        btype = "quick"
+    elif len(files) == 1:
+        btype = files[0]
+
+    # Ensure we have saved out log data for ptest runs to aid debugging
+    if "ptest" in btype or btype in ["full", "quick"]:
+        for root, dirs, files in os.walk(buildpath):
+            for name in dirs:
+                if "ptest" in name:
+                    f = os.path.join(root, name)
+                    logs = glob.glob(f + "/*.log")
+                    if logs:
+                        continue
+                    subprocess.check_call(["resulttool", "log", f, "--dump-ptest", f])
+                    # Ensure we don't rerun every time with a dummy log
+                    with open(f + "/resulttool-done.log", "a+") as tf:
+                        tf.write("\n")
+
diff --git a/scripts/generate-testresult-index.py b/scripts/generate-testresult-index.py
index 568154d..d6d0a8f 100755
--- a/scripts/generate-testresult-index.py
+++ b/scripts/generate-testresult-index.py
@@ -145,20 +145,6 @@ for build in sorted(os.listdir(path), key=keygen, reverse=True):
 
     entries.append(entry)
 
-    # Also ensure we have saved out log data for ptest runs to aid debugging
-    if "ptest" in btype or btype in ["full", "quick"]:
-        for root, dirs, files in os.walk(buildpath):
-            for name in dirs:
-                if "ptest" in name:
-                    f = os.path.join(root, name)
-                    logs = glob.glob(f + "/*.log")
-                    if logs:
-                        continue
-                    subprocess.check_call(["resulttool", "log", f, "--dump-ptest", f])
-                    # Ensure we don't rerun every time with a dummy log
-                    with open(f + "/resulttool-done.log", "a+") as tf:
-                        tf.write("\n")
-
 with open("./index-table.html") as file_:
     t = Template(file_.read())
 

