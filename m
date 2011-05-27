Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id DE4004C80A78
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:46:16 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 May 2011 13:46:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; 
   d="scan'208";a="6009267"
Received: from unknown (HELO localhost) ([10.255.12.115])
	by orsmga001.jf.intel.com with ESMTP; 27 May 2011 13:46:15 -0700
From: tom.zanussi@intel.com
To: bruce.ashfield@windriver.com, rahul.saxena@intel.com,
	kishore.k.bodke@intel.com, yocto@yoctoproject.org
Date: Fri, 27 May 2011 15:45:00 -0500
Message-Id: <8823f97057f77a3c156e786b3cbbbc7cc63312af.1306509168.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
References: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306509168.git.tom.zanussi@intel.com>
References: <cover.1306509168.git.tom.zanussi@intel.com>
Subject: [PATCH 06/14][KERNEL] meta: replace open-coded dma engine options with dmaengine feature
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 27 May 2011 20:46:17 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Replace open-coded DMA_ENGINE and DMADEVICES options with the
dmaengine feature.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |   10 +++++++---
 meta/cfg/kernel-cache/bsp/crownbay/eg20t.cfg       |    2 --
 .../bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.cfg      |    2 --
 .../bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.scc      |    1 +
 4 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
index 0d02b98..8543d4c 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
@@ -3,8 +3,12 @@ kconf hardware eg20t.cfg
 
 git merge yocto/emgd
 
-include features/latencytop/latencytop.scc
-include features/profiling/profiling.scc
+include features/intel-e1xxxx/intel-e1xxxx.scc
+include features/drm-emgd/drm-emgd.scc
+include features/dmaengine/dmaengine.scc
 include features/serial/8250.scc
+
 include features/logbuf/size-normal.scc
-include features/drm-emgd/drm-emgd.scc
+
+include features/latencytop/latencytop.scc
+include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/crownbay/eg20t.cfg b/meta/cfg/kernel-cache/bsp/crownbay/eg20t.cfg
index 6d4a9fc..225581c 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/eg20t.cfg
+++ b/meta/cfg/kernel-cache/bsp/crownbay/eg20t.cfg
@@ -1,8 +1,6 @@
 # Hardware support for the Platform Controller Hub EG20T
 
-CONFIG_DMADEVICES=y
 CONFIG_PCH_DMA=y
-CONFIG_DMA_ENGINE=y
 CONFIG_PCH_UART_DMA=y
 CONFIG_SERIAL_8250_PCI=y
 CONFIG_SERIAL_8250_PCH=y
diff --git a/meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.cfg b/meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.cfg
index 1421b27..5c36e39 100644
--- a/meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.cfg
+++ b/meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.cfg
@@ -153,9 +153,7 @@ CONFIG_KGDB_8250=m
 
 CONFIG_CRYPTO_DEV_TALITOS=m
 
-CONFIG_DMADEVICES=y
 CONFIG_FSL_DMA=y
-CONFIG_DMA_ENGINE=y
 
 CONFIG_MMC=y
 CONFIG_MMC_SPI=m
diff --git a/meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.scc b/meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.scc
index 4e0e9f0..85923db 100644
--- a/meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.scc
+++ b/meta/cfg/kernel-cache/bsp/fsl-mpc8315e-rdb/fsl-mpc8315e-rdb.scc
@@ -2,5 +2,6 @@ kconf hardware fsl-mpc8315e-rdb.cfg
 
 include cfg/usb-mass-storage.scc
 include cfg/vfat.scc
+include features/dmaengine/dmaengine.scc
 
 patch powerpc-boot-remove-Os-from-BOOTFLAGS.patch
-- 
1.7.0.4


