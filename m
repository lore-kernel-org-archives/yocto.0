Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2CF5C5519F
	for <webhook@archiver.kernel.org>; Mon, 18 Apr 2022 14:25:55 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web12.13792.1650065673069947807
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Apr 2022 16:34:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gvaKDEie;
 spf=pass (domain: gmail.com, ip: 209.85.221.45,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-wr1-f45.google.com with SMTP id c10so12174143wrb.1
        for <yocto@lists.yoctoproject.org>;
 Fri, 15 Apr 2022 16:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fpUNegTZ9DaxjlhPRHXDWk7+MtWpe8AYNWjmD8GiVz8=;
        b=gvaKDEie+NMAM/4eBxdOyz0IBKTTy2GZ7K5nDSl61sI5DXx2KIzIVLMN7sqFhumcHF
         XxXbH3FVnO22RuY27CQvmIw215oOjOYeW2V/4yqXRKIE3rhTAOQs3PLBpi8o7PrHw3W5
         S4+r1REELtA6WS7MR7rJdk/04oNQPP0uV1AerruaSEH0OZ1g5YQZaQdricjhdOgj0I85
         Uk4uaX6Y9Bg6urVKNr65VCEqxW6Mo5t4USyXMAqkKWkHKOf5q4XVCLaIu5o5Qc0Bmajr
         CetYDbaYwX0e99JXl9Vt3L5cktPQmrnSELHdYzlcVICaJV+SftCJRaQ1PMCM86/ePMQ+
         rVlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fpUNegTZ9DaxjlhPRHXDWk7+MtWpe8AYNWjmD8GiVz8=;
        b=C+7T8BqQY5u6shb3jMD1gMwgTFhHsSK+hLw5MZOTwkqJLk70YVJVSk4t484eNmAfsh
         dBwJUfEN0/8MNOKlQIRW0FyN8ISYvKiosqH+RLPMwOlJp24uAZ9Ok7wG6wJd2qIbBCSV
         zbjY+hNK07y+LXvby88YxkHx+hUQ6ZfcaV79kTITVRBQbvjE8q9lJWtqCIY3jRNQM8aj
         HrG0EtBfj4tY6ASdGo/Tu+PktNLUbJZ+qfSIKEpEqxCatpfZsBMmp/9MT+Jv4VteJZ4l
         2TqPmsB5+2l9AE9bHUmlTHa0e5umwXbSUXXA48CHMdftm6zH2WBxuBBw1CiJKz0dGuA+
         ggqQ==
X-Gm-Message-State: AOAM530mLkSJOGYLHhfGf/EVsjgmKlqLMLGrIlTUnEKaqk7Hp6HTQzkx
	ZidtDnaRpSFspxd/EhyoEVYtGIo07K2rcw==
X-Google-Smtp-Source: 
 ABdhPJy/Py7LsjjjGvSJyYjzc5MieqK5QfwQh6lRDijrUNsuUbGfXfDIseUXVr3/droTmhMqq7e4iQ==
X-Received: by 2002:a05:6000:15cb:b0:207:9f9e:547e with SMTP id
 y11-20020a05600015cb00b002079f9e547emr794540wry.549.1650065671107;
        Fri, 15 Apr 2022 16:34:31 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.132])
        by smtp.gmail.com with ESMTPSA id
 o40-20020a05600c512800b0038ebf2858cbsm10606129wms.16.2022.04.15.16.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 16:34:30 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH yocto-autobuilder-helper v3] Scripts to automatically add
 banner to html  files in tarball
Date: Sat, 16 Apr 2022 00:13:16 +0100
Message-Id: <20220415231315.31561-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Apr 2022 14:25:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56786

Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
---
 trial.py      | 44 +++++++++++++++++++++++++++++++
 trialstyle.py | 71 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 115 insertions(+)
 create mode 100644 trial.py
 create mode 100644 trialstyle.py

diff --git a/trial.py b/trial.py
new file mode 100644
index 0000000..bc60433
--- /dev/null
+++ b/trial.py
@@ -0,0 +1,44 @@
+#!usr/bin/env python3
+#LICENSE = "GPL-2.0 & LGPL-2.0"
+#PackageOriginator: Abongwa Bonalais Amahnui
+
+# function to append to the content of an html file below the body tag
+import os
+
+
+content = '''
+<div id="outdated-warning">This document is for outdated, you should select the <a href="https://docs.yoctoproject.org/">latest release version</a> in this series.</div>
+
+'''
+
+def append_to_body(html_file, content):
+    # open the html file in read mode
+    with open(html_file, 'r', encoding="ISO-8859-1") as f:
+        # read the content of the html file
+        html_content = f.read()
+    # open the html file in write mode
+    with open(html_file, 'w') as f:
+        # write the content of the html file
+        f.write(html_content.replace('<body>', '<body>' + content ))
+
+
+
+# function to loop through all html files in the current directory and call the append_to_body function
+def loop_through_html_files(directory):
+    # loop through all files in the directory
+    for file in os.listdir(directory):
+        # check if the file is an html file
+        if file.endswith('.html'):
+            # call the append_to_body function
+            append_to_body(os.path.join(directory, file), content)
+#loop_through_html_files('.')
+
+
+# function to loop through all sub directories and recursively call above function
+def loop_through_directories(directory):
+    # loop through all sub directories in the directory
+    for dir in os.listdir(directory):
+        # check if the sub directory is a directory
+        if os.path.isdir(os.path.join(directory, dir)):
+            # call the loop_through_html_files function
+            loop_through_html_files(os.path.join(directory, dir))
+            # call the loop_through_directories function again via recursion
+            loop_through_directories(os.path.join(directory, dir))
+loop_through_directories('.')
diff --git a/trialstyle.py b/trialstyle.py
new file mode 100644
index 0000000..941005b
--- /dev/null
+++ b/trialstyle.py
@@ -0,0 +1,71 @@
+#!usr/bin/env python3
+# function to append to the content of an html file below the body tag
+
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
+.book{
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
+def append_to_body(html_file, content):
+    # open the html file in read mode
+    with open(html_file, 'r', encoding="ISO-8859-1") as f:
+        # read the content of the html file
+        html_content = f.read()
+        html_content.find('body {')
+    # open the html file in write mode
+    with open(html_file, 'w') as f:
+        # write the content of the html file
+        f.write(html_content.replace((html_content[html_content.find('body {'):html_content.find('}')]), 'body {' + content ))
+
+
+
+# function to loop through all html files in the current directory and call the append_to_body function
+def loop_through_html_files(directory):
+    # loop through all files in the directory
+    for file in os.listdir(directory):
+        # check if the file is an html file
+        if file.endswith('.css'):
+            # call the append_to_body function
+            append_to_body(os.path.join(directory, file), content)
+#loop_through_html_files('.')
+
+
+# function to loop through all sub directories and recursively call above function
+def loop_through_directories(directory):
+    # loop through all sub directories in the directory
+    for dir in os.listdir(directory):
+        # check if the sub directory is a directory
+        if os.path.isdir(os.path.join(directory, dir)):
+            # call the loop_through_html_files function
+            loop_through_html_files(os.path.join(directory, dir))
+            # call the loop_through_directories function again via recursion
+            loop_through_directories(os.path.join(directory, dir))
+loop_through_directories('.')
\ No newline at end of file
-- 
2.25.1


