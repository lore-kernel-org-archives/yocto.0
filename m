Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D66BE7D27F
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 11:04:12 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web10.16347.1695726243116353459
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 04:04:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=aHgWOq2l;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40566f89f6eso55165645e9.3
        for <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 04:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695726241; x=1696331041; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=w9c4HnsF2V+loKwCQwbLmERmyWib9eMFa3xQyWWnRgQ=;
        b=aHgWOq2lYDyKihUOiA5EgXyirBlnF0V7g5SGSEhCfSl8ZWCnqMbvVeHS+i6FuLp98n
         +dsKkS1LnSWfC0C454FtSzewSEP5nR/uZhC0x12zXbF+OEVvICQU5krOKcvU9v7AMzEl
         5+VmweFLHiacBkLHGjZAVndlejF+Jble2kjXY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695726241; x=1696331041;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w9c4HnsF2V+loKwCQwbLmERmyWib9eMFa3xQyWWnRgQ=;
        b=obzECldV7vrO0BJpKux/y/l8O4xV3wKMLBzEg0SA9H8g5GZ7Ko8QXRvl44youlY4oC
         jEeqe5YsGrkwrNMoGA0WQWQfz5m8DNMUg0a6bCynN4o85XeVVRs90WhxVY2+Oz12iMKP
         kjV5oS2NmmwQZYCe4aGxlHBohzjVbARVcR6xsyMaJevvhmRzZkYDIZcPM9q72zK/1/02
         L6g79lH6156JD6rp8wYb80whn2XYR/O5T5667/V5fBl4adKu3/9eXob1UjpY+Eg+q3hf
         h8oNk5MGyt8jId1iuOb4DFpcVWI12tsrOIIgCv87k82/xZNbrJ64Rk2HJxKZYZ7MWAHQ
         k1hg==
X-Gm-Message-State: AOJu0Yz/Of+Tjt4IoV1Q/DJCF70srTl1GVWYP0LGE/pg61HRZQSGuyrM
	n8YJncMZ0iVELt91eSsQSn6GU69uhePZNptjxEk=
X-Google-Smtp-Source: AGHT+IH3gFOBZurQ7k8bWqXXrUC4yOjt9mID/azpR4CbzaK8wKIJNj9gN5JAVdQ0+NRbZb5NsFHSZQ==
X-Received: by 2002:a5d:526e:0:b0:318:69:ab03 with SMTP id l14-20020a5d526e000000b003180069ab03mr9134893wrc.17.1695726241050;
        Tue, 26 Sep 2023 04:04:01 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:25bd:4a27:c3da:a228])
        by smtp.gmail.com with ESMTPSA id f7-20020adff8c7000000b00317afc7949csm14598551wrq.50.2023.09.26.04.04.00
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 04:04:00 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] scripts/send-qa-email: Add URL of build to QA email
Date: Tue, 26 Sep 2023 12:03:59 +0100
Message-Id: <20230926110359.2080439-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 11:04:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61126

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/send_qa_email.py | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index d113377..3d02797 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -101,6 +101,9 @@ def send_qa_email():
     parser.add_argument('-r', '--release',
                         action='store',
                         help="The build/release 'name' for release purposes (optional)")
+    parser.add_argument('--url',
+                        action='store',
+                        help="The url for the build")
 
     args = parser.parse_args()
 
@@ -212,12 +215,13 @@ def send_qa_email():
     email += '''\n
     A build flagged for QA (%s) was completed on the autobuilder and is available at:\n\n
         %s\n\n
+    Build URL: %s\n
     Build hash information: \n
     %s
 
     \nThis is an automated message from the Yocto Project Autobuilder\nGit: git://git.yoctoproject.org/yocto-autobuilder2\nEmail: richard.purdie@linuxfoundation.org\n
 
-    ''' % (args.release, args.publish_dir.replace(web_root, web_url), buildhashes)
+    ''' % (args.release, args.publish_dir.replace(web_root, web_url), args.url, buildhashes)
 
     # Store a copy of the email in case it doesn't reach the lists
     with open(os.path.join(args.publish_dir, "qa-email"), "wb") as qa_email:
-- 
2.39.2


