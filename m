Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A555AE00B28; Fri, 16 Jun 2017 06:48:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EDC6E00B18
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 06:48:04 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id 6E65726BAE8
From: Romain Perier <romain.perier@collabora.com>
To: Romain Perier <romain.perier@collabora.com>,
	Trevor Woerner <twoerner@gmail.com>
Date: Fri, 16 Jun 2017 15:47:40 +0200
Message-Id: <20170616134740.25372-3-romain.perier@collabora.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170616134740.25372-1-romain.perier@collabora.com>
References: <20170616134740.25372-1-romain.perier@collabora.com>
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][PATCH 2/2] u-boot: Backport upstream fix for gmac_rockchip
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 16 Jun 2017 13:48:06 -0000

This backports an upstream patch that makes ethernet
work again for RK3288.

Signed-off-by: Romain Perier <romain.perier@collabora.com>
---
 ...3288-grf-Fix-shift-for-RK3288_TXCLK_DLY_E.patch | 36 ++++++++++++++++++++++
 recipes-bsp/u-boot/u-boot_%.bbappend               |  6 ++++
 2 files changed, 42 insertions(+)
 create mode 100644 recipes-bsp/u-boot/u-boot/0001-rockchip-rk3288-grf-Fix-shift-for-RK3288_TXCLK_DLY_E.patch

diff --git a/recipes-bsp/u-boot/u-boot/0001-rockchip-rk3288-grf-Fix-shift-for-RK3288_TXCLK_DLY_E.patch b/recipes-bsp/u-boot/u-boot/0001-rockchip-rk3288-grf-Fix-shift-for-RK3288_TXCLK_DLY_E.patch
new file mode 100644
index 0000000..b08d331
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot/0001-rockchip-rk3288-grf-Fix-shift-for-RK3288_TXCLK_DLY_E.patch
@@ -0,0 +1,36 @@
+From fefe9d06bd0917739822a4be4c702f1d5d0e0899 Mon Sep 17 00:00:00 2001
+From: Romain Perier <romain.perier@collabora.com>
+Date: Fri, 2 Jun 2017 11:19:43 +0200
+Subject: [PATCH] rockchip: rk3288: grf: Fix shift for
+ RK3288_TXCLK_DLY_ENA_GMAC_ENABLE
+
+RK3288_TXCLK_DLY_ENA_GMAC_ENABLE, in GRF_SOC_CON3, is supposed to be bit
+0xe and not 0xf. Otherwise, it is RGMII RX clock delayline enable and
+introduces random delays and data lose.
+
+This commit fixes the issue by replacing RK3288_TXCLK_DLY_ENA_GMAC_ENABLE
+with the right shift.
+
+Upstream-Status: Backported (http://git.denx.de/?p=u-boot/u-boot-rockchip.git;a=patch;h=fefe9d06bd0917739822a4be4c702f1d5d0e0899)
+
+Signed-off-by: Romain Perier <romain.perier@collabora.com>
+Reviewed-by: Simon Glass <sjg@chromium.org>
+---
+ arch/arm/include/asm/arch-rockchip/grf_rk3288.h |    2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/arch/arm/include/asm/arch-rockchip/grf_rk3288.h b/arch/arm/include/asm/arch-rockchip/grf_rk3288.h
+index 7d56b8c..fbc4a0d 100644
+--- a/arch/arm/include/asm/arch-rockchip/grf_rk3288.h
++++ b/arch/arm/include/asm/arch-rockchip/grf_rk3288.h
+@@ -813,7 +813,7 @@ enum {
+ 		(1 << RK3288_TXCLK_DLY_ENA_GMAC_SHIFT),
+ 	RK3288_TXCLK_DLY_ENA_GMAC_DISABLE = 0,
+ 	RK3288_TXCLK_DLY_ENA_GMAC_ENABLE =
+-		(1 << RK3288_RXCLK_DLY_ENA_GMAC_SHIFT),
++		(1 << RK3288_TXCLK_DLY_ENA_GMAC_SHIFT),
+ 
+ 	RK3288_CLK_RX_DL_CFG_GMAC_SHIFT = 0x7,
+ 	RK3288_CLK_RX_DL_CFG_GMAC_MASK =
+-- 
+1.7.10.4
diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
index efa5eae..1c4c150 100644
--- a/recipes-bsp/u-boot/u-boot_%.bbappend
+++ b/recipes-bsp/u-boot/u-boot_%.bbappend
@@ -1,6 +1,12 @@
 # Copyright (C) 2017 Romain Perier <romain.perier@collabora.com>
 # Released under the MIT license (see COPYING.MIT for the terms)
 
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI += "\
+    file://0001-rockchip-rk3288-grf-Fix-shift-for-RK3288_TXCLK_DLY_E.patch \
+"
+
 do_compile_append () {
     # Copy spl to default search path, so do_install from u-boot.inc
     # works
-- 
1.8.3.1


