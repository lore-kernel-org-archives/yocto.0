Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B958CE7B10
	for <webhook@archiver.kernel.org>; Thu, 28 Sep 2023 09:47:44 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web10.10243.1695894461994938230
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Sep 2023 02:47:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=CEjM9KCF;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-406402933edso43044375e9.2
        for <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 02:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695894460; x=1696499260; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C8tCS0bMj2aXwDmkbM4SM51+aXswC7HJ4E5lNhgVHKA=;
        b=CEjM9KCFFY+Wd+fcvLmC09Xqt5J1Cu1THffRxQDVPJ0qwT0OzRaOoQ4CCxcMDdcyFU
         ACpDQ+CnNrMUvrxv3QFWE6yqCjkO/Zc04y8iukzz6JP8UZF3NclSDW+8PMwePXK5JT8c
         acPK4grFcftkW+VtET/10EpMWYOFizZJR7onM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695894460; x=1696499260;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C8tCS0bMj2aXwDmkbM4SM51+aXswC7HJ4E5lNhgVHKA=;
        b=USm0CSwBdHQfeQLo4GRV1Ma9RbJMBDNUzwvQZjhL8OSY8MV45L6NCVuuoxAoGctL97
         vf1ZFSe0HHT2hDXZZKv2oyRCqk+vNIXjvmc5Mj+XpFOjbk3fXGSHm7Qb9BaB/p1QZGl3
         VMnODjC3UrbocnWYiA7pHgM2rTUlo8zrk47hz8++n9B1ZqFdiBUstvPnhJEYnwlNyHLn
         9uPxSuVQyc6C229kE7gU1FlmdokGhsiYAIDFYmnCWzB7SlJoGvVbsW2kz6Xh8h8aXel1
         +cBBk6ZsZSeTKYvWnqZxre5Jbq5u3NLYW2np/XhxgkakyGo+vlKHj/LFKVGQ10lROeCH
         I4Ww==
X-Gm-Message-State: AOJu0YyX9u/Y0dASojnDtW2XuLqz2v92SZSiuSdPJqf6swZc88+yzWf0
	E34+pBc//hVzhi432c1nKFYaXjWFdVaAiWMUFh0=
X-Google-Smtp-Source: AGHT+IFsv4n6eTC0NwrGF7k+BZk3mROA0sOlFnE/yeF3KHpBavDAJcopCLMzVryzIrUaqdz6QHLy3Q==
X-Received: by 2002:a7b:c456:0:b0:401:eb0:a98d with SMTP id l22-20020a7bc456000000b004010eb0a98dmr737389wmi.24.1695894460274;
        Thu, 28 Sep 2023 02:47:40 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:259f:7d13:e5a1:bb93])
        by smtp.gmail.com with ESMTPSA id o5-20020a05600c378500b004064ac107cfsm2039591wmr.39.2023.09.28.02.47.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 02:47:40 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] [PATCH 3/4] services: Update email notification config
Date: Thu, 28 Sep 2023 10:47:36 +0100
Message-Id: <20230928094737.2373931-3-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230928094737.2373931-1-richard.purdie@linuxfoundation.org>
References: <20230928094737.2373931-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 09:47:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61151

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 services.py | 29 ++++++++++++++++++-----------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/services.py b/services.py
index cc891434..bdfdbc1d 100644
--- a/services.py
+++ b/services.py
@@ -3,20 +3,27 @@
 #
 
 from buildbot.plugins import reporters
-
 from yoctoabb import config
-
+import os
 
 services = []
 
-# TODO: we'll replace this with functionality in yocto-autobuilder-helpers
-# to mail the error reports to the list
-# services.append(
-#     reporters.MailNotifier(fromaddr="yocto-builds@yoctoproject.org",
-#                            sendToInterestedUsers=False,
-#                            extraRecipients=["yocto-builds@yoctoproject.org"],
-#                            mode=('failing',))
-# )
+with open(os.path.join(os.path.dirname(__file__), "default_mail.txt"), "r") as f:
+    emailtext = "\n".join(f.readlines())
+
+formatter = reporters.MessageFormatter(template=emailtext)
+
+generator = reporters.BuildStatusGenerator(
+    mode=('failing', 'warnings', 'exception', 'cancelled'),
+    message_formatter=formatter,
+    builders=['a-full', 'a-quick', 'buildperf-alma8', 'buildperf-debian11', 'docs'])
+
+#services.append(
+#     reporters.MailNotifier(fromaddr="controller@yoctoproject.org",
+#                            extraRecipients=["yocto-builds@lists.yoctoproject.org"],
+#                            generators=[generator])
+#)
+
 
 # services.append(
 #     reporters.IRC(host="irc.freenode.net",
@@ -39,4 +46,4 @@ services = []
 # from yoctoabb.reporters import swatbot
 # services.append(
 #     swatbot.SwatBot("http://localhost:8000/", "buildbot-notifier", "password")
-# )
\ No newline at end of file
+# )
-- 
2.39.2


