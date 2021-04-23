Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.175.1619197134234193009
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 09:58:54 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=myb87n/E;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1B53B38C08B1
	for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 16:58:54 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id w4so45318605wrt.5
        for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 09:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WFRERdVxWVGXVaKf60qVlVPMk1edN3Q93h5b4gobu1I=;
        b=myb87n/Ep4YFSeTe5To0ndhpRI2ZpvQP6qX1Pu8jlQo3OVxK0nNIVEklxAIu1O/hdK
         QWmpIZT+hF/INkz5+OzLFmCUNWSOHajaKG4u9JSdmb4AxaYp6jpG4rFiiHni6cCZUEmt
         49Aiu6a9gu8hKLzhAMu9/SZbh1SM0FCMwcqkEdM0BJoP/3icDK30Mmvr4dwCXsdqQ8Tg
         H9l6SmPuoHdt3LWVkdpWLZPew5WG8PPIgYrr1a8rH38qMkue6wH9DArBert7YeRNsJj1
         /0Fs4ZDFSsrr9huaoSGl6Mw9kJvzUm8iCFf/opH0vIDZYlKy/HUhpyeiu9RDFtZVMbt+
         GbjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WFRERdVxWVGXVaKf60qVlVPMk1edN3Q93h5b4gobu1I=;
        b=HbfaHc3V+wZyGBtEr79++pl7uGRZ3UNfz7gFP1VnXciTojWRDQN7q1qXgBPwqj1IYw
         RnodgCS6aTpaDoaYx7TwV+kyZ0xUY+Rxa8Dkds4w/1in7qb8pKl6XbvhtPqSW1Oyfatw
         pCr0RdrtCM2WDd6MpBOWhEm1Amv390PA0kMuS7tE4bycksmhv95rTKNtJnKGKBw6K8Yw
         Ii46HdQqtzDptprXwzbf8U5VdEqe6j6nJl9jgKJ9X3jvEjp/Kervfa79nUTLQVo+nP4T
         FuzaNJ/mtu9o1T/s3UDqCZtH2uvs3k9ld4kk51XPIiE45DP7IsSoGElXXoq55BbEduxX
         9/zg==
X-Gm-Message-State: AOAM532vdDTok5zgaR3B5nDdk8/XbCOD3YgFqot7924blIffP9QnL4AG
	ffpR/0jqtzGgZBV7H8ECXz4djIcsQe7uLg==
X-Google-Smtp-Source: ABdhPJwG4mPba1zN+2guPmvFP0AVXCc82UhGugi1EUBtlCAfZ70ow4/H0uUAwEHccINMozszEHfc7w==
X-Received: by 2002:a5d:45ce:: with SMTP id b14mr5785951wrs.357.1619197132833;
        Fri, 23 Apr 2021 09:58:52 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id e18sm10393549wrc.85.2021.04.23.09.58.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 09:58:52 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v3 2/7] u-boot: include optee-os as BL32 when requested by DISTRO_FEATURE
Date: Fri, 23 Apr 2021 18:58:21 +0200
Message-Id: <20210423165826.2229787-3-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210423165826.2229787-1-yann@blade-group.com>
References: <20210423165826.2229787-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

This causes OP-TEE to get included into the u-boot.itb fitImage so u-boot
can load it for the trusted-firmware-a BL31 to run it.

This has to be enabled through PACKAGECONFIG +=3D "optee".

Signed-off-by: Yann Dirson <yann@blade-group.com>
---
 recipes-bsp/u-boot/u-boot%.bbappend | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-b=
oot%.bbappend
index 95c019d..767df5f 100644
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
@@ -14,3 +16,9 @@ ATF_DEPENDS_rk3328 =3D " virtual/trusted-firmware-a:do_=
deploy"
=20
 do_compile[depends] .=3D "${ATF_DEPENDS}"
=20
+# OP-TEE, dependent on "optee" DISTRO_FEATURES
+
+OPTEE_OEMAKE ?=3D " TEE=3D${DEPLOY_DIR_IMAGE}/optee/tee.elf"
+
+EXTRA_OEMAKE_append =3D " ${PACKAGECONFIG_CONFARGS}"
+PACKAGECONFIG[optee] =3D "${OPTEE_OEMAKE},,optee-os"
--=20
2.30.2

