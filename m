Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.1209.1620749447507488824
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 May 2021 09:10:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=SE6hdBcI;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 646D038C07D7
	for <yocto@yoctoproject.org>; Tue, 11 May 2021 16:10:47 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id m9so20723839wrx.3
        for <yocto@yoctoproject.org>; Tue, 11 May 2021 09:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=d7c5N/Uf+jAqFJAHZpaJnzP+jgTUGsQwjT8wuEr2ejg=;
        b=SE6hdBcIPN/BdjreluVXVV6ZzyxgMZvyltmEPtctUsQTYwy2I83WYgvrpqTNDNKC0I
         a/WlUMQ6SoLkpwOYX8RV2XoSlZBx7Ow/VCaXOjDWk2TNFFAznUSuLBqS45Ehp9lqI3xm
         R16jBD9UxEUV/80ZzqAWci520SCORLmqCG6UrNaU1jj/uz2hsOUcRMFHqge0fV+W16qT
         2jiysIf0z8FtXDpDq8mKeaXVur11h6xO4pyh9DtpgViwX03P7oiB6FfViHcgex7DDvcj
         6F/CafpZ1dCIqk+akRtUXPWWrB4V2Vr6gNNdbVNxDThIXYIkbvSZbWJEh/aRfHHMHQGV
         9yJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=d7c5N/Uf+jAqFJAHZpaJnzP+jgTUGsQwjT8wuEr2ejg=;
        b=CL/t68uaML5QxNus3wb7LvaSIyz+SAs9xxksGG660mKrf8hKPSRE4dwOinCJdwD+Hw
         xkr6lLVHyy/tw7VtyQUmWD6pjyS8Z+go1eyuyrtQ1TzkUjWHW+9Vi2Jy6jNp5pFTUltF
         CtYF4dodoZ/gctzVkgBNh3O33yojYIACwezskygSLEXBqFHDeZVFD3UOeAIz7HpcDfj9
         2DSt5AAmSyhqhNZ2OgrotRpFpgnj7kQmUHfvKJ6mbZazhy4QJmZcmxSVt+wMnrEwoXlq
         c2RfGsDooTERcoWPO+nYO5uzK+hc/fiz0izWfm0fg0PRtLTxvhtUNXSYEJ3O9AQKkGvX
         wCWw==
X-Gm-Message-State: AOAM530LKNM0y7JT1nEq792EUhKUhtB6j0i2CA3Po2EXOQF0IhIqP+tF
	YhVjAiwnAFUKWaJFqSFcrTye1ay8j33qrQ==
X-Google-Smtp-Source: ABdhPJyl5mrobWf4T0mR/suDtKZgEOHLbEC+ZI+I5Y1NP4yEGw6adQoRp/KNy0MMhrQG7E1RQz1rtQ==
X-Received: by 2002:a05:6000:1ac7:: with SMTP id i7mr39408228wry.380.1620749446036;
        Tue, 11 May 2021 09:10:46 -0700 (PDT)
Received: from blanquette.lan ([88.120.44.86])
        by smtp.gmail.com with ESMTPSA id n123sm3929243wme.24.2021.05.11.09.10.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 09:10:45 -0700 (PDT)
From: "Yann Dirson" <yann.dirson@blade-group.com>
X-Google-Original-From: yann@blade-group.com
To: yocto@yoctoproject.org
Cc: twoerner@gmail.com,
	Yann Dirson <yann@blade-group.com>
Subject: [meta-rockchip][PATCH v6 2/6] WIP linux-yocto: add workaround to disable VOPL usage on HDMI
Date: Tue, 11 May 2021 18:10:14 +0200
Message-Id: <20210511161018.168172-3-yann@blade-group.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210511161018.168172-1-yann@blade-group.com>
References: <20210511161018.168172-1-yann@blade-group.com>
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

