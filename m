Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98AA3E0071B
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2011 20:12:29 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Nov 2011 20:12:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,541,1315206000"; d="scan'208";a="93221718"
Received: from unknown (HELO localhost) ([10.255.15.232])
	by fmsmga002.fm.intel.com with ESMTP; 19 Nov 2011 20:12:10 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Sat, 19 Nov 2011 22:15:52 -0600
Message-Id: <41ce068f328f83705dd7178ce37a2581a7272b11.1321762384.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321762384.git.tom.zanussi@intel.com>
References: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321762384.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1321762384.git.tom.zanussi@intel.com>
References: <cover.1321762384.git.tom.zanussi@intel.com>
Subject: [PATCH 02/14] meta-intel: make meta-intel itself a layer
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
X-List-Received-Date: Sun, 20 Nov 2011 04:12:29 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

meta-intel contains a set of BSP layers, but is not itself a layer.
Make it a layer to make it easy to share common intel-specific files
between BSPs.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 conf/layer.conf |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)
 create mode 100644 conf/layer.conf

diff --git a/conf/layer.conf b/conf/layer.conf
new file mode 100644
index 0000000..d28092d
--- /dev/null
+++ b/conf/layer.conf
@@ -0,0 +1,2 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH := "${BBPATH}:${LAYERDIR}"
-- 
1.7.0.4


