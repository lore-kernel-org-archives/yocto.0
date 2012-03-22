Return-Path: <rahul.saxena@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F18DAE013E9
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2012 17:41:30 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 22 Mar 2012 17:41:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="80644738"
Received: from rsaxena-desktop.sc.intel.com (HELO localhost) ([143.183.188.84])
	by AZSMGA002.ch.intel.com with ESMTP; 22 Mar 2012 17:41:30 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com
Date: Thu, 22 Mar 2012 10:32:24 -0700
Message-Id: <58f3106b768d8d9fb9af0c13c0e4da573433278a.1332459306.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332459306.git.rahul.saxena@intel.com>
References: <3ac33244283b53996a2fda9f7c19ab7f2e4c7380.1332459306.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1332459306.git.rahul.saxena@intel.com>
References: <cover.1332459306.git.rahul.saxena@intel.com>
Subject: [PATCH 11/13] meta-cedartrail: Add web-webkit, audio and video samples to sato image
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
X-List-Received-Date: Fri, 23 Mar 2012 00:41:31 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Update sato images to include web-webkit and audio & video samples

Signed-off-by: Rahul Saxena <rahul.saxena@.intel.com>
---
 .../images/core-image-sato-dev.bbappend            |    3 +++
 .../images/core-image-sato-sdk.bbappend            |    3 +++
 .../recipes-sato/images/core-image-sato.bbappend   |    3 +++
 3 files changed, 9 insertions(+), 0 deletions(-)
 create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend
 create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend
 create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato.bbappend

diff --git a/meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend b/meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend
new file mode 100644
index 0000000..4022c58
--- /dev/null
+++ b/meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend
@@ -0,0 +1,3 @@
+IMAGE_INSTALL += "web-webkit"
+IMAGE_INSTALL += "bigbuckbunny-ogg"
+IMAGE_INSTALL += "ogg-CC-BY-3.0-music-samples"
diff --git a/meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend b/meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend
new file mode 100644
index 0000000..4022c58
--- /dev/null
+++ b/meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend
@@ -0,0 +1,3 @@
+IMAGE_INSTALL += "web-webkit"
+IMAGE_INSTALL += "bigbuckbunny-ogg"
+IMAGE_INSTALL += "ogg-CC-BY-3.0-music-samples"
diff --git a/meta-cedartrail/recipes-sato/images/core-image-sato.bbappend b/meta-cedartrail/recipes-sato/images/core-image-sato.bbappend
new file mode 100644
index 0000000..4022c58
--- /dev/null
+++ b/meta-cedartrail/recipes-sato/images/core-image-sato.bbappend
@@ -0,0 +1,3 @@
+IMAGE_INSTALL += "web-webkit"
+IMAGE_INSTALL += "bigbuckbunny-ogg"
+IMAGE_INSTALL += "ogg-CC-BY-3.0-music-samples"
-- 
1.7.4.1


