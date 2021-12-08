Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95530C433F5
	for <webhook@archiver.kernel.org>; Wed,  8 Dec 2021 19:54:08 +0000 (UTC)
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web11.1386.1638993248071903846
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 11:54:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nEPoqucb;
 spf=pass (domain: gmail.com, ip: 209.85.210.182,
 mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f182.google.com with SMTP id x131so3338597pfc.12
        for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 11:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tKZQQRmqYUIZ/cCmS8nP67shH3Stn08StyLooKaOdJQ=;
        b=nEPoqucbTJBk1SllfnGdPjxt85akfGLRYxG2j8P3R9zZgL4yGkcQAjOzaRDTUGXtpc
         +p/Ew4g3uPt07Q5+gyMFrK/PrQOPpe9Zw71gIDQ9J9Ng2iRLV6ADi1oiTlXUk82s9Fmp
         GBBmQ1eh9NFJ/WUtwRFGjYqV8tKoWwnMF4k1PPYVg1uy2nkMLqT1TftGQK8e7spwhuu/
         rnnPGHC2voa//71fj0QNLgDRzNN+dxsN2jp47EIJYu64T6PKBt+ZxvLYK1dJzvVJdC9v
         7ZcJVmcRv04JYFg5v/rNS6PekbRE/kFZlqEi+m5po/2B7oPBsAW/1QY38qmk04ZEfgml
         fVLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tKZQQRmqYUIZ/cCmS8nP67shH3Stn08StyLooKaOdJQ=;
        b=Lol0oT3s7iKEasffH4CZaryAL2uZu6HCoZTUvup0h2JTr9tenWBcfTLMQV5/MnqON1
         iHQpcK/X47k4Ct1aaG1reFo89s0GFsYcxBoDVICGgJkup9aUK9rg00bVBAHyZz/O7ReH
         MFuShxc+tgaDU2wZevbCwpypLP+N0Z6qmEOQHuPmcu07WjlZZ2HyvO3JdRTfOnFRE621
         F3eCau1cE1usaQGX3jrP+sCimS/xg5stA92QeO3AILWgZBEMvd/pERZYDBUT9T6GEH+C
         vAzEmKEYlKdd1pzDaVOeoWbEw7Zz7t66UweLTVn0KQXGeO487pW67W/hDGyPKpLCZYgN
         jSpQ==
X-Gm-Message-State: AOAM532qp4bLSUUgR6T/m4LyuWxkEZjHwQJ3VF03btsw9bxbwJDFiRIE
	dYLnmIA8Zc+kh9ZjoIt0kPkLdIHwxdzCmA==
X-Google-Smtp-Source: 
 ABdhPJzyDhbC5Di9FtU2Cjx+ai1j50lKCYn8NOkmX6vCz+sexQJG6ILRrrpcDEynxlRma94RR0JOJw==
X-Received: by 2002:a05:6a00:1ac7:b0:4ad:59c4:2d80 with SMTP id
 f7-20020a056a001ac700b004ad59c42d80mr7609568pfv.1.1638993247227;
        Wed, 08 Dec 2021 11:54:07 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::ce68])
        by smtp.gmail.com with ESMTPSA id
 y4sm4440838pfi.178.2021.12.08.11.54.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Dec 2021 11:54:06 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-rockchip][PATCH] trusted-firmware-a: Drop
 0001-Fix-build-with-gcc-11.patch
Date: Wed,  8 Dec 2021 11:54:04 -0800
Message-Id: <20211208195404.2950186-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Dec 2021 19:54:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55519

This has been included upstream see [1]

[1] https://review.trustedfirmware.org/plugins/gitiles/TF-A/trusted-firmware-a/+/f943b7c8e292e3aad2fcbdd0a37505f62b3b4c87%5E%21/#F0

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../files/0001-Fix-build-with-gcc-11.patch    | 34 -------------------
 .../trusted-firmware-a_%.bbappend             |  1 -
 2 files changed, 35 deletions(-)
 delete mode 100644 recipes-bsp/trusted-firmware-a/files/0001-Fix-build-with-gcc-11.patch

diff --git a/recipes-bsp/trusted-firmware-a/files/0001-Fix-build-with-gcc-11.patch b/recipes-bsp/trusted-firmware-a/files/0001-Fix-build-with-gcc-11.patch
deleted file mode 100644
index 7956717..0000000
--- a/recipes-bsp/trusted-firmware-a/files/0001-Fix-build-with-gcc-11.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From d4c60a312271e000e8339f0b47a302c325313758 Mon Sep 17 00:00:00 2001
-From: Khem Raj <raj.khem@gmail.com>
-Date: Tue, 11 May 2021 11:46:30 -0700
-Subject: [PATCH] Fix build with gcc 11
-
-Fixes
-plat/rockchip/rk3399/drivers/dram/dram.c:13:22: error: ignoring attribute 'section (".pmusram.data")' because it conflicts with previous 'section (".sram.data")' [-Werror=attributes]
-
-See [1]
-
-[1] https://developer.trustedfirmware.org/T925
-
-Upstream-Status: Pending
-Signed-off-by: Khem Raj <raj.khem@gmail.com>
----
- plat/rockchip/rk3399/drivers/dram/dram.h | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/plat/rockchip/rk3399/drivers/dram/dram.h b/plat/rockchip/rk3399/drivers/dram/dram.h
-index 0eb12cf29..5572b1612 100644
---- a/plat/rockchip/rk3399/drivers/dram/dram.h
-+++ b/plat/rockchip/rk3399/drivers/dram/dram.h
-@@ -149,7 +149,7 @@ struct rk3399_sdram_params {
- 	uint32_t rx_cal_dqs[2][4];
- };
- 
--extern __sramdata struct rk3399_sdram_params sdram_config;
-+extern struct rk3399_sdram_params sdram_config;
- 
- void dram_init(void);
- 
--- 
-2.31.1
-
diff --git a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
index f7777a7..074d0e0 100644
--- a/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
+++ b/recipes-bsp/trusted-firmware-a/trusted-firmware-a_%.bbappend
@@ -8,7 +8,6 @@ COMPATIBLE_MACHINE:append:rk3328 = "|rk3328"
 FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 SRC_URI += "\
     file://serial-console-baudrate.patch \
-    file://0001-Fix-build-with-gcc-11.patch \
     file://0001-dram-Fix-build-with-gcc-11.patch \
     file://0001-plat_macros.S-Use-compatible-.asciz-asm-directive.patch \
     file://0001-pmu-Do-not-mark-already-defined-functions-as-weak.patch \
-- 
2.34.1


