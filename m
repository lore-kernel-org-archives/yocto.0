Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65722E00747
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 12:45:34 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Jun 2012 12:45:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="151525313"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga001.jf.intel.com with ESMTP; 11 Jun 2012 12:45:34 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org
Date: Mon, 11 Jun 2012 12:38:05 -0700
Message-Id: <bb053313bf2ba77c4574bf1984798ed6784aeab1.1339443379.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1339443379.git.nitin.a.kamble@intel.com>
References: <cover.1339443379.git.nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] rc6: remove rc6 patches for snb
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
X-List-Received-Date: Mon, 11 Jun 2012 19:45:34 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The sandybridge rc6 patches are part of the released v3.4 kernel.
Hence there is no need to keep these patches in the 3.4 linux
yocto kernel repository.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../features/tmp/rc6/rc6-kernel-params.patch       |   81 --------------------
 meta/cfg/kernel-cache/features/tmp/rc6/rc6.scc     |    5 -
 .../tmp/rc6/snb-disable-rc6p-fix-precedence.patch  |   26 ------
 .../features/tmp/rc6/snb-disable-rc6p.patch        |   39 ----------
 .../features/tmp/rc6/snb-enable-rc6.patch          |   54 -------------
 5 files changed, 0 insertions(+), 205 deletions(-)
 delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/rc6-kernel-params.patch
 delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/rc6.scc
 delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-disable-rc6p-fix-precedence.patch
 delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-disable-rc6p.patch
 delete mode 100644 meta/cfg/kernel-cache/features/tmp/rc6/snb-enable-rc6.patch

