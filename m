Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69ADDCD128A
	for <webhook@archiver.kernel.org>; Sun,  7 Apr 2024 19:54:17 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web10.90643.1712519652650278102
 for <yocto@lists.yoctoproject.org>;
 Sun, 07 Apr 2024 12:54:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=dLR0p2AW;
 spf=pass (domain: konsulko.com, ip: 209.85.214.170, mailfrom: tim.orling@konsulko.com)
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1e4266673bbso2135665ad.2
        for <yocto@lists.yoctoproject.org>; Sun, 07 Apr 2024 12:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1712519652; x=1713124452; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OlYEhoBYV4W86tGeLDFGJHSkcfJPBwA35VNWLeo4WBs=;
        b=dLR0p2AWApjV7sNLmqoTQh+kmJrB8pTHJMAloMNzvIv3WXP2ftopshAwB3ZI8gIlS1
         XjRhsUbuxlsdO8Ez69AKMYP5XC1eONOf6aXjl/WdxdmFcnproymw7H3feLDCcxoOLZAZ
         tD7Mg/wlgC092vHkaXnIiPqcfdC7hxbNSfuGk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712519652; x=1713124452;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OlYEhoBYV4W86tGeLDFGJHSkcfJPBwA35VNWLeo4WBs=;
        b=U9ydij5np2ao7DngKyUpkYcch3Rb5DUS2+778nWVslX5rohK/bONTfJuyJor2lzKxX
         KRKHpk/mEpBsciYwsFg/Qaj3XmTwCg5o47Ui5ZomE/XQK+90MNfQASVoSiX2Ig8KGlbS
         gAnz40UUZBqpIetzri8dlwq9rPFPpBjWHNPXAhktEV3SIxFby3TSNRQVobXpeXw++ZXy
         83RrF3EWudAF7Dm+jFpTCgdPCMpXgm0fJC6MHWckBnHxYZtx5DmaMMjcfS3NaqjIVEgy
         qoDNQ5NQizNfIDqRmhpMPzDeaDBRdUc+zhep2AVb2kPKBM8BfVqizGMOOeUdnZbCQJXw
         2Lnw==
X-Gm-Message-State: AOJu0YycFdG7KJImfA1M/0oMz8qpTQ5zJQrMMvJoNGueJnVnNZkHjHQB
	WqP5eQbY8/iY9xfkmxE0va0YmbzqbmOb5sF7A9lvRAndrMV/pW0CMOCbk972QeCmPCU2tfznOKw
	jafmnPA==
X-Google-Smtp-Source: AGHT+IFPjuOGOlb3M8tUy7lHbmOAYJxSpU/15K+DbviW8DIj3C87LfqqnIgCKQ5EquLM+EXg8dOqMQ==
X-Received: by 2002:a17:902:f7c3:b0:1e0:d544:8818 with SMTP id h3-20020a170902f7c300b001e0d5448818mr5985274plw.20.1712519651699;
        Sun, 07 Apr 2024 12:54:11 -0700 (PDT)
Received: from localhost ([2601:1c0:ca00:bd60:5996:ce4c:d10f:fa94])
        by smtp.gmail.com with ESMTPSA id p12-20020a170902780c00b001e3c9a98429sm4609035pll.119.2024.04.07.12.54.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 12:54:11 -0700 (PDT)
From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-raspberrypi][PATCH 3/3] raspberrypi5.conf: Fix KERNEL_IMAGETYPE_UBOOT
Date: Sun,  7 Apr 2024 12:54:01 -0700
Message-ID: <32cdeae038c317a1e9891600752e13a3c95f8d47.1712518899.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <cover.1712518899.git.tim.orling@konsulko.com>
References: <cover.1712518899.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 07 Apr 2024 19:54:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62894

Similar to raspberrypi4-64.conf, we need to set KERNEL_IMAGETYPE_UBOOT to
"Image" and set KERNEL_BOOTCMD to "booti"

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 conf/machine/raspberrypi5.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/conf/machine/raspberrypi5.conf b/conf/machine/raspberrypi5.conf
index e53c2d5..03f15c3 100644
--- a/conf/machine/raspberrypi5.conf
+++ b/conf/machine/raspberrypi5.conf
@@ -22,7 +22,11 @@ SERIAL_CONSOLES ?= "115200;ttyAMA10"
 
 VC4DTBO ?= "vc4-kms-v3d"
 
+# When u-boot is enabled we need to use the "Image" format and the "booti"
+# command to load the kernel
+KERNEL_IMAGETYPE_UBOOT ?= "Image"
 # "zImage" not supported on arm64 and ".gz" images not supported by bootloader yet
 KERNEL_IMAGETYPE_DIRECT ?= "Image"
+KERNEL_BOOTCMD ?= "booti"
 
 UBOOT_MACHINE = "rpi_arm64_config"
-- 
2.43.2


