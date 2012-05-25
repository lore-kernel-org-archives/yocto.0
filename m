Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 063E5E01412
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:50:32 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 May 2012 14:50:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="171420253"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by fmsmga002.fm.intel.com with ESMTP; 25 May 2012 14:50:32 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 25 May 2012 16:50:38 -0500
Message-Id: <83847b66d0bd96ff0daa5ea41548b43e7c5209bc.1337981721.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337981713.git.tom.zanussi@intel.com>
References: <cover.1337981713.git.tom.zanussi@intel.com>
Subject: [PATCH 13/22] gst-va-intel: clarify DESCRIPTION
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
X-List-Received-Date: Fri, 25 May 2012 21:50:33 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Modify the description to clarify that these are gstreamer addons.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../recipes-multimedia/gstreamer/gst-va-intel.bb   |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/common/recipes-multimedia/gstreamer/gst-va-intel.bb b/common/recipes-multimedia/gstreamer/gst-va-intel.bb
index 4f7fe9f..17cb7c8 100644
--- a/common/recipes-multimedia/gstreamer/gst-va-intel.bb
+++ b/common/recipes-multimedia/gstreamer/gst-va-intel.bb
@@ -1,4 +1,4 @@
-DESCRIPTION = "Video Acceleration Add-ons for Intel BSPs"
+DESCRIPTION = "GStreamer Video Acceleration Add-ons for Intel BSPs"
 LICENSE = "MIT"
 DEPENDS = "gst-meta-base"
 LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
-- 
1.7.0.4


