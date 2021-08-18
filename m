Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web09.58571.1629310566172063134
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 11:16:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TO038T1q;
 spf=pass (domain: gmail.com, ip: 209.85.215.174, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f174.google.com with SMTP id o2so3101138pgr.9
        for <yocto@lists.yoctoproject.org>; Wed, 18 Aug 2021 11:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qiBVo4KzBo/oBFjrisI2envunKI3NQn8eWAzfNxvmUw=;
        b=TO038T1qR78YY8i4Lb6y0I4Vra9I1yku1zyfy39T+6DPcn3qtzEh2A96B3/+W+JqCm
         yPjLjwE1DJ5Z9g3HlSwtBNAHJ4m/xOVo/xhICRygOi0uEqyphVvA5hC+04lhLAruPIOQ
         C02gLXgMyqU5d3RAw2QArx/KnxTv6mymOuNaPlgLeU+9HkfhiQBcwuaJiRHLDVWs9RCL
         Gjr9FRJDJidqkHKdfOGJ4tkOnJH/8z5riHElHiXQ5q9zqIRfqqz6c5tLd7s/Ksx3ILnH
         NKuHJA0jqM6AUPrcgfRv/e/fqzjaWsT4U8dromOeFvXNx0AzSb5+iAJ3qJnAMbTQvmfv
         DOMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qiBVo4KzBo/oBFjrisI2envunKI3NQn8eWAzfNxvmUw=;
        b=h3dJlFsaQ0VBfTACpnPsSCu2naoZaOzNUS6/Mf6lr2COr2NW8bdaCdsgokw0a0yeaO
         PR0b7WHGsIfoL7YIhMuYxfAsBBlK2Mlw/MIEvkm0DdD5BuHe0Yiv5sG+w7tJKWGX2eCr
         4qEbNUZf4n0eXa4dM3+35BMOvcAM3vCvBo6kaiyKP/eCo53wnT8lM2JqLs7vMwPzgGlp
         J9OCpHu4fs2UVb36rQDu/AAYEECOCmwmlQtSoqrmyx6BBg+pZR48l7WPGr4H97lE8KzO
         hsruBuYDqkwuHwN9bqK5Ip8u9WoGj5F3B5QITQy+ul4t3R9NTsL2iHtJMqWusBxAFVck
         I9ZQ==
X-Gm-Message-State: AOAM531MKpmcrbVzonLuGFaFwUpcL3vueD75gtsZ0WlWWVoyfb+k3rgc
	ZMFNMVevgTSE/Gqh7M33TuMjz7iZUQa/kA==
X-Google-Smtp-Source: ABdhPJyxcGpbynyDV+XE2oRFFqafGtEKbxckY3cvorTw8Za18TBcwOkl5KJks0US/EnXQYkArb83Qg==
X-Received: by 2002:a63:a46:: with SMTP id z6mr10118045pgk.167.1629310565422;
        Wed, 18 Aug 2021 11:16:05 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::1d09])
        by smtp.gmail.com with ESMTPSA id t10sm5717006pji.30.2021.08.18.11.16.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 11:16:05 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip][PATCH 2/2] linux-yocto_5.4: Drop bbappend
Date: Wed, 18 Aug 2021 11:16:01 -0700
Message-Id: <20210818181601.3887274-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210818181601.3887274-1-raj.khem@gmail.com>
References: <20210818181601.3887274-1-raj.khem@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

5.4 recipe has been dropped from oe-core

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...-Keep-rk3288-tinker-SD-card-IO-power.patch | 31 -------------------
 recipes-kernel/linux/linux-yocto_5.4.bbappend |  5 ---
 2 files changed, 36 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-yocto/0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch
 delete mode 100644 recipes-kernel/linux/linux-yocto_5.4.bbappend

diff --git a/recipes-kernel/linux/linux-yocto/0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch b/recipes-kernel/linux/linux-yocto/0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch
deleted file mode 100644
index 751f1ad..0000000
--- a/recipes-kernel/linux/linux-yocto/0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-From 04ab2a1f052f363985b373f07ea71840918378d2 Mon Sep 17 00:00:00 2001
-From: Joshua Watt <JPEWhacker@gmail.com>
-Date: Wed, 19 Feb 2020 13:10:32 -0600
-Subject: [PATCH] ARM: dts: rockchip: Keep rk3288-tinker SD card IO powered
- during reboot
-
-IO voltage regulator for the SD card must be kept on all the time,
-otherwise when the board reboots the SD card can't be read by the
-bootloader.
-
-Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
-Upstream-Status: Accepted in 5.7
----
- arch/arm/boot/dts/rk3288-tinker.dtsi | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
-index 312582c1bd37..acfaa12ec239 100644
---- a/arch/arm/boot/dts/rk3288-tinker.dtsi
-+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
-@@ -276,6 +276,7 @@
- 			};
- 
- 			vccio_sd: LDO_REG5 {
-+				regulator-always-on;
- 				regulator-boot-on;
- 				regulator-min-microvolt = <1800000>;
- 				regulator-max-microvolt = <3300000>;
--- 
-2.17.1
-
diff --git a/recipes-kernel/linux/linux-yocto_5.4.bbappend b/recipes-kernel/linux/linux-yocto_5.4.bbappend
deleted file mode 100644
index 31f118e..0000000
--- a/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ /dev/null
@@ -1,5 +0,0 @@
-FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
-
-# tinker-board and tinker-board-s. rk3288 covers both
-SRC_URI:append:rk3288 = " file://0001-ARM-dts-rockchip-Keep-rk3288-tinker-SD-card-IO-power.patch"
-
-- 
2.33.0

