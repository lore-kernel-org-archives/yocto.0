Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5212AC433EF
	for <webhook@archiver.kernel.org>; Tue, 26 Apr 2022 11:52:37 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web10.5169.1650973948254544596
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Apr 2022 04:52:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WA9x4tbc;
 spf=pass (domain: gmail.com, ip: 209.85.208.41,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id p18so16836189edr.7
        for <yocto@lists.yoctoproject.org>;
 Tue, 26 Apr 2022 04:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=O21qX/njoBWrNwdKPdkw6XtzBVHU689ewVtHlDyxu3A=;
        b=WA9x4tbc9KNN3L4oKg/QGq1iIHiH98oEzVPu2CRRYzweyp6v346YHHKZUyK1T/7RQd
         2Xudi8euHlbOWOKlU+aJUqjyShDpeeQuZ7KMxzDML4VjslX9yDvbboj1y0eejD3AETJI
         78BKS3f2CA/Oc5DOpCt3Eue0HL42Btfv74UnYzd/5IB3DNrwMy/g25g9yuMLRmdGgfGd
         l7nSE8AZfJFNpyJBgZMJs0m49r/ghbJtsdnFRqFtCxpwUZli8zvvilDO0TaRkFGyl8kR
         QqiQTZ0hFHLaDUcwewR618xOPs23XSpmotJ5iGt//1AbdU1GAIlfV5DeJ1EHnyjdRaOX
         ML5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=O21qX/njoBWrNwdKPdkw6XtzBVHU689ewVtHlDyxu3A=;
        b=6B9wsmEpUEWL5tA0ifYEHhtLdq2FKjK6shXr4fPCc/CxqK9vNb01MGM8oESr8R9bY4
         +M+EUhRFE5i5OpLta6RkeXutiZ+y1IjMUEejkczPPAelF2HCP7GRXKjWKV2/wrjR+bYD
         HM7omllxXsAqNlciLcxCIZjzVxt73rxGv0hGNXyNg4IPaIWnj2XCkJTz5dxTRpDsbXjZ
         NCrSNxB1jUag6wnLMmr9GJAYIIEYi7UaTyQqVmf2EWl2rGtEWYfmLt9cqfex05ORN8Nx
         ZRW8ZRPco00ImrGPFFxKE8y6U2AUcEIqh2IBhnDeTTalaUgRPEWzfQnYUzUhq7AMU3Wt
         +TeQ==
X-Gm-Message-State: AOAM531AUL/UipPw+rCbajmh5ccick8TmOF7X8Mtjp3XgL8ko6Rgc6ed
	Zon1uH+aFk0ROJ/VL6ftT6a1OSEpPotWkA==
X-Google-Smtp-Source: 
 ABdhPJzRetqLIwamliyAZ+b4vkwVYAZoGMzZuCLRis+xGmqx2vWLQxFaMXENpTWh61+3AJnQvSGH/w==
X-Received: by 2002:a05:6402:401e:b0:425:f639:b261 with SMTP id
 d30-20020a056402401e00b00425f639b261mr5492828eda.275.1650973946428;
        Tue, 26 Apr 2022 04:52:26 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.148])
        by smtp.gmail.com with ESMTPSA id
 p27-20020a50cd9b000000b00425d5219372sm4497061edi.50.2022.04.26.04.52.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 04:52:25 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH v9] Add a banner on the old documentation docs.
Date: Tue, 26 Apr 2022 12:51:54 +0100
Message-Id: <20220426115153.9950-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Apr 2022 11:52:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56894

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


