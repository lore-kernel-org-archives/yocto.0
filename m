Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D9E9E0059B
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2012 10:49:05 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Feb 2012 10:49:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="129972994"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.159])
	by fmsmga002.fm.intel.com with ESMTP; 27 Feb 2012 10:49:04 -0800
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Mon, 27 Feb 2012 10:47:47 -0800
Message-Id: <29194323389595d8017a6022740df44844c721a0.1330368113.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1330368113.git.kishore.k.bodke@intel.com>
References: <cover.1330368113.git.kishore.k.bodke@intel.com>
Subject: [KERNEL] [PATCH 1/1] enable pvr features.
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
X-List-Received-Date: Mon, 27 Feb 2012 18:49:05 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Cedartrail has pvr kernel features enable it.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg |    9 +++++++++
 meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc |    1 +
 2 files changed, 10 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg
 create mode 100644 meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc

diff --git a/meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg b/meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg
new file mode 100644
index 0000000..31e43ef
--- /dev/null
+++ b/meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg
@@ -0,0 +1,9 @@
+CONFIG_HIGHMEM4G=y
+CONFIG_STAGING=y
+CONFIG_DRM=y
+CONFIG_SND_HDA_CODEC_HDMI=y
+CONFIG_DRM_INTEL_CDV=y
+CONFIG_DRM_CDV_RELEASE=y
+
+# CONFIG_DRM_CDV_DEBUG is not set
+# CONFIG_DRM_PVR_PDUMP is not set
diff --git a/meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc b/meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc
new file mode 100644
index 0000000..c6c28e5
--- /dev/null
+++ b/meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc
@@ -0,0 +1 @@
+kconf hardware drm-cdvpvr.cfg
-- 
1.7.5.4


