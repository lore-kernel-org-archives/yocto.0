Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94072C64E67
	for <webhook@archiver.kernel.org>; Mon, 18 Apr 2022 14:26:00 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web09.31057.1650219619892341390
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Apr 2022 11:20:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qH4Zmyw/;
 spf=pass (domain: gmail.com, ip: 209.85.221.52,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-wr1-f52.google.com with SMTP id k22so16352263wrd.2
        for <yocto@lists.yoctoproject.org>;
 Sun, 17 Apr 2022 11:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Fuwpzeg6YUrIDsQZHGxJnn/vGB3LGnHQAw9m2PaWdmU=;
        b=qH4Zmyw/8KZmHvtQCtyvhhqGyxHOFLid4zreZDZJCad1ny3Z4lUUMGMcd2MD7h1CUw
         xUpDNvi5BNjFC6Z/YNePXqnSQEYtucEUWbEWpviI96UyI4h5nVFmNu8osUx1S3Hvaony
         kop4s08+eCrMI/d6he9pRPZ1KO/Mgm0p/x4wN5ywVW2TSVrIBCt0t/K7jPBGsjjcftJy
         0tGewAkmRFGaN04NYbu6tkYs6mzXZMFRN1ugl0JZ22QJNllzCS8pTGb6Xp/qg5pXgvPD
         5KkT6x2QFMO3WlPxXRoIqIgkUVJPeQp9d2c0oN8976OSfW4+8UVHOMSt9q894gxG8gna
         mdYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Fuwpzeg6YUrIDsQZHGxJnn/vGB3LGnHQAw9m2PaWdmU=;
        b=KCzmf6gwuUhPqw/b34zXhGHbhx7W1ySvOXSUIF18NZgEU5ATsDTua33HkmmMTos2gX
         x1xqWOzbr77YqjqSZDbD1EqhXZjp2EoGZ8tJnMr7AMims0H5BLHILuh9lEQu5xb0VGgg
         AqtxJvUaJ27edTBElv9mHFX1guCpNlSCb7AkucLvlSwNqJpuxu+PCyVMHX0rZPC6/RrU
         KxFz+Fl5FWUiphL3QC7DUPflYZRA6mtqy+SAEMIF0H59tnfDT1DWVSm/bw1Z0OnpkYT+
         UYZtk9YO6xjK5Xsqu+wI1vkLEZrSSmoEQe8zi7V6wAltK3Gd1ZZBNtF8GGGisZ9qP42W
         S+Xg==
X-Gm-Message-State: AOAM530Fr+lcV2dSwkxM88CfGeNAU1GQ5dKkbof0HzZunOTTXiqcL+bl
	mi3id3zAsxRDDllVwIeaYuMl8ZnDzOdUcw==
X-Google-Smtp-Source: 
 ABdhPJywQ1Aaa2KTZoPeZYuP9XPseHSAqYYrv5rwOGpe8BT24qWziVoOY4QQnAwn55ODoYvxT9iH2w==
X-Received: by 2002:adf:a415:0:b0:208:daaa:b3ac with SMTP id
 d21-20020adfa415000000b00208daaab3acmr6068974wra.10.1650219618057;
        Sun, 17 Apr 2022 11:20:18 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.140])
        by smtp.gmail.com with ESMTPSA id
 n15-20020a5d6b8f000000b00207ab69284csm8386166wrx.23.2022.04.17.11.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Apr 2022 11:20:17 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH yocto-autobuilder-helper v5] Add a banner on the old
 documentation docs
Date: Sun, 17 Apr 2022 19:17:07 +0100
Message-Id: <20220417181706.30705-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Apr 2022 14:26:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56794

Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
---
 trial.py      | 36 ++++++++++++++++++++++++++++++
 trialstyle.py | 61 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 97 insertions(+)
 create mode 100644 trial.py
 create mode 100644 trialstyle.py

diff --git a/trial.py b/trial.py
new file mode 100644
index 0000000..fdbd109
--- /dev/null
+++ b/trial.py
@@ -0,0 +1,36 @@
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
+import os
+html_content = '''
+<div id="outdated-warning">This document is outdated, you should select the <a href="https://docs.yoctoproject.org/">latest release version</a> in this series.</div>
+<div xml:lang="en" class="body" lang="en">
+'''
+last_div = '''
+</div>
+
+'''
+
+def loop_through_html_directories(dir):
+    for dirpath, dirnames, filenames in os.walk(dir):
+    # loop through all files in the directory
+        for filename in filenames:
+            # check if the file is an html file
+            if filename.endswith('.html'):
+                # open the html file in read mode
+                with open(os.path.join(dirpath, filename), 'r', encoding="ISO-8859-1") as f:
+                    # read the content of the html file
+                    current_content = f.read()
+                # open the html file in write mode
+                with open(os.path.join(dirpath, filename), 'w') as f:
+                    # write the content of the html file
+                    f.write(current_content.replace('<body>', '<body>' + html_content))
+                    f.write(current_content.replace('</body>', last_div + '</body>'))
+loop_through_html_directories('.')
diff --git a/trialstyle.py b/trialstyle.py
new file mode 100644
index 0000000..2777730
--- /dev/null
+++ b/trialstyle.py
@@ -0,0 +1,61 @@
+#!/usr/bin/env python3
+#
+# SPDX-License-Identifier: GPL-2.0-only
+#
+#Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
+#
+#
+# function to append to the content of a css file below the body class
+#
+#
+import os
+
+
+content = '''
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
+
+
+
+def loop_through_html_directories(dir):
+    for dirpath, dirnames, filenames in os.walk(dir):
+    # loop through all files in the directory
+        for filename in filenames:
+            # check if the file is an html file
+            if filename.endswith('style.css'):
+                # open the html file in read mode
+                with open(os.path.join(dirpath, filename), 'r', encoding="ISO-8859-1") as f:
+                    # read the content of the html file
+                   css_content = f.read()
+                # open the html file in write mode
+                with open(os.path.join(dirpath, filename), 'w') as f:
+                    # write the content of the html file
+                    f.write(css_content.replace(css_content[css_content.find('body {'):css_content.find('}'[0])], 'body {' + content ))
+loop_through_html_directories('.')
-- 
2.25.1


