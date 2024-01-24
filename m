Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21215C46CD2
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 17:51:20 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
 by mx.groups.io with SMTP id smtpd.web10.29706.1706118677709298658
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jan 2024 09:51:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WOoUQ8HU;
 spf=pass (domain: gmail.com, ip: 209.85.219.175, mailfrom: twoerner@gmail.com)
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dc223f3dd5eso4817697276.2
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 09:51:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706118676; x=1706723476; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=5ppoAPsrZGZ/FGJ2YtlXjAG2qC0GRU4dDwTwmVET7iY=;
        b=WOoUQ8HUTOSAIB+4rCTVAdfFNBvs+0NZNrIawqkNd6QIRn9ji5z9tl8TxsdB6yMsnW
         f4Sd9Q+pNLRWtaYBxThIm5VGo3s1CwF4SxvD4blx3w0rFLpXNsV7+TvCA1RuhNFqzYYw
         ynyqJzWFDlqSR4NmeuiRQeLVUdN+eDwHFGejRUBEC0tJyvwlPezJMhhaUS9b/qLZ5vEh
         PxWLqrUzsh07U9hhpW5Tiv3GTjdIQucS8ZolOwd0PoYpctAzit/z4HZnUopGiy0oMRAO
         b95rOA1cGPSCrASi6etlNZ3ge2CeJ3h2gXsPjPCSBSHmQzP1SJ9seqB9W6FxEEjIk6Eg
         H5qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706118676; x=1706723476;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5ppoAPsrZGZ/FGJ2YtlXjAG2qC0GRU4dDwTwmVET7iY=;
        b=rwbbz6RlDKwfBRf4WQ+prXOLFXT13AmCaqrOkKOo47HMJE6VaxSkP22PFP8FM0GWgc
         YGyLh8icasGQuWA7r4NUiL5+0kWm0JSr7QU5Noalp05EwXnsKZqW/5/B4WqKxa7o3XTw
         l3MWeoUidES+Bw+2kRd8g1zhgyyCSFgXzQIlqYt+zxntp5/KBYUmxhAIfq+nA0crGhDb
         xiYkqdhv5OVdTINRkaln7b72yfZeVXkds7Pv8TNCDWHZDB7j83/Rf9Lm6LlBEDgjE4+6
         dGgxzwaB52fTDW+dYLR7+Do/S92pKQI7Qi7E0xTlEDbLE+Eap0eT7rtD+KASaCr3vA8U
         xTLw==
X-Gm-Message-State: AOJu0YxEsl5RHfyaplthzLCQIZvgFdaZIsUUCXnP8/P7zfF0sM16qViv
	lDN545e+stMBfYsfqICgJKLLkmfGHIHMQVZYiSRwRs7o+lnOQ73cZb1yMqxt
X-Google-Smtp-Source: AGHT+IFygT42I+d6RC9xkK9ZVFdwftwNP9NRbogqT1IXXotmM/is9VSuN4rxTWGO0gh26Dj/KFAX9w==
X-Received: by 2002:a25:8b8c:0:b0:dc2:66ab:84b0 with SMTP id j12-20020a258b8c000000b00dc266ab84b0mr1022617ybl.64.1706118675781;
        Wed, 24 Jan 2024 09:51:15 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id d15-20020a056214184f00b006819a4354basm4705768qvy.37.2024.01.24.09.51.14
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 09:51:15 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] u-boot: make rock-pi-e patches only for rock-pi-e
Date: Wed, 24 Jan 2024 12:51:13 -0500
Message-ID: <20240124175113.559-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 17:51:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62260

The U-Boot patches that were added recently are only for the rock-pi-e
MACHINE, therefore only apply them when building for rock-pi-e.

Fixes: b5bba3a01197 ("rock-pi-e: apply upstream PHY fix")
Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-bsp/u-boot/u-boot%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index 292530c5ad40..f8378d91ce68 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -1,5 +1,5 @@
 FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
-SRC_URI += " \
+SRC_URI:append:rock-pi-e = " \
 	file://PATCH_1-2_net_designware_Reset_eth_phy_before_phy_connect.patch \
 	file://PATCH_2-2_rockchip_rk3328-rock-pi-e_Enable_DM_ETH_PHY_and_PHY_REALTEK.patch \
 	"
-- 
2.43.0.76.g1a87c842ece3


