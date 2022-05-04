Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8678BC433EF
	for <webhook@archiver.kernel.org>; Wed,  4 May 2022 11:09:17 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web09.5039.1651662554580792799
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 May 2022 04:09:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=p6UrAlB6;
 spf=pass (domain: gmail.com, ip: 209.85.128.50,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id
 r1-20020a1c2b01000000b00394398c5d51so615071wmr.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 04 May 2022 04:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wHtN8LiFRkkkpOLiHcHhYFGEvq2xWvmfmxUMd5EDy2c=;
        b=p6UrAlB6FGMLlKz58f1R86yQVF5+3xSjcjALyfU+AoqGq2xHTW67aqeBGwbC8/12Qt
         1Dg7r/MtyUld3SLVR4GdllXdKEEgDlnnCXfwxyDMT3H3NwQcZYsLstMg7QDqG+LjTnMH
         indwXZ0mLAVRRcDY0FzX6AL96ZtlQ7zlp+58OLqtfdWlp9kcK33s8Zr7g0HzN/8ZIR8V
         RfUwFpWGkAirMghs3lJbNbiv8nzZS6drDL2HS7/T0OOtibn+aWXYbsSIf3ZS2CHYXW9j
         LCHtLc0krIqwUYbRKuQ8D2lk6T/z50bQ4BPtD2Dly1Hxudb/dLV9YMqsWtkwuo75fZFR
         HWtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wHtN8LiFRkkkpOLiHcHhYFGEvq2xWvmfmxUMd5EDy2c=;
        b=c2+A0tsNuWXTTbWiKHIziL+y4OfTBtrHxXcE4m2e2qUQNl7Ess07TUPBLGCX/Ir6Lp
         5ZOSwoiFAi/g6KOyO2jTGMUBiCr6BNnJdCok5TBlub0A8AqQMrjgBHi86RZLvKNOFWGP
         +Gkltsvfwc4xthot6Pr4jIrxKlYvecMLe7lkO2CRBh89RI9AkvRPo/CPxOpfeP1PpsZM
         79EOZt8KhUF8pUBkTOERZlbjyAWk/XdvNV50D1PcCI90tAK08TkD9xMx/xC3fgrFUrmU
         lmZ9Xwd6oSSdIaalSuGlITc5mX0zLxxgUNx7xblnknAwV9AEXJz3tyJaNOovnYfpez8v
         0+vQ==
X-Gm-Message-State: AOAM531+PJs7k4or/BzIKdXEnURAtj3jz9baE3iRPOlZlq8fiBxH2fac
	+oHtf6xZA2SkXuEIpnTDt9RzTeL4j8QQtg==
X-Google-Smtp-Source: 
 ABdhPJyepiiOWUfGaX56Qd20ANyRO4rqpVS+EueDxzz2Dz3VxhVX/kbmO3R5l4HO8dqiKpURSN+eRQ==
X-Received: by 2002:a1c:2706:0:b0:391:822c:83da with SMTP id
 n6-20020a1c2706000000b00391822c83damr7077379wmn.100.1651662552235;
        Wed, 04 May 2022 04:09:12 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.136])
        by smtp.gmail.com with ESMTPSA id
 y8-20020adfc7c8000000b0020c5253d902sm11520859wrg.78.2022.05.04.04.09.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 04:09:11 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH yocto-autobuilder-helper v13] Add a banner on the old
 documentation docs. Script to add banners to the old docs and outdated
 dunfell docs
Date: Wed,  4 May 2022 12:08:52 +0100
Message-Id: <20220504110852.8489-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 May 2022 11:09:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56993

Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
---
 scripts/docs_add_banner.py | 104 +++++++++++++++++++++++++++++++++++++
 scripts/run-docs-build     |   2 +
 2 files changed, 106 insertions(+)
 create mode 100644 scripts/docs_add_banner.py

diff --git a/scripts/docs_add_banner.py b/scripts/docs_add_banner.py
new file mode 100644
index 0000000..4b65664
--- /dev/null
+++ b/scripts/docs_add_banner.py
@@ -0,0 +1,104 @@
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
+def add_banner_old_docs(dir):
+    exclude = []
+    for root, dirs, filenames in os.walk(dir):
+         # exclude banner for 3.1.x upward as it is an LTS release and is still supported
+        exclude = [ name for name in os.listdir(dir) if name.startswith('3.1') ]
+        for d in dirs:
+            if d in exclude:
+                dirs.remove(d)
+        for filename in filenames:
+            if filename.endswith('.html'):
+                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
+                    current_content = f.read()
+                with open(os.path.join(root, filename), 'w') as f:
+                    f.write(current_content.replace('<body>', '<body>' + html_content))
+                    f.write(current_content.replace('</body>', last_div + '</body>'))
+            if filename.endswith('.css'):
+                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
+                    css_content = f.read()
+                with open(os.path.join(root, filename), 'w') as f:
+                    f.write(css_content.replace(css_content[css_content.find('body {'):css_content.find('}'[0])], 'body {' + css_replacement_content ))
+add_banner_old_docs('.')
+
+
+
+
+def dunfell_docs(dir):
+    dunfell_banners = []
+    for root, dirs, filenames in os.walk(dir):
+        dunfell_banners = [ name for name in os.listdir(dir) if not name.startswith('3.1') ]
+        for d in dirs:
+            if d in dunfell_banners:
+                dirs.remove(d)
+        for filename in filenames:
+            if filename.endswith('.html'):
+                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
+                    current_content = f.read()
+                with open(os.path.join(root, filename), 'w') as f:
+                    f.write(current_content.replace('<body>', '<body>' + html_content_dunfell))
+                    f.write(current_content.replace('</body>', last_div + '</body>'))
+            if filename.endswith('.css'):
+                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
+                    css_content = f.read()
+                with open(os.path.join(root, filename), 'w') as f:
+                    f.write(css_content.replace(css_content[css_content.find('body {'):css_content.find('}'[0])], 'body {' + css_replacement_content ))
+dunfell_docs('.')
\ No newline at end of file
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


