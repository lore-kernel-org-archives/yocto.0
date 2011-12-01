Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCC4EE0073C
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 13:35:08 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Dec 2011 13:35:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,280,1320652800"; d="scan'208";a="97621877"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by fmsmga002.fm.intel.com with ESMTP; 01 Dec 2011 13:35:08 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Thu,  1 Dec 2011 15:35:05 -0600
Message-Id: <204851da65ea8d874374ce6364d446d94de5b295.1322775053.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <1554c200a74a8105ccc8f872edad422a5bf13835.1322775053.git.tom.zanussi@intel.com>
References: <1554c200a74a8105ccc8f872edad422a5bf13835.1322775053.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1322775053.git.tom.zanussi@intel.com>
References: <cover.1322775053.git.tom.zanussi@intel.com>
Subject: [PATCH 5/6] meta-intel: add gst-meta-base .bbappend
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
X-List-Received-Date: Thu, 01 Dec 2011 21:35:09 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

We need some extra plugins for EMGD video acceleration use and
testing, so append them to gst-meta-base.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../gstreamer/gst-meta-base_0.10.bbappend          |    9 +++++++++
 1 files changed, 9 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-multimedia/gstreamer/gst-meta-base_0.10.bbappend

diff --git a/common/recipes-multimedia/gstreamer/gst-meta-base_0.10.bbappend b/common/recipes-multimedia/gstreamer/gst-meta-base_0.10.bbappend
new file mode 100644
index 0000000..61e3059
--- /dev/null
+++ b/common/recipes-multimedia/gstreamer/gst-meta-base_0.10.bbappend
@@ -0,0 +1,9 @@
+RDEPENDS_gst-meta-video += "\
+    gst-plugins-good-isomp4"
+
+RDEPENDS_gst-meta-base += "\
+    gst-ffmpeg"
+
+COMPATIBLE_MACHINE = "(crownbay|fri2)"
+
+PR := "${PR}.0"
-- 
1.7.0.4


