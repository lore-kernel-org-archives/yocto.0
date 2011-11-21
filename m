Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75620E00724
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 14:44:29 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 21 Nov 2011 14:44:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,549,1315206000"; d="scan'208";a="39893365"
Received: from unknown (HELO localhost) ([10.255.15.246])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Nov 2011 14:44:28 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, dvhart@linux.intel.com, kishore.k.bodke@intel.com
Date: Mon, 21 Nov 2011 16:44:18 -0600
Message-Id: <49a4dfe2f3a44a50788871882cb6678af472d68c.1321915193.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321915193.git.tom.zanussi@intel.com>
References: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321915193.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1321915192.git.tom.zanussi@intel.com>
References: <cover.1321915192.git.tom.zanussi@intel.com>
Subject: [PATCH 02/17] meta-intel: make meta-intel itself a layer
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
X-List-Received-Date: Mon, 21 Nov 2011 22:44:29 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

meta-intel contains a set of BSP layers, but is not itself a layer.
Make it a layer to make it easy to share common intel-specific files
between BSPs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 conf/layer.conf |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)
 create mode 100644 conf/layer.conf

diff --git a/conf/layer.conf b/conf/layer.conf
new file mode 100644
index 0000000..a5db163
--- /dev/null
+++ b/conf/layer.conf
@@ -0,0 +1,10 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH := "${BBPATH}:${LAYERDIR}"
+
+# We have a packages directory, add to BBFILES
+BBFILES := "${BBFILES} ${LAYERDIR}/common/recipes-*/*/*.bb \
+            ${LAYERDIR}/common/recipes-*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "intel"
+BBFILE_PATTERN_intel := "^${LAYERDIR}/"
+BBFILE_PRIORITY_intel = "5"
-- 
1.7.0.4


