Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45FACC433EF
	for <webhook@archiver.kernel.org>; Tue, 26 Apr 2022 11:55:37 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web10.5204.1650974135466805517
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Apr 2022 04:55:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dPoVL9WF;
 spf=pass (domain: gmail.com, ip: 209.85.208.42,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id z99so22009820ede.5
        for <yocto@lists.yoctoproject.org>;
 Tue, 26 Apr 2022 04:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=O21qX/njoBWrNwdKPdkw6XtzBVHU689ewVtHlDyxu3A=;
        b=dPoVL9WFUrCJ0wBLspEcgpX4re59HgUV3fhTMg4SQ3/uSftXDgHRHkSxpjuH9Ai4ub
         okRATbTGurd8E0wEb0xvbIc7TBDFzSVemk3RLtgt9WCMVZnaUSizG9dmJaqjHZvbhwmW
         amzPudYfpuVJiQmxwkkN7neAuKmExtNIU6bAuLRHuBNYNCkjA75moEc6JFanRwK+ny1C
         o3C7c1eavutkE8yuL6teSh6zg4LGbLu8CaW8uEMqZk6msrRYS1goZL2ZGeSQfsk1AY32
         cuzWoOsM0j9eMYOavtPeMYGxgBJsz2uWYiOdxLh1RL8Uvc1WGbgnbLKsG6sJdr4f9CB1
         uOlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=O21qX/njoBWrNwdKPdkw6XtzBVHU689ewVtHlDyxu3A=;
        b=S2aQGWOzBbUXbs62Sl0h+YQSLIhHToDB6UTQqzoLYtH05NZj/gG4fkCW7/8u+UQEQz
         RKZSlwWxgawdzgv1iLwNzSxxhVNBoDKTbTH04ioWx42VAzvD8amIOR4D2cygvjEUG7k7
         cF3YvHmHM+PgMss8v6tDHQLIp2Fp66yWtn2eR/BcE8qkaWCxvEbtbLG6Q/ZKaPl07DlC
         Rw2j7LOU6ecdCc+QUphuLrURJVu4llJ7UKaR1HU/c5Z0uhcBndTBHdiT88o94hFa1QmP
         kd9Azuz7oAu4BklLeNra1PmehnAxvU1SkUOVUCDsuXWCQZ3RrL8fF1MnM55h8V2CJheA
         7I0w==
X-Gm-Message-State: AOAM532hz4ENo0yNbibOfB894bduPLR6GdI4yvBsHXi/n9NXkZtRGstv
	MZL0/XwMI/r2SWjb1jLYswBNYfnnsgmsOw==
X-Google-Smtp-Source: 
 ABdhPJx5Oj7lmC17w/z+K3LSrwc1AkMbDRiuD8Y5OxsI0+BHHimBrL4vqSJ2Qve+Xpmr/SRw6V3bnw==
X-Received: by 2002:a05:6402:3496:b0:425:ece9:1a99 with SMTP id
 v22-20020a056402349600b00425ece91a99mr9228532edc.319.1650974133671;
        Tue, 26 Apr 2022 04:55:33 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.148])
        by smtp.gmail.com with ESMTPSA id
 c6-20020a50f606000000b00425adbac753sm6145840edn.21.2022.04.26.04.55.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 04:55:33 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH yocto-autobuilder-helper v10] Add a banner on the old
 documentation docs.
Date: Tue, 26 Apr 2022 12:55:12 +0100
Message-Id: <20220426115512.10093-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Apr 2022 11:55:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56895

Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
---
 scripts/docs_fix_all_html_css.py | 75 ++++++++++++++++++++++++++++++++
 scripts/run-docs-build           |  2 +
 2 files changed, 77 insertions(+)
 create mode 100755 scripts/docs_fix_all_html_css.py

diff --git a/scripts/docs_fix_all_html_css.py b/scripts/docs_fix_all_html_css.py
new file mode 100755
index 0000000..9ac5a2b
--- /dev/null
+++ b/scripts/docs_fix_all_html_css.py
@@ -0,0 +1,75 @@
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
+html_content = '''
+<div id="outdated-warning">This document is outdated, you should select the <a href="https://docs.yoctoproject.org/">latest release version</a> in this series.</div>
+<div xml:lang="en" class="body" lang="en">
+'''
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
+    for root, dirs, filenames in os.walk(dir):
+        # exclude banner for 3.1.x upward as it is an LTS release and is still supported
+        exclude = set(['3.1', '3.1.1', '3.1.2', '3.1.3'])
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
+loop_through_html_directories('.')
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


