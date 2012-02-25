Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB925E003E4
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 16:36:20 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 Feb 2012 16:36:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="121116891"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.74])
	by fmsmga001.fm.intel.com with ESMTP; 24 Feb 2012 16:36:20 -0800
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	bruce.ashfield@windriver.com
Date: Fri, 24 Feb 2012 16:35:08 -0800
Message-Id: <bbd959c5589809e18dbad951a38ec66afbb47e14.1330129499.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1330129499.git.kishore.k.bodke@intel.com>
References: <cover.1330129499.git.kishore.k.bodke@intel.com>
Subject: [KERNEL][PATCH 1/1] enable pvr features.
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
X-List-Received-Date: Sat, 25 Feb 2012 00:36:21 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Cedartrail has pvr kernel features and patches.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg |    9 +++++++++
 meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc |    2 ++
 2 files changed, 11 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg
 create mode 100644 meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc

diff --git a/meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg b/meta/cfg/kernel-cache/cfg/drm-cdvpvr.cfg
new file mode 100644
index 0000000..0ab4488
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
+# CONFIG_DRM_PVR_PDUMP is not se
diff --git a/meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc b/meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc
new file mode 100644
index 0000000..fbb8316
--- /dev/null
+++ b/meta/cfg/kernel-cache/cfg/drm-cdvpvr.scc
@@ -0,0 +1,2 @@
+kconf hardware drm-cdvpvr.cfg
+git merge yocto/pvr
-- 
1.7.5.4


