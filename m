Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1628BE01214
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 14:15:28 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Oct 2012 14:15:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,595,1344236400"; d="scan'208";a="205266714"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.160])
	by azsmga001.ch.intel.com with ESMTP; 16 Oct 2012 14:15:26 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Tue, 16 Oct 2012 14:16:04 -0700
Message-Id: <5193e1743a604bf4714d46c4d4fb175be8edfe9e.1350421785.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <d2b03727eec46bdbd08d9b56e416dd69e88120f2.1350421785.git.kishore.k.bodke@intel.com>
References: <d2b03727eec46bdbd08d9b56e416dd69e88120f2.1350421785.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1350421785.git.kishore.k.bodke@intel.com>
References: <cover.1350421785.git.kishore.k.bodke@intel.com>
Subject: [PATCH 2/2] [meta-intel] meta-crystalforest: Add zlib-qat-module to the Image.
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
X-List-Received-Date: Tue, 16 Oct 2012 21:15:28 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

This adds the zlib-qat-module to build with the custom
Image.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../recipes-qat-image/images/core-image-qat-sdk.bb |    1 +
 .../recipes-qat-image/images/core-image-qat.bb     |    1 +
 2 files changed, 2 insertions(+)

diff --git a/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb b/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb
index 27feb0d..689377f 100644
--- a/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb
+++ b/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb
@@ -9,6 +9,7 @@ IMAGE_INSTALL += " \
 		calgary-corpus \
 		canterbury-corpus \
 		silesia-corpus \
+		zlib-qat-module \
 		"
 
 LICENSE = "MIT"
diff --git a/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb b/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb
index 7c61ec6..8b5e0f6 100644
--- a/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb
+++ b/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb
@@ -9,6 +9,7 @@ IMAGE_INSTALL += " \
 		calgary-corpus \
 		canterbury-corpus \
 		silesia-corpus \
+		zlib-qat-module \
 		"
 
 LICENSE = "MIT"
-- 
1.7.9.5


