Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40E54C4332F
	for <webhook@archiver.kernel.org>; Fri, 18 Nov 2022 14:28:31 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web11.12941.1668781702487695910
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Nov 2022 06:28:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=wDcHQ8vQ;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.170, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f170.google.com with SMTP id f3so5156642pgc.2
        for <yocto@lists.yoctoproject.org>; Fri, 18 Nov 2022 06:28:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y6nW5+rg2hZweFCQEA4wG9aBBdQD1H45JHOhx9T3BxI=;
        b=wDcHQ8vQrm73o2RQMxFE0N8go1bDIDZBzU/zoW/w5xr9+/mIX5WPY8ePAbXeBgrCzj
         ZFuSJgMuwLnYqbWsJo91gaAhJu1OecYLMgcyRvzO4nIMWvPqLqTqf4lULkGZR/PzWkvz
         8RC2HwaIGQnYCYeZAi5RqDXicwdyu7Xw5yjXprjSgSSShk0NZxN59UIk3cpGRCk+F9hO
         By7tzof7ybAOBAbExxvZ4szdOG1HUerBSFdmnWdaklyfl2YvAm7bPggc284CRQlxHFPS
         1R/OZP0kV3CiKyrKZHaEcf3p2aP/2X53LdBpQG8ZhENON3EZ9cvZQfBXDxPfa1clBOyV
         6fJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y6nW5+rg2hZweFCQEA4wG9aBBdQD1H45JHOhx9T3BxI=;
        b=3TTSKDV7codrIJ5iz/t8PuuEL9AZHqZKa8FUiLD6uXZDIjslbJksVNLkUQEontSLjs
         2axwA+2QJ+W9rlCWRCHsVn8WTtQSZZtXsGZ/pk99Wqg/q3fyu8dvtg8OEGSp6kgRBsM7
         EazhxBS3cp5+71dh7Hg70O9WTjMTgffdmgeHasQ6vcnGDWE3qToDZ5SpzSnz4xHIhAlK
         Js6eh+R1tJX+SL2jOpkvQGczwEtKhY+MXNTGAJegCYIGrGa3eUnjJcjGVSWbSDQljMa/
         seh/IFcl8w/5XhTMdavfnSi62adagp7AWlnHWgpSi2j0lPHmcUxN87V+FI2pMs0SEgPn
         08vA==
X-Gm-Message-State: ANoB5pnhjpGCA6nRogm6CO+hxKhxjgVxY1u4KNkQdryE36hZdO0dfnGH
	AYhRtUNP40cT8b5FHOaJ4DWywqrjlEmGSSA4ib0=
X-Google-Smtp-Source: AA0mqf4Ffjzbe4BitSQK68z57/nkvBJ2Zmj4acjHh0ezRuzIxo8EeWxZQ4ACyFaLlei2TfgK4NH+RQ==
X-Received: by 2002:aa7:8c50:0:b0:538:17f5:64e8 with SMTP id e16-20020aa78c50000000b0053817f564e8mr8173474pfd.11.1668781701079;
        Fri, 18 Nov 2022 06:28:21 -0800 (PST)
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id u7-20020a17090341c700b0017f74cab9eesm3759648ple.128.2022.11.18.06.28.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 06:28:20 -0800 (PST)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][langdale] config.json: don't run the meta-agl-core test
Date: Fri, 18 Nov 2022 04:28:14 -1000
Message-Id: <47d71483139752f47c4e70981db7727e095b26ff.1668781506.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1668781506.git.steve@sakoman.com>
References: <cover.1668781506.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Nov 2022 14:28:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58591

langdale isn't currently supported on any branch of meta-agl

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/config.json b/config.json
index da87a2d..27283c9 100644
--- a/config.json
+++ b/config.json
@@ -403,23 +403,6 @@
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
             }
         },
-        "meta-agl-core" : {
-            "NEEDREPOS" : ["poky", "meta-agl"],
-            "ADDLAYER" : [
-                "${BUILDDIR}/../meta-agl/meta-agl-core"
-            ],
-            "DISTRO" : "poky-agl",
-            "BUILDINFO" : true,
-            "BUILDHISTORY" : true,
-            "PACKAGE_CLASSES" : "package_rpm",
-            "extravars" : [
-                "AGL_FEATURES = 'aglcore'"
-            ],
-            "step1" : {
-                "MACHINE": "qemux86-64",
-                "BBTARGETS": "agl-image-core-autobuilder"
-            }
-        },
         "meta-aws" : {
             "NEEDREPOS" : ["poky", "meta-openembedded", "meta-aws"],
             "ADDLAYER" : [
-- 
2.25.1


