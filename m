Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F140E7D275
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 10:14:31 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web11.15436.1695723270461204819
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 03:14:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OqtbsLW0;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40566f8a093so53846645e9.3
        for <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 03:14:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695723269; x=1696328069; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=MRvLTq7/ElhvRmC2fdYtRvhzCVLzBxnD8mE8iVJXhPU=;
        b=OqtbsLW0OigtJdy4Z6NyVc5aZYYHhVd43D7EKNdi2Id90OG0gBI98cHIeKXV/NXqFB
         vnQ6H/KiR3QG9o6IkVZLd2QXTfTomSI2XDjCGL7kJR3slW5+KoaNN5fomWymuUAvgHC6
         pDdULf6KYHTwTVgaCcf8nbp+FmBYJS/G7ROyk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695723269; x=1696328069;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MRvLTq7/ElhvRmC2fdYtRvhzCVLzBxnD8mE8iVJXhPU=;
        b=StkjeOSd9FaDDC/bl30e/1lxIhdJgoc7x8PfBkMRxF3xPbGjQuiW7UWt/tsgBrFgJ5
         bFh/epUFcjfEOOnv6jgM1eqdjPNUwSvXT8rgaZRWk6150TgAb9eRORhXYr4t0EHg6KRf
         lrheg/sd1A1E4id9hlXxztPEpicxiesfg7fug7DE8N2pyyEuQRM+6PooVflTbtHEbbid
         8YNg0o/6R+4zt+bV3JPjYJOGgwSivkXpUxFepVKEeVyBZ8rR+dXcRhkOAEooSHe14Gov
         B3tS39P39OlEBNMzBfIP/4dcY48dydBDQE9tRZ/toHMIf8N0CZ58pxHUBN5JDWHf2hvt
         wEDg==
X-Gm-Message-State: AOJu0Yx9iKD12+ZXoFKsP6Eo2E8EjjttXjKJbKO2yfiWP7WecPYDq+L3
	Z8hWF5MhInwgG6tAf3NimieqSmxSZp/Hz5HGjBY=
X-Google-Smtp-Source: AGHT+IF4Ry3d382SgvCOSwqYDo7zFvrUr0xy3vEw8cuhn89SNqyZJAcxpWMVk2Grj+ghuZRAASB69Q==
X-Received: by 2002:a7b:cc81:0:b0:3fe:687a:abb8 with SMTP id p1-20020a7bcc81000000b003fe687aabb8mr7467180wma.7.1695723268187;
        Tue, 26 Sep 2023 03:14:28 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:25bd:4a27:c3da:a228])
        by smtp.gmail.com with ESMTPSA id x10-20020a05600c21ca00b004051b994014sm17479468wmj.19.2023.09.26.03.14.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 03:14:27 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] qa_email: Add headers to the script to improve debugging
Date: Tue, 26 Sep 2023 11:14:26 +0100
Message-Id: <20230926101426.2072155-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 10:14:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61124

It is hard to tell which section of the code specific error messages
come from at present. Add more headers to the output so we can at
least tell which section the messages are from. It also adds some
timing information.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/send_qa_email.py | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index fc7fccc..8f913a6 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -116,6 +116,7 @@ def send_qa_email():
     repodir = os.path.dirname(args.repojson) + "/build/repos"
 
     if 'poky' in repos and os.path.exists(resulttool) and os.path.exists(querytool) and args.results_dir:
+        utils.printheader("Processing test report")
         # Need the finalised revisions (not 'HEAD')
         targetrepodir = "%s/poky" % (repodir)
         revision = subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=targetrepodir).decode('utf-8').strip()
@@ -129,6 +130,7 @@ def send_qa_email():
 
         tempdir = tempfile.mkdtemp(prefix='sendqaemail.')
         try:
+            utils.printheader("Importing test results repo data")
             cloneopts = []
             if comparebranch:
                 cloneopts = ["--branch", comparebranch]
@@ -152,6 +154,8 @@ def send_qa_email():
                     subprocess.check_call(["git", "branch", basebranch], cwd=tempdir)
                     subprocess.check_call(["git", "checkout", basebranch], cwd=tempdir)
 
+            utils.printheader("Storing results")
+
             subprocess.check_call([resulttool, "store", args.results_dir, tempdir])
             if comparebranch:
                 subprocess.check_call(["git", "push", "--all", "--force"], cwd=tempdir)
@@ -162,6 +166,7 @@ def send_qa_email():
             elif is_release_version(args.release) and not comparebranch and not basebranch:
                 log.warning("Test results not published on release version. Faulty AB configuration ?")
 
+            utils.printheader("Processing regression report")
             regression_base, regression_target = get_regression_base_and_target(basebranch, comparebranch, args.release, targetrepodir)
             if regression_base and regression_target:
                 generate_regression_report(querytool, targetrepodir, regression_base, regression_target, tempdir, args.results_dir, log)
@@ -174,6 +179,8 @@ def send_qa_email():
         utils.printheader("Not sending QA email")
         sys.exit(0)
 
+    utils.printheader("Generating QA email")
+
     buildhashes = ""
     for repo in sorted(repos.keys()):
         # gplv2 is no longer built/tested in master
-- 
2.39.2


