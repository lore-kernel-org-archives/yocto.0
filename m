Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1432EC433EF
	for <webhook@archiver.kernel.org>; Wed, 29 Sep 2021 05:29:48 +0000 (UTC)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
 [209.85.166.50])
 by mx.groups.io with SMTP id smtpd.web12.5047.1632893387397803781
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 22:29:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lm4A3z2A;
 spf=pass (domain: gmail.com, ip: 209.85.166.50, mailfrom: twoerner@gmail.com)
Received: by mail-io1-f50.google.com with SMTP id q205so1587865iod.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 22:29:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nww+ClaKzP4r5qwRcvCT4OslJCD+PUqt+AECcHPtD4U=;
        b=lm4A3z2ArWrXaAsU02c+Hnfmj4xL7UXUgSwWmW8D9kGriuxBMGjRiS5DZl4ojRB4T+
         uuxA+RtSAhakvPXhTYhu+MuxzZsESHWQh4VNGs94yaKLgKl+seatTBYRM9DjP+/+yNE2
         eZOdOV3oBlhesQZuE4KfJOZYVx+Wm4sDxpf0in9V+aOtRTfvQGWMDUhZ3ElZQdJ3nJ8Y
         OB1k2T6BxT30pXpLELV9AHhreF0fc/W9+JS//S9PiURxHShq039smbP0IEP2opm+Dnvx
         /VVWiO2vqgizDSRGn9RjVlj3XTqKo/ensPZ2S7cr5ZcZSI8akel8nRY179jriCYxd1Qg
         x6XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nww+ClaKzP4r5qwRcvCT4OslJCD+PUqt+AECcHPtD4U=;
        b=vPEXYOz3rqpOxkfMNnF3PFSIqWz5fyvjci7LhpXbi8s7ixTLro9ENzMmSC17fkoUPN
         PXePjemmyeMScXfBjdQ0MdAM19JnpfMrzijNY+91nWXAoUEcWYXLnPriyoecET/DWClg
         qFr1PSzlie/8V0xA4WFmEApYyvMIDDpkXYPsqgMQHJfu7mRwATdKfEhD/2RQu4FkcLF1
         RvkgVIbqRF6BTsqVMgwoNg2cJFtI/pXSa82U4Ee4SphdOZKQ2epeyp/Ru6kh3DYhhH9O
         TnD8gCw2UVghXp8HXy1PGYtsE2M3taKlDs9dvYz0MEzwlUxwjpv0efcRNNXXSd1DmTdp
         hvKg==
X-Gm-Message-State: AOAM530x5ZhrNCNcCn27rq/MUd8XqmcuWsxgMPHChrApXnrPB6hQdvme
	Yac3+w6F1x+ghChRCnl6cUnPiBKNTmA=
X-Google-Smtp-Source: 
 ABdhPJxNOvccuH1ggUod0HBxa+2KH3YTBcQfCPzHfjb+GHmg+/78s9KaUL87r7PTUWDOh/LwwuMgew==
X-Received: by 2002:a5e:c20c:: with SMTP id v12mr6675020iop.46.1632893386402;
        Tue, 28 Sep 2021 22:29:46 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca.
 [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id
 u18sm748705ilj.24.2021.09.28.22.29.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 22:29:45 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH 1/3] linux-yocto: remove mmc aliases
Date: Wed, 29 Sep 2021 01:29:36 -0400
Message-Id: <20210929052938.36819-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Sep 2021 05:29:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54901

Now that we're booting via UUID, we no longer need these aliases in the DT.
Personally I wasn't able to prove to myself that they actually worked (at
least not with 5.13.y) and fiddling with these aliases didn't seem to affect
the mmc probe order on boot. Additionally it looks like some of these aliases
will be landing upstream shortly.

Build (core-image-base) and run tested (both systemd and sysvinit) on:
- rock64
- rock-pi-e

(i.e. the two rk3328 MACHINEs)

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 ...an-dtsi-rk3328-add-mmc0-mmc1-aliases.patch | 27 -------------------
 recipes-kernel/linux/linux-yocto%.bbappend    |  3 ---
 2 files changed, 30 deletions(-)
 delete mode 100644 recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-aliases.patch

diff --git a/recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-aliases.patch b/recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-aliases.patch
deleted file mode 100644
index 1ad3b9e..0000000
--- a/recipes-kernel/linux/files/0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-aliases.patch
+++ /dev/null
@@ -1,27 +0,0 @@
-From f10cfe01f753348d346374008b8e8f5f26ed94ab Mon Sep 17 00:00:00 2001
-From: Kamil Trzcinski <ayufan@ayufan.eu>
-Date: Mon, 28 Aug 2017 11:24:37 +0200
-Subject: [PATCH] ayufan: dtsi: rk3328: add mmc0/mmc1 aliases
-Upstream-Status: Pending [https://github.com/ayufan-rock64/linux-mainline-kernel/commit/f10cfe01f753348d346374008b8e8f5f26ed94ab]
-
-Change-Id: I82a5394df8a505f7d1496393621c1198895c88b0
----
- arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
-index 0afed15bc7ff..800f1c796882 100644
---- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
-+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
-@@ -27,6 +27,8 @@
- 		i2c1 = &i2c1;
- 		i2c2 = &i2c2;
- 		i2c3 = &i2c3;
-+		mmc0 = &emmc;
-+		mmc1 = &sdmmc;
- 		ethernet0 = &gmac2io;
- 		ethernet1 = &gmac2phy;
- 	};
--- 
-2.30.2
-
diff --git a/recipes-kernel/linux/linux-yocto%.bbappend b/recipes-kernel/linux/linux-yocto%.bbappend
index cf63a30..470dc09 100644
--- a/recipes-kernel/linux/linux-yocto%.bbappend
+++ b/recipes-kernel/linux/linux-yocto%.bbappend
@@ -12,6 +12,3 @@ COMPATIBLE_MACHINE:rock64 = "rock64"
 COMPATIBLE_MACHINE:rock-pi-e = "rock-pi-e"
 
 FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
-
-# indeed applicable to all rk3328 boards
-SRC_URI:append:rock64 = " file://0001-ayufan-dtsi-rk3328-add-mmc0-mmc1-aliases.patch"
-- 
2.30.0.rc0


