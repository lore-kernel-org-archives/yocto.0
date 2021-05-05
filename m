Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.7648.1620220048982822098
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 06:07:29 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=XzYZPXzw;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8DD5838C04C2
	for <yocto@yoctoproject.org>; Wed,  5 May 2021 13:07:28 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso3378651wmh.4
        for <yocto@yoctoproject.org>; Wed, 05 May 2021 06:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=d7c5N/Uf+jAqFJAHZpaJnzP+jgTUGsQwjT8wuEr2ejg=;
        b=XzYZPXzwkbzwt3FS2JgfwlxqwBgnm0Y4gZCfJcb/siBoNKqhJGtOCVeNMnYTgRy+oE
         V6o/D5+8lTiQcrENBi4jRqvLFKNm8iGIuewa62rsHAqnjerkVQWejd2kFj06BKHBMetI
         Fsa3r7MLfdvz7doRL3MIXkCGaTpXctEQQcTE/4FEFNWzy4FMmHC/e6As1+xAVii9aTgo
         gw1dhklymU2RNwDkDlfYKSV81py06KfR8GNgUEaMWjyd/XFnxolA9UqrR518X4h+JU5w
         I9OupKevC09v3r01XjpMotdp3dse2BvswzqSG6QAErxYiiks+C/ps2gHVrno0I3cD5B4
         1cFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=d7c5N/Uf+jAqFJAHZpaJnzP+jgTUGsQwjT8wuEr2ejg=;
        b=XP+QdFhtu8MrRrJruA8Foi9ce3jdsSMOhzwa6TEzzVda61ZKgPQwSlu+Ds9Oh69YzJ
         n9q3vxslppcUqb6pLBpuaK+TiFuna+Cp9CQisMtUKJR4EPE4ZQYRBqthEmWquClJTWOo
         cN9600xGPVUoNvAQI7/VAXDvctiAnnysx6jH90oWibTJv1r4mKpCAfTLgoWWKZaL2YCB
         MiOFQ1wKiMgPcIUx7/8gkpCXZIY/OhOE5ucv8f3m9/ra6Y5LzBHiJ+08pAuDEzy9UxNK
         dLT5DKbcMS7Yf1N/fzZQxkIorFpw6Knpox1VAcJxKQetRhX0NbpZ+/gSq7ziNdRWKo25
         pvCg==
X-Gm-Message-State: AOAM5306btVVWp54e4ivBmEK7Qq0aIGSLdoYzi2TBbWxtzQ/wLjapedQ
	6Rr/+8m4nXG/V4YBhWInkgsvpuAFzxLgeQ==
X-Google-Smtp-Source: ABdhPJz1oh9h+MlzCeaJg+m2tlzAHx1lMhnhwS8DFoL6VNuQ/XjNYSGw7BhgK7W+C6/A/F5rwM3rqA==
X-Received: by 2002:a05:600c:3213:: with SMTP id r19mr3971990wmp.133.1620220043515;
        Wed, 05 May 2021 06:07:23 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id y14sm2847014wrr.82.2021.05.05.06.07.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 May 2021 06:07:22 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v5 2/2] WIP linux-yocto: add workaround to disable VOPL usage on HDMI
Date: Wed,  5 May 2021 15:06:39 +0200
Message-Id: <20210505130639.2652269-3-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210505130639.2652269-1-yann@blade-group.com>
References: <20210505130639.2652269-1-yann@blade-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

From: Yann Dirson <yann@blade-group.com>

There is a known issue in mainline kernel making the machine unusable
once a HDMI screen is plugged.  This patch lets VOPB be alone to use
the HDMI port and avoids the issue while providing wupport for the larges=
t
set of video modes, at the expense of double-screen support.

FIXME: patch does not get applied, unless the scc is also added to
KERNEL_FEATURES ?
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

