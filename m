Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A710C001DF
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 16:44:50 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web10.59294.1697820281004407019
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Oct 2023 09:44:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=eeWqxb8M;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.177, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6b3c2607d9bso944472b3a.1
        for <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 09:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1697820280; x=1698425080; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aBCFPSHsqfem4Dh5MnEZ4ditM6+JQcW1ASTlXB0LFgM=;
        b=eeWqxb8M0pjCO+mCat8m76gzTmSgBII+5hSOSXkQ0+PShkLgZ3VMoRmG8kTeJ2CwBu
         odxw6X+tv8QEf3Fo9UoFTlch0rIS1AOFvF35f0cIVKIZesksOa5y9jr455iVBP0x+h2n
         JVraPSTXuaHiGC6ftOckj8piJRAv+vzBWAWjxqaMNF2QDTndVFfdIp4B5rizvJJe4xHf
         thR+eF/fDZPoZmF8J0gJxEjAgiHtRGPxznx9C9YI9jp2L8N+ElvpwsHlRz/zuKsPNfjR
         GdTEj4shxdkbOwxXMQT/Bt7BaMaJlkvCi6M/ltadyHjXZrw/eUduAp3kX8c31C/ouPJI
         XDuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697820280; x=1698425080;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aBCFPSHsqfem4Dh5MnEZ4ditM6+JQcW1ASTlXB0LFgM=;
        b=VPsN8lei+Mgcbc04CfqEuMc98HWJ++AkYdNUDUw8egln5w/ORK88zYHXSbF2PZelCv
         Wo8oksdYH7ClR+5/g0V+kntxdywobNM5a8i3o8gdTsp5L8/o65eBOdh7d1Wyevkk1fQU
         GwkXf/jTDWgsPECcucfZ0NIF5ThNYAmB+oJ7Td+c+sqiSp67rzat4jrNZJFLAFmd2CD1
         Nb//Qnf7sy7gkk1LnMc4ttpHi8yFVC3gkMvCx4qQ6LBYb3GupOoXd/D55+9HtHG+fL9s
         mD3mrYuZ0wTjEECqfkW3JHurVX/+hddq/fS0UgP7aynra9SFy1N9ndqsXlWrEjpEUeS7
         op5g==
X-Gm-Message-State: AOJu0YyD5CS/jNdi32adTlSX/KGAWH8DDTA08kmqDQ2vkLv/bgh3PIJJ
	0aWkU870AK8uvI4hgAakDPX8OsVPSFZBahxkoOg=
X-Google-Smtp-Source: AGHT+IEnWiIG8kWB2KrnRM30yivWSIXPepkJwRF4XygeW8VwfYVB4vJh+k8ZINdYXa583NWWDmDuuA==
X-Received: by 2002:a05:6a00:2316:b0:690:c75e:25d7 with SMTP id h22-20020a056a00231600b00690c75e25d7mr2563533pfh.18.1697820279990;
        Fri, 20 Oct 2023 09:44:39 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-234-106-30.hawaiiantel.net. [72.234.106.30])
        by smtp.gmail.com with ESMTPSA id g8-20020aa79f08000000b00690c0cf97c9sm1746794pfr.73.2023.10.20.09.44.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Oct 2023 09:44:39 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][kirkstone] config.json: update to latest buildtools tarball
Date: Fri, 20 Oct 2023 06:44:32 -1000
Message-Id: <41cf4f0a5f7bd88c732689cea0f1edb12afa8fe2.1697820208.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1697820208.git.steve@sakoman.com>
References: <cover.1697820208.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 16:44:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61441

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 7c95b53..4167fcb 100644
--- a/config.json
+++ b/config.json
@@ -10,8 +10,7 @@
 
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20210214-8/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.2+snapshot-7d38cc8e749aedb8435ee71847e04b353cca541d.sh",
     "BUILDTOOLS_URL_TEMPLOCAL2" : "https://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
-    "BUILDTOOLS_URL" : "https://downloads.yoctoproject.org/releases/yocto/yocto-3.4/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.4.sh",
-    "BUILDTOOLS_MAKE_URL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20220413-28/buildtools/x86_64-buildtools-make-nativesdk-standalone-4.0.sh",
+    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yocto.io/pub/non-release/20230223-18/buildtools/x86_64-buildtools-extended-nativesdk-standalone-4.1+snapshot-9c07de0f20042c81496185293857284048d7912c.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
-- 
2.34.1


