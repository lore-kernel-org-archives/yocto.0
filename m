Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3942C433EF
	for <webhook@archiver.kernel.org>; Wed, 11 May 2022 16:19:18 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web11.1505.1652285952692933927
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 May 2022 09:19:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GO/VP96V;
 spf=pass (domain: gmail.com, ip: 209.85.128.50,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id
 m2-20020a1ca302000000b003943bc63f98so1523247wme.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 11 May 2022 09:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w80tnh4R3yt13hw/e3rMheIw4kggjnjnyXr98Q/eK/k=;
        b=GO/VP96Vlc1uESPNAeQmROuO7wfYiEJKEGUb1ENCr1Kv8fiN+0Jnn1CNqw76dbBS4y
         1cBMqZiE5Tw7yMWGgZOzaV8ZPH0vDY+3BYV7u1AOmiZzdAIkbweyOdAH62l8METoNYgE
         KK+oVrDmngfNsGLnk1obPd4Im+YaOE3NDmFVs1tCGHpRDuXJHNaKGyrSmVhbx802W//Q
         0Ug+omwdkhNUxWEf1yrwq+w9t0piKN/pauqcRaR+NZg3+abNh9bdm9Q1UbZTNYYZUv7k
         z7KTv+Y7dY4RtHn69BFMbcuu0HikagB3deiTDuI1S5QiiEsIk+m7oCIeGzC6IJhuFUOa
         WsOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w80tnh4R3yt13hw/e3rMheIw4kggjnjnyXr98Q/eK/k=;
        b=yZX+VfXYB6spqPoLJm114XNMpt+AoCe/z/yLoR5lk7EDLHno9VRO5X6WQF69uQYDgD
         SEyDBE2RFkegYTU9TyrUh4ibYEcY1+XdVr6zcHx3tvfcTjL1fauRQXBjb2/k08yoF9Rr
         hddMz77hvelWWLvFf8K4/bD/RRl2+S0YXuZY3onYP24iwFv63zWdU0O5qQCJtARpiNVY
         taeBL5aD3bRPQWAXT+I9LF+bQ9pdThU3yJrvHs47eyyeVZQKa3Lmrn2UAqw9OYf6UOGo
         n+D7DDGoKg5RkdC5lIg2/TlZ4wqd9zQTDONd6bGdfqVfuhmQMF/OxB97Up3r9jR18u1O
         J1pA==
X-Gm-Message-State: AOAM530zNvBVh8DlXf/Mi433AFvsh9DcPYkw0NUuJgXcRLCxZmF32N1s
	tTAX9mNcknJu/aaG2I872WDgkRhwaT8=
X-Google-Smtp-Source: 
 ABdhPJxxzPqUqlQ7j3jlzWREHsMrKQtkRsRQm/LTWsO4JeDUXF7m5lOsgSyPEvfb38b/A7szwPBpVA==
X-Received: by 2002:a7b:c001:0:b0:394:87bc:ad70 with SMTP id
 c1-20020a7bc001000000b0039487bcad70mr5736345wmb.147.1652285950810;
        Wed, 11 May 2022 09:19:10 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.149])
        by smtp.gmail.com with ESMTPSA id
 e16-20020a5d65d0000000b0020c5253d8d5sm1966719wrw.33.2022.05.11.09.19.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 May 2022 09:19:10 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH yocto-autobuilder-helper v14] Add a banner on the old
 documentation docs. Script to add banners to the old docs and outdated
 dunfell docs
Date: Wed, 11 May 2022 17:18:42 +0100
Message-Id: <20220511161842.26363-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 May 2022 16:19:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57059

Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
---
 scripts/docs_add_banner.py | 84 ++++++++++++++++++++++++++++++++++++++
 scripts/run-docs-build     |  2 +
 2 files changed, 86 insertions(+)
 create mode 100644 scripts/docs_add_banner.py

diff --git a/scripts/docs_add_banner.py b/scripts/docs_add_banner.py
new file mode 100644
index 0000000..0de70d0
--- /dev/null
+++ b/scripts/docs_add_banner.py
@@ -0,0 +1,84 @@
+#!/usr/bin/env python3
+#
+# SPDX-License-Identifier: GPL-2.0-only
+#
+#Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
+#
+#
+# Script to add banners to the old docs and outdated dunfell docs
+#
+#
+
+
+import os
+
+
+
+
+
+html_content_dunfell = '''
+<div id="outdated-warning">This document is outdated, you should select the <a href="https://docs.yoctoproject.org/dunfell">latest release version</a> in this series.</div>
+<div xml:lang="en" class="body" lang="en">
+'''
+html_content = '''
+<div id="outdated-warning">This version of the project is now considered obsolete, please select and use a <a href="https://docs.yoctoproject.org">more recent version</a>.</div>
+<div xml:lang="en" class="body" lang="en">
+'''
+
+# the class body and the last_div are used to make sure any .body property existing in any css file is not overwritten
+last_div = '''
+</div>
+
+'''
+
+css_replacement_content = '''
+ 
+  font-family: Verdana, Sans, sans-serif;
+
+  width: 100%;
+  margin:  0;
+  padding: 0;
+  color: #333;
+  overflow-x: hidden;
+  }
+ 
+.body{
+margin:  0 auto;
+min-width: 640px;
+padding: 0 5em 5em 5em;
+}
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
+def add_banner_old_docs(dir):
+    for root, dirs, filenames in os.walk(dir):
+        
+        if root.startswith('./3.1'):
+            html_replacement = html_content_dunfell
+        else:
+            html_replacement = html_content
+            
+        for filename in filenames:
+            if filename.endswith('.html'):
+                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
+                    current_content = f.read()
+                with open(os.path.join(root, filename), 'w', encoding="ISO-8859-1") as f:
+                    f.write(current_content.replace('<body>', '<body>' + html_replacement))
+                    f.write(current_content.replace('</body>', last_div + '</body>'))
+            if filename.endswith('.css'):
+                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
+                    css_content = f.read()
+                with open(os.path.join(root, filename), 'w', encoding="ISO-8859-1") as f:
+                    f.write(css_content.replace(css_content[css_content.find('body {'):css_content.find('}'[0])], 'body {' + css_replacement_content ))
+
+add_banner_old_docs('.')
diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index ecc5332..307ac19 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -37,6 +37,8 @@ cd $outputdir
 echo Extracing old content from archive
 tar -xJf $docbookarchive
 
+$scriptdir/docs_fix_all_html_css.py
+
 cd $bbdocs
 mkdir $outputdir/bitbake
 
-- 
2.25.1


