Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A541DC4332F
	for <webhook@archiver.kernel.org>; Tue, 11 Jan 2022 18:06:29 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web08.11399.1641924388545742337
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Jan 2022 10:06:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OJsgryhR;
 spf=pass (domain: gmail.com, ip: 209.85.160.174,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qt1-f174.google.com with SMTP id l17so125345qtk.7
        for <yocto@lists.yoctoproject.org>;
 Tue, 11 Jan 2022 10:06:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UEThi+C81NxY8wC6EYOvoKrYSfUWlnI34BhJZiQQFM8=;
        b=OJsgryhRdB4yrppV6Fx5+g1gM8NSFNfVhqEP0XHec8wssVFqBJlLHs/KXLhb943Zm0
         8HMndGy/seyEpnBEQbcb/bacHT81smuXxAqImvHLO+1G+RvQX4HalRZF5y41sVkYGGjo
         rYnli+cqhVjTqt4Mk38lvBp877dpWhIp3Je6UgtvI46Vs2SH4HaWkLbD48+ULxJid+es
         XveK4mz3N8YatPw4VUNdppipuRnLJb4ri7TfoWQljAOhIHsK51K35ePxCTA6AbZRUkEV
         vTecQVwLu/NdNGNLjlYZffiodj2mlWTwkRiViSukwxkHUBXBTFu4qOceFrQroR4DE8dZ
         7Zyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UEThi+C81NxY8wC6EYOvoKrYSfUWlnI34BhJZiQQFM8=;
        b=foR/G7pt4hO3jQWYOncwjfJRpXx//avimUm/cyU54+wQCrcARUn8n6eC8mniVeb8Pz
         9GfBRZnNYw1Q/IBPDttHmvAXjI9sScx8ccFbUxhRCSSSXRtNxRINfwPjb9II3kLybvc6
         JaNoGCtx6G7gVbZADCE7itTUQfHDDpbePEgtDp4sM6AcLR4MlD6KhH82USsvVvTHVyEv
         Ir7Ek/dpcQ4Lih7WS4gj3S8MmQCyXVKaSGm5XglV1WrW+mWeyVuXaVNfyj/HaGf/mdR2
         4MjF5FVrEQ+/XpQNIPCxZEUpV1It78mWlt415mbbr/72c+GTIfIaAjFsCU/HudfsN1Af
         zPxA==
X-Gm-Message-State: AOAM5319b+RSPU0cMPT0J9PPEHxk5YYKj/e2sptkPfLTWr5DRV6tMhhN
	P4C8kO5imeBVO1sVvaeLU/Dah1jRz4DxSQ==
X-Google-Smtp-Source: 
 ABdhPJxEHP7hORL6Qgoj7m9MA83rCVabfWG9yayAwgSgJ1riVVsVIm+2EsYBMlWW5u+Spxtn5nw+Bw==
X-Received: by 2002:a05:622a:1792:: with SMTP id
 s18mr3036030qtk.684.1641924387636;
        Tue, 11 Jan 2022 10:06:27 -0800 (PST)
Received: from build.lan
 (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.63.222])
        by smtp.gmail.com with ESMTPSA id
 k8sm7543018qtx.35.2022.01.11.10.06.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 10:06:27 -0800 (PST)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 3/3] poky: set default kernel to 5.15
Date: Tue, 11 Jan 2022 13:06:24 -0500
Message-Id: <20220111180624.45586-3-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20220111180624.45586-1-bruce.ashfield@gmail.com>
References: <20220111180624.45586-1-bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Jan 2022 18:06:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55806

From: Bruce Ashfield <bruce.ashfield@gmail.com>

5.14 is no longer actively maintained, so we bump our default
to the 5.15 LTS.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta-poky/conf/distro/poky-tiny.conf | 2 +-
 meta-poky/conf/distro/poky.conf      | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 756c65a2f9..b6c4eeccd0 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -43,7 +43,7 @@ FULL_OPTIMIZATION="-Os -pipe ${DEBUG_FLAGS}"
 # Distro config is evaluated after the machine config, so we have to explicitly
 # set the kernel provider to override a machine config.
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
-PREFERRED_VERSION_linux-yocto-tiny ?= "5.14%"
+PREFERRED_VERSION_linux-yocto-tiny ?= "5.15%"
 
 # We can use packagegroup-core-boot, but in the future we may need a new packagegroup-core-tiny
 #POKY_DEFAULT_EXTRA_RDEPENDS += "packagegroup-core-boot"
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index b92784fdc4..2dc3606ae5 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -19,8 +19,8 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
 DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
-PREFERRED_VERSION_linux-yocto ?= "5.14%"
-PREFERRED_VERSION_linux-yocto-rt ?= "5.14%"
+PREFERRED_VERSION_linux-yocto ?= "5.15%"
+PREFERRED_VERSION_linux-yocto-rt ?= "5.15%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDKMACHINE}-${IMAGE_BASENAME}-${TUNE_PKGARCH}-${MACHINE}"
 SDKPATHINSTALL = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
2.19.1


