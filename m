Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51FACE776E3
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 00:47:51 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web11.98543.1696294069486368042
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 17:47:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=F3KY0OFF;
 spf=pass (domain: gmail.com, ip: 209.85.160.174, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-4196ae80fc3so2793511cf.0
        for <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 17:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696294068; x=1696898868; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vstxcR3CEe7wc35e0Ck2SIL3zxeK81/3biB9XN3avMA=;
        b=F3KY0OFF7Mhp1CTzSX3echClCiW5Gu2VOoSM2YxLaZ5pHhFzLzw86kq0YwdgoWLr29
         wcKjDxT+vKFxwxejRaQlJol1bNvrRFyrTDzuY2wZ80z2jp/275jnaGlsM9+Bw9v0ta6D
         2c7CrLP2hu7MHLQM0foICiMcWFV2GfJ/UErJWPy8/yPzWoAGqtAXg6cUXRJ3xc9oaTVe
         +ONLqHV8IKlKz16TPMcaALB2NVBtaP4vbOnYElNdswUgXK8YKD6Gqj4upA0w36QPb4hW
         Rd2vcwEDgeeAQx3c/Wh47YrEjm7Ud9Or887NQSiOb02m0b5/j+WBjfyEIh39Kn5t6Nzb
         QMBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696294068; x=1696898868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vstxcR3CEe7wc35e0Ck2SIL3zxeK81/3biB9XN3avMA=;
        b=bZwUPXHhPwUHYxIPxAwo+bO/OhhntaEwFHA+i902QfAol30bCRYZ0cp5OqZkql1Ncb
         4vQEf8SNkV+/uyCME09YEqAEwTq+P9I7b5cOYmYiSCjCJGBlnn6epArGbGfOOjWfFhiV
         mLY+mnzec0YDmpVTPfdfP4CUtPHBPF5DgcvId0UMFiaWWyd0UZv2PWhlO6iuznnTcsNr
         Hoi5xjgb3zqH5h3VE1TgOZLIgXvgVl8OAixILz3+ALWKJyQWuKjVdU39SrUZQb+BS8U7
         bvJc0UU9SD2HXXLwebfc6Kxf0lo4YKGW6l3l0PmwILMKQW34uWb5LisXmqAK0SYRZWNK
         HiLA==
X-Gm-Message-State: AOJu0Yx3EWhsSiRgnkV3yKAC6T4dZUcz60B6s90VOaH17t96Kka29li6
	AMmLdc5kNwc8ntRgAuXJ7CWcH7SH6HPDcQ==
X-Google-Smtp-Source: AGHT+IHWxwSZkrsH+Rj3b7O80BtpmhlWUOw+wZtGGqYgZ/kTbzAoB6Pq6S4/XkkAJX8zt4V3fWQNPQ==
X-Received: by 2002:a05:622a:1990:b0:419:5775:b7b3 with SMTP id u16-20020a05622a199000b004195775b7b3mr14871174qtc.61.1696294067955;
        Mon, 02 Oct 2023 17:47:47 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id o1-20020ac86d01000000b004199c98f87dsm48877qtt.74.2023.10.02.17.47.46
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 17:47:46 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH v2 2/4] u-boot cleanup: group dependencies
Date: Mon,  2 Oct 2023 20:47:39 -0400
Message-ID: <20231003004741.6021-3-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
In-Reply-To: <20231003004741.6021-1-twoerner@gmail.com>
References: <20231003004741.6021-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 00:47:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61205

Group the INIT_FIRMWARE_DEPENDS together and sort.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-bsp/u-boot/u-boot%.bbappend | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index c8444aacad89..8c6ac8627efa 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -2,21 +2,20 @@ DEPENDS:append:rock-pi-4 = " gnutls-native"
 # various machines require the pyelftools library for parsing dtb files
 DEPENDS:append = " python3-pyelftools-native"
 
-INIT_FIRMWARE_DEPENDS ??= ""
-
 EXTRA_OEMAKE:append:rk3588s = " \
 	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
 	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
 	"
-INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
 
 EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
-INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
 EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
-INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
 EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
-INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
 
+INIT_FIRMWARE_DEPENDS ??= ""
+INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
+INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
+INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
+INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
 do_compile[depends] .= "${INIT_FIRMWARE_DEPENDS}"
 
 do_compile:append:rock2-square () {
-- 
2.41.0.327.gaa9166bcc0ba


