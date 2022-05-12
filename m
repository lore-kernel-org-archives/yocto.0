Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75E82C433F5
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 16:39:53 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
 [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.214.1652373589837872701
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 09:39:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WdKrJANU;
 spf=pass (domain: gmail.com, ip: 209.85.128.48,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id
 125-20020a1c1983000000b003941f354c62so3382396wmz.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 09:39:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dPeqIZ1HEXeS3qCdk3J5OfdkVlqKlxsUiVo5i9Jz9yw=;
        b=WdKrJANUf45DtrK0ybvrBeptkQP4S3MI4Ihr8iqEm+NtP39of6QGko4/appGW/ZwGS
         1eEtI09l7HYVDHW2EpyE+/9XQY4PGB1ggHYPTGSrUaXPO7pGzJ8a+iS5xO6wzZCmTCNd
         q4nSp6/hgzrMP/fxUWF/WfBhcTuKHkXTtfPV/46PRkDnt6m/gsuRcQ4nK2mRlUohD/7j
         kgOmqprxRRTO7pOK77PcvRoJjtt4NizDhWjdqe525ZTMT33LvMFH+SeodfIKdFgb367w
         ZZ5HVRWM6ZI7MtFhMxSBpPdbagbCczg4Iio2d7wmCqVZstdfExgrynuYOa8rvpl0+Z9r
         0PdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=dPeqIZ1HEXeS3qCdk3J5OfdkVlqKlxsUiVo5i9Jz9yw=;
        b=wUPJdBBKel8b76/b09afbeqlNUcnL1ROWV8NqlIvExe2qaJ430LEvzv+w/y36WqFev
         1qU5J0eTtNx8mr3vnxqseryXu1a//E6O+Q4lHCYnB/9ggenfrCHNKsod90UK9JNP03Lt
         O+TpDZkgMRN8ow6qK4WamcJsrGzzpYh5DWx2gIWVqOpU/tYmYCiojKx0vKRZSoX3lv3x
         JcyD1uqrg9U3rtSBESrUt+BnG9jrLjmvgRqfrel8TegOhVk+os4f/DxgCIsvTI/hY8tk
         Kwm38ysA8w3o9Qhddr/ahIIaoWM1KlcCX3K8SI+1qDhP7A52eXnsx2HccWlyVXHNwSIO
         N/fg==
X-Gm-Message-State: AOAM531ENVJh3KmeJXl9+R82/ckerUqHfbEIIYuXwGusf1oLNyTEo7VU
	MbQhdSIJZMCOSUrw8+KnglSqm43CHvU=
X-Google-Smtp-Source: 
 ABdhPJwKcNlpktgzZ7oyOFV31mmvj+qtx3nuOpSCj66sIPpmZwYNEHf2SfPI2Q5IaR7qiRyfQz74oA==
X-Received: by 2002:a05:600c:1e17:b0:394:547c:e5a6 with SMTP id
 ay23-20020a05600c1e1700b00394547ce5a6mr614885wmb.203.1652373587860;
        Thu, 12 May 2022 09:39:47 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.151])
        by smtp.gmail.com with ESMTPSA id
 r64-20020a1c2b43000000b003942a244edbsm180736wmr.32.2022.05.12.09.39.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 09:39:46 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH yocto-autobuilder-helper v17] Add a banner on the old
 documentation docs.
Date: Thu, 12 May 2022 17:39:30 +0100
Message-Id: <20220512163930.35811-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 16:39:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57082

Script to add banners to the old docs and outdated dunfell docs

Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
---
 scripts/docs_add_banner.py | 83 ++++++++++++++++++++++++++++++++++++++
 scripts/run-docs-build     |  2 +
 2 files changed, 85 insertions(+)
 create mode 100755 scripts/docs_add_banner.py

diff --git a/scripts/docs_add_banner.py b/scripts/docs_add_banner.py
new file mode 100755
index 0000000..307a63a
--- /dev/null
+++ b/scripts/docs_add_banner.py
@@ -0,0 +1,83 @@
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
+                    f.write(current_content.replace('<body>', '<body>' + html_replacement)).replace('</body>', last_div + '</body>'))
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


