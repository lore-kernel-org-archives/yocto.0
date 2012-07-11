Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F554E00345
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 11:11:45 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jul 2012 11:11:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="176125730"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.83])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jul 2012 11:11:45 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Wed, 11 Jul 2012 11:00:24 -0700
Message-Id: <8f2baebbcd691dc28d41855cd6726f0717cbaa8a.1342027864.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1342027864.git.rahul.saxena@intel.com>
References: <cover.1342027864.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1342027864.git.rahul.saxena@intel.com>
References: <cover.1342027864.git.rahul.saxena@intel.com>
Subject: [PATCH 1/1] meta-cedartrail: rename ogg-CC-BY-3.0-music-samples_0.1.bb to ogg-cc-by-3.0-music-samples_0.1.bb
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
X-List-Received-Date: Wed, 11 Jul 2012 18:11:45 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Capital letters in receipe name generate error when ipk package types are used for build

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 ...s_0.1.bb => ogg-cc-by-3.0-music-samples_0.1.bb} |    0
 .../images/core-image-sato-dev.bbappend            |    2 +-
 .../images/core-image-sato-sdk.bbappend            |    2 +-
 .../recipes-sato/images/core-image-sato.bbappend   |    2 +-
 4 files changed, 3 insertions(+), 3 deletions(-)
 rename meta-cedartrail/recipes-mediasamples/music-samples/{ogg-CC-BY-3.0-music-samples_0.1.bb => ogg-cc-by-3.0-music-samples_0.1.bb} (100%)

diff --git a/meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb b/meta-cedartrail/recipes-mediasamples/music-samples/ogg-cc-by-3.0-music-samples_0.1.bb
similarity index 100%
rename from meta-cedartrail/recipes-mediasamples/music-samples/ogg-CC-BY-3.0-music-samples_0.1.bb
rename to meta-cedartrail/recipes-mediasamples/music-samples/ogg-cc-by-3.0-music-samples_0.1.bb
diff --git a/meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend b/meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend
index 4022c58..42c4283 100644
--- a/meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend
+++ b/meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend
@@ -1,3 +1,3 @@
 IMAGE_INSTALL += "web-webkit"
 IMAGE_INSTALL += "bigbuckbunny-ogg"
-IMAGE_INSTALL += "ogg-CC-BY-3.0-music-samples"
+IMAGE_INSTALL += "ogg-cc-by-3.0-music-samples"
diff --git a/meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend b/meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend
index 4022c58..42c4283 100644
--- a/meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend
+++ b/meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend
@@ -1,3 +1,3 @@
 IMAGE_INSTALL += "web-webkit"
 IMAGE_INSTALL += "bigbuckbunny-ogg"
-IMAGE_INSTALL += "ogg-CC-BY-3.0-music-samples"
+IMAGE_INSTALL += "ogg-cc-by-3.0-music-samples"
diff --git a/meta-cedartrail/recipes-sato/images/core-image-sato.bbappend b/meta-cedartrail/recipes-sato/images/core-image-sato.bbappend
index 4022c58..42c4283 100644
--- a/meta-cedartrail/recipes-sato/images/core-image-sato.bbappend
+++ b/meta-cedartrail/recipes-sato/images/core-image-sato.bbappend
@@ -1,3 +1,3 @@
 IMAGE_INSTALL += "web-webkit"
 IMAGE_INSTALL += "bigbuckbunny-ogg"
-IMAGE_INSTALL += "ogg-CC-BY-3.0-music-samples"
+IMAGE_INSTALL += "ogg-cc-by-3.0-music-samples"
-- 
1.7.4.1


