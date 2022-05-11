Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9AB0C433EF
	for <webhook@archiver.kernel.org>; Wed, 11 May 2022 16:21:18 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.1535.1652286068340486209
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 May 2022 09:21:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=H6V+9DiJ;
 spf=pass (domain: gmail.com, ip: 209.85.128.47,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-wm1-f47.google.com with SMTP id q20so1536465wmq.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 11 May 2022 09:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w80tnh4R3yt13hw/e3rMheIw4kggjnjnyXr98Q/eK/k=;
        b=H6V+9DiJDoeNLg06kqzb7vL+bIv/e4OAFbmJJooyuZH4YBeXlU7QlXYiMJlaaprDiy
         odQwDS05zZUkhpLjxT3zgWfplZ2nDKFmjgK2P80qaw6k9aSN/YfkLrCADog/PI6K5vxX
         /gRYG9aGuPjmY4BlCNW8CIX/EWJePGj95h1NaRtyO5HxAattWhC4FtLTaNVBgZqDYluO
         dAvBsxTLQEZzcFKZN3jggDBkZTMOD44IPeU1vRku//J9NyzNJ/8kqaWeOHR0v0/8SYBZ
         a6i+7zYvBizkyF+91+eiLLHWS1IeG8XfVnzCi/KpYqBWA2GE57fXYiWESSsz6utri95E
         fz1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=w80tnh4R3yt13hw/e3rMheIw4kggjnjnyXr98Q/eK/k=;
        b=KX1w9rOkovvPuBQ5pGc+eInIB4PBaiy5fe2mzzcW2yK0EW8HcOWJ6mkEHc/MN8OvQQ
         ECZLPqaiO4BWkYsNjihiGv3w9ZKj7gJA7A8tnPk3XL/aRMvW/Nq3sAGO4dnn39Xt2wKn
         kmPRoBRppPFijUa/q6J0ToDA6G0ap/s3S/k6pAOSMoRrAdzJp8fJ+5O/gqOUD0TM14ch
         ibJjMWNnqvWvvH8s1g1U14yQeTLfTEM+qJBzAr2c6uDU9tWPZ6PafVZEv1hny2Gwa+oD
         cX+cwIb3Wp9nyN+nnjj5w4ppy1qkvXVZXpmh5nV57N/4lVwoGWzC5RQvI/QqhvFPc1Zr
         SU7g==
X-Gm-Message-State: AOAM531TBgJbHiVbOkZ++PsmWSh+nODk3ZNdV1tnOKuzdgSnn6HNvvyr
	mKkBX2E+lr1zK0PwpzBh4FCWOsy7wyk=
X-Google-Smtp-Source: 
 ABdhPJyPDAwhNutxxMJEzr5MDVokoCmBZwiqn6WelhU4PscsdMrm+Kaz0x0jJglLNfmC3BpVgrwwQw==
X-Received: by 2002:a05:600c:4f52:b0:394:61af:a168 with SMTP id
 m18-20020a05600c4f5200b0039461afa168mr5717460wmq.114.1652286066741;
        Wed, 11 May 2022 09:21:06 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.149])
        by smtp.gmail.com with ESMTPSA id
 j12-20020a5d618c000000b0020c5253d8f2sm2044355wru.62.2022.05.11.09.21.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 May 2022 09:21:06 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH yocto-autobuilder-helper v14] Add a banner on the old
 documentation docs.
Date: Wed, 11 May 2022 17:20:14 +0100
Message-Id: <20220511162013.26471-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 May 2022 16:21:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57060

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


