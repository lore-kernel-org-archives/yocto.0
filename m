Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A60AC4725D
	for <webhook@archiver.kernel.org>; Fri, 19 Jan 2024 15:18:08 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web11.24758.1705677480530214709
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jan 2024 07:18:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GPZWebvm;
 spf=pass (domain: gmail.com, ip: 209.85.160.178, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-42a11ee4047so5996631cf.2
        for <yocto@lists.yoctoproject.org>; Fri, 19 Jan 2024 07:18:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705677479; x=1706282279; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=C6EnQfTcpZk1EdOyLPZpLmSEsLSUj9ZLzoK3znOH0zY=;
        b=GPZWebvm615KS9yToWGENpuU8otF8ovX+CWL4Q/dzzpBBnlsAZaFa1aBEdOD5gnOaD
         CFcSnZ+kA8jl1Webk1zzRMpuJfCIkPJX2fNBJVdpv3DuBkpsAfI3CZ+efYsiALyZU6Gh
         pIb6zehJOsuR0nSgVs/0vGXAodNfEspSR0rGvqH1M5Pg3GdeD4CLHJ7aPRFjnqD8SugT
         NA8eGMZ/HZp0IDcbjKdrcc7ooT2WFmXfAWkacvAvLOndijVAQ9DhXTg9349L9sdSpWx5
         2awvry1QermyMl/B0Vrts3P19fRf4LAqLEZZ+7aKkICZ3mhy9JF8SMDBIyj/S4X62aB5
         LJ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705677479; x=1706282279;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C6EnQfTcpZk1EdOyLPZpLmSEsLSUj9ZLzoK3znOH0zY=;
        b=dADSAQ7m2ogClb/ySLio5p1wR0u6ApAcmSjA4noFJZVVwLfQpcKBGMxzdkBbyuDgJt
         RIyPildH20VN7dQTjxfn5aReMBJGp4t4O7m0LL9JhBXLkz0xOwgjXrQsk0TM2+VI6DOf
         MuWvFN2+QDH/Bdl29Hmq6Gi5RauiQNTNDd94TgfYQKHrNv7+QEOjO33uhkQoPBG6pb+5
         G3hsrx9lMFWjLgdbbJU1fngIsF4De3aAF438rmr+LGf7p3Vg3N84Eq6840oTTO+HFBKp
         10HxcGi4Vk34/I8W35WFOynnetcWUTq4i+p6rwGkwNKkJDgEXNAIu5q5EiYrQiwSJbh6
         rV7w==
X-Gm-Message-State: AOJu0Yy/dl1C//rKWoGi0ol5E5EiwsNt4rHk9HW3fku8OgJ8+5mLTV2C
	eM/1S/NslBoSmoFFDTEkercvN1Vr/FJyeoR5m2EVrz7BmmYIVudn0mrY9/kX
X-Google-Smtp-Source: AGHT+IFfwkVn3S4MfQQeO2QE5HODmcoaBTdUDZicxSaTp8tPYrAHsbULoYN62fnj4FVFt9ncl4qTlw==
X-Received: by 2002:a05:6214:62e:b0:682:4c34:5527 with SMTP id a14-20020a056214062e00b006824c345527mr50566qvx.44.1705677478782;
        Fri, 19 Jan 2024 07:17:58 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id me15-20020a0562145d0f00b00684c0ec71c8sm181891qvb.122.2024.01.19.07.17.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 07:17:58 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] rock-pi-e: apply upstream PHY fix
Date: Fri, 19 Jan 2024 10:17:55 -0500
Message-ID: <20240119151755.34504-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.43.0.76.g1a87c842ece3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Jan 2024 15:18:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62198

This patch was submitted to the U-Boot mailing list to fix an issue
initializing the PHY on the rock-pi-e.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 ...are_Reset_eth_phy_before_phy_connect.patch | 83 +++++++++++++++++++
 ...-e_Enable_DM_ETH_PHY_and_PHY_REALTEK.patch | 65 +++++++++++++++
 recipes-bsp/u-boot/u-boot%.bbappend           |  6 ++
 3 files changed, 154 insertions(+)
 create mode 100644 recipes-bsp/u-boot/files/PATCH_1-2_net_designware_Reset_eth_phy_before_phy_connect.patch
 create mode 100644 recipes-bsp/u-boot/files/PATCH_2-2_rockchip_rk3328-rock-pi-e_Enable_DM_ETH_PHY_and_PHY_REALTEK.patch

