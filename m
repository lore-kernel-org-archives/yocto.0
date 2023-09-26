Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85FCAE7D277
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 10:17:51 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web11.15467.1695723464771622795
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 03:17:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Ef/MVKnQ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-317c3ac7339so8165693f8f.0
        for <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 03:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695723463; x=1696328263; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=zXJqKg/yjI4vh7O5gFmc6Ty7aw1wYACDyl6XGv3p3vc=;
        b=Ef/MVKnQSQU15Z8uH1bN4hgBfdVKMa8AAOcjR3+g3GR1gqW0isFHhG7l9sWiKBQmEe
         XTnqRHVHEkPLTR2tdkHbtZ9gfelAZNhif0v79DRrsh5Kn0m0olEx40GOhAQb90CyseCI
         JirqTE5fHOraeJQXuC5UZz6d8Llno7F/AWGbk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695723463; x=1696328263;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zXJqKg/yjI4vh7O5gFmc6Ty7aw1wYACDyl6XGv3p3vc=;
        b=IDjg4yb4c6wTeAa65Fe/DcRrqxHHTtXnDOFALWFYlsUi0yaFiqe8MQ51AukjP2CD+V
         Gr/cQ9jyjxfuzBHQYzuG7GASf0pKMZZoXZM8qu0plnXilOA8KjZE41tCUL1qDIcV3bpn
         Ij9fd4NIP5a9jmDzCevkdiyVPxO+/70jS4x6I72cQtIPqQngzmFf+0rsr8WtXjm5FcMn
         ISrHTEUzwDhmcLVOO6m33RXa/y9QQVBAFnrF7W86BdImVGbTZ6zrEpjMGKnwsJcescT1
         jlagkJmwtjqr2pGMGS48YjAtBZ8R3mqNq78tgV3b3bTkJAd4Is8vPZ8UvVqsnBT9/Cnq
         g8aw==
X-Gm-Message-State: AOJu0YzBAz7uYQYZbNhlI2yG7b/RoELCPOts9ODygLA01OhPu7ekEhl6
	DK8rD/bzTRSj98onC1arf+CjTGj/CbarikeXfE0=
X-Google-Smtp-Source: AGHT+IES2DtpIGGAbUzK9HbJKJ96xrtjt5U2g0OXwol85OAKF/Uk+EOgmiQLM69n4G5+sbGdzA4HMg==
X-Received: by 2002:a5d:4a12:0:b0:319:5a7c:6418 with SMTP id m18-20020a5d4a12000000b003195a7c6418mr9296977wrq.43.1695723462585;
        Tue, 26 Sep 2023 03:17:42 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:25bd:4a27:c3da:a228])
        by smtp.gmail.com with ESMTPSA id k14-20020adfb34e000000b00323330edbc7sm2332458wrd.20.2023.09.26.03.17.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 03:17:42 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper] [PATCH] qa_email: Ensure we set an error exit code for errors
Date: Tue, 26 Sep 2023 11:17:41 +0100
Message-Id: <20230926101741.2072531-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 10:17:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61125

Whilst the script needs to continue if we fail to generate a regression report,
set the exit code accordingly so our CI can flag the issue.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/send_qa_email.py | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/scripts/send_qa_email.py b/scripts/send_qa_email.py
index 8f913a6..d113377 100755
--- a/scripts/send_qa_email.py
+++ b/scripts/send_qa_email.py
@@ -15,6 +15,8 @@ import logging
 
 import utils
 
+exitcode = 0
+
 def is_release_version(version):
     p = re.compile('\d{8}-\d+')
     return version is not None and p.match(version) is None
@@ -74,6 +76,7 @@ def generate_regression_report(querytool, targetrepodir, base, target, resultdir
            f.write(regreport)
     except subprocess.CalledProcessError as e:
         error = str(e)
+        exitcode = 1
         log.error(f"Error while generating report between {target} and {base} : {error}")
 
 def send_qa_email():
@@ -177,7 +180,7 @@ def send_qa_email():
 
     if args.send.lower() != 'true' or not args.publish_dir or not args.release:
         utils.printheader("Not sending QA email")
-        sys.exit(0)
+        sys.exit(exitcode)
 
     utils.printheader("Generating QA email")
 
@@ -225,6 +228,7 @@ def send_qa_email():
     # Many distros have sendmail in */sbin
     env["PATH"] = env["PATH"] + ":/usr/sbin:/sbin"
     subprocess.check_call('echo "' + email +' " | sendmail -t', shell=True, env=env)
+    sys.exit(exitcode)
 
 if __name__ == "__main__":
     send_qa_email()
-- 
2.39.2


