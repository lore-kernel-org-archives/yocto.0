Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE953C761AF
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 16:21:19 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.59630.1680279678607157860
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 09:21:18 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=MFd2aMqS;
 spf=pass (domain: gmail.com, ip: 209.85.128.47, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f47.google.com with SMTP id o32so13228480wms.1
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680279677; x=1682871677;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jdtjLqRjRjkDRVQWaW9uScyW0VFUSoLztDTx8mxMOR0=;
        b=MFd2aMqSmZukNDjxDbKbDKtgFc4/ttlNQexPNYNOm4PPZfcSbVrec+2cf6NvatZ0n9
         fIFfPqzVZTQZJXpjsR46ssrKmPHe/fX8Hex3yqG/23w4dgBvb/vu4ytoYTZBNdmUDWwl
         SsbRrxrB+B33Zd/6Df6Xy4bCXcwMnv35rzEd8dqcAjf11WIn4YmXI+DPDWFqIwwX66Um
         SaoAtCv1/8irH7e8iWmnlWpA3jNDf/C8b+nJxVVSyk0uHIoE/6EpctYMCWFvtEkRWygZ
         u/Tm/JiN3ArRzO4SZcFW9QmuqeHBM4Cg1xHloStGX+Xefwr8ckmQ2ydAUTTdPCfncjbJ
         fJVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680279677; x=1682871677;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jdtjLqRjRjkDRVQWaW9uScyW0VFUSoLztDTx8mxMOR0=;
        b=bXrE+VXQoC+CdSpyyeHh/EEQc35UFlEtzCMpdk1zKmsEFNY049p8oUmy9ta3xTeWSf
         GR8iYBLgwhyhS1BFSRGDmCaC030TIaq875AKTleGnXYEqkPphAjy8vscV8Qvj+4j3pE/
         lKWnaFXoZuIYG85d4ZxmJRV8nm5shIAiYDi3SBYpQPkmt1wXqVAWqvZsKlNHSEOl1/8C
         yt/EEnw4GCqsadTAVbpidm52U08OURCGSPjC/2CZCYg0MzH8gZqevFeX4uwl+7JeQUS8
         3UwjeeV2sC0tGlMZ8lE9zUMZMgVKlwQH73DBBGKbdZv5kcYxN7xZQtonINSPjB6hRXr/
         Qhkw==
X-Gm-Message-State: AAQBX9ek92dCkpd0RefPQOhrL8X/jO796RGF9FdSyRGzMGOMTW9b88xk
	VJmM4u0uN1LKeR7y63g+xOqroXvOPxdywA==
X-Google-Smtp-Source: AKy350YoqfAK0H+Bv2F+UDOS0vLq2A0PRoOWmmW7MXuoxYnu63DB+OSk6UTgYLNMUWjGpW11gxA5NQ==
X-Received: by 2002:a7b:c8d8:0:b0:3ee:1a70:7ea2 with SMTP id f24-20020a7bc8d8000000b003ee1a707ea2mr7333673wml.3.1680279676680;
        Fri, 31 Mar 2023 09:21:16 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id m1-20020a05600c4f4100b003ef5b285f65sm10362423wmq.46.2023.03.31.09.21.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 09:21:15 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	jose.quaresma@foundries.io
Subject: [[yocto][meta-lts-mixins][kirkstone/go] 02/16] make it kirkstone compatible
Date: Fri, 31 Mar 2023 16:20:28 +0000
Message-Id: <20230331162042.1801766-2-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230331162042.1801766-1-jose.quaresma@foundries.io>
References: <20230331162042.1801766-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 16:21:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59571

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 README          | 12 +++---------
 conf/layer.conf |  4 ++--
 2 files changed, 5 insertions(+), 11 deletions(-)

diff --git a/README b/README
index 5b22b72..b2fa46b 100644
--- a/README
+++ b/README
@@ -1,7 +1,7 @@
 "Mixin" layer for adding latest Go toolchain versions into the Yocto Project LTS.
 
-At the time Dunfell was released in April 2020, Go 1.14 was the latest version
-and officially Dunfell supports only that. This thin special-purpose mixin
+At the time Kirkstone was released in May 2022, Go 1.17 was the latest version
+and officially Kirkstone supports only that. This thin special-purpose mixin
 layer is meant to address this issue by backporting Go recipes from the master
 branch of openembedded-core.
 
@@ -11,13 +11,7 @@ Including the layer automatically picks up the latest Go version; different vers
 need to be set explicitly by adding the following line to your distro config 
 or local.conf:
 
-GOVERSION = "1.16%"
-
-Please note: enabling these newer Go versions makes docker from dunfell branch
-of meta-virtualization unbuildable as it is too old. If you need a working docker
-recipe, you can use the supplementary 'dunfell/docker' layer from this meta-lts-mixin
-repository.
-
+GOVERSION = "1.20%"
 
 Maintainers:
 Alexander Kanavin <alex@linutronix.de>
diff --git a/conf/layer.conf b/conf/layer.conf
index 5f74224..9a68448 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,12 +8,12 @@ BBFILE_COLLECTIONS += "lts-go-mixin"
 BBFILE_PATTERN_lts-go-mixin := "^${LAYERDIR}/"
 BBFILE_PRIORITY_lts-go-mixin = "6"
 
-LAYERSERIES_COMPAT_lts-go-mixin = "dunfell"
+LAYERSERIES_COMPAT_lts-go-mixin = "kirkstone"
 
 LAYERDEPENDS_lts-go-mixin = " \
     core \
 "
 
-GOVERSION ?= "1.17%"
+GOVERSION ?= "1.20%"
 PREFERRED_PROVIDER_go-native = "go-binary-native"
 
-- 
2.34.1


