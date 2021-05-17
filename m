Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.18247.1621254000357663373
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 May 2021 05:20:00 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=n5EwzlNF;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3E64038C114A
	for <yocto@yoctoproject.org>; Mon, 17 May 2021 12:20:00 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id f75-20020a1c1f4e0000b0290171001e7329so3476787wmf.1
        for <yocto@yoctoproject.org>; Mon, 17 May 2021 05:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aN7rPZjbYBKoPP5J1IrMBcmEQr3tZ4WiGoFoBBLV6PE=;
        b=n5EwzlNFAVIN/8HKUGqPTT06sklJDMfBO9bR8dJZTEJ0fxgXPRkuHOxZJ/cNGQsHbo
         VDR5cxXjY6ss6wRzfE4hDXWrDgIxlrPraMdRLS8pEXrtORnqMf+QPECyuTNtINMs/CAj
         9233+FEhFTNnrpGTa/+ry2HtOwkthN5xEvrhTrHPtQCTPko3ZwIPjQH8E6NtPeV5mcrT
         YiR8Mso2jACUzQK3vdlB9DuftBLp6zsvJ7+rY/TbkTBFWSFwHbbr+zj2CzuOd3IEcMTM
         IsG2TyoRTmsAYO07lUPye2CleWzevJmeRu6qJfg1UtOAeGs6PEnD0FZJsK62AI5CJzKf
         X/nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aN7rPZjbYBKoPP5J1IrMBcmEQr3tZ4WiGoFoBBLV6PE=;
        b=UnXL1yk0HdzvuPJEyCAm5AHldgcVPLfqsvl/U3cP/N/tfltRfnxTtVG5vlKSUun5+x
         Icptnw7eefh1hj3ZToNj/F2FUJnYPJZ4+xqZsbatmZeE8xEIhCqzWatEHUZrwGnJpuEd
         cPsn+D/kpJCdlTO9k7SjPfx7cQoAK5GW8zQsSu6QXK0eqtFxqyTsli7oqc/18k/JKBFT
         hD7SqIMWti0W6I49eGZMI3iYlaFY+w9qxkMjf0sPbeRnnxONR1QITp1eb4sMtB0wUB6z
         3FXF5jfJCQ+N8GC3q5JXEWr/0WWk80NURtFiWVXNjY4Upnb6kD7KllwuQLSI2DuwyRXa
         Z/Fw==
X-Gm-Message-State: AOAM533uRwJvNHYeH+Vz5VSrOTFxoTwjEToqjCvR8PsgRHKkwcZ7F7hx
	LATfkkVXoEh3LsyUTtKY1LmvFl2NHayr4Q==
X-Google-Smtp-Source: ABdhPJzXzQeUNz1mzHIB82DMJL4osDg2ZAF1h9X8orTA+0HuBvgAaVVaeSzJSFaYWF86Ki7+LcAUhw==
X-Received: by 2002:a1c:7903:: with SMTP id l3mr23892670wme.0.1621253998882;
        Mon, 17 May 2021 05:19:58 -0700 (PDT)
Received: from blanquette.saintdenis.blade-group.net ([185.123.26.202])
        by smtp.gmail.com with ESMTPSA id y2sm23702270wmq.45.2021.05.17.05.19.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 05:19:58 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v7 2/6] linux-yocto: add workaround to disable VOPL usage on HDMI
Date: Mon, 17 May 2021 14:19:34 +0200
Message-Id: <20210517121938.207004-3-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210517121938.207004-1-yann@blade-group.com>
References: <20210517121938.207004-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

There is a known issue in mainline kernel making the machine unusable
once a HDMI screen is plugged.  This patch lets VOPB be alone to use
the HDMI port and avoids the issue while providing wupport for the larges=
t
set of video modes, at the expense of double-screen support.
---
 .../files/bsp/rockchip/hdmi-no-vopl.patch     | 65 +++++++++++++++++++
 .../linux/files/bsp/rockchip/rockchip.scc     |  2 +
 2 files changed, 67 insertions(+)
 create mode 100644 recipes-kernel/linux/files/bsp/rockchip/hdmi-no-vopl.=
