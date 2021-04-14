Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.13963.1618411043338200090
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Apr 2021 07:37:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=o8NiV3aF;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2CAC138C0530
	for <yocto@yoctoproject.org>; Wed, 14 Apr 2021 14:37:23 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id w186so6218636wmg.3
        for <yocto@yoctoproject.org>; Wed, 14 Apr 2021 07:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+gnR0ktL0evJuve4Jc/b0LVrSrQJuZz81H6WSoi1omM=;
        b=o8NiV3aF4rfJjBw0rrdkSmOWy0BGdvT1wORhvnPsQBFRGm7W/rJGKwVPgXQtrByUE4
         S9ivN8F8sJ+CE6SdxDYhFb8DW8Bd8elSikpkK7+y79MRs5ME1X0SDtsoN1flinEQX+DJ
         7fuUAEIkKf2unwUH+1xXGKlTOFckYnslmgaXZTssDfxFojSlEpBy+KA+Oy990pER9zXJ
         X7ssHGKfSUwIzQfgJix50BDxANomixKPswuqr7gTVBZI6vlZ+qz+HVMkfYAglWXN88hg
         SdiwMXxo54leQS2SUFDH6CK4i2BunBnjgH3AsEZTCFfhxE1QAMOGxFEciBi1/zMPup+W
         4T2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+gnR0ktL0evJuve4Jc/b0LVrSrQJuZz81H6WSoi1omM=;
        b=nIJaJmJ2XthmBbFmVVs1klsRSLl1+HzuaNLArhdzFnJndqonT94rnc4jW+T0aIDD+Q
         q3cZ1z32V11o5j0XAC2Sg5S3n64S+D1apQ9nNTnazGGXNVON/m7aIX4VuUGHFHfrjkcE
         Yp9q3jbEoaU8rG+XGoYpwmK8n5kKm4fSEj86wmDRY0bbrLjQXZQhDxHlVsG22NMP2zJy
         ispL9uSxq/F49kp/H/BVrjxeXVU1VBMWIa9SKS5UjyN+UMDV9IiF0AqxPam1zDhIECRn
         pUfX6PJOx/GZ07fx140BfWbooPIuM1UnWNXgV01MytXkWEXQZTJ+2Xsq5W31rzgob5QK
         BgyQ==
X-Gm-Message-State: AOAM532i0iAzh4Y1uxIKbhx6dTozPsKGVX/v8VNddXQsbpufpxPGNOQs
	Hv+oO7lURQj7DY/YpZ+RiER1IDPCMkZvCQ==
X-Google-Smtp-Source: ABdhPJxL6kR1e7qcnmFPSL6KCkYyVWQSxKQfpwJTYAKDsTHRXXrd7cf9+9MA1KFbnhWmb4pA1npVvQ==
X-Received: by 2002:a7b:cb45:: with SMTP id v5mr3484731wmj.2.1618411041878;
        Wed, 14 Apr 2021 07:37:21 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id u8sm24410120wrr.42.2021.04.14.07.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 07:37:21 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v2 5/6] WIP nanopi-m4: declare OP-TEE presence in devicetree
Date: Wed, 14 Apr 2021 16:36:37 +0200
Message-Id: <20210414143638.4139270-6-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210414143638.4139270-1-yann@blade-group.com>
References: <20210414143638.4139270-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

FIXME:

 - this is not specific to the board, and would indeed apply to any SoC
   supported by OP-TEE.
 - should rather be selected by "optee" in DISTRO_FEATURES, maybe using
   a dts overlay
---
 .../0001-nanopi-declare-optee-presence.patch  | 30 +++++++++++++++++++
 recipes-kernel/linux/linux-yocto%.bbappend    |  1 +
 2 files changed, 31 insertions(+)
 create mode 100644 recipes-kernel/linux/files/0001-nanopi-declare-optee-=
presence.patch

diff --git a/recipes-kernel/linux/files/0001-nanopi-declare-optee-presenc=
e.patch b/recipes-kernel/linux/files/0001-nanopi-declare-optee-presence.p=
atch
new file mode 100644
index 0000000..aede781
--- /dev/null
+++ b/recipes-kernel/linux/files/0001-nanopi-declare-optee-presence.patch
@@ -0,0 +1,30 @@
+From 30cb714e717990276a5fabc50dc616c83b223ee7 Mon Sep 17 00:00:00 2001
+From: Yann Dirson <yann@blade-group.com>
+Date: Mon, 12 Apr 2021 15:50:26 +0200
+Subject: [PATCH] nanopi: declare optee presence
+
+---
+ arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4.dts | 7 +++++++
+ 1 file changed, 7 insertions(+)
+
+diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4.dts b/arch/ar=
m64/boot/dts/rockchip/rk3399-nanopi-m4.dts
+index 60358ab8c7df..ef11639b03f6 100644
+--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4.dts
++++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4.dts
+@@ -16,6 +16,13 @@ / {
+ 	model =3D "FriendlyElec NanoPi M4";
+ 	compatible =3D "friendlyarm,nanopi-m4", "rockchip,rk3399";
+=20
++	firmware {
++		optee {
++			compatible =3D "linaro,optee-tz";
++			method =3D "smc";
++		};
++	};
++
+ 	vdd_5v: vdd-5v {
+ 		compatible =3D "regulator-fixed";
+ 		regulator-name =3D "vdd_5v";
+--=20
+2.30.2
+
diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kernel/=
linux/linux-yocto%.bbappend
index 9658681..97b3238 100644
--- a/recipes-kernel/linux/linux-yocto%.bbappend
+++ b/recipes-kernel/linux/linux-yocto%.bbappend
@@ -2,6 +2,7 @@ FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
=20
 SRC_URI_append =3D "\
  file://bsp;type=3Dkmeta;subdir=3Dkernel-meta \
+ file://0001-nanopi-declare-optee-presence.patch \
 "
=20
 COMPATIBLE_MACHINE_marsboard-rk3066 =3D "marsboard-rk3066"
--=20
2.30.2

