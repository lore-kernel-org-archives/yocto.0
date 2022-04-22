Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500DEC47085
	for <webhook@archiver.kernel.org>; Fri, 22 Apr 2022 16:52:00 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web09.9509.1650638972571152032
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Apr 2022 07:49:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=aNHoiZ1e;
 spf=pass (domain: gmail.com, ip: 209.85.160.182,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-qt1-f182.google.com with SMTP id hf18so5660257qtb.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 22 Apr 2022 07:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9KIAvNpW16wv2qbcYb+GQt+t0KmOx3tRtURuogtCKeQ=;
        b=aNHoiZ1euHA7RWfBfiFA69l6+1SYYbA2WpApZaijvOy0hM6zzwn+VfruIE1+EFnIkI
         cKzwUD/bNc/o1wgoiEM/LiENkqkEJrZlcD/p6tcurJdxoNnNaJUL8c6zCMzySZdtGmvu
         GizMFpv+jE88LF8u9DO6Ujh1JHk/5UZqjwohrIqgB23GjpR1ytufMQgpWWY+UHkXwYKY
         JUaqzuF7XyvmWX/yhMt6WiXbqiJJhOVibqlezO4A/ZDaBkzCs57TEoOPw7W6KO9KQf4P
         8JmuyOl7ZdIej7cbJsNw5TArOCVtn9UupiYNn69nMHdMSkoYJQgrrn5kkE7WEE818Oo3
         SPOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9KIAvNpW16wv2qbcYb+GQt+t0KmOx3tRtURuogtCKeQ=;
        b=ax6I6Vy7e3tQhJeT1VfHjvK+a4d6LBX8bcMdiojIaK1efzKPLRV1IVo171CnZLQS1O
         iT7OzC8PVDirmgSXoBAJmsG4H9V4FKYiohTCS/7JnjuIml8srCFusIJ6V2YsqqdOn1Xq
         Yz4mguvFv63eEZuHMD9hFiw9l9SUCGBruBFHN0XnxYUYIUM9NthhSDdYoW4nhrZoHPi6
         ofvuA+2iz1nLtZulQsltXQiemz8c4/qDRoyIKkdxNlV9AhyVWkJcG9ym8H2nqIzU1XOI
         RDNJ+54TeWpXspOhH7R+226Qk5teg1V768LgbpfBzvrB2ydDmMf1VkmtO1HShEw8jXtT
         4tkg==
X-Gm-Message-State: AOAM532gafoUBVl98ctsRTgpZwiWtfIdwAG/skZEd5D6CJdWwrxLeHhD
	6K6FPsSM/pxI1qVO8WtQazz93FvvyovwwA==
X-Google-Smtp-Source: 
 ABdhPJyD2X6Z3m3zzaiuKdUH6LAfvJ6fyC90Nr88Kyv0Hi4bVP7j6km8aHYwopUN5VhRbpG6LeN6uw==
X-Received: by 2002:ac8:5953:0:b0:2f2:5fc:9df9 with SMTP id
 19-20020ac85953000000b002f205fc9df9mr3450185qtz.412.1650638971550;
        Fri, 22 Apr 2022 07:49:31 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.151])
        by smtp.gmail.com with ESMTPSA id
 j17-20020ac85f91000000b002f358baed71sm1126813qta.69.2022.04.22.07.49.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 07:49:31 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH yocto-autobuilder-helper v7] Add a banner on the old
 documentation docs.
Date: Fri, 22 Apr 2022 15:46:19 +0100
Message-Id: <20220422144618.62193-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Apr 2022 16:52:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56846

Also added a command in the run-docs-build file to run the python script once  in the extracted tarball directory.

Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
---
 docs_fix_all_html_css.py | 79 ++++++++++++++++++++++++++++++++++++++++
 run-docs-build           |  2 +
 2 files changed, 81 insertions(+)
 create mode 100755 docs_fix_all_html_css.py

diff --git a/docs_fix_all_html_css.py b/docs_fix_all_html_css.py
new file mode 100755
index 0000000..7693b04
--- /dev/null
+++ b/docs_fix_all_html_css.py
@@ -0,0 +1,79 @@
+#!/usr/bin/env python3
+#
+# SPDX-License-Identifier: GPL-2.0-only
+#
+#Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
+#
+#
+# function to append to the content of a html file below the body tag
+#
+#
+import os
+
+
+html_content = '''
+<div id="outdated-warning">This document is outdated, you should select the <a href="https://docs.yoctoproject.org/">latest release version</a> in this series.</div>
+<div xml:lang="en" class="body" lang="en">
+'''
+last_div = '''
+</div>
+
+'''
+
+css_replacement_content = '''
+ 
+  font-family: Verdana, Sans, sans-serif;
+
+  /*min-width: 640px;*/
+  width: 100%;
+  margin:  0;
+  padding: 0;
+  color: #333;
+  overflow-x: hidden;
+  }
+ 
+ /*added books too*/
+.body{
+margin:  0 auto;
+min-width: 640px;
+padding: 0 5em 5em 5em;
+}
+/* added the id below to make the banner show and be fixed*/
+#outdated-warning{
+text-align: center;
+background-color: rgb(255, 186, 186); 
+color: rgb(106, 14, 14); 
+padding: 0.5em 0; 
+width: 100%;
+position: fixed;
+top: 0;
+
+
+'''
+
+def loop_through_html_directories(dir):
+    for dirpath, dirnames, filenames in os.walk(dir):
+    # loop through all files in the directory
+        for filename in filenames:
+            # check if the file is an html file
+            if filename.endswith('.html'):
+                # open the html file in read mode
+                with open(os.path.join(dirpath, filename), 'r', encoding="ISO-8859-1") as f:
+                    # read the content of the html file
+                    current_content = f.read()
+                # open the html file in write mode
+                with open(os.path.join(dirpath, filename), 'w') as f:
+                    # write the content of the html file
+                    f.write(current_content.replace('<body>', '<body>' + html_content))
+                    f.write(current_content.replace('</body>', last_div + '</body>'))
+            if filename.endswith('.css'):
+                # open the css file in read mode
+                with open(os.path.join(dirpath, filename), 'r', encoding="ISO-8859-1") as f:
+                    # read the content of the css file
+                   css_content = f.read()
+                # open the css file in write mode
+                with open(os.path.join(dirpath, filename), 'w') as f:
+                    # write the content of the css file
+                    f.write(css_content.replace(css_content[css_content.find('body {'):css_content.find('}'[0])], 'body {' + css_replacement_content ))
+loop_through_html_directories('.')
+
diff --git a/run-docs-build b/run-docs-build
index ecc5332..307ac19 100755
--- a/run-docs-build
+++ b/run-docs-build
@@ -37,6 +37,8 @@ cd $outputdir
 echo Extracing old content from archive
 tar -xJf $docbookarchive
 
+$scriptdir/docs_fix_all_html_css.py
+
 cd $bbdocs
 mkdir $outputdir/bitbake
 
-- 
2.25.1