patch

diff --git a/recipes-kernel/linux/files/bsp/rockchip/hdmi-no-vopl.patch b=
/recipes-kernel/linux/files/bsp/rockchip/hdmi-no-vopl.patch
new file mode 100644
index 0000000..72ed753
--- /dev/null
+++ b/recipes-kernel/linux/files/bsp/rockchip/hdmi-no-vopl.patch
@@ -0,0 +1,65 @@
+From 92d9cf4e6c2767c8c5aa8d97e684f2f77d950e7d Mon Sep 17 00:00:00 2001
+From: Jonas Karlman <jonas@kwiboo.se>
+Date: Sun, 19 Jul 2020 16:35:11 +0000
+Subject: [PATCH] HACK: dts: rockchip: do not use vopl for hdmi
+Upstream-Status: Inappropriate [other]
+
+---
+ arch/arm/boot/dts/rk3288.dtsi            | 9 ---------
+ arch/arm64/boot/dts/rockchip/rk3399.dtsi | 9 ---------
+ 2 files changed, 18 deletions(-)
+
+diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dt=
si
+index 03e86d012edd..746acfac1e92 100644
+--- a/arch/arm/boot/dts/rk3288.dtsi
++++ b/arch/arm/boot/dts/rk3288.dtsi
+@@ -1104,11 +1104,6 @@ vopl_out: port {
+ 			#address-cells =3D <1>;
+ 			#size-cells =3D <0>;
+=20
+-			vopl_out_hdmi: endpoint@0 {
+-				reg =3D <0>;
+-				remote-endpoint =3D <&hdmi_in_vopl>;
+-			};
+-
+ 			vopl_out_edp: endpoint@1 {
+ 				reg =3D <1>;
+ 				remote-endpoint =3D <&edp_in_vopl>;
+@@ -1249,10 +1244,6 @@ hdmi_in_vopb: endpoint@0 {
+ 					reg =3D <0>;
+ 					remote-endpoint =3D <&vopb_out_hdmi>;
+ 				};
+-				hdmi_in_vopl: endpoint@1 {
+-					reg =3D <1>;
+-					remote-endpoint =3D <&vopl_out_hdmi>;
+-				};
+ 			};
+ 		};
+ 	};
+diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/=
dts/rockchip/rk3399.dtsi
+index a855805649ef..418d16b0b648 100644
+--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
++++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+@@ -1640,11 +1640,6 @@ vopl_out_edp: endpoint@1 {
+ 				remote-endpoint =3D <&edp_in_vopl>;
+ 			};
+=20
+-			vopl_out_hdmi: endpoint@2 {
+-				reg =3D <2>;
+-				remote-endpoint =3D <&hdmi_in_vopl>;
+-			};
+-
+ 			vopl_out_mipi1: endpoint@3 {
+ 				reg =3D <3>;
+ 				remote-endpoint =3D <&mipi1_in_vopl>;
+@@ -1816,10 +1811,6 @@ hdmi_in_vopb: endpoint@0 {
+ 					reg =3D <0>;
+ 					remote-endpoint =3D <&vopb_out_hdmi>;
+ 				};
+-				hdmi_in_vopl: endpoint@1 {
+-					reg =3D <1>;
+-					remote-endpoint =3D <&vopl_out_hdmi>;
+-				};
+ 			};
+ 		};
+ 	};
diff --git a/recipes-kernel/linux/files/bsp/rockchip/rockchip.scc b/recip=
es-kernel/linux/files/bsp/rockchip/rockchip.scc
index 800f105..4d61509 100644
--- a/recipes-kernel/linux/files/bsp/rockchip/rockchip.scc
+++ b/recipes-kernel/linux/files/bsp/rockchip/rockchip.scc
@@ -4,3 +4,5 @@ kconf hardware rockchip.cfg
=20
 include cfg/dmaengine.scc
 include features/mmc/mmc-block.cfg
+
+patch hdmi-no-vopl.patch
--=20
2.30.2

