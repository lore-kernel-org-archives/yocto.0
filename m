Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94550C35294
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:11 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web08.11623.1650750066927020295
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Apr 2022 14:41:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=oDsDQLy7;
 spf=pass (domain: gmail.com, ip: 209.85.221.45,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-wr1-f45.google.com with SMTP id q23so2836169wra.1
        for <yocto@lists.yoctoproject.org>;
 Sat, 23 Apr 2022 14:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xWcJx0hoX/0uVxogOuWoxJG5BPTQlAEH1AJRYVbeBDQ=;
        b=oDsDQLy7RWXsuHWSJvgiq+xH1Z9OkJnxhPYpHCtmhMGJg2tnZ2kcHoFvpz3k1Trqfv
         KVeD+nXkDhDYuTDI/ht+J+sW25v0QTnnbX8TmTdf2qKV8j52pYq+Jc62yV3HCIFTMRia
         op6Jn3xYwtI+PWpNUZb2h3M2cmf/T361OIvVjntStnOIUU7FR/kgfuOBVkDzt/vJ+Cy3
         bwYsEFAxpTrR0dZ8E0usSAyhZCEIOAZlP5dxVGsW7oNGTeHotb42CzoD1DA6o8tmms+l
         Bh6fRtcVoqyl9f5njai/XGiQB8F0OlejsNBYD03QXxYUZt/JXrznfM3S6vyxXfi2lFhn
         PEuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xWcJx0hoX/0uVxogOuWoxJG5BPTQlAEH1AJRYVbeBDQ=;
        b=J2n+A42ql+3F5Poq27jzO5+U6TfgQF6Un/u51mmhGR0yEWjRmcfjp8WbLD8gX3ox2z
         m6WFhuC4TNS7LTnPxRjWl1Atiu77G8hkx+wsBWpMkL5RKjUCyENLIFxoPhJYte5aP9Ox
         pAA/6v7AR5dxCuMQu8Pi8lwtmn7FrXAi2LkC7f5Xdkp7UZao6Lx7ESR2XcrDZBSxwiId
         jGYsspltmjinZfVj+8G0f0iXjSQ0+scFz0YnNa3BieWhddvLi+xA2+6kzOPQnWjEdIsi
         SdHre9+RJ9ky9yqoHYcTjER4BPmUNfIJW7C1lv8GcSQcqXiB8XqEdGUHGNhUlINFD8EJ
         Oj9Q==
X-Gm-Message-State: AOAM531r6hAW7uLKJsLlqzWaCrqk86kx2IhrRCN4IFW2gDrxKdfE8pkB
	E/i4+fycep+6feeIzXMn+UUBXmMYDuptbg==
X-Google-Smtp-Source: 
 ABdhPJz7EPENvlmjwH+vfJpCh7V9sRgromjmY+MOZXZgOWn3z3TIX/gDCdEDWu0WY5g2HtQpmmWjWQ==
X-Received: by 2002:a05:6000:2c8:b0:20a:9beb:2b88 with SMTP id
 o8-20020a05600002c800b0020a9beb2b88mr8624571wry.204.1650750064927;
        Sat, 23 Apr 2022 14:41:04 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.156])
        by smtp.gmail.com with ESMTPSA id
 p32-20020a05600c1da000b00393db324ec4sm4754776wms.18.2022.04.23.14.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Apr 2022 14:41:04 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH yocto-autobuilder-helper v8] Add a banner on the old
 documentation docs.
Date: Sat, 23 Apr 2022 22:40:40 +0100
Message-Id: <20220423214039.29457-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56852

Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
---
 scripts/docs_fix_all_html_css.py | 85 ++++++++++++++++++++++++++++++++
 scripts/run-docs-build           |  1 +
 2 files changed, 86 insertions(+)
 create mode 100755 scripts/docs_fix_all_html_css.py

diff --git a/scripts/docs_fix_all_html_css.py b/scripts/docs_fix_all_html_css.py
new file mode 100755
index 0000000..7257477
--- /dev/null
+++ b/scripts/docs_fix_all_html_css.py
@@ -0,0 +1,85 @@
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
+from logging import root
+import os
+import re
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
+    # pattern = '^3.1*'
+    # exclude = re.search(pattern, dir)
+def loop_through_html_directories(dir):
+    for root, dirs, filenames in os.walk(dir, topdown=True):
+        # loop through all files in the directory
+        exclude = set(['3.1', '3.1.1', '3.1.2', '3.1.3'])
+        dirs[:] = list(filter(lambda x: not x in exclude, dirs))
+        for filename in filenames:
+            # check if the file is an html file
+            if filename.endswith('.html'):
+                # open the html file in read mode
+                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
+                    # read the content of the html file
+                    current_content = f.read()
+                # open the html file in write mode
+                with open(os.path.join(root, filename), 'w') as f:
+                    # write the content of the html file
+                    f.write(current_content.replace('<body>', '<body>' + html_content))
+                    f.write(current_content.replace('</body>', last_div + '</body>'))
+            if filename.endswith('.css'):
+                # open the css file in read mode
+                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
+                    # read the content of the css file
+                    css_content = f.read()
+                # open the css file in write mode
+                with open(os.path.join(root, filename), 'w') as f:
+                    # write the content of the css file
+                    f.write(css_content.replace(css_content[css_content.find('body {'):css_content.find('}'[0])], 'body {' + css_replacement_content ))
+loop_through_html_directories('.')
+
+
diff --git a/scripts/run-docs-build b/scripts/run-docs-build
index ecc5332..4be5bc6 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -37,6 +37,7 @@ cd $outputdir
 echo Extracing old content from archive
 tar -xJf $docbookarchive
 
+$scriptdir/docs_fix_all_html_css.py
 cd $bbdocs
 mkdir $outputdir/bitbake
 
-- 
2.25.1


