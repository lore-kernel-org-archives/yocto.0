Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85930E0045D
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 14:01:12 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Oct 2012 14:01:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,602,1344236400"; d="scan'208";a="228911938"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.160])
	by orsmga002.jf.intel.com with ESMTP; 17 Oct 2012 14:01:09 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Wed, 17 Oct 2012 14:02:04 -0700
Message-Id: <7f9b994551c6f4eed870de3c680f2939774e42a4.1350507483.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <4c40eadd86683ae7fdfa74126ace5ae5c16b0167.1350507483.git.kishore.k.bodke@intel.com>
References: <4c40eadd86683ae7fdfa74126ace5ae5c16b0167.1350507483.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1350507483.git.kishore.k.bodke@intel.com>
References: <cover.1350507483.git.kishore.k.bodke@intel.com>
Subject: [PATCH 2/2] [meta-intel] meta-crystalforest: Add openssl-qat-module to the Image.
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
X-List-Received-Date: Wed, 17 Oct 2012 21:01:12 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

This adds the openssl-qat-module to build with the custom
Image.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../recipes-qat-image/images/core-image-qat-sdk.bb |    1 +
 .../recipes-qat-image/images/core-image-qat.bb     |    1 +
 2 files changed, 2 insertions(+)

diff --git a/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb b/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb
index 27feb0d..20aae7e 100644
--- a/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb
+++ b/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb
@@ -9,6 +9,7 @@ IMAGE_INSTALL += " \
 		calgary-corpus \
 		canterbury-corpus \
 		silesia-corpus \
+		openssl-qat-module \
 		"
 
 LICENSE = "MIT"
diff --git a/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb b/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb
index 7c61ec6..eb1c30a 100644
--- a/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb
+++ b/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb
@@ -9,6 +9,7 @@ IMAGE_INSTALL += " \
 		calgary-corpus \
 		canterbury-corpus \
 		silesia-corpus \
+		openssl-qat-module \
 		"
 
 LICENSE = "MIT"
-- 
1.7.9.5


