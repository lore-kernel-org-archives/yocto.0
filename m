Return-Path: <ptsneves@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8B01C433EF
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 08:43:09 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web12.9864.1654591380685297669
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 01:43:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=h1/GKnt8;
 spf=pass (domain: gmail.com, ip: 209.85.208.174,
 mailfrom: ptsneves@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id e4so2446321ljl.1
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 01:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RxabW9b5S7iV26JhgBSnBpTIsAhmo4ZFt45wghv8SVQ=;
        b=h1/GKnt8m3FhJdYZF6AFHggIgrEyJZ86+hNLqyqlhLptJcZyYn8Hi3QDR0AZrj0vqE
         Qfm27XVNfCqopulpPqZFvyTbANc95gAHlcQmpJSmXWVCN/Cm8Mchg47bJus8NYCYCnst
         Uf37wERXF5jz/nTL2gsSuuiJHk76/Xfmx8Jw8gWbLsIuD75GrCeturIgHdhYQ64jp5F+
         WttgWnHejtj+WRUxnL4ByICxCUPoZPgSvvOXRW0LwZ7HYvyyLBDl3VP+kZVJ1ftvj8T+
         gGzCY1LeXIx9ZxSQvLlhtHPGSzgvYUPb2JbYC7SUFoX/PEKlymlIw+AkeHTKn77j5hFu
         ut+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RxabW9b5S7iV26JhgBSnBpTIsAhmo4ZFt45wghv8SVQ=;
        b=LWT8UiBEHNzYmakFL5WWzb5Awd2H46CnM4tiup2W3Y7hmh3/Xl5i3YaVlK+IOEZWUx
         dLKfNI8quZPhihsAIvh0eOvhVkt3U7qBSF79tgmB7t7kau0a0d4jrgU0crIoXWqpCxUo
         1DrPnEwTh+oisAOIc9qy8BPJ55oSeHk0T8pgj5IY9NH3w+Sml9VXOpn4VPiwSupc3n6s
         rFbcdonP/5G6iBOFX48RHN9RP7Slkwr+5yVMPCGW+eQeEqhBWomPI0JovAJ348gz/8pZ
         BWlj/FEfPHa85PYjLyyCy/bMzQD5eW0j5m9GDOrupbJihPGHNAe56VMqO0TxWG2HPNxZ
         tK6w==
X-Gm-Message-State: AOAM531GxdWCsdbnWGuqEyMcPyA3U2roaIKP1ewgRU6l1tRHKZyFetAN
	v6QV2P24aIuoBDhyhYPXgPuEQ7PKyA==
X-Google-Smtp-Source: 
 ABdhPJzGmK3iQLZRzO/0T/siF4yKCsStRP2guzwdzV0PbwD/Wd2KdtjU1ynNIn8iNE9Xeml27LOgeA==
X-Received: by 2002:a2e:a5ca:0:b0:254:1ef2:e6b5 with SMTP id
 n10-20020a2ea5ca000000b002541ef2e6b5mr32636987ljp.330.1654591378964;
        Tue, 07 Jun 2022 01:42:58 -0700 (PDT)
Received: from pneves-XPS-15-9550.sigma.local
 (85-128-83-172.static.ip.netia.com.pl. [85.128.83.172])
        by smtp.gmail.com with ESMTPSA id
 k19-20020ac24f13000000b00477c05f9ffbsm3203271lfr.9.2022.06.07.01.42.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 01:42:58 -0700 (PDT)
From: Paulo Neves <ptsneves@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Paulo Neves <ptsneves@gmail.com>
Subject: [PATCH v2 2/2] manuals: SYSTEMD_SERVICE overrides depend on
 SYSTEMD_PACKAGES
Date: Tue,  7 Jun 2022 10:42:54 +0200
Message-Id: <20220607084254.2694011-2-ptsneves@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220607084254.2694011-1-ptsneves@gmail.com>
References: <20220603163521.146659-1-ptsneves@gmail.com>
 <20220607084254.2694011-1-ptsneves@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 08:43:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57278

Add detail that package overrides are only available if
specified in SYSTEMD_PACKAGES.

Signed-off-by: Paulo Neves <ptsneves@gmail.com>
---
 documentation/ref-manual/variables.rst | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/documentation/ref-manual/variables.rst b/documentation/ref-manual/variables.rst
index 42178d556..e31f0ed88 100644
--- a/documentation/ref-manual/variables.rst
+++ b/documentation/ref-manual/variables.rst
@@ -7664,6 +7664,10 @@ system and gives an overview of their function and contents.
 
          SYSTEMD_SERVICE:${PN} = "connman.service"
 
+      The package overrides that can be specified are directly related to the value of
+      term:`SYSTEMD_PACKAGES`. Overrides not included in term:`SYSTEMD_PACKAGES`
+      will be silently ignored.
+
    :term:`SYSVINIT_ENABLED_GETTYS`
       When using
       :ref:`SysVinit <dev-manual/common-tasks:enabling system services>`,
-- 
2.25.1


