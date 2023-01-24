Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 325E9C61D9D
	for <webhook@archiver.kernel.org>; Tue, 24 Jan 2023 22:02:12 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web11.29711.1674597730220856680
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Jan 2023 14:02:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RQ086mEt;
 spf=pass (domain: gmail.com, ip: 209.85.160.182, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qt1-f182.google.com with SMTP id j9so14451049qtv.4
        for <yocto@lists.yoctoproject.org>; Tue, 24 Jan 2023 14:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b8+ARwlvh509gkDTI44CpA1gsOfAcfwkCT6l9u/XEsU=;
        b=RQ086mEtKTirNSWlL5x5cNRMvlm4szMSqNM5qOSbZiA/MN36oeYVtL9v5CjuL2Q0Ee
         r0+lpydLMrsNSENdPuJZWEpFA35d9cwWnQg/fic49gUMKGrvsSCv5kcDGoBhNUvVVAUZ
         N6ZWkszxPP9vOE42Rn5kjHgKFDBpTH62ROMc3GF/jfQsUURxXdBqBOgG68OEo+fHNZHw
         r6zlcBm5tzNcgLNfBFNeLTmQuT8zOdYX9m81gF1y9Ql5nFgS8+PcvVgMrxv3D9FFKiQ8
         XgYk1MgOVwtw4WVx6gj374BBo0+U3IJAAOfUqKb8lzwr+bY/gq1ZB8iPez83qMcGW+Cl
         pdxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b8+ARwlvh509gkDTI44CpA1gsOfAcfwkCT6l9u/XEsU=;
        b=s925ZfPRFYEGq4eq/y5wRlaZ6pJKZ25ttkeLu7aY156THMzbbOJze1qyyR7IXTqc8N
         tCqJ5pVqPy/kwWGlqr4L6bKPTzuj/qfeWO65/dD7mT+ec8AOVDpVRb32MG6OvIgS28tT
         6UpPxBDR7rPx8ode2pVRVJ68vaOuFeerFmredze7hq7BAvAKDtuzdr4543S5sAUDpbfq
         D17vdSQgoQ5vS7d3Y+Zv39v0j6vZ6JJVaQ2ef+s5uIrjeYM8WhSHL3MwA+W1xSTSHCUF
         8PBcVJCHrMf/VxkxUfIV+CQJbnOg3g/JLhg8v8wcBFUl8MBbHU1ZsLqgfhmsI+m81gxP
         fNpw==
X-Gm-Message-State: AO0yUKWLCJhWu9yLpjHKNWYGAnItE6qYR9TBKEvGnk2czOeDXBsLjnBf
	70zsx8TkrCAV/fanfzfYTug=
X-Google-Smtp-Source: AK7set+t9ADGtGfJkV8Jmsd60UZ+BX45l4ORN9gesFTQ8PGxyMpw31p1AgkTehpM9+iakEh9nD/LAA==
X-Received: by 2002:a05:622a:1aa2:b0:3a9:80bf:83c0 with SMTP id s34-20020a05622a1aa200b003a980bf83c0mr107316qtc.2.1674597729262;
        Tue, 24 Jan 2023 14:02:09 -0800 (PST)
Received: from build.lan (cpe7c9a54441c1f-cm7c9a54441c1d.cpe.net.cable.rogers.com. [173.34.238.88])
        by smtp.gmail.com with ESMTPSA id c38-20020a05620a26a600b006ea7f9d8644sm2196923qkp.96.2023.01.24.14.02.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 14:02:08 -0800 (PST)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 1/2] poky/poky-tiny: bump preferred version to 6.1
Date: Tue, 24 Jan 2023 17:02:06 -0500
Message-Id: <092093dd500c7326b79b4123732707d4e3e13c30.1674597613.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1674597613.git.bruce.ashfield@gmail.com>
References: <cover.1674597613.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Jan 2023 22:02:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59054

From: Bruce Ashfield <bruce.ashfield@gmail.com>

5.19 will be removed shortly, bumping the preferred versions for
poky/poky-tiny to 6.1. The -alt config remains on 5.15.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta-poky/conf/distro/poky-tiny.conf | 2 +-
 meta-poky/conf/distro/poky.conf      | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index ce466e30b7..188bd6c8c0 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -44,7 +44,7 @@ FULL_OPTIMIZATION="-Os -pipe ${DEBUG_FLAGS}"
 # Distro config is evaluated after the machine config, so we have to explicitly
 # set the kernel provider to override a machine config.
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
-PREFERRED_VERSION_linux-yocto-tiny ?= "5.19%"
+PREFERRED_VERSION_linux-yocto-tiny ?= "6.1%"
 
 # We can use packagegroup-core-boot, but in the future we may need a new packagegroup-core-tiny
 #POKY_DEFAULT_EXTRA_RDEPENDS += "packagegroup-core-boot"
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index dc0e8e76ab..1d086b9213 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -20,8 +20,8 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
 DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
-PREFERRED_VERSION_linux-yocto ?= "5.19%"
-PREFERRED_VERSION_linux-yocto-rt ?= "5.19%"
+PREFERRED_VERSION_linux-yocto ?= "6.1%"
+PREFERRED_VERSION_linux-yocto-rt ?= "6.1%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDKMACHINE}-${IMAGE_BASENAME}-${TUNE_PKGARCH}-${MACHINE}"
 SDKPATHINSTALL = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
2.34.1


