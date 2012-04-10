Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57A41E00596
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 11:57:08 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Apr 2012 11:57:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="127429588"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.90])
	by orsmga001.jf.intel.com with ESMTP; 10 Apr 2012 11:57:08 -0700
From: kishore.k.bodke@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Tue, 10 Apr 2012 11:55:38 -0700
Message-Id: <6241725a29fe651f7b99a2b2b977532abd00cd8a.1334083666.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
References: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1334083666.git.kishore.k.bodke@intel.com>
References: <cover.1334083666.git.kishore.k.bodke@intel.com>
Subject: [PATCH 8/9] [meta-intel] Cedartrail: Add new recipe for test image.
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
X-List-Received-Date: Tue, 10 Apr 2012 18:57:08 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

This recipes builds the custom images with builtin
features like web-kit and adds the Audio and Video
media samples.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../images/core-image-cdv-media-sdk.bb             |   12 ++++++++++++
 .../images/core-image-cdv-media.bb                 |   13 +++++++++++++
 2 files changed, 25 insertions(+), 0 deletions(-)
 create mode 100644 meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media-sdk.bb
 create mode 100644 meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media.bb

diff --git a/meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media-sdk.bb b/meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media-sdk.bb
new file mode 100644
index 0000000..364d7b7
--- /dev/null
+++ b/meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media-sdk.bb
@@ -0,0 +1,12 @@
+#
+# Copyright (C) 2011 Intel Corporation.
+# Author: Kishore Bodke
+# kishore.k.bodke@intel.com
+
+require recipes-sato/images/core-image-sato-sdk.bb
+
+IMAGE_INSTALL += "web-webkit bigbuckbunny-ogg  ogg-CC-BY-3.0-music-samples"
+
+LICENSE = "MIT"
+
+PR = "r0"
diff --git a/meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media.bb b/meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media.bb
new file mode 100644
index 0000000..a13ea09
--- /dev/null
+++ b/meta-cedartrail/recipes-cdv-media/images/core-image-cdv-media.bb
@@ -0,0 +1,13 @@
+#
+# Copyright (C) 2011 Intel Corporation.
+# Author:  Kishore Bodke 
+# kishore.k.bodke@intel.com
+#
+
+require recipes-sato/images/core-image-sato.bb
+
+IMAGE_INSTALL += "web-webkit bigbuckbunny-ogg  ogg-CC-BY-3.0-music-samples"
+
+LICENSE = "MIT"
+
+PR = "r0"
-- 
1.7.5.4


