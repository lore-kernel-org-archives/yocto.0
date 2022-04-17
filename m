Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CB1AC63716
	for <webhook@archiver.kernel.org>; Mon, 18 Apr 2022 14:26:00 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web12.26852.1650184950319524154
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Apr 2022 01:42:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MtZctnjr;
 spf=pass (domain: gmail.com, ip: 209.85.128.50,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id
 o20-20020a05600c511400b0038ebbbb2ad8so7314925wms.0
        for <yocto@lists.yoctoproject.org>;
 Sun, 17 Apr 2022 01:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KasWJtLkjyVbfNzXCuHpkqBDIbQhpxuSvNkBNxkvgFQ=;
        b=MtZctnjrRY2tyQhWfjl2rlSq8NGP/kY5Rfzv1TC7mjtBgw38z/3jnU0SszbnFWeiej
         3VF3z+aw4ehsBg0cAPEG3AfJu6keoOVfQ4gmE6Pni82+3ksSOTdvGqKM35BHnRVf/usi
         1LXmpDH04dTNOiAXaEl8BRQ+w6HDBoB+OwQwSodSXS7dHCi5VXh2cjHrAAkq715TvKnv
         xqptaHN9uujvaCeQc+Hz38ryE25DBNOy7S1GtT6hGSfReruZaFHKFEbrdjU+oo3n3UKW
         xCISBERmQQn3KblyFd9r/I+mFayUnp2VYip/ZtnNXtLF5WRSQDGErEl0UO0gVUHOxP78
         WY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KasWJtLkjyVbfNzXCuHpkqBDIbQhpxuSvNkBNxkvgFQ=;
        b=jEcniNUpjwfpk11cXv8+0oDReG9y6amdIJhV5z0LTFJebM9QwawLkvzH/fqBM2HmEg
         vjyYJ9t6U//UaArLO1/g4yyU/4UCGTCeA2ZXPwPkf1qkms9hcWL+wKf6QyfdXKM1TYIg
         M/15ynDT5F26LNWvKqcsuVVFrnU9NYPYVilMWeUNsgL1ai7KexncwEiXmIdcM2EsDSZa
         urbEDWD5NpjL/P00OFHYwBx8JBt8ta8JN8mJ3BvmfnlAUHylOYVK2IpFVp28z4lZm2WU
         yACkgOU9bejbyJZni6yOMvbX4C8RE/4vEIWBK6nKip78EVGVTDRu0Sf+FaTcRT5jtaGj
         JE5Q==
X-Gm-Message-State: AOAM530vUZpcVCNf1xGg+KiT0MvT7GoNGJnrxUAwVVhyRlE8G4WY8Ne4
	L5XVSeb7UcwIml3m4esO6CZou9J6zF7wSg==
X-Google-Smtp-Source: 
 ABdhPJxpz/3OdPGvAmBkOBGzPUuWdFuNKxLymn33kLDZyFvt/qxg4V996Z0yRjyqvtMrs1gqfHqHYg==
X-Received: by 2002:a7b:c347:0:b0:37e:68e6:d85c with SMTP id
 l7-20020a7bc347000000b0037e68e6d85cmr10851020wmj.176.1650184948221;
        Sun, 17 Apr 2022 01:42:28 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.141])
        by smtp.gmail.com with ESMTPSA id
 bi26-20020a05600c3d9a00b0038ed39dbf00sm9603856wmb.0.2022.04.17.01.42.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Apr 2022 01:42:27 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH yocto-autobuilder-helper v4] Add a banner on the old
 documentation docs
Date: Sun, 17 Apr 2022 09:40:13 +0100
Message-Id: <20220417084012.19517-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Apr 2022 14:26:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56791

Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
---
 trial.py      | 32 +++++++++++++++++++++++++++
 trialstyle.py | 61 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 93 insertions(+)
 create mode 100644 trial.py
 create mode 100644 trialstyle.py

diff --git a/trial.py b/trial.py
new file mode 100644
index 0000000..c85b16c
--- /dev/null
+++ b/trial.py
@@ -0,0 +1,32 @@
+#!usr/bin/env python3
+#
+# SPDX-License-Identifier: GPL-2.0-only
+#
+#Author: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
+#
+#
+# function to append to the content of a html file below the body tag
+#
+#
+import os
+html_content = '''
+<div id="outdated-warning">This document is outdated, you should select the <a href="https://docs.yoctoproject.org/">latest release version</a> in this series.</div>
+
+'''
+
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
+loop_through_html_directories('.')
diff --git a/trialstyle.py b/trialstyle.py
new file mode 100644
index 0000000..a75721a
--- /dev/null
+++ b/trialstyle.py
@@ -0,0 +1,61 @@
+#!usr/bin/env python3
+#
+# SPDX-License-Identifier: GPL-2.0-only
+#
+#Author: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
+#
+#
+# function to append to the content of a css file below the body class
+#
+#
+import os
+
+
+content = '''
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
+.book{
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
+
+
+def loop_through_html_directories(dir):
+    for dirpath, dirnames, filenames in os.walk(dir):
+    # loop through all files in the directory
+        for filename in filenames:
+            # check if the file is an html file
+            if filename.endswith('style.css'):
+                # open the html file in read mode
+                with open(os.path.join(dirpath, filename), 'r', encoding="ISO-8859-1") as f:
+                    # read the content of the html file
+                   css_content = f.read()
+                # open the html file in write mode
+                with open(os.path.join(dirpath, filename), 'w') as f:
+                    # write the content of the html file
+                    f.write(css_content.replace(css_content[css_content.find('body {'):css_content.find('}'[0])], 'body {' + content ))
+loop_through_html_directories('.')
-- 
2.25.1


