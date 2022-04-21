Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8604CC433FE
	for <webhook@archiver.kernel.org>; Fri, 22 Apr 2022 16:51:59 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web08.1425.1650578792021857283
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Apr 2022 15:06:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Z14CFdS7;
 spf=pass (domain: gmail.com, ip: 209.85.221.42,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-wr1-f42.google.com with SMTP id v12so1678167wrv.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 21 Apr 2022 15:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GxmTusaUqnd/Kd3TCwKhQ0ACC5cyd4jotrnOOBLWr4k=;
        b=Z14CFdS7mljBy+LOISiLqllqGT/X25c9YUn039aAyRTgzjVY5cxMhN3Gbd5gCK27qH
         vo7bt1ju5p3TRtmrOFl9XehckDLbukxq56TftBdPLIVuXvjJpsVEDnh4hXmGFUfjY0lJ
         M2mulsWCiZR8SWsC4Uw3T/D80nFeEMgLzPfHNnPOqPRoug2GJexBE4EJRyBk1rherP92
         B/53B5VAJ7yB1kzIBt4RgmbMUl6bTtA3RD1u70oIJ1TBjaNrdbTjz96SGQGZv0OKqxvu
         yPqeVs6bi9Nw6MrKclsObajGzmPc/cw58MOseiKjnZgo4mmJxsRnYP31QcPkru/cJaBt
         H3lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GxmTusaUqnd/Kd3TCwKhQ0ACC5cyd4jotrnOOBLWr4k=;
        b=elSzux6zh5giSCdv2+R5vP5r7ZmGOozOHmJPbkS9ZpkBjhATgdfQ5wCILvwZ+azvSt
         HDiRQG23LbWhSQHsWpLYQVN4ZG+eDdI6zyuRWWuhF+Bp6kwq7BuYKS1Shf/u+inGjGJh
         XrKlOKUw46tx1hnAQCNmrKfsZ1NlTefd0aY/son8oLve8oDRvZNGDzrv46o/LLl9cX7D
         SpiTMX9lLgxpoy4vhj/Cjb1qY60Y56SuIZjf+sWSIF3bmlPJ9frYevHAZYrjIIdqNymN
         G/gTThJBtoIsYUPFL4IiK4A99fMOsF66qVzVUxTgnoCS0x3jKzw6GCHA/fNyev0VBVM2
         fdZQ==
X-Gm-Message-State: AOAM531/L2c6SrKKbglri50PG/rdLp1RDQacrt4LtXWVpd1Qu7b+njzv
	C0TPr/wL786rF7gKGd4rRDqpTVOUAyP+fQ==
X-Google-Smtp-Source: 
 ABdhPJy493DR0t3SF8PeU5Lj2P5//t8yIVcmS14zIpaXJ78Gh4sLU2N1uPGkQ0/B+fwqChL8/5z0YQ==
X-Received: by 2002:a05:6000:1868:b0:20a:9d5e:595e with SMTP id
 d8-20020a056000186800b0020a9d5e595emr1258018wri.310.1650578789957;
        Thu, 21 Apr 2022 15:06:29 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.155])
        by smtp.gmail.com with ESMTPSA id
 o11-20020a05600002cb00b0020a88c4ecb5sm247125wry.3.2022.04.21.15.06.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 15:06:29 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH v6] Add a banner on the old documentation docs
Date: Thu, 21 Apr 2022 23:06:14 +0100
Message-Id: <20220421220614.30390-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Apr 2022 16:51:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56837

Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
---
 htmlscript.py  | 36 +++++++++++++++++++++++++++++
 stylescript.py | 61 ++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 97 insertions(+)
 create mode 100644 htmlscript.py
 create mode 100644 stylescript.py

diff --git a/htmlscript.py b/htmlscript.py
new file mode 100644
index 0000000..fdbd109
--- /dev/null
+++ b/htmlscript.py
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
diff --git a/stylescript.py b/stylescript.py
new file mode 100644
index 0000000..2777730
--- /dev/null
+++ b/stylescript.py
@@ -0,0 +1,61 @@
+#!usr/bin/env python3
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


