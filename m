Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E97CC433F5
	for <webhook@archiver.kernel.org>; Tue, 26 Apr 2022 17:22:36 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web08.171.1650993748778199271
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Apr 2022 10:22:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LKvaQzh2;
 spf=pass (domain: gmail.com, ip: 209.85.218.43,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id kq17so14322872ejb.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 26 Apr 2022 10:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qP93b2Gdj4cWE/0WvT3KrmU5nKCM4iUXhrnEB4lKhgo=;
        b=LKvaQzh2dJt0CORppBn7RmGodAP4LAkwXt8W/khSmD+C6Ufiko+aw5YnhUdYruPh1o
         E242FL+6GRSdQySK9Hun7uYT4sUbPdZ7IrKLUofbeZOKOTElfBFRZJk2Ag8G0xwBekT4
         5mLx5nClME1mQmzgAVMBFDAJGiEEiTlK25s6Gyy1+6otO09Mp04RNqXrGitYBNWzZdxv
         dTPgQim4LQ/mPQaUWQ3hgBM1FJ711MBvTMdvYkbh6DndQ6JXKyCur4Uz8lbQIioc6VfS
         tjSVm02ouWXWb3QqanvdzDgFVsw0m7iLRJmrD+UYGyerTxNFcNdV8q2xYmLRFSjToRhM
         TFCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qP93b2Gdj4cWE/0WvT3KrmU5nKCM4iUXhrnEB4lKhgo=;
        b=8AwTmSi358t8c23qqfcQDFP+gimLMKVGp95SuE7OEUKzENBehdxqjfaPuVDSuf76nh
         VPGteA4RnnIy7bIDNgCTkgoQu3V5n4yQeY0W0ImDzkcaazN7YuBDjODpzXNYkiv2mNMk
         Nfhj+rnwsxyk4On0ZelAdwtbtpVaa0e92Drd+McEuN+xvoE9Nc37Wk+MbU/iVrCg3HPo
         oAx0rNcKeJ6UCFWzBWxOn0jckdc7PIiFSc1T+hkQUq+2fKrrb4SemKpfYMMW9OA36y8n
         LtrLO0Sdjz3dnNRnUE8WfMuTjtDfNb3gXydHdj8uFFCau6oj+675KBCygjNqoJZPAsGc
         JkMA==
X-Gm-Message-State: AOAM531s8e4TaD0XH0FhNugsy4S73OVvO2DPhdpNiXY9R2ZS/Uegy4WE
	xGZT0yFyjz4oHggH6OdQdzmGRKlOK+s3Zg==
X-Google-Smtp-Source: 
 ABdhPJzuPWJOuN+irOwueiyj2Xn1JPUSSX0Kpftf6GNJgHEukGvbAMvEwcTYLR5eGKRh3YuUeAmyxQ==
X-Received: by 2002:a17:907:6e1c:b0:6ef:fb80:d92a with SMTP id
 sd28-20020a1709076e1c00b006effb80d92amr21907067ejc.539.1650993746817;
        Tue, 26 Apr 2022 10:22:26 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.148])
        by smtp.gmail.com with ESMTPSA id
 y14-20020a056402440e00b00416046b623csm7203578eda.2.2022.04.26.10.22.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 10:22:25 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH yocto-autobuilder-helper v11] Add a banner on the old
 documentation docs.
Date: Tue, 26 Apr 2022 18:22:02 +0100
Message-Id: <20220426172202.25968-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Apr 2022 17:22:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56901

Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
---
 scripts/docs_fix_all_html_css.py | 107 +++++++++++++++++++++++++++++++
 scripts/run-docs-build           |   2 +
 2 files changed, 109 insertions(+)
 create mode 100644 scripts/docs_fix_all_html_css.py

diff --git a/scripts/docs_fix_all_html_css.py b/scripts/docs_fix_all_html_css.py
new file mode 100644
index 0000000..d2eca9f
--- /dev/null
+++ b/scripts/docs_fix_all_html_css.py
@@ -0,0 +1,107 @@
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
+from cgi import print_arguments
+import os
+
+
+
+html_content_dumfell = '''
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
+        exclude[:] = [ name for name in os.listdir(dir) if name.startswith('3.1') ]
+        dirs[:] = list(filter(lambda x: not x in exclude, dirs))
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
+def dumfell_tags(dir):
+    dumfell_banners = []
+    for root, dirs, filenames in os.walk(dir):
+        dumfell_banners[:] = [ name for name in os.listdir(dir) if not name.startswith('3.1') ]
+        dirs[:] = list(filter(lambda x: not x in dumfell_banners, dirs))
+
+        for filename in filenames:
+            if filename.endswith('.html'):
+                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
+                    current_content = f.read()
+                with open(os.path.join(root, filename), 'w') as f:
+                    f.write(current_content.replace('<body>', '<body>' + html_content_dumfell))
+                    f.write(current_content.replace('</body>', last_div + '</body>'))
+            if filename.endswith('.css'):
+                with open(os.path.join(root, filename), 'r', encoding="ISO-8859-1") as f:
+                    css_content = f.read()
+                with open(os.path.join(root, filename), 'w') as f:
+                    f.write(css_content.replace(css_content[css_content.find('body {'):css_content.find('}'[0])], 'body {' + css_replacement_content ))
+    print(dumfell_banners)
+dumfell_tags('.')
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


