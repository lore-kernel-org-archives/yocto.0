Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2E24E00524
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 10:39:59 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Oct 2012 10:39:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,524,1344236400"; d="scan'208";a="199703215"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.160])
	by azsmga001.ch.intel.com with ESMTP; 02 Oct 2012 10:39:58 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	yocto@yoctoproject.org
Date: Tue,  2 Oct 2012 10:40:42 -0700
Message-Id: <b4b775afd72aa2f0b9ba001dd30c89f03d826389.1349199109.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1349199109.git.kishore.k.bodke@intel.com>
References: <cover.1349199109.git.kishore.k.bodke@intel.com>
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
X-List-Received-Date: Tue, 02 Oct 2012 17:39:59 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

To build with the corpus files recipes, create a customized
recipe to install them into the Image.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../recipes-qat-image/images/core-image-qat-sdk.bb |   16 ++++++++++++++++
 .../recipes-qat-image/images/core-image-qat.bb     |   16 ++++++++++++++++
 2 files changed, 32 insertions(+)
 create mode 100644 meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb
 create mode 100644 meta-crystalforest/recipes-qat-image/images/core-image-qat.bb

diff --git a/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb b/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb
new file mode 100644
index 0000000..27feb0d
--- /dev/null
+++ b/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb
@@ -0,0 +1,16 @@
+# Copyright (C) 2012 Intel Corporation.
+# Author: Kishore Bodke
+# kishore.k.bodke@intel.com
+#
+
+require recipes-sato/images/core-image-sato-sdk.bb
+
+IMAGE_INSTALL += " \
+		calgary-corpus \
+		canterbury-corpus \
+		silesia-corpus \
+		"
+
+LICENSE = "MIT"
+
+PR = "r0"
diff --git a/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb b/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb
new file mode 100644
index 0000000..7c61ec6
--- /dev/null
+++ b/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb
@@ -0,0 +1,16 @@
+# Copyright (C) 2012 Intel Corporation.
+# Author: Kishore Bodke
+# kishore.k.bodke@intel.com
+#
+
+require recipes-sato/images/core-image-sato.bb
+
+IMAGE_INSTALL += " \
+		calgary-corpus \
+		canterbury-corpus \
+		silesia-corpus \
+		"
+
+LICENSE = "MIT"
+
+PR = "r0"
-- 
1.7.9.5


