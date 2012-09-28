Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93EB0E00347
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2012 17:56:37 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Sep 2012 17:56:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,498,1344236400"; d="scan'208";a="198169689"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.81])
	by azsmga001.ch.intel.com with ESMTP; 27 Sep 2012 17:56:19 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Thu, 27 Sep 2012 17:56:43 -0700
Message-Id: <f55f0739ba53e470badd0ca9dae4a71fdd242944.1348793549.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1348793549.git.kishore.k.bodke@intel.com>
References: <cover.1348793549.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/1] [meta-intel] meta-crystalforest: Create a custom build Image recipe.
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
X-List-Received-Date: Fri, 28 Sep 2012 00:56:37 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

To build with the corpus files recipes, create a customized
recipe to install them into the Image.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../recipes-qat-image/images/core-image-qat-sdk.bb |   12 ++++++++++++
 .../recipes-qat-image/images/core-image-qat.bb     |   13 +++++++++++++
 2 files changed, 25 insertions(+)
 create mode 100644 meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb
 create mode 100644 meta-crystalforest/recipes-qat-image/images/core-image-qat.bb

diff --git a/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb b/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb
new file mode 100644
index 0000000..46d840d
--- /dev/null
+++ b/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb
@@ -0,0 +1,12 @@
+# Copyright (C) 2012 Intel Corporation.
+# Author: Kishore Bodke
+# kishore.k.bodke@intel.com
+
+require recipes-sato/images/core-image-sato-sdk.bb
+
+IMAGE_INSTALL += "calgary-corpus canterbury-corpus silesia-corpus \
+		"
+
+LICENSE = "MIT"
+
+PR = "r0"
diff --git a/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb b/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb
new file mode 100644
index 0000000..22446c1
--- /dev/null
+++ b/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb
@@ -0,0 +1,13 @@
+# Copyright (C) 2012 Intel Corporation.
+# Author:  Kishore Bodke 
+# kishore.k.bodke@intel.com
+#
+
+require recipes-sato/images/core-image-sato.bb
+
+IMAGE_INSTALL += "calgary-corpus canterbury-corpus silesia-corpus \
+		"
+
+LICENSE = "MIT"
+
+PR = "r0"
-- 
1.7.9.5


