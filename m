Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E324EC433F5
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 12:34:13 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web12.3536.1652358850153841666
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 05:34:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OKvVOy/2;
 spf=pass (domain: gmail.com, ip: 209.85.221.42,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-wr1-f42.google.com with SMTP id f2so46190wrc.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 05:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FHK3q7SU8J/fx4rak+WETGEVxCNEvK+h48mNg923rVE=;
        b=OKvVOy/2rkAWxqJM2t/GZaBBiFUTY7/4zDFTZsDu2G5U4vfclc3zdJtaA9HyamzwQf
         4GsZnUULmUAyk7Rn8At/k2WM7WIqxpPQjKjFCM+fIpWz3oZsFM+Gk1ZBdxShOq/x8FAB
         x7XMt6GOf/CqV4mhz0AtG5AHFGvMPZtaisP0tIbCF41cw3P5JaHgRNUduuM+0QnD/qsJ
         BAuNtcB01dpgf4AAA80QVgv2EASKG47Kx+ox4H3Q+65Amq0eS6CF9JYoHUbJDHMP2ctG
         rkcJqd4SbZEitx0GJbB3+EEerHaffkANv6TJqJN1EZwbwkgbeH8ev54MKpC6L/LvHv8c
         kP9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FHK3q7SU8J/fx4rak+WETGEVxCNEvK+h48mNg923rVE=;
        b=FEwdBwasxXTU4q54lROd7ti9Axn3LhW872gO4oMm+vvODpSanaAYjYPS/Po3J76lTs
         vnJ+x2HOsnktlDZXV1MakCsT4wJhKJyXVaSkZYFZUtP4rkXxTHsLfsWSSxSn4zRTNJeA
         om8jZGDB4m66/W2p0epftCUNxvCaM6ECOyON0zPlRyWOWlkTnh/NAdoWxDeHS4rkZ1zn
         4DxU90u4WasyhyzbpLkziP5u/aZrvv07a+0pCvWNTwxsSwKp08g4TBIaq3F3jjdB76Aj
         qjT0rPlVMyazae8UrDaYHHTtSCfuIVTQEFgI6yfYtazVzIFxBXQyrc7KhIQhblRGgj8w
         pYBg==
X-Gm-Message-State: AOAM533CE8guhrUPoUuRhA4jJLTc/fvlh4ZbDMwsMwfI9SkT6ev3HHDb
	Gk/iKX0B4FIsnBaQw4L32kY9fK3zDgI=
X-Google-Smtp-Source: 
 ABdhPJwNTfNofp7bNu/EeOlRvymkbs0ouCvD2qOS2dDu5l4G8gdyPfpiH9UFyJmJwe+24TyR4Pkt7g==
X-Received: by 2002:a5d:54c4:0:b0:20a:d2ea:1f7f with SMTP id
 x4-20020a5d54c4000000b0020ad2ea1f7fmr26730582wrv.306.1652358848191;
        Thu, 12 May 2022 05:34:08 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.151])
        by smtp.gmail.com with ESMTPSA id
 n7-20020a1c7207000000b00394975e14f4sm2585670wmc.8.2022.05.12.05.34.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 05:34:07 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH yocto-autobuilder-helper v16] Add a banner on the old
 documentation docs.
Date: Thu, 12 May 2022 13:33:27 +0100
Message-Id: <20220512123326.29424-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 12:34:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57069

Script to add banners to the old docs and outdated dunfell docs

Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
---
 scripts/docs_add_banner.py | 84 ++++++++++++++++++++++++++++++++++++++
 scripts/run-docs-build     |  2 +
 2 files changed, 86 insertions(+)
 create mode 100755 scripts/docs_add_banner.py

diff --git a/scripts/docs_add_banner.py b/scripts/docs_add_banner.py
new file mode 100755
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
index ecc5332..dce8f1f 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -37,6 +37,8 @@ cd $outputdir
 echo Extracing old content from archive
 tar -xJf $docbookarchive
 
+$scriptdir/docs_add_banner.py
+
 cd $bbdocs
 mkdir $outputdir/bitbake
 
-- 
2.25.1


