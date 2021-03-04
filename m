Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web10.7722.1614870275332548378
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Mar 2021 07:04:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XCWrZ+x4;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id n10so19056798pgl.10
        for <yocto@lists.yoctoproject.org>; Thu, 04 Mar 2021 07:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=IQrBhC63ELlGL1O4fGB50BshWRpme2dEGayZKZQA1Gw=;
        b=XCWrZ+x4xJcUTcf0MCWDwZnZYPMn1dsTL0ELR4AmlTlyqo0Lwki1CDYDPsxQcNcmUK
         gNA78SBIxRchntHAMVRUCoDunvfsMvkRAw6yLBDEohVLgIfNIInNOXY9wCMoF16sZvv0
         KHzRJQ0qXnPtdsjCn5EYJySb/wncsVxeHZEA1h3LAwEkcOt9Ih2DR6ObfGWZ7q97fGW1
         erAzhn6G7AlQWjB8h962lQ1xo0Sfbop+MuA8z68ewwZWXTxByH4eJP+aeOUUDWEyDUO0
         6DgDgxxZSqWHjlcyM6FzkLAUarnm3h9JQyxGh03h8qGxHEI0kFp7hVFGV+uhBygjSH4h
         emHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=IQrBhC63ELlGL1O4fGB50BshWRpme2dEGayZKZQA1Gw=;
        b=bAQGPOM3WYNmEYFiQNSvKURpTlInpBgHQutj7nb8lDFoqfXJRng5UP6qz9rcaYNUjW
         ygn/PVJjmxYxvGcsTCSCxS8oIXD7Xd3WlrFDnP37TA4EwaJDivvIezeu4r/j+/xlKnyD
         gjX30E2acOy8NQ/Gajk3Ko5U53Bxna/q4AWr7khP0Fri3raUL+5g6DvhBOYqIIxrJFZt
         jys76oSnXL2uOAOsVNZGy1sEaIfAYxA/DN5T1th0YlFUutn++noItyz4rvlwbE48Q/lc
         hE3JuYekdl28F7vjj6JqC3amM01KGcoxFsU0B2o2gcEWJosfF1M2wCwbgDuminVzGAb+
         1W0Q==
X-Gm-Message-State: AOAM531jseGnCnd1LbefPeTqMhEukZRBJgmLpUBEmWE0VQf9RcgCtNUL
	KUoMBaHo/9yLBFkCbnfEt4Ue93OSwWM=
X-Google-Smtp-Source: ABdhPJxExsTWD7jpM3oChUpXFC3b5wdXfKb5Y9LNwygr/PWIXp1+J4gyDvD/uUTkrFHu/vpEOTokfQ==
X-Received: by 2002:a05:6a00:22d6:b029:1cb:35ac:d8e0 with SMTP id f22-20020a056a0022d6b02901cb35acd8e0mr4136926pfj.17.1614870274453;
        Thu, 04 Mar 2021 07:04:34 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:2d1c:ec:9aa2:204d])
        by smtp.gmail.com with ESMTPSA id j20sm10518107pjn.27.2021.03.04.07.04.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Mar 2021 07:04:33 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: alex.kanavin@gmail.com,
	Armin Kuster <akuster808@gmai.com>
Subject: [auh][PATCH] auh: Add port 465 and 587 client support
Date: Thu,  4 Mar 2021 07:04:24 -0800
Message-Id: <20210304150424.30802-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmai.com>
---
 modules/utils/emailhandler.py | 23 +++++++++++++++++++++--
 upgrade-helper.conf           |  3 +++
 2 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/modules/utils/emailhandler.py b/modules/utils/emailhandler.py
index 8c8b85b..a70bf23 100644
--- a/modules/utils/emailhandler.py
+++ b/modules/utils/emailhandler.py
@@ -27,7 +27,7 @@ import os
 import logging as log
 from logging import error as E
 from logging import info as I
-from smtplib import SMTP
+from smtplib import SMTP, SMTP_SSL
 import mimetypes
 from email.mime.text import MIMEText
 from email.mime.base import MIMEBase
@@ -35,12 +35,14 @@ from email.mime.multipart import MIMEMultipart
 from email.generator import Generator
 import shutil
 from io import StringIO
+import ssl 
 
 class Email(object):
     def __init__(self, settings):
         self.smtp_host = None
         self.smtp_port = None
         self.from_addr = None
+        self.from_addr_pswd = None
         if "smtp" in settings:
             smtp_entry = settings["smtp"].split(":")
             if len(smtp_entry) == 1:
@@ -57,6 +59,13 @@ class Email(object):
         else:
             E(" 'From' address not set! Sending emails disabled!")
 
+        if "email_client_pswd" in settings:
+            self.from_addr_pswd = settings["email_client_pswd"]
+
+        if self.smtp_port != '25':
+            if self.from_addr_pswd == None:
+                E(" Port %s needs a password, None set!" % self.smtp_port)
+
         super(Email, self).__init__()
 
     def send_email(self, to_addr, subject, text, files=[], cc_addr=None):
@@ -101,7 +110,17 @@ class Email(object):
         msg_text = out.getvalue()
 
         try:
-            smtp = SMTP(self.smtp_host, self.smtp_port)
+            if self.smtp_port == '465':
+                smtp = SMTP_SSL(self.smtp_host, self.smtp_port)
+                smtp.login(self.from_addr, self.from_addr_pswd)
+            else:
+                smtp = SMTP(self.smtp_host, self.smtp_port)
+                if self.smtp_port == '587':
+                    smtp.ehlo()
+                    smtp.starttls(context=ssl.create_default_context())
+                    smtp.ehlo()
+                    smtp.login(self.from_addr, self.from_addr_pswd)
+
             smtp.sendmail(self.from_addr, to_addr, msg_text)
             if cc_addr is not None:
                 smtp.sendmail(self.from_addr, cc_addr, msg_text)
diff --git a/upgrade-helper.conf b/upgrade-helper.conf
index 5696564..3a5b3db 100644
--- a/upgrade-helper.conf
+++ b/upgrade-helper.conf
@@ -25,6 +25,9 @@
 # If no port is specified, port 25 is assumed.
 #smtp=smtp.my-server.com:25
 
+# Define a password needed to contect to email server
+#email_client_pswd=
+
 # from whom should the e-mails be sent (mandatory if --send-emails is passed).
 # Also sets the email address of the author of automated commits.
 #from=uh@not.set
-- 
2.17.1

