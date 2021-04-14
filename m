Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.14040.1618411041816737012
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 07:37:21 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=QjEiJxGP;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B293E38C0530
	for <yocto@yoctoproject.org>; Wed, 14 Apr 2021 14:37:21 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id u20so6208820wmj.0
        for <yocto@yoctoproject.org>; Wed, 14 Apr 2021 07:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DId+6DLsCZyBC6mJ6WpaEhPLM+s+w94atJE8uk7Cjko=;
        b=QjEiJxGPb3lRHqr657uHyiUMWehvz0n6v3ZbPejIoaphWjxFXGilWHriwI4B2a3Ht+
         hK5x9rStRXMzEPhMUF1i5dnEu0c71aMjuZ4899lr8iH2WwK4s2YlccC3d6AYiFy2k3Pu
         JpdkhrxdNACkahSZNQ4vr3CeafMeACGonxADHZZZsOwa9A1LAsk19VvITL+N2dBxByam
         BeU1xwe+sxuwYQJYziIFpPKS/qOipa76878JCnc/s9SgXvUxjgdHpEusTJDM/HlgYhcB
         DLOEvcZ3acb4cxHMsLo3OHWGDRldhf7OiSB1PX/ysqxrB8bhIrA8Je94TmthsH+ippQD
         0GmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DId+6DLsCZyBC6mJ6WpaEhPLM+s+w94atJE8uk7Cjko=;
        b=DsMgnWapOBUraS2cee8yMI2VV/28+RsH8HrU/dYyKVdoWHFQ15LNKpxAJa9SeESTRT
         5NyMK39pXUab2UY5j1SqWhuy6VdJjc8+5awJaIbn2LBJEP6mImFGitv7V5rz0sUUML9g
         oxKXdE6V26Mr/3iwO11/8AYamj5tzJPYIpOLYSrPkfzhP7Ltpv/FGmHXfT+zryrO7yTo
         aRr1KGJ2FGHmr+ccsAA6RXmIVg1ZwmErdjV5YPXuAhVElWKaJoTgfQQibIdT0E5c4/fb
         vtMfgmGl4KJkuN8NruV6EmbVby6WObXR6xFv/DI/aqrnJ8xwCZs7pvf5GOZui0fY2zlX
         dmVA==
X-Gm-Message-State: AOAM531PV3lFN+Dw1H6oOtlkTyvuD9EnLXANa2QZ+59yyHulrcuzYlPa
	8e1TJgBIXWtINaAGDNPrWWV6M9h39tqO8g==
X-Google-Smtp-Source: ABdhPJyKHD+HrRtYAjRmuYV74kZBeB2VTvEBOq1b55FuWzV/vOPQj9Gx8injbonlefp1vyJ87mKOFw==
X-Received: by 2002:a05:600c:210f:: with SMTP id u15mr2627074wml.115.1618411040380;
        Wed, 14 Apr 2021 07:37:20 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id u8sm24410120wrr.42.2021.04.14.07.37.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 07:37:19 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v2 3/6] u-boot: include optee-os as BL32 when requested by DISTRO_FEATURE
Date: Wed, 14 Apr 2021 16:36:35 +0200
Message-Id: <20210414143638.4139270-4-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210414143638.4139270-1-yann@blade-group.com>
References: <20210414143638.4139270-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This causes OP-TEE to get included into the u-boot.itb fitImage so u-boot
can load it for the trusted-firmware-a BL31 to run it.

This is configured automatically when DISTRO_FEATURE includes "optee".

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 recipes-bsp/u-boot/u-boot%.bbappend | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-b=
oot%.bbappend
index 95c019d..d947815 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -5,6 +5,8 @@ do_compile_append_rock2-square () {
 	fi
 }
=20
+# TF-A, when supported
+
 ATF_DEPENDS ??=3D ""
=20
 EXTRA_OEMAKE_append_rk3399 =3D " BL31=3D${DEPLOY_DIR_IMAGE}/bl31-rk3399.=
elf"
@@ -14,3 +16,10 @@ ATF_DEPENDS_rk3328 =3D " virtual/trusted-firmware-a:do=
_deploy"
=20
 do_compile[depends] .=3D "${ATF_DEPENDS}"
=20
+# OP-TEE, dependent on "optee" DISTRO_FEATURES
+
+OPTEE_OEMAKE ?=3D " TEE=3D${DEPLOY_DIR_IMAGE}/optee/tee.elf"
+
+EXTRA_OEMAKE_append =3D " ${PACKAGECONFIG_CONFARGS}"
+PACKAGECONFIG[optee] =3D "${OPTEE_OEMAKE},,optee-os"
+PACKAGECONFIG_append =3D " ${@bb.utils.filter('DISTRO_FEATURES', 'optee'=
, d)}"
--=20
2.30.2

