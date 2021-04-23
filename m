Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.176.1619197135636959006
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 09:58:55 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=rQABhRkD;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7D1A338C0534
	for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 16:58:55 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id e5so20380340wrg.7
        for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 09:58:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BFoNCmtYzxvOyE501d2Wb9BIIETITxbue2EqSuT/yPU=;
        b=rQABhRkDUkxxZvMHD+NXAg0/WLLjyBtTaZ4cvl3p44ZmVOreBbQ/i9QAPCg+iTeGcO
         1ZOm0+OunmMRQbDR0YMEHmdyM6sSyxndF6jTy7VFHnK1sNBhXqEczwv5WvHB9/Mvew41
         Baq4KSC7dvflLSVnLZ0ory63H3JOsuRZU8923hbvZcVAUDIuZ0PAUP51ycQ4mhFtEopQ
         RM4WnOj9XSgC6WHBgmjJRTUYEpVUXtcuVTijAk1R6POk6T0mWQFTMB4q2vOEjfFH9hH7
         Lzto2CyZiGfTLUJO5SooCm+IjrMvUtkvOAqagZ8FFfGlutsdFY+GbHSB6sV4LkbkxxLz
         uquQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BFoNCmtYzxvOyE501d2Wb9BIIETITxbue2EqSuT/yPU=;
        b=I6uW3loL/jQzH7PqQCPyyK5RWDtUpcJTX2A//VGaTcBrYJEVI/VjNaVqc77w4TlTN5
         P9Madid7DpxR3+QpS7MhFxkPCCG+ZgBX9SFC0VXzk5+qwax8RvUNbBpS3rgsEKimuyQ/
         5W7MtnlbbVI7m+xnzJeZsXTMkfsKxIm7HjkGkNPivnafWnTLP9hUkP8njOAp7EeFuww+
         wDCMfvxcU9bsxh9p1oG/weStllnvxYeZmJBt8TsCW0GORWeNl0ZRXZXET6DpG1Nur/I2
         fu1gLNmnxFnAX4U35M/E8SjKS3sjIe2ROB2pPYJ8JQIfTIXs5U9YrFyyvb35AeDZDWjt
         tCQw==
X-Gm-Message-State: AOAM5324Ple3GPTMaNYPhQ9ZWO/sjgTIQAu2H3wQC4d5p7zvwuMbeo5a
	mmq/5Xpic/Ycxh5aFO/WZWuzSHLLU07kQA==
X-Google-Smtp-Source: ABdhPJx2K6psOdglFTMT1dxhPvv5dotqVWdfMSlPsMPUvr3P1cJXiedvC5jdRv+7MNmIjeo1zPpONw==
X-Received: by 2002:a5d:4d0b:: with SMTP id z11mr6089754wrt.164.1619197134243;
        Fri, 23 Apr 2021 09:58:54 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id e18sm10393549wrc.85.2021.04.23.09.58.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 09:58:53 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v3 4/7] RFC optee: new "optee" DISTRO_FEATURE to enable optee-os integration
Date: Fri, 23 Apr 2021 18:58:23 +0200
Message-Id: <20210423165826.2229787-5-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210423165826.2229787-1-yann@blade-group.com>
References: <20210423165826.2229787-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This sets up a central switch for OP-TEE operation, activating support
in all dependent recipes at the same time:

- u-boot
- trusted-firmware-a
- kernel (not part of this patch, has to be implemented separately)

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend | 1 +
 recipes-bsp/u-boot/u-boot%.bbappend                          | 1 +
 2 files changed, 2 insertions(+)

diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend=
 b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index 638d53f..9887b6e 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -20,5 +20,6 @@ OPTEE_OEMAKE ?=3D " \
=20
 EXTRA_OEMAKE_append =3D " ${PACKAGECONFIG_CONFARGS}"
 PACKAGECONFIG[optee] =3D "${OPTEE_OEMAKE},,optee-os"
+PACKAGECONFIG_append =3D " ${@bb.utils.filter('DISTRO_FEATURES', 'optee'=
, d)}"
=20
 TFA_SPD =3D "${@bb.utils.contains('PACKAGECONFIG', 'optee', 'opteed', ''=
, d)}"
diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-b=
oot%.bbappend
index 767df5f..d947815 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -22,3 +22,4 @@ OPTEE_OEMAKE ?=3D " TEE=3D${DEPLOY_DIR_IMAGE}/optee/tee=
.elf"
=20
 EXTRA_OEMAKE_append =3D " ${PACKAGECONFIG_CONFARGS}"
 PACKAGECONFIG[optee] =3D "${OPTEE_OEMAKE},,optee-os"
+PACKAGECONFIG_append =3D " ${@bb.utils.filter('DISTRO_FEATURES', 'optee'=
, d)}"
--=20
2.30.2

