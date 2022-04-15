Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6896DC7114B
	for <webhook@archiver.kernel.org>; Mon, 18 Apr 2022 14:26:04 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web11.8186.1650034701230087965
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Apr 2022 07:58:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HGB0vtTB;
 spf=pass (domain: gmail.com, ip: 209.85.221.41,
 mailfrom: abongwabonalais@gmail.com)
Received: by mail-wr1-f41.google.com with SMTP id m14so10949968wrb.6
        for <yocto@lists.yoctoproject.org>;
 Fri, 15 Apr 2022 07:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Dy4f1/NDWgHREPa4GS5AGBjPjhXapnc5bmZ9rfZKevM=;
        b=HGB0vtTB0kuIYuE3pKaxagJxkJOOMX+jZFF0qBcnA1WHB0vKhGdD3QJim3pmY+jBtF
         rN0ZLXDlZ/IItejZyr/vSu8gedlsbo4mGSJIJLrgolMi7AqJpKlOS49+zBth0x2WOXew
         TLa+w9cf7lFvgW7ysG7tJjFC6hF358UFgbV7Iyqt3apqKO2bTiOPc6fWBWFjOteooTeL
         FqS+ym2c4PXD6RT90hVphGK7mV1ogYAyDORk/DNlWLgxHKqQT9/JZoG/DfrEhikVNy2A
         BaQjGy6DcvnEoAnfBCMty7Cw4/P78mKlfDt/ZcSa81dhkjX/Tadp3X9bWvCnpqtcArc1
         /sxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Dy4f1/NDWgHREPa4GS5AGBjPjhXapnc5bmZ9rfZKevM=;
        b=7E2IANynDXjyNDk6A4UK6864enplXGa4HokEKhuwrj7wgqaIPd4xy56hKiTMm/YUXk
         7rv5ohyH/oDhsloYoX4T7l4eiSI9BQnFQFnbKscBo02+fp0xLFH6hLfL0UPPBWFdY353
         JvLz3QG4RddTnLoXVmpB3e6py8OYUlcEji/s7T32L/gVGIy/LxkK7ek2O5WKux+xjXUc
         ZCdUrQD/Z+fQb2iWa2cmrSEYiRZVxIMfGyzRktg2dr5KONNjfXjKBvLZ29a5OqHzWC/M
         RDCLto7n7wOOCfTccWJs7RGTV5PSmHK4ZaMWx5Ci+Bk3CwlSx7EwVvRLC6ocVWE6InaU
         wODg==
X-Gm-Message-State: AOAM530JyQlDQd/ujHjwTmU9DIp0l51qtHD6UM8wfZEHHqjsET8Jpb1+
	9JYhgaLgkBA2lMvDUDlagJnepGQIUZSpuA==
X-Google-Smtp-Source: 
 ABdhPJw/Oic0bz3bmg84nqFOcD9v/dPwk+Sw+MXL32vTKw4/ujFGYkOu13pKCsjIZmV3QNP+Hs0esg==
X-Received: by 2002:adf:e0c5:0:b0:206:1ba3:26aa with SMTP id
 m5-20020adfe0c5000000b002061ba326aamr5841081wri.645.1650034699323;
        Fri, 15 Apr 2022 07:58:19 -0700 (PDT)
Received: from localhost.localdomain ([154.72.153.130])
        by smtp.gmail.com with ESMTPSA id
 c11-20020a05600c0a4b00b0037c91e085ddsm10995664wmq.40.2022.04.15.07.58.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 07:58:19 -0700 (PDT)
From: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] Wrote python to automatically add a
 banner at the top of outdated yocto-doc versions,pointing the user to the
 latest version of the document.
Date: Fri, 15 Apr 2022 15:54:38 +0100
Message-Id: <20220415145437.45494-1-abongwabonalais@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Apr 2022 14:26:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56779

The main issue I am facing now is how to go around the "UnicodeDecodeError: 'utf-8' codec can't decode byte 0xa0 in position 99: invalid start byte" for the html script and the "UnicodeDecodeError: 'utf-8' codec can't decode byte 0xe9 in position 158: invalid continuation byte error" for the css script I get after the script has edited some of the files in the folder containing the outdate versions, but it works perfectly in all the other directories I tested in on.
But this error comes after some html and css files have successfully been edited by the script.

Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
---
 trial.py      | 38 +++++++++++++++++++++++++++++
 trialstyle.py | 67 +++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 105 insertions(+)
 create mode 100644 trial.py
 create mode 100644 trialstyle.py

diff --git a/trial.py b/trial.py
new file mode 100644
index 0000000..d96bef5
--- /dev/null
+++ b/trial.py
@@ -0,0 +1,38 @@
+# function to append to the content of an html file below the body tag
+content = ' <div id="outdated-warning">This document is for outdated, you should select the <a href="https://docs.yoctoproject.org/">latest release version</a> in this series.</div>'
+
+def append_to_body(html_file, content):
+    # open the html file in read mode
+    with open(html_file, 'r') as f:
+        # read the content of the html file
+        html_content = f.read()
+    # open the html file in write mode
+    with open(html_file, 'w') as f:
+        # write the content of the html file
+        f.write(html_content.replace('<body>', '<body>' + content ))
+
+
+
+import os
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
index 0000000..36b1365
--- /dev/null
+++ b/trialstyle.py
@@ -0,0 +1,67 @@
+# function to append to the content of an css file below the body class
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
+    with open(html_file, 'r') as f:
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
+import os
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


