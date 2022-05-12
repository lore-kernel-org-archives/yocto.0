Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C3D0C433F5
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 11:46:53 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web12.3097.1652356005014337727
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 04:46:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fA6e0JKA;
 spf=pass (domain: gmail.com, ip: 209.85.221.43,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-wr1-f43.google.com with SMTP id v12so6847393wrv.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 12 May 2022 04:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lj7kGZMXG+UhVTqdh05QgabPPxvN/zsAUK0+J1aONrw=;
        b=fA6e0JKA4nwLjDHvPQz4+J9x3QCME0jRiev0dpSKysypvVT0tWhdXbsMGh73g8xGf7
         f83F7KEN+zPBFlfKesk0yJOROoZpfO9GIZbdqzG7bGkNJzTiQp7rNISOCUdVz1llvzb5
         /KdEkKXD59ymBT76tJVVII5EytsEC8jlGghRccoF39pGuLIv4v9EN5+Gdm+Nk3hmthV3
         cgcsZGTpA8suVQLjPtiN3S3zHCIwJRvwnJLleFGlKnjXPfG7/Myb+6JJY6nlzVDhMind
         d0hwoNf+6Uxnkj05a5O3XfRp4SBj3Pszm0TJYIOghLi5HIi0GrvfEClNGvJJRRRbhNcZ
         go2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lj7kGZMXG+UhVTqdh05QgabPPxvN/zsAUK0+J1aONrw=;
        b=EVT9Odz4BJHl+ySWCETEXppE2reyPWNNa6haZt1Lk3ZmNprTjqcwMqcD+oEwiN/Z4r
         ayc7e2XWnZ5XFl9+5bhsNHFnUyFEWKl/ost3IMWWujnEZdkbDV/QIy3pwQKFlpSrNcxd
         LGlGkqNUz+lykEpzoAydIXMTnHkq1WolPCLj2uhdBfkaAOWYVgHtr+PRUR2sNoXkBleU
         yDqS80ZHxPIcd9CoNcZoGFLO+nTrPeIJUcmd5FzMfeStLFdxdXVDAC4sfh8wf3fDx/mU
         cB3gwT+5bSpg04JDPmToonCcki8EV70XeYzVXUqAo3Z90mew6QkmtxfkZUs60lmdzXXx
         MpGQ==
X-Gm-Message-State: AOAM533FwwvckMbW7ATx0tf+I1CfnhrH0wZ/FeEvniyUPUqm/Qmk26Yx
	62Roe1rFSGh6/K2I71jWJ/LyoQaQGAw=
X-Google-Smtp-Source: 
 ABdhPJyd0W5MJcTskJFNyBqzlB/uaxWD1OqeIQfyaCVnPn4S9sTbxhCc57zjJ1jdYVzOBkdl+c3jnQ==
X-Received: by 2002:a5d:63ce:0:b0:20a:da1f:aac5 with SMTP id
 c14-20020a5d63ce000000b0020ada1faac5mr26397245wrw.589.1652356003010;
        Thu, 12 May 2022 04:46:43 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.151])
        by smtp.gmail.com with ESMTPSA id
 j10-20020a056000124a00b0020c5253d926sm3975699wrx.114.2022.05.12.04.46.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 04:46:42 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH yocto-autobuilder-helper v15] Add a banner on the old
 documentation docs.
Date: Thu, 12 May 2022 12:45:42 +0100
Message-Id: <20220512114540.28586-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 11:46:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57067

Script to add banners to the old docs and outdated dunfell docs

Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
---
 scripts/docs_add_banner.py | 84 ++++++++++++++++++++++++++++++++++++++
 scripts/run-docs-build     |  6 ++-
 2 files changed, 88 insertions(+), 2 deletions(-)
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
index ecc5332..afff62f 100755
--- a/scripts/run-docs-build
+++ b/scripts/run-docs-build
@@ -18,7 +18,7 @@ set -x
 builddir=$(realpath "$1")
 ypdocs=$(realpath "$2/documentation/")
 bbdocs=$(realpath "$3/doc/")
-docs_buildtools=${docs_buildtools:-/srv/autobuilder/autobuilder.yocto.io/pub/buildtools/x86_64-buildtools-docs-nativesdk-standalone-3.2+snapshot-20201105.sh}
+docs_buildtools=${docs_buildtools:-'/home/abongwa/Downloads/x86_64-buildtools-docs-nativesdk-standalone-4.0.sh'}
 outputdir=$builddir/output
 scriptdir="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
 PUBLISH=${PUBLISH:-1}
@@ -31,12 +31,14 @@ $docs_buildtools -y -d $builddir/buildtools
 
 # Getting the old docbook built docs from an archive. Not rebuilding them.
 #wget https://downloads.yoctoproject.org/mirror/docbook-mirror/docbook-archives-20201105.tar.xz
-docbookarchive=${docbookarchive:-/srv/autobuilder/autobuilder.yocto.io/pub/docbook-mirror/docbook-archives-20201105.tar.xz}
+docbookarchive=${docbookarchive:-'/home/abongwa/Downloads/docbook-archives-20201105.tar.xz'}
 mkdir $outputdir
 cd $outputdir
 echo Extracing old content from archive
 tar -xJf $docbookarchive
 
+$scriptdir/docs_add_banner.py
+
 cd $bbdocs
 mkdir $outputdir/bitbake
 
-- 
2.25.1


