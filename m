Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2908BC433F5
	for <webhook@archiver.kernel.org>; Wed, 27 Apr 2022 17:28:33 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
 [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web12.389.1651080505541360315
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Apr 2022 10:28:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LqHrCzpl;
 spf=pass (domain: gmail.com, ip: 209.85.218.52,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id y3so4754975ejo.12
        for <yocto@lists.yoctoproject.org>;
 Wed, 27 Apr 2022 10:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fu35dY7kTGwmg8wZGKm5umzXIp90aKferIS7ZUs2W9Y=;
        b=LqHrCzpl/NmuuAF0ueYLjY0VS7NMij4g7FWgrdkQUZVN43/zRTlICB2nPqzFpVQsWY
         tPPgcet2l8PDfyxsAM+iLRic4tBWZY3bs6FJb8oZ0rIBcDTFU1aaOT2tC2DBtG9cEQcv
         iIb2jGnmibZaltv6Z8K/UgH6nHWFqDGM9RofHNAtCFhqxZxY5pJpXbOba5JR04X17Rx4
         pPhqhcYkQrAb/lOAW3bf4EqsU5a+4konLfLoCnClg+CLtPDUIYyoTErzNdNT1uPNcCI1
         po0stRG+b9EptZNFM3HWt//2i/ir2ygotCe7kHlCOMhlvjsy1l/Yglx9NCvGAGE07WmD
         KByw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fu35dY7kTGwmg8wZGKm5umzXIp90aKferIS7ZUs2W9Y=;
        b=70lTZMIjfc8/JZVBHmIyza6NCu3kSzseKiMvgQKOkMOWaWyrsnGKCzoURm5cS5D8uz
         pO2P5vwsok6C2x/nPmmQTUEtDgZGWZdfJlvx1X6xRF/zIVRDYAMN29F1+/Ns/Y/QsYSN
         C870uMi30S8OmiKU51FVPVmc5jCHFZWplHDoDZqlM9MxjS5XjxPpo56y3ncE5fhxX83J
         OaD0u3GTFgoa8FhfaVOPv1QRUAsUHwk5XGyRrP/JMMNrRYBAmGqYMgGXcCN6hf7hsviK
         jxdVgIQ9Jv0FD51BDwGwk5uKp/ckcNTx7Xur5SwcuROa6/KCZu5SEqDMGLzEL/RwSaDk
         kHSQ==
X-Gm-Message-State: AOAM531TQkDDesi6dpvRrS0me/V4x0C7MpPLrAcq3+qQYqYlkM2FwEeZ
	3mT6Phu419nnOCEbWgVcHCsMqFcM6sczUQ==
X-Google-Smtp-Source: 
 ABdhPJwKl9wfVns1WUwOWkBDzndEgc2qvxsCyWJgMJLreCXfAJI2tNFFl0skvMs6B8eP2OE1BKh12Q==
X-Received: by 2002:a17:906:a2c5:b0:6e7:f44d:ed7d with SMTP id
 by5-20020a170906a2c500b006e7f44ded7dmr27691055ejb.329.1651080503547;
        Wed, 27 Apr 2022 10:28:23 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.142])
        by smtp.gmail.com with ESMTPSA id
 z6-20020a170906074600b006efc5a283b4sm7056923ejb.89.2022.04.27.10.28.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 10:28:23 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH yocto-autobuilder-helper v12] Add a banner on the old
 documentation docs.
Date: Wed, 27 Apr 2022 18:27:19 +0100
Message-Id: <20220427172718.45635-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Apr 2022 17:28:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56921

Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
---
 scripts/docs_fix_all_html_css.py | 111 +++++++++++++++++++++++++++++++
 scripts/run-docs-build           |   2 +
 2 files changed, 113 insertions(+)
 create mode 100644 scripts/docs_fix_all_html_css.py

diff --git a/scripts/docs_fix_all_html_css.py b/scripts/docs_fix_all_html_css.py
new file mode 100644
index 0000000..db99054
--- /dev/null
+++ b/scripts/docs_fix_all_html_css.py
@@ -0,0 +1,111 @@
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
+
+import os
+
+
+
+html_content_dunfell = '''
+<div id="outdated-warning">This document is outdated, you should select the <a href="https://docs.yoctoproject.org/">latest release version</a> in this series.</div>
+<div xml:lang="en" class="body" lang="en">
+'''
+html_content = '''
+<div id="outdated-warning">This version of the project is now considered obsolete, please select and use a <a href="https://docs.yoctoproject.org">more recent version</a>.</div>
+<div xml:lang="en" class="body" lang="en">
+'''
+
+# <div xml:lang="en" class="body" lang="en"> and </div> are added to the html files to wrap all the content below the body tag in a div tag whose class is known so it can be controlled in the css file
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
+    # pattern = '^3.1*'
+    # exclude = re.search(pattern, dir)
+def loop_through_html_directories(dir):
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
+    print(exclude)
+loop_through_html_directories('.')
+
+
+
+
+def dunfell_tags(dir):
+    dunfell_banners = []
+    for root, dirs, filenames in os.walk(dir):
+        dunfell_banners = [ name for name in os.listdir(dir) if not name.startswith('3.1') ]
+        for d in dirs:
+            if d in dunfell_banners:
+                dirs.remove(d)
+
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
+    print(dunfell_banners)
+dunfell_tags('.')
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


