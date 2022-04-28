Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DABB4C4332F
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 13:54:07 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
 [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web11.10587.1651154042090443224
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 06:54:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=WCcfecmP;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.173,
 mailfrom: steve@sakoman.com)
Received: by mail-pf1-f173.google.com with SMTP id y14so4299044pfe.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 06:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=V6SNOsoAyBdPVMzbq25pk1NVWNd24iqcbCFdm2IwmhU=;
        b=WCcfecmP+q7HGchbZwGQsV90FNycDadxDvKB5wuWGKz4Vq6EleJt9w6L/2J3SUBrN2
         oi15MXH8LUi7DV9l6mrFncqk6smjbit0mNWn77OzHFE/ZkOIPCTEe3zGQdt/GE2NY4ML
         Ip2e767Xuex3oLvGnHoNUJ1kG5fGRRgOoGztUl1SuP1hUXoSNz4cHMvdHy7MDsHWHUuP
         qEBj3awdQ1Gw5WSu1MdyN2fELRZoEZj0N1KD6iIPCLe/1MaRwN/iuJ8nBNjEBFyYHEwD
         evQshAdHAJY3uogMw5NiIuMVpZ+0hjn9AcgVHAK+oh8fqCIzrCmiH6X53u0DYbjBohLA
         WtGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=V6SNOsoAyBdPVMzbq25pk1NVWNd24iqcbCFdm2IwmhU=;
        b=Jc8qC9eawC9tvFnZuZ24ra10SPcOK7mUNhtdv1/YqQeH8RXa+A8bYHTJond+v7LVCl
         ox0Rl9pbJ6EtBcOqNATDnheFQ5ISKYGi3TKpwtlCPHp3q6njRVoWdj95m8Cw2LIWv1PR
         v889cMHB9lea8k40liN9GY1QRlloIowcYrhi08Bj7hx0yTf26sjnBnx9b9k5S+Lda4I4
         qQxPiOAkU3NzvOCdTpoPF2qXMNomVZ0xcmuoI+rbbEQfbRDgFOqK1S3OgxHAMZ0AXNAS
         3osA9F0vHrlzFk6XvEmD1xzNVPvSxG1vuG02jdsu8Nu8qFaT6kqp5Ow8scuN4r2YXqAc
         5rBg==
X-Gm-Message-State: AOAM532suP9/uc72+66aFul112fKc+d2gR7is8sSflC0/7iyMzmoO+19
	GR29V8Y75wCBV8dLtvAfFIkJNctFKE0zJhxV0As=
X-Google-Smtp-Source: 
 ABdhPJxiIWdbw00wVwlODZZWQNl14hqeaQYUA0TjRKDZnnRdJG7Drki9Pjq6FdGHDUlNUPDHzLGxCQ==
X-Received: by 2002:a62:6411:0:b0:50a:81df:bfa6 with SMTP id
 y17-20020a626411000000b0050a81dfbfa6mr35267034pfb.26.1651154040923;
        Thu, 28 Apr 2022 06:54:00 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net.
 [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id
 m1-20020a17090ade0100b001cb3feaddfcsm5256615pjv.2.2022.04.28.06.53.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Apr 2022 06:54:00 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 1/2]
  scripts/build-perf-test-wrapper: Update to only send text based emails
Date: Thu, 28 Apr 2022 03:53:19 -1000
Message-Id: 
 <aad2dd5a9aeb4cc2da8d974c7b97b2f9961f6953.1651153719.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1651153719.git.steve@sakoman.com>
References: <cover.1651153719.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 13:54:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56941

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit c77f588773924fd724b3c42daace24d6cce50d52)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/build-perf-test-wrapper | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/scripts/build-perf-test-wrapper b/scripts/build-perf-test-wrapper
index 660ef82..53a47ea 100755
--- a/scripts/build-perf-test-wrapper
+++ b/scripts/build-perf-test-wrapper
@@ -68,18 +68,6 @@ if args.results_dir:
     git_repo = args.results_dir + "/archive-repo"
     global_results = args.results_dir
 
-if args.email_addr:
-    try:
-        subprocess.check_output(["which", "phantomjs"])
-    except subprocess.CalledProcessError:
-        print("Please install phantomjs to email reports")
-        sys.exit(1)
-    try:
-        subprocess.check_output(["which", "optipng"])
-    except subprocess.CalledProcessError:
-        print("Please install optipng to email reports")
-        sys.exit(1)
-
 op = fcntl.LOCK_EX
 try:
     lf = open("/tmp/oe-build-perf-test-wrapper.lock", 'a+')
@@ -218,7 +206,7 @@ if git_repo:
         os_name = subprocess.check_output(". /etc/os-release; eval echo '$'PRETTY_NAME", shell=True).decode("utf-8").strip()
         cmd = scriptsdir + "/oe-build-perf-report-email.py --to '" + args.email_addr + \
               "' --subject 'Build Perf Test Report for " + os_name + "' --text " + \
-              report_txt + " --html " + report_html
+              report_txt
         try:
             subprocess.check_call(cmd, shell=True)
         except subprocess.CalledProcessError:
-- 
2.25.1


