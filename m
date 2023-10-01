Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31698E748ED
	for <webhook@archiver.kernel.org>; Sun,  1 Oct 2023 13:08:14 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web11.59053.1696165692926312816
 for <yocto@lists.yoctoproject.org>;
 Sun, 01 Oct 2023 06:08:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IuNLXfFw;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-77386822cfbso1079959885a.0
        for <yocto@lists.yoctoproject.org>; Sun, 01 Oct 2023 06:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696165691; x=1696770491; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=52drQRQuSIhqgZpmdhrVeumoPQq2XsaBiKDnWodJQ94=;
        b=IuNLXfFwrjBMs4wo6860/tzI1Hr9t/XiTuNPENcryPnCA6KG4OSpimvDR4yM61/hKr
         LdWoc7W0LP8b0lHZG5pfTod9IPlr8yR4PfWoQtzznFON/1sgZNr3wyeIcMh6uAa4M0if
         yZQZmsHmG/Ai/QeQCj+3J+mcV2GKtDyomOPAcgi9bAFTogBibCoF4hqHiMsMom1TJ2/E
         Ob7/qwnWXCEHdROZ1jjGGkMiilb79Fp/dX74Ti4aHdhuVCHqYTIopW8gN4KZccEKWbHY
         rtD0L4aZRTo738xfXq6oNouBFp7NMCZoDG1QiXiZ6Stu+o3M9PnJceSljdRd4jnYAcS2
         Jl2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696165691; x=1696770491;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=52drQRQuSIhqgZpmdhrVeumoPQq2XsaBiKDnWodJQ94=;
        b=ck3+M9Y13Ah0qG+1D7jm9Kw/8WuOPgVIQH7jzRWtWzXkt8ZJPJZlz31PB2WO7WETkW
         2uPShQr8QIooUZGUCq7l7EIPYyYmMe4kiYBGoFanb/f1BFdkKpYSErqF2JRRpJt+O457
         cIqVyVdfQorI0fmYNhoUqw4yiB48aYNjjyMeLASsa/hQObivmVp17njWcks3nsbd22HX
         iXirXJJuVSauXOuadwTL1uYXCV60gE2BMB2dqXHtex6tr4DEGX57kCLHo939A9oGKhfw
         KqlNSxh7jozJFeHy3Z+XI1zR5l/IVxyEsfO/wfE/xexutRPE0NyX8F/qKUmW1G1fA3uC
         i2Ug==
X-Gm-Message-State: AOJu0YwgTeRAROu8Vtw4BcL9htpZ4PEkZgirOxjkxvR+V9Dw3uNEiyMK
	7CsaaYD9we9tyNTbJKqyngMpwada7ls=
X-Google-Smtp-Source: AGHT+IG5AjNqoOXb1XCxXbOYpT+LG2FUN0UXiPaFIWqL7K716p9ai9D6WHiR6nTjiZ/EunRrpJhbHg==
X-Received: by 2002:a05:620a:2482:b0:773:da6e:3e73 with SMTP id i2-20020a05620a248200b00773da6e3e73mr10603368qkn.7.1696165691323;
        Sun, 01 Oct 2023 06:08:11 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id y12-20020a37e30c000000b00775afce4235sm115553qki.131.2023.10.01.06.08.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Oct 2023 06:08:09 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 1/3] u-boot: cleanup
Date: Sun,  1 Oct 2023 09:08:01 -0400
Message-ID: <20231001130803.18662-2-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
In-Reply-To: <20231001130803.18662-1-twoerner@gmail.com>
References: <20231001130803.18662-1-twoerner@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 01 Oct 2023 13:08:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61179

Clean up the u-boot bbappend recipe: group items together and re-order as per
the Yocto recipe style guide.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-bsp/u-boot/u-boot%.bbappend | 32 ++++++++++++++---------------
 1 file changed, 15 insertions(+), 17 deletions(-)

diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index f7800625aaf1..e79c471cf5ce 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -1,27 +1,25 @@
-do_compile:append:rock2-square () {
-	# copy to default search path
-	if [ "${SPL_BINARY}" = "u-boot-spl-dtb.bin" ]; then
-		cp ${B}/spl/${SPL_BINARY} ${B}
-	fi
-}
-
-DEPENDS:append:rock-pi-4 = " gnutls-native"
 # various machines require the pyelftools library for parsing dtb files
 DEPENDS:append = " python3-pyelftools-native"
+DEPENDS:append:rock-pi-4 = " gnutls-native"
 
-INIT_FIRMWARE_DEPENDS ??= ""
-
+EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
+EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
+EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
 EXTRA_OEMAKE:append:rk3588s = " \
 	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
 	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
 	"
-INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
 
-EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
-INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
-EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
-INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
-EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
+INIT_FIRMWARE_DEPENDS ??= ""
 INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
-
+INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
+INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
+INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
 do_compile[depends] .= "${INIT_FIRMWARE_DEPENDS}"
+
+do_compile:append:rock2-square () {
+	# copy to default search path
+	if [ "${SPL_BINARY}" = "u-boot-spl-dtb.bin" ]; then
+		cp ${B}/spl/${SPL_BINARY} ${B}
+	fi
+}
-- 
2.41.0.327.gaa9166bcc0ba


