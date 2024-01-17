Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 564CBC47DA7
	for <webhook@archiver.kernel.org>; Wed, 17 Jan 2024 05:48:48 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web11.3002.1705470526211335768
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jan 2024 21:48:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=If0MPlre;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-681601d9234so20968096d6.0
        for <yocto@lists.yoctoproject.org>; Tue, 16 Jan 2024 21:48:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705470524; x=1706075324; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=e/uL5UU/SXz1QZ9dEu2+w+OkIJaN42C/HzgyaNxPeJM=;
        b=If0MPlreagX1LF6hDW7NfAKMZbfvFpIRtTJ/EvTQa2yqY3MtbYg+gejwew43n1w9Dh
         FaAQH0NO3oWgialhiqsJJlxVKPabnzYLNR/yUfrnyExSpH7T7IqYz1zks4lpbGuVRapF
         m5x/zvTae0o9kZrGTFNq4YXDYg9awby5Id0foDVTs5Tg7ZClc+TinDm6wEHm76GfPo+k
         DIeoh9No22/zeSV0tqNMVBiPzj6nWispHIDnLuVmreWS9i+QMGWHKbZlu7SegOH61Ljg
         5L4QnXJaGR+B40rorVdfntZOzI47hKuVQfL1kcLD0IP7HiMPuEBw6RVKSANUZQphLmy0
         CSQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705470524; x=1706075324;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e/uL5UU/SXz1QZ9dEu2+w+OkIJaN42C/HzgyaNxPeJM=;
        b=LnkhG8m02XRPhpL/m9MUteCQjGu+6SERcncR5lPxM0udL+BOL8ifCx7xFNrSdZj7hK
         EjbxxC5NyuJTTB82IOtlk7w9rKsM4vUtbgcg2/v6r8gp1cQNhT2KZvj1YSBr5MwboVTH
         Yl/UGw2RWVcPf5UctV3vJixI4HbGhij83DwrOneduWjgtV6WVpyuNsJsaXDhxT910tPr
         FSSeIZY5DyM2BKwb58rSEFs1kT0NIrSh7HLdGLyIQVqgXA7jTBY16DBqGyekJtisvv+T
         XznbfGRA+WzlVlOo1W3cHStSZUPG0yVrZdxevvI98hZNhLd3qSm4ZDGvvKvb7C8J6Sx2
         palQ==
X-Gm-Message-State: AOJu0YxNPT/5o18JLa1lT5OHvMAl42jCM/mcb9KM10v+yThFeyexL9kb
	BrBo8jSJwVDHuZHCnhSsZgPyLrXkn2YNkJxGzW0katidDmccUHHd8OPY9R4S
X-Google-Smtp-Source: AGHT+IHH1xZ9PPmoK+47CxKEaJfwyx8LWt/fq9RHiGfku5WKhN84TiZ2T1HkbGdYdqctTARPNoea8Q==
X-Received: by 2002:a05:6214:e8e:b0:681:6991:34f0 with SMTP id hf14-20020a0562140e8e00b00681699134f0mr386535qvb.7.1705470524118;
        Tue, 16 Jan 2024 21:48:44 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id g4-20020a0cfdc4000000b00681617e4a72sm2026602qvs.68.2024.01.16.21.48.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 21:48:43 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] u-boot: fix build for rk3308
Date: Wed, 17 Jan 2024 00:48:41 -0500
Message-ID: <20240117054841.8152-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Jan 2024 05:48:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62175

In upstream mainline U-Boot commit 9e13fef00b8d ("rockchip: Kconfig: Enable
external TPL binary for rk3308") U-Boot was changed to incorporate the DDR TPL
using the same mechanism as the RK3568 and RK3588 platforms.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-bsp/u-boot/u-boot%.bbappend | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index d902c9a05a83..3e59e46c646f 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -4,7 +4,10 @@ DEPENDS:append:rock-pi-s = " u-boot-tools-native"
 DEPENDS:append:rock-pi-4 = " gnutls-native"
 
 EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
-EXTRA_OEMAKE:append:rk3308 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3308.elf"
+EXTRA_OEMAKE:append:rk3308 = " \
+	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3308.elf \
+	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3308.bin \
+	"
 EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
 EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
 EXTRA_OEMAKE:append:rk3588s = " \
@@ -26,8 +29,3 @@ do_compile:append:rock2-square () {
 		cp ${B}/spl/${SPL_BINARY} ${B}
 	fi
 }
-
-do_compile:append:rk3308() {
-	mkimage -n rk3308 -T rksd -d ${DEPLOY_DIR_IMAGE}/ddr-rk3308.bin ${B}/idbloader.img
-	cat ${B}/spl/u-boot-spl.bin >> ${B}/idbloader.img
-}
-- 
2.43.0.76.g1a87c842ece3


