Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3282C433F5
	for <webhook@archiver.kernel.org>; Wed, 11 May 2022 16:14:08 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.1491.1652285644113457720
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 May 2022 09:14:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=aXBEslYA;
 spf=pass (domain: gmail.com, ip: 209.85.128.51,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-wm1-f51.google.com with SMTP id bg25so1510459wmb.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 11 May 2022 09:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w80tnh4R3yt13hw/e3rMheIw4kggjnjnyXr98Q/eK/k=;
        b=aXBEslYAMWaGuROieMTmfLUfK1/DkZwvZO6umzjwDaFFB5lHQHVNGNw2zAIoI0yHDq
         VF3CIQTYOMnJuloO7ZNYDCAAb0gxuQejQp2FonSO15ffUDIH4k+1Bo3ugI6DjygMBpa4
         XMQCES47IjI2Rc+6QF1Y0MLTpZpXtlBEn/AIByCtfnrGKimo2A1C49HZTM9TFI6j0h03
         /iK+KUuHEJeeSaWb7rT+YR4lks3IDu07rZJ+Fk/oZB+qKPThtEvu/WA2cUMdP5Eaq0f+
         sSZCXOieH1IT8VtHKV7xUWN57YYFMpt54ZhYTd8hKU7W6b5/SGfaSzcJcKt+1QItV+mU
         SENA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w80tnh4R3yt13hw/e3rMheIw4kggjnjnyXr98Q/eK/k=;
        b=2HXXvmn0qInWu+CihaNpVpGCzHh4ppanjgmTmPfl9anW67ZMUMh3DQRXb5wg6vgl9G
         UK/3atScSGbQx9D5ELqBhdiueCk/X2H3yspA+kw+GRYLvrcdiY01EXpdlIT+Bhkh4HOP
         SGNXPsBj3wHhokgGbpxamPu0cBVuRfhXt0+k7V7pgf2bp1iQ593Aa7Twqc4fuP1maV3W
         ZzikAe1yjV3soThiFv9ko8YDXFM6k0tIAi00ADUO+Lvjcu8y3HNTAuged7hi290bVgik
         EL0L6Mk1UQL4upqXeTP6NoZevJeDI4Dm6W31Knu6DpHYaAV/ACRgXAKf+h+cKbP9h7wS
         72rw==
X-Gm-Message-State: AOAM530dzzjec7t507YPzRHqTnz+mLVeoHKkW5FOf6Hr8wCGCZl7E36+
	B2ZKN6LPbpmuyU685g7DjIc0wgNGvtA=
X-Google-Smtp-Source: 
 ABdhPJz+S4hNhCojfjpIXC7bRkb1KzPFdZSEy9aa6dqvXiMSyis1Kv00G/zVt34N9C0o6vEpKu9GOQ==
X-Received: by 2002:a05:600c:35c6:b0:394:8568:f38a with SMTP id
 r6-20020a05600c35c600b003948568f38amr5777658wmq.112.1652285642065;
        Wed, 11 May 2022 09:14:02 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.149])
        by smtp.gmail.com with ESMTPSA id
 b1-20020adfc741000000b0020c5253d8cbsm2199883wrh.23.2022.05.11.09.13.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 May 2022 09:14:01 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH yocto-autobuilder-helper v13] Add a banner on the old
 documentation docs. 
Date: Wed, 11 May 2022 17:12:36 +0100
Message-Id: <20220511161235.26172-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 May 2022 16:14:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57057

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


