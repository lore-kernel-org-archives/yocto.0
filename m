Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31B8EE01358
	for <yocto@yoctoproject.org>; Mon,  2 Jan 2012 11:31:38 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Jan 2012 11:31:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="92238425"
Received: from unknown (HELO localhost) ([10.255.13.35])
	by orsmga001.jf.intel.com with ESMTP; 02 Jan 2012 11:31:37 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Mon,  2 Jan 2012 13:31:35 -0600
Message-Id: <1bfb40fb331e1dd77e471169f99ffb6339e6aec2.1325522643.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <6067b0f9607b14b3c8414b5e58955acad1857379.1325522643.git.tom.zanussi@intel.com>
References: <6067b0f9607b14b3c8414b5e58955acad1857379.1325522643.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1325522643.git.tom.zanussi@intel.com>
References: <cover.1325522643.git.tom.zanussi@intel.com>
Subject: [PATCH 2/2][KERNEL] yocto/emgd: initial build fixups
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
X-List-Received-Date: Mon, 02 Jan 2012 19:31:38 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add emgd config option (DRM_EGD) and modify Makefiles for in-tree
builds.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm/Kconfig       |    9 +++++++++
 drivers/gpu/drm/Makefile      |    1 +
 drivers/gpu/drm/emgd/Makefile |   40 ++++------------------------------------
 3 files changed, 14 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index b493663..9755c11 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -158,3 +158,12 @@ config DRM_SAVAGE
 	help
 	  Choose this option if you have a Savage3D/4/SuperSavage/Pro/Twister
 	  chipset. If M is selected the module will be called savage.
+
+config DRM_EGD
+       tristate "Intel EMGD"
+       depends on DRM
+       select DRM_KMS_HELPER
+       help
+         Choose this option if you have an EMGD-supported chipset
+         (Intel E6xx or System Controller Hub US15W/US15WP/WPT).
+         If M is selected the module will be called emgd.
diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
index 89cf05a..1037b07 100644
--- a/drivers/gpu/drm/Makefile
+++ b/drivers/gpu/drm/Makefile
@@ -35,4 +35,5 @@ obj-$(CONFIG_DRM_SAVAGE)+= savage/
 obj-$(CONFIG_DRM_VMWGFX)+= vmwgfx/
 obj-$(CONFIG_DRM_VIA)	+=via/
 obj-$(CONFIG_DRM_NOUVEAU) +=nouveau/
+obj-$(CONFIG_DRM_EGD)   +=emgd/
 obj-y			+= i2c/
diff --git a/drivers/gpu/drm/emgd/Makefile b/drivers/gpu/drm/emgd/Makefile
index 13705f4..3971c7f 100755
--- a/drivers/gpu/drm/emgd/Makefile
+++ b/drivers/gpu/drm/emgd/Makefile
@@ -24,10 +24,6 @@
 #----------------------------------------------------------------------------
 export EGD_TOPLEVEL = DRM Driver
 
-KERNELVER ?= $(shell uname -r)
-KERNELDIR ?= /lib/modules/$(KERNELVER)/build
-INSTALLDIR ?= /lib/modules/$(KERNELVER)/kernel/drivers/gpu/drm/emgd
-
 BLUE = \033[34m
 OFF = \033[0m
 BUILD ?= release
@@ -35,7 +31,7 @@ CONFIG_PVR_RELEASE ?= $(BUILD)
 CONFIG_DRM_EGD ?= m
 
 # Get the include paths pointed to the right place. 
-export  EMGD_MOD_DIR ?= $(CURDIR)
+export  EMGD_MOD_DIR ?= $(obj)
 
 BUILDDATE ?= $(shell date +%Y%m%d)
 
@@ -51,6 +47,7 @@ PROJECT_INCLUDES = \
 	   -I$(EMGD_MOD_DIR)/emgd/pal/ch7036 \
 	   -I$(EMGD_MOD_DIR)/emgd/drm \
 	   -I$(KERNELDIR)/include/drm \
+	   -Iinclude/drm \
 	   -I/usr/src/linux-headers-2.6.32-5-common/include/drm \
 	   -I$(EMGD_MOD_DIR)/pvr/include4 \
 	   -I$(EMGD_MOD_DIR)/pvr/services4/include \
@@ -120,6 +117,8 @@ ifeq ($(PDUMP),1)
 	EXTRA_CFLAGS += -DPDUMP=1
 endif
 
+ccflags-y += $(EXTRA_CFLAGS)
+
 EMGD_OBJS := \
 	emgd/drm/emgd_fb.o \
 	emgd/drm/emgd_fbcon.o \
@@ -293,34 +292,3 @@ ifeq ($(PDUMP),1)
 endif
 
 obj-$(CONFIG_DRM_EGD) += emgd.o
-
-all:: clean modules
-
-modules::
-	@echo $(CURDIR) -- $(CONFIG_PVR_RELEASE)
-	@echo "$(MAKE) -C $(KERNELDIR) M=$(CURDIR) modules"
-	@$(MAKE) -C $(KERNELDIR) M=$(CURDIR) modules
-
-clean::
-	@rm -f $(emgd-y)
-	@rm -f emgd.o emgd.mod.* emgd.ko Module.* modules.order
-	@find . -name "*.cmd" -exec rm '{}' \;
-
-install::
-	install -o root -g root -m 755 -d $(INSTALLDIR)
-	install -o root -g root -m 744 emgd.ko $(INSTALLDIR)
-	/sbin/depmod -a
-
-uninstall::
-	rmmod $(INSTALLDIR)/emgd.ko
-	rm -rf $(INSTALLDIR)/emgd.ko
-	/sbin/depmod -a
-
-debug::
-	export CONFIG_PVR_RELEASE=debug; $(MAKE) modules
-
-package:: clean
-	@echo -e "$(BLUE)Packaging $(EGD_TOPLEVEL)$(OFF)";
-	mkdir -p $(EGD_PKG)
-	tar -C $(EMGD_MOD_DIR) --exclude "CVS" -czf $(EGD_PKG)/emgd_drm.tgz *
-
-- 
1.7.0.4


