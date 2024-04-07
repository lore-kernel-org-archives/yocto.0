Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79108CD1292
	for <webhook@archiver.kernel.org>; Sun,  7 Apr 2024 19:54:17 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web10.90641.1712519650592082520
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Apr 2024 12:54:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=DcB2fMbU;
 spf=pass (domain: konsulko.com, ip: 209.85.214.179, mailfrom: tim.orling@konsulko.com)
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1e3e84a302eso6267215ad.0
        for <yocto@lists.yoctoproject.org>; Sun, 07 Apr 2024 12:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1712519650; x=1713124450; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pBN3rSNtCduIZfqDKEvDkJAa+2cgFaLSV0KoNaPiZRg=;
        b=DcB2fMbUbwKTbkL2rsT/Bcrk4Y7pvjSgt+s6a7evz7lWuWHbMM3mVJF9iJBc/i+hd8
         TwChEZQ0WTSAzdVCqw0Jg4kw4cg1Tt4xW5O771400mBLmkp1AR3/mqsmyiW6hgCZ7BMK
         PiPcWmV8wb06W1UmX6snA2rxLIcOKXgA5ElBY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712519650; x=1713124450;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pBN3rSNtCduIZfqDKEvDkJAa+2cgFaLSV0KoNaPiZRg=;
        b=svHNVGYorfO7D8PV60R/EZbiiLLFAHaSMxbkH9nC0VBuGdsVPi4Hasa7+Wje+j1CL6
         lTlYHnmMlXQ0ga1hi4iE3bK34pqcnVKfUiRO6wZvpjoQswHK50yy+HNldQheL23u6zV+
         /F1V8IX2O1ZloQVWRpMq+wZWwEU8rqBKYQdMPY/7iQRSo6Tx9VDoCeuYpXXXyRkrnGG4
         hrE3rdat9ED9q3IqEWvn0MY6uTu8A2lYqamzhMRpBAdwLw8hpLkJtLxqJJA9krO0W54R
         6rhSOnMGoYqEMAeMO3LoLSgJfPSbRGV+D+aC4GRFoJZ6Qr0RBP7/0L38Fh1i9O/eSY8q
         YPvg==
X-Gm-Message-State: AOJu0Yzno5ZiQinCN2bTSaFl2baz50yH8PtYBFKjmVyYj8hnH77wbNLa
	x8+mUxXbWkt5NVZV50QBIfBKWkLgFtRZ2Duuhs4A+4qv4SM1NDygCPgmfZxN9MFY08gQH0X5hGR
	dei6KXg==
X-Google-Smtp-Source: AGHT+IF9kg8OrOOmUW44jY4gTMe+5QUFjcsz4BDSWbBJiGfPHio16moCPPkdmROUGN0LKts4xp4agA==
X-Received: by 2002:a17:902:dac8:b0:1e2:8c12:aac0 with SMTP id q8-20020a170902dac800b001e28c12aac0mr9111387plx.28.1712519649716;
        Sun, 07 Apr 2024 12:54:09 -0700 (PDT)
Received: from localhost ([2601:1c0:ca00:bd60:5996:ce4c:d10f:fa94])
        by smtp.gmail.com with ESMTPSA id q4-20020a170902a3c400b001e2a43bafbasm5418889plb.216.2024.04.07.12.54.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 12:54:09 -0700 (PDT)
From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-raspberrypi][PATCH 2/3] u-boot: re-enable rapsberrypi5
Date: Sun,  7 Apr 2024 12:54:00 -0700
Message-ID: <16dcfcd6ee331d712e3cc7c0cdf2b0f85c33e8af.1712518899.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <cover.1712518899.git.tim.orling@konsulko.com>
References: <cover.1712518899.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 07 Apr 2024 19:54:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62893

With meta-lts-mixins scarthgap/u-boot we can now support raspberrypi5

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 conf/machine/raspberrypi5.conf       | 2 ++
 recipes-bsp/u-boot/u-boot_%.bbappend | 3 ---
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/conf/machine/raspberrypi5.conf b/conf/machine/raspberrypi5.conf
index 8c38637..e53c2d5 100644
--- a/conf/machine/raspberrypi5.conf
+++ b/conf/machine/raspberrypi5.conf
@@ -24,3 +24,5 @@ VC4DTBO ?= "vc4-kms-v3d"
 
 # "zImage" not supported on arm64 and ".gz" images not supported by bootloader yet
 KERNEL_IMAGETYPE_DIRECT ?= "Image"
+
+UBOOT_MACHINE = "rpi_arm64_config"
diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
index 78b3e48..e50acf5 100644
--- a/recipes-bsp/u-boot/u-boot_%.bbappend
+++ b/recipes-bsp/u-boot/u-boot_%.bbappend
@@ -12,6 +12,3 @@ do_install:append:rpi () {
     install -d ${D}${sysconfdir}
     install -m 0644 ${WORKDIR}/fw_env.config ${D}${sysconfdir}/fw_env.config
 }
-
-# Temporary avoid Raspberry Pi 5 because U-Boot has not been ported yet
-COMPATIBLE_MACHINE:raspberrypi5 = "(-)"
-- 
2.43.2


