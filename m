Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.219.1619197136902914777
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Apr 2021 09:58:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=kyuwKVsj;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C25B738C089F
	for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 16:58:56 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id r7so37039159wrm.1
        for <yocto@yoctoproject.org>; Fri, 23 Apr 2021 09:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+gnR0ktL0evJuve4Jc/b0LVrSrQJuZz81H6WSoi1omM=;
        b=kyuwKVsjCgHkrCwNNTrdXm2AMs+B7LG0lJm5bLSHBBQruT1iYX5sNFUvbNhTNAXcQj
         4a5phWCg7SmQSNww/I6ygfMn/lmXb38d4j9E/RMAdaVgoWiit/ulvpuntxsfR0NK5+CF
         AEUpbVo4JE0mhaZEsG6AUQsTAVRT6chdWW9jtWG5vDiasuM2uMwNqr69L0k9S/Tn2DGW
         5ygFiQc6te5RtjVzXruPpNsHNm5AQaNn7kKeFZwOrF7U0rLP6TG4di4g6thcYY9xQoO0
         ayF95iisxH7QqfqyZmPzO4tsD9yaGB5zsVYpXejOcXX8yEK9LVHuBD0ZCvH5wm8Qms8w
         1NUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+gnR0ktL0evJuve4Jc/b0LVrSrQJuZz81H6WSoi1omM=;
        b=hktSMrvX2LExrjTG75XaTPf2O5bfwjNiv4h0SjIpRmMjLRn7oiS4CFd6usrQ2kMl3Z
         l1slnxV9Y0Fof6Bat5wdeq2aibNHQqe9crRV1rdepEnF1mD927oJQalJM0gHbUN368th
         as1ZH9kNoMIZrmoWmPcapbRqQxGMziEAnGyclVKWV3iiI/ilfWY0L//kdPhYoR2Nesun
         NEVmNs+Wr6dCnCBPLXasZX3dY85qGiJGJRxtRQbkiZFg7o+rODfR3dkJO5cH6ehFBs1Y
         CdchlBxTEpZ3rRyKcSc+DLqfIW/cbl7u78RczJoFjSW2TKbVfaC+zH0pG5ydfrxaFFBz
         IJuA==
X-Gm-Message-State: AOAM5320iNfL3tJhWuQUZsd2agQd6bISg0bhBQbm2Hdd1vm1JBzAd45w
	BjMiqSRsMtNz8pqKdj6wlB6JHHfRWkO/Eg==
X-Google-Smtp-Source: ABdhPJxkVVa4FF3HkRwVDI7ai/9VSJyCj1o5wR6HQONfw0iGVkAzPYo5NVX5HUtGPHlC3zeXNgkW6Q==
X-Received: by 2002:adf:dc8d:: with SMTP id r13mr5836232wrj.339.1619197135556;
        Fri, 23 Apr 2021 09:58:55 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id e18sm10393549wrc.85.2021.04.23.09.58.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Apr 2021 09:58:55 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v3 6/7] WIP nanopi-m4: declare OP-TEE presence in devicetree
Date: Fri, 23 Apr 2021 18:58:25 +0200
Message-Id: <20210423165826.2229787-7-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210423165826.2229787-1-yann@blade-group.com>
References: <20210423165826.2229787-1-yann@blade-group.com>
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

