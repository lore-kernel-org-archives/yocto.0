Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4EF1E013D2
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 11:18:03 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Oct 2012 11:17:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,608,1344236400"; d="scan'208";a="237102280"
Received: from kishore-desktop.sc.intel.com (HELO localhost)
	([143.183.188.160])
	by fmsmga002.fm.intel.com with ESMTP; 18 Oct 2012 11:17:59 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Thu, 18 Oct 2012 11:19:16 -0700
Message-Id: <6f0c208bed6dc2551cab9a0b69e1b9ec5a134d52.1350583189.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <46df5fcf29108c0c9b5ed6714ec012fd03b94e55.1350583189.git.kishore.k.bodke@intel.com>
References: <46df5fcf29108c0c9b5ed6714ec012fd03b94e55.1350583189.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1350583189.git.kishore.k.bodke@intel.com>
References: <cover.1350583189.git.kishore.k.bodke@intel.com>
Subject: [PATCH 3/3] [meta-intel]meta-crystalforest: Add zlib-qat and openssl-qat module.
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
X-List-Received-Date: Thu, 18 Oct 2012 18:18:03 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

This adds the two new modules zlib-qat-mem and openssl-qat-mem
modules to build with the custom Image.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../recipes-qat-image/images/core-image-qat-sdk.bb |    2 ++
 .../recipes-qat-image/images/core-image-qat.bb     |    2 ++
 2 files changed, 4 insertions(+)

diff --git a/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb b/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb
index 27feb0d..a4d6309 100644
--- a/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb
+++ b/meta-crystalforest/recipes-qat-image/images/core-image-qat-sdk.bb
@@ -9,6 +9,8 @@ IMAGE_INSTALL += " \
 		calgary-corpus \
 		canterbury-corpus \
 		silesia-corpus \
+		zlib-qat-module \
+		openssl-qat-module \
 		"
 
 LICENSE = "MIT"
diff --git a/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb b/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb
index 7c61ec6..d445381 100644
--- a/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb
+++ b/meta-crystalforest/recipes-qat-image/images/core-image-qat.bb
@@ -9,6 +9,8 @@ IMAGE_INSTALL += " \
 		calgary-corpus \
 		canterbury-corpus \
 		silesia-corpus \
+		zlib-qat-module \
+		openssl-qat-module \
 		"
 
 LICENSE = "MIT"
-- 
1.7.9.5


