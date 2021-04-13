Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.426.1618328631086494186
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 08:43:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=Kik6+0Zg;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id EBEED38C06B9
	for <yocto@yoctoproject.org>; Tue, 13 Apr 2021 15:43:50 +0000 (UTC)
Received: by mail-wm1-f48.google.com with SMTP id w186so4472091wmg.3
        for <yocto@yoctoproject.org>; Tue, 13 Apr 2021 08:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+gnR0ktL0evJuve4Jc/b0LVrSrQJuZz81H6WSoi1omM=;
        b=Kik6+0ZgQ3xldDIZcA7Lrifd+uYYOrjLIcbliHnk4nZqyXQ5p6ZaNpfWCPe+lBkZPH
         naY2IBfDNc6BXdFNgCakFstX66DtrHWM1hdGNRNaA3/uAWKchSCeQ3GJ6xyyAef20vXM
         Wq44gnFK9kjXMd1tkQ3sOIk61OtQtXSjDiQDNPYFPXITKelOwGgZiwx+DSTu/kTEUWKe
         J+2X3/77SXjJvgBf1VQ/Uq4zoXRWtc7mISvyNPKIDY/omVsDBtOO5IjSnh5AUOZTI/hs
         jTsdokLAg+3l9wiHrndm1g4kdpRcyD5FuCUNWqPdfo+sZs8ABG/QUatPTCmm0qjN84wy
         AGSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+gnR0ktL0evJuve4Jc/b0LVrSrQJuZz81H6WSoi1omM=;
        b=LPuxIcIFZQSWa7C7Q18S3V11qBUICXDKPePz372yhtm+QmCM6T0xuSJWtJRwbhyMOe
         7OEqwQ00NTLIKxSfvOyMktgNGsnpwxfnAuSYkB/bC1um4nwoJbLVmAKzPfaiRZoXcQVU
         kbTXqwvwY92azodm/DRtap/SwLvt9PLf9EppwVcZGTtC2qOjnjrDGEs+GP3GfCRxyorX
         I5K/AHxF/eC09UeYDPqaqpuLvCP/QQyoEqvHw8Oo9uemn5JEZ72Nwfv7GaRmICvk1BW5
         1tV243znfuk4jWgQ8jXwu8Q0w7ltahHBMT3/xwgMVDHDj+WviHJtBXEQ539yulcJMXcd
         I0uQ==
X-Gm-Message-State: AOAM530TxaHg7ZwxhmBaeF4u0X8VfdhwNSbQDUaiI41PdCFEqGAwOI1v
	/gBmXb2/mDzIy6JT3zisrQNvDdvm7zNdVA==
X-Google-Smtp-Source: ABdhPJxK0CzdwFmN7V6xkdRW1iqoj+6iaO2tztrZpvW35xa16eAjIPlvMLY1vJuS/19PbHE7YjYJ9g==
X-Received: by 2002:a05:600c:25ca:: with SMTP id 10mr671895wml.0.1618328627266;
        Tue, 13 Apr 2021 08:43:47 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id f25sm4495361wrd.43.2021.04.13.08.43.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:43:46 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH 5/6] WIP nanopi-m4: declare OP-TEE presence in devicetree
Date: Tue, 13 Apr 2021 17:43:15 +0200
Message-Id: <20210413154316.3666881-6-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210413154316.3666881-1-yann@blade-group.com>
References: <20210413154316.3666881-1-yann@blade-group.com>
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

