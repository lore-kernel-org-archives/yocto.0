Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA727E00738
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 08:39:05 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Nov 2011 08:39:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,597,1315206000"; d="scan'208";a="80705203"
Received: from unknown (HELO localhost) ([10.255.12.29])
	by azsmga001.ch.intel.com with ESMTP; 30 Nov 2011 08:39:05 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 30 Nov 2011 10:38:58 -0600
Message-Id: <a091d9e9c896b9e7f39a43baef34671da472f161.1322670614.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <7da6b2be458f0c479334d3bf87b2c76b57563a54.1322670614.git.tom.zanussi@intel.com>
References: <7da6b2be458f0c479334d3bf87b2c76b57563a54.1322670614.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1322670614.git.tom.zanussi@intel.com>
References: <cover.1322670614.git.tom.zanussi@intel.com>
Subject: [PATCH 6/6] meta-intel: add gst-meta-base .bbappend
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
X-List-Received-Date: Wed, 30 Nov 2011 16:39:06 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

We need some extra plugins for EMGD video acceleration use and
testing, so append them to gst-meta-base.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../gstreamer/gst-meta-base_0.10.bbappend          |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)
 create mode 100644 common/recipes-multimedia/gstreamer/gst-meta-base_0.10.bbappend

diff --git a/common/recipes-multimedia/gstreamer/gst-meta-base_0.10.bbappend b/common/recipes-multimedia/gstreamer/gst-meta-base_0.10.bbappend
new file mode 100644
index 0000000..e761d74
--- /dev/null
+++ b/common/recipes-multimedia/gstreamer/gst-meta-base_0.10.bbappend
@@ -0,0 +1,2 @@
+RDEPENDS_gst-meta-video += "\
+    gst-plugins-good-isomp4"
-- 
1.7.0.4