diff --git a/recipes-bsp/u-boot/files/PATCH_1-2_net_designware_Reset_eth_phy_before_phy_connect.patch b/recipes-bsp/u-boot/files/PATCH_1-2_net_designware_Reset_eth_phy_before_phy_connect.patch
new file mode 100644
index 000000000000..4910b9803611
--- /dev/null
+++ b/recipes-bsp/u-boot/files/PATCH_1-2_net_designware_Reset_eth_phy_before_phy_connect.patch
@@ -0,0 +1,83 @@
+From: Jonas Karlman <jonas@kwiboo.se>
+To: Kever Yang <kever.yang@rock-chips.com>, Ramon Fried
+ <rfried.dev@gmail.com>, Joe Hershberger <joe.hershberger@ni.com>, Simon
+ Glass <sjg@chromium.org>, Banglang Huang <banglang.huang@foxmail.com>
+Cc: Trevor Woerner <twoerner@gmail.com>, u-boot@lists.denx.de, Jonas
+ Karlman <jonas@kwiboo.se>
+Subject: [PATCH 1/2] net: designware: Reset eth phy before phy connect
+Date: Thu, 18 Jan 2024 07:19:45 +0000
+Message-ID: <20240118071949.927089-2-jonas@kwiboo.se>
+X-Mailer: git-send-email 2.43.0
+In-Reply-To: <20240118071949.927089-1-jonas@kwiboo.se>
+References: <20240118071949.927089-1-jonas@kwiboo.se>
+MIME-Version: 1.0
+Content-Transfer-Encoding: 8bit
+X-Report-Abuse-To: abuse@forwardemail.net
+X-Report-Abuse: abuse@forwardemail.net
+X-Complaints-To: abuse@forwardemail.net
+X-ForwardEmail-Version: 0.4.40
+X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
+ 149.28.215.223
+X-ForwardEmail-ID: 65a8d11ed66eecd94fbb691a
+
+Some ethernet PHY require being reset before a phy-id can be read back
+on the MDIO bus. This can result in the following message being show
+on e.g. a Radxa ROCK Pi E v1.21 with a RTL8211F ethernet PHY.
+
+  Could not get PHY for ethernet@ff540000: addr -1
+
+Add support to designware ethernet driver to reset eth phy by calling
+the eth phy uclass function eth_phy_set_mdio_bus(). The call use NULL
+as bus parameter to not set a shared mdio bus reference that would be
+freed when probe fails. Also add a eth_phy_get_addr() call to try and
+get the phy addr from DT when DM_MDIO is disabled.
+
+This help fix ethernet on Radxa ROCK Pi E v1.21:
+
+  => mdio list
+  ethernet@ff540000:
+  1 - RealTek RTL8211F <--> ethernet@ff540000
+
+Upstream-Status: Submitted
+Reported-by: Trevor Woerner <twoerner@gmail.com>
+Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
+---
+ drivers/net/designware.c | 7 +++++++
+ 1 file changed, 7 insertions(+)
+
+diff --git a/drivers/net/designware.c b/drivers/net/designware.c
+index a174344b3ef5..9aa5d8a1409e 100644
+--- a/drivers/net/designware.c
++++ b/drivers/net/designware.c
+@@ -13,6 +13,7 @@
+ #include <cpu_func.h>
+ #include <dm.h>
+ #include <errno.h>
++#include <eth_phy.h>
+ #include <log.h>
+ #include <miiphy.h>
+ #include <malloc.h>
+@@ -576,6 +577,9 @@ static int dw_phy_init(struct dw_eth_dev *priv, void *dev)
+ 	struct phy_device *phydev;
+ 	int ret;
+ 
++	if (IS_ENABLED(CONFIG_DM_ETH_PHY))
++		eth_phy_set_mdio_bus(dev, NULL);
++
+ #if IS_ENABLED(CONFIG_DM_MDIO)
+ 	phydev = dm_eth_phy_connect(dev);
+ 	if (!phydev)
+@@ -583,6 +587,9 @@ static int dw_phy_init(struct dw_eth_dev *priv, void *dev)
+ #else
+ 	int phy_addr = -1;
+ 
++	if (IS_ENABLED(CONFIG_DM_ETH_PHY))
++		phy_addr = eth_phy_get_addr(dev);
++
+ #ifdef CONFIG_PHY_ADDR
+ 	phy_addr = CONFIG_PHY_ADDR;
+ #endif
+-- 
+2.43.0
+
+
diff --git a/recipes-bsp/u-boot/files/PATCH_2-2_rockchip_rk3328-rock-pi-e_Enable_DM_ETH_PHY_and_PHY_REALTEK.patch b/recipes-bsp/u-boot/files/PATCH_2-2_rockchip_rk3328-rock-pi-e_Enable_DM_ETH_PHY_and_PHY_REALTEK.patch
new file mode 100644
index 000000000000..c4afce401655
--- /dev/null
+++ b/recipes-bsp/u-boot/files/PATCH_2-2_rockchip_rk3328-rock-pi-e_Enable_DM_ETH_PHY_and_PHY_REALTEK.patch
@@ -0,0 +1,65 @@
+From: Jonas Karlman <jonas@kwiboo.se>
+To: Kever Yang <kever.yang@rock-chips.com>, Ramon Fried
+ <rfried.dev@gmail.com>, Joe Hershberger <joe.hershberger@ni.com>, Simon
+ Glass <sjg@chromium.org>, Banglang Huang <banglang.huang@foxmail.com>
+Cc: Trevor Woerner <twoerner@gmail.com>, u-boot@lists.denx.de, Jonas
+ Karlman <jonas@kwiboo.se>
+Subject: [PATCH 2/2] rockchip: rk3328-rock-pi-e: Enable DM_ETH_PHY and PHY_REALTEK
+Date: Thu, 18 Jan 2024 07:19:46 +0000
+Message-ID: <20240118071949.927089-3-jonas@kwiboo.se>
+X-Mailer: git-send-email 2.43.0
+In-Reply-To: <20240118071949.927089-1-jonas@kwiboo.se>
+References: <20240118071949.927089-1-jonas@kwiboo.se>
+MIME-Version: 1.0
+Content-Transfer-Encoding: 8bit
+X-Report-Abuse-To: abuse@forwardemail.net
+X-Report-Abuse: abuse@forwardemail.net
+X-Complaints-To: abuse@forwardemail.net
+X-ForwardEmail-Version: 0.4.40
+X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
+ 149.28.215.223
+X-ForwardEmail-ID: 65a8d121d66eecd94fbb6928
+
+Enable the DM_ETH_PHY and PHY_REALTEK now that the designware ethernet
+driver call eth_phy_set_mdio_bus() to assist with resetting the eth PHY
+during probe.
+
+Fixes ethernet on the v1.21 hw revision of Radxa ROCK Pi E:
+
+  => mdio list
+  ethernet@ff540000:
+  1 - RealTek RTL8211F <--> ethernet@ff540000
+  => net list
+  eth0 : ethernet@ff540000 86:e0:c0:ea:fa:a9 active
+  eth1 : ethernet@ff550000 86:e0:c0:ea:fa:a8
+  => dhcp
+  Speed: 1000, full duplex
+  BOOTP broadcast 1
+  BOOTP broadcast 2
+  BOOTP broadcast 3
+  DHCP client bound to address 192.168.1.114 (1004 ms)
+
+Upstream-Status: Submitted
+Reported-by: Trevor Woerner <twoerner@gmail.com>
+Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
+---
+ configs/rock-pi-e-rk3328_defconfig | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/configs/rock-pi-e-rk3328_defconfig b/configs/rock-pi-e-rk3328_defconfig
+index c0375beffec3..6dda900a9b42 100644
+--- a/configs/rock-pi-e-rk3328_defconfig
++++ b/configs/rock-pi-e-rk3328_defconfig
+@@ -76,6 +76,8 @@ CONFIG_SYS_I2C_ROCKCHIP=y
+ CONFIG_MISC=y
+ CONFIG_MMC_DW=y
+ CONFIG_MMC_DW_ROCKCHIP=y
++CONFIG_PHY_REALTEK=y
++CONFIG_DM_ETH_PHY=y
+ CONFIG_ETH_DESIGNWARE=y
+ CONFIG_GMAC_ROCKCHIP=y
+ CONFIG_PHY_ROCKCHIP_INNO_USB2=y
+-- 
+2.43.0
+
+
diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index dce4f32d356a..8de93303421e 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -1,3 +1,9 @@
+FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
+SRC_URI += " \
+	file://PATCH_1-2_net_designware_Reset_eth_phy_before_phy_connect.patch \
+	file://PATCH_2-2_rockchip_rk3328-rock-pi-e_Enable_DM_ETH_PHY_and_PHY_REALTEK.patch \
+	"
+
 # various machines require the pyelftools library for parsing dtb files
 DEPENDS:append = " python3-pyelftools-native"
 DEPENDS:append:rk3308 = " u-boot-tools-native"
-- 
2.43.0.76.g1a87c842ece3


