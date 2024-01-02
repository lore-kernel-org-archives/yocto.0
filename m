Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91038C46CD2
	for <webhook@archiver.kernel.org>; Tue,  2 Jan 2024 04:34:44 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web10.22886.1704170076946713448
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Jan 2024 20:34:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KcDlHFGX;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7815547f2c5so350663285a.3
        for <yocto@lists.yoctoproject.org>; Mon, 01 Jan 2024 20:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704170076; x=1704774876; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CHl+mwNSqI2hWopOQKSp1WKrGvBeI27APeHXPxKxpm0=;
        b=KcDlHFGXi+ElhB0I740KzklwQqz2T7ZhrnY+lB+QIRmYnU7FlXO4eKOcG4vuOU9B3n
         ArPeigwwjO3pYjTNVDt0gQQ84ZSb1qs9yVujG/rCSS6ciXwKCayHbSNllpqufEtGHnCL
         FPdKhHCgmTZ5nx5p1RZH1GLuYoTMonINkHzyDULd2GUlaCFyPkJrDwTuhFAlTaSDQNkN
         2uCOIVK6ugc5ErsDmvP1609ZbKftw7nXr75YOx3ol2zWBGKzRx3ICLPE6Xvyk/BTz048
         FsX70BxqERBOLw9yxAGAnAIq+oOkxWqPhIXf5bx/TSyVkF0Tb7xM2lKm4p7/m5cpYCme
         ni3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704170076; x=1704774876;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CHl+mwNSqI2hWopOQKSp1WKrGvBeI27APeHXPxKxpm0=;
        b=Pk/c/K4rN4xXW5VYqRSmreRklsMSIUyc6lU5faaFBbrLXaPZ2c9Z1bLFjNg3erI5gD
         U7hd/9ioSk4pGXrP5mTzlJh/HrYP/EgKQRqec/PwetMo3zR+QmJ8YAQ/oCNVIvkLcs8l
         NWIuF4SENvrEq02yw9nwv/oQ+z48LoOudXFxmcy/HFx+ana3L+crRyFOhFQU/5O5gKSW
         qrJSswsWbrNMLr64ZrCX02ZvMVXXFmMSAA8UmG1KpFvWXdRdmB0dkHP0UanL+Mfo5tiz
         uHuMbCjEIuMpoea/Y8sUfC9SE32BweGKglriJ8dJxAvaOulujhgVGR3E0pR8djBwb4SQ
         g8qA==
X-Gm-Message-State: AOJu0Yw6dv+DOE92iaQUuNBmIRHqAcxWRGem6leFqGw07TIOaYakwcwQ
	bauC6cREykdsaj0lpYneoWM=
X-Google-Smtp-Source: AGHT+IGD+Hw2y8z8EyWQt/C48zQtOo21WoQ6bN8a+iEmtgfsBN81doDF2eGt53sdDwYpitaujHNwHQ==
X-Received: by 2002:a05:620a:147b:b0:781:3cf9:5df6 with SMTP id j27-20020a05620a147b00b007813cf95df6mr12433617qkl.93.1704170075778;
        Mon, 01 Jan 2024 20:34:35 -0800 (PST)
Received: from bruce-XPS-8940.. ([174.112.183.231])
        by smtp.gmail.com with ESMTPSA id u17-20020a05620a023100b0077f4ed33307sm9167049qkm.30.2024.01.01.20.34.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jan 2024 20:34:35 -0800 (PST)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH] poky/poky-tiny: make 6.6 the default kernel
Date: Mon,  1 Jan 2024 23:34:34 -0500
Message-Id: <20240102043434.2578723-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 04:34:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62062

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Bumping the reference distros to the latest -stable/lts
kernel.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta-poky/conf/distro/poky-tiny.conf | 2 +-
 meta-poky/conf/distro/poky.conf      | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 24bcbee9bb..f3dfa8107a 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -44,7 +44,7 @@ FULL_OPTIMIZATION="-Os -pipe ${DEBUG_FLAGS}"
 # Distro config is evaluated after the machine config, so we have to explicitly
 # set the kernel provider to override a machine config.
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
-PREFERRED_VERSION_linux-yocto-tiny ?= "6.5%"
+PREFERRED_VERSION_linux-yocto-tiny ?= "6.6%"
 
 # We can use packagegroup-core-boot, but in the future we may need a new packagegroup-core-tiny
 #POKY_DEFAULT_EXTRA_RDEPENDS += "packagegroup-core-boot"
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index f4d55a41c1..3b7bc66780 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -19,8 +19,8 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
 DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
-PREFERRED_VERSION_linux-yocto ?= "6.5%"
-PREFERRED_VERSION_linux-yocto-rt ?= "6.5%"
+PREFERRED_VERSION_linux-yocto ?= "6.6%"
+PREFERRED_VERSION_linux-yocto-rt ?= "6.6%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDKMACHINE}-${IMAGE_BASENAME}-${TUNE_PKGARCH}-${MACHINE}"
 SDKPATHINSTALL = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
2.39.2


