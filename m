Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 548F4E0137C
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 16:45:19 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Apr 2012 16:45:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="149338449"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.75])
	by fmsmga002.fm.intel.com with ESMTP; 03 Apr 2012 16:45:19 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	yocto@yoctoproject.org
Date: Tue,  3 Apr 2012 16:43:55 -0700
Message-Id: <48b65c9c2c2be50340ee316f9b740935e3a0e5d1.1333496206.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <64382e0b94ea439163d2f2dfa4681afac8e70e67.1333496206.git.kishore.k.bodke@intel.com>
References: <64382e0b94ea439163d2f2dfa4681afac8e70e67.1333496206.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1333496206.git.kishore.k.bodke@intel.com>
References: <cover.1333496206.git.kishore.k.bodke@intel.com>
Subject: [PATCH 4/7] Cedartrail: Add bbappend files to install Audio and Video files.
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
X-List-Received-Date: Tue, 03 Apr 2012 23:45:19 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

These bbappend files pulls in the Audio, Video and Web Kit
into the Image with IMAGE_INSTALL.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 .../images/core-image-sato-dev.bbappend            |    2 ++
 .../images/core-image-sato-sdk.bbappend            |    2 ++
 .../recipes-sato/images/core-image-sato.bbappend   |    1 +
 3 files changed, 5 insertions(+), 0 deletions(-)
 create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend
 create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend
 create mode 100644 meta-cedartrail/recipes-sato/images/core-image-sato.bbappend

diff --git a/meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend b/meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend
new file mode 100644
index 0000000..33283f4
--- /dev/null
+++ b/meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend
@@ -0,0 +1,2 @@
+IMAGE_INSTALL += "web-webkit bigbuckbunny-ogg ogg-CC-BY-3.0-music-samples"
+
diff --git a/meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend b/meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend
new file mode 100644
index 0000000..33283f4
--- /dev/null
+++ b/meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend
@@ -0,0 +1,2 @@
+IMAGE_INSTALL += "web-webkit bigbuckbunny-ogg ogg-CC-BY-3.0-music-samples"
+
diff --git a/meta-cedartrail/recipes-sato/images/core-image-sato.bbappend b/meta-cedartrail/recipes-sato/images/core-image-sato.bbappend
new file mode 100644
index 0000000..4c1ccac
--- /dev/null
+++ b/meta-cedartrail/recipes-sato/images/core-image-sato.bbappend
@@ -0,0 +1 @@
+IMAGE_INSTALL += "web-webkit bigbuckbunny-ogg  ogg-CC-BY-3.0-music-samples"
-- 
1.7.5.4