diff --git a/meta/cfg/kernel-cache/features/tmp/rc6/rc6-kernel-params.patch b/meta/cfg/kernel-cache/features/tmp/rc6/rc6-kernel-params.patch
deleted file mode 100644
index f1f7c08..0000000
--- a/meta/cfg/kernel-cache/features/tmp/rc6/rc6-kernel-params.patch
+++ /dev/null
@@ -1,81 +0,0 @@
-From 83b7f9ac9126f0532ca34c14e4f0582c565c6b0d Mon Sep 17 00:00:00 2001
-From: Eugeni Dodonov <eugeni.dodonov@intel.com>
-Date: Fri, 23 Mar 2012 11:57:18 -0300
-Subject: [PATCH] drm/i915: allow to select rc6 modes via kernel parameter
-
-This allows to select which rc6 modes are to be used via kernel parameter,
-via a bitmask parameter. E.g.:
-
-- to enable rc6, i915_enable_rc6=1
-- to enable rc6 and deep rc6, i915_enable_rc6=3
-- to enable rc6 and deepest rc6, use i915_enable_rc6=5
-- to enable rc6, deep and deepest rc6, use i915_enable_rc6=7
-
-Please keep in mind that the deepest RC6 state really should NOT be used
-by default, as it could potentially worsen the issues with deep RC6. So do
-enable it only when you know what you are doing. However, having it around
-could help solving possible future rc6-related issues and their debugging
-on user machines.
-
-Note that this changes behavior - previously, value of 1 would enable both
-RC6 and deep RC6. Now it should only enable RC6 and deep/deepest RC6
-stages must be enabled manually.
-
-v2: address Chris Wilson comments and clean up the code.
-
-References: https://bugs.freedesktop.org/show_bug.cgi?id=42579
-Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Reviewed-by: Ben Widawsky <benjamin.widawsky@intel.com>
-Signed-off-by: Eugeni Dodonov <eugeni.dodonov@intel.com>
-Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
-Integrated-by: Tom Zanussi <tom.zanussi@intel.com>
-
-Index: linux/drivers/gpu/drm/i915/i915_drv.c
-===================================================================
---- linux.orig/drivers/gpu/drm/i915/i915_drv.c	2012-05-24 15:21:16.216263416 -0500
-+++ linux/drivers/gpu/drm/i915/i915_drv.c	2012-05-24 15:21:42.386496572 -0500
-@@ -66,7 +66,11 @@
- int i915_enable_rc6 __read_mostly = -1;
- module_param_named(i915_enable_rc6, i915_enable_rc6, int, 0600);
- MODULE_PARM_DESC(i915_enable_rc6,
--		"Enable power-saving render C-state 6 (default: -1 (use per-chip default)");
-+		"Enable power-saving render C-state 6. "
-+		"Different stages can be selected via bitmask values "
-+		"(0 = disable; 1 = enable rc6; 2 = enable deep rc6; 4 = enable deepest rc6). "
-+		"For example, 3 would enable rc6 and deep rc6, and 7 would enable everything. "
-+		"default: -1 (use per-chip default)");
- 
- int i915_enable_fbc __read_mostly = -1;
- module_param_named(i915_enable_fbc, i915_enable_fbc, int, 0600);
-Index: linux/drivers/gpu/drm/i915/i915_drv.h
-===================================================================
---- linux.orig/drivers/gpu/drm/i915/i915_drv.h	2012-05-24 15:21:23.926268189 -0500
-+++ linux/drivers/gpu/drm/i915/i915_drv.h	2012-05-24 15:21:42.396308725 -0500
-@@ -1003,6 +1003,27 @@
- 
- #include "i915_trace.h"
- 
-+/**
-+ * RC6 is a special power stage which allows the GPU to enter an very
-+ * low-voltage mode when idle, using down to 0V while at this stage.  This
-+ * stage is entered automatically when the GPU is idle when RC6 support is
-+ * enabled, and as soon as new workload arises GPU wakes up automatically as well.
-+ *
-+ * There are different RC6 modes available in Intel GPU, which differentiate
-+ * among each other with the latency required to enter and leave RC6 and
-+ * voltage consumed by the GPU in different states.
-+ *
-+ * The combination of the following flags define which states GPU is allowed
-+ * to enter, while RC6 is the normal RC6 state, RC6p is the deep RC6, and
-+ * RC6pp is deepest RC6. Their support by hardware varies according to the
-+ * GPU, BIOS, chipset and platform. RC6 is usually the safest one and the one
-+ * which brings the most power savings; deeper states save more power, but
-+ * require higher latency to switch to and wake up.
-+ */
-+#define INTEL_RC6_ENABLE			(1<<0)
-+#define INTEL_RC6p_ENABLE			(1<<1)
-+#define INTEL_RC6pp_ENABLE			(1<<2)
-+
- extern struct drm_ioctl_desc i915_ioctls[];
- extern int i915_max_ioctl;
- extern unsigned int i915_fbpercrtc __always_unused;
diff --git a/meta/cfg/kernel-cache/features/tmp/rc6/rc6.scc b/meta/cfg/kernel-cache/features/tmp/rc6/rc6.scc
deleted file mode 100644
index 8c9a9b5..0000000
--- a/meta/cfg/kernel-cache/features/tmp/rc6/rc6.scc
+++ /dev/null
@@ -1,5 +0,0 @@
-patch snb-disable-rc6p.patch
-patch snb-disable-rc6p-fix-precedence.patch
-patch rc6-kernel-params.patch
-patch snb-enable-rc6.patch
-
diff --git a/meta/cfg/kernel-cache/features/tmp/rc6/snb-disable-rc6p-fix-precedence.patch b/meta/cfg/kernel-cache/features/tmp/rc6/snb-disable-rc6p-fix-precedence.patch
deleted file mode 100644
index e3e90b4..0000000
--- a/meta/cfg/kernel-cache/features/tmp/rc6/snb-disable-rc6p-fix-precedence.patch
+++ /dev/null
@@ -1,26 +0,0 @@
-From c0e2ee1bc0cf82eec89e26b7afe7e4db0561b7d9 Mon Sep 17 00:00:00 2001
-From: Eugeni Dodonov <eugeni.dodonov@intel.com>
-Date: Thu, 23 Feb 2012 23:57:06 -0200
-Subject: [PATCH] drm/i915: fix operator precedence when enabling RC6p
-
-As noticed by Torsten Kaiser, the operator precedence can play tricks with
-us here.
-
-CC: Dave Airlie <airlied@redhat.com>
-Signed-off-by: Eugeni Dodonov <eugeni.dodonov@intel.com>
-Signed-off-by: Jesse Barnes <jbarnes@virtuousgeek.org>
-Integrated-by: Tom Zanussi <tom.zanussi@intel.com>
-
-Index: linux/drivers/gpu/drm/i915/intel_display.c
-===================================================================
---- linux.orig/drivers/gpu/drm/i915/intel_display.c	2012-05-24 15:20:19.456911719 -0500
-+++ linux/drivers/gpu/drm/i915/intel_display.c	2012-05-24 15:20:27.786724609 -0500
-@@ -7970,7 +7970,7 @@
- 
- 	if (intel_enable_rc6(dev_priv->dev))
- 		rc6_mask = GEN6_RC_CTL_RC6_ENABLE |
--			(IS_GEN7(dev_priv->dev)) ? GEN6_RC_CTL_RC6p_ENABLE : 0;
-+			((IS_GEN7(dev_priv->dev)) ? GEN6_RC_CTL_RC6p_ENABLE : 0);
- 
- 	I915_WRITE(GEN6_RC_CONTROL,
- 		   rc6_mask |
diff --git a/meta/cfg/kernel-cache/features/tmp/rc6/snb-disable-rc6p.patch b/meta/cfg/kernel-cache/features/tmp/rc6/snb-disable-rc6p.patch
deleted file mode 100644
index d3afd3a..0000000
--- a/meta/cfg/kernel-cache/features/tmp/rc6/snb-disable-rc6p.patch
+++ /dev/null
@@ -1,39 +0,0 @@
-From 1c8ecf80fdee4e7b23a9e7da7ff9bd59ba2dcf96 Mon Sep 17 00:00:00 2001
-From: Eugeni Dodonov <eugeni.dodonov@intel.com>
-Date: Tue, 14 Feb 2012 11:44:48 -0200
-Subject: [PATCH] drm/i915: do not enable RC6p on Sandy Bridge
-
-With base on latest findings, RC6p seems to be respondible for RC6-related
-issues on Sandy Bridge platform. To work-around those issues, the previous
-solution was to completely disable RC6 on Sandy Bridge for the past few
-releases, even if plain RC6 was not giving any issues.
-
-What this patch does is preventing RC6p from being enabled on Sandy Bridge
-even if users enable RC6 via a kernel parameter. So it won't change the
-defaults in any way, but will ensure that if users do enable RC6 manually
-it won't break their machines by enabling this extra state.
-
-Proper fix for this (enabling specific RC6 states according to the GPU
-generation) were proposed for the -next kernel, but we are too late in the
-release process now to pick such changes.
-
-Acked-by: Keith Packard <keithp@keithp.com>
-Signed-off-by: Eugeni Dodonov <eugeni.dodonov@intel.com>
-Signed-off-by: Jesse Barnes <jbarnes@virtuousgeek.org>
-Integrated-by: Tom Zanussi <tom.zanussi@intel.com>
-
-Index: linux/drivers/gpu/drm/i915/intel_display.c
-===================================================================
---- linux.orig/drivers/gpu/drm/i915/intel_display.c	2012-05-24 14:35:19.446261789 -0500
-+++ linux/drivers/gpu/drm/i915/intel_display.c	2012-05-24 14:35:44.906278169 -0500
-@@ -7969,8 +7969,8 @@
- 	I915_WRITE(GEN6_RC6pp_THRESHOLD, 64000); /* unused */
- 
- 	if (intel_enable_rc6(dev_priv->dev))
--		rc6_mask = GEN6_RC_CTL_RC6p_ENABLE |
--			GEN6_RC_CTL_RC6_ENABLE;
-+		rc6_mask = GEN6_RC_CTL_RC6_ENABLE |
-+			(IS_GEN7(dev_priv->dev)) ? GEN6_RC_CTL_RC6p_ENABLE : 0;
- 
- 	I915_WRITE(GEN6_RC_CONTROL,
- 		   rc6_mask |
diff --git a/meta/cfg/kernel-cache/features/tmp/rc6/snb-enable-rc6.patch b/meta/cfg/kernel-cache/features/tmp/rc6/snb-enable-rc6.patch
deleted file mode 100644
index c353a1d..0000000
--- a/meta/cfg/kernel-cache/features/tmp/rc6/snb-enable-rc6.patch
+++ /dev/null
@@ -1,54 +0,0 @@
-From aa46419186992e6b8b8010319f0ca7f40a0d13f5 Mon Sep 17 00:00:00 2001
-From: Eugeni Dodonov <eugeni.dodonov@intel.com>
-Date: Fri, 23 Mar 2012 11:57:19 -0300
-Subject: [PATCH] drm/i915: enable plain RC6 on Sandy Bridge by default
-
-This is yet another chapter in the ongoing saga of bringing RC6 to Sandy
-Bridge machines by default.
-
-Now that we have discovered that RC6 issues are triggered by RC6+ state,
-let's try to disable it by default. Plain RC6 is the one responsible for
-most energy savings, and so far it haven't given any problems - at least,
-none we are aware of.
-
-So with this, when i915_enable_rc6=-1 (e.g., the default value), we'll
-attempt to enable plain RC6 only on SNB. For Ivy Bridge, the behavior
-stays the same as always - we enable both RC6 and deep RC6.
-
-Note that while this exact patch does not has explicit tested-by's, the
-equivalent settings were fixed in 3.3 kernel by a smaller patch. And it
-has also received considerable testing through Canonical RC6 task-force
-testing at https://wiki.ubuntu.com/Kernel/PowerManagementRC6. Up to date,
-it looks like all the known issues are gone.
-
-v2: improve description and reference a couple of open bugs related to
-RC6 which seem to be fixed with this change.
-
-References: https://bugs.freedesktop.org/show_bug.cgi?id=41682
-References: https://bugs.freedesktop.org/show_bug.cgi?id=38567
-References: https://bugs.freedesktop.org/show_bug.cgi?id=44867
-Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
-Signed-off-by: Eugeni Dodonov <eugeni.dodonov@intel.com>
-Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
-Integrated-by: Tom Zanussi <tom.zanussi@intel.com>
-
-Index: linux/drivers/gpu/drm/i915/intel_display.c
-===================================================================
---- linux.orig/drivers/gpu/drm/i915/intel_display.c	2012-05-24 15:22:33.147334405 -0500
-+++ linux/drivers/gpu/drm/i915/intel_display.c	2012-05-24 15:22:45.246516330 -0500
-@@ -7925,11 +7925,11 @@
- 	 * Disable rc6 on Sandybridge
- 	 */
- 	if (INTEL_INFO(dev)->gen == 6) {
--		DRM_DEBUG_DRIVER("Sandybridge: RC6 disabled\n");
--		return 0;
-+		DRM_DEBUG_DRIVER("Sandybridge: deep RC6 disabled\n");
-+		return INTEL_RC6_ENABLE;
- 	}
--	DRM_DEBUG_DRIVER("RC6 enabled\n");
--	return 1;
-+	DRM_DEBUG_DRIVER("RC6 and deep RC6 enabled\n");
-+	return (INTEL_RC6_ENABLE | INTEL_RC6p_ENABLE);
- }
- 
- void gen6_enable_rps(struct drm_i915_private *dev_priv)
-- 
1.7.3.4


