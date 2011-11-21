Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35856E0073D
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 14:44:51 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Nov 2011 14:44:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,549,1315206000"; d="scan'208";a="87883843"
Received: from unknown (HELO localhost) ([10.255.15.246])
	by fmsmga001.fm.intel.com with ESMTP; 21 Nov 2011 14:44:50 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, dvhart@linux.intel.com, kishore.k.bodke@intel.com
Date: Mon, 21 Nov 2011 16:44:30 -0600
Message-Id: <f01a136a0db28abe1267a290a454d6029fb3d989.1321915193.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321915193.git.tom.zanussi@intel.com>
References: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321915193.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1321915192.git.tom.zanussi@intel.com>
References: <cover.1321915192.git.tom.zanussi@intel.com>
Subject: [PATCH 14/17] meta-intel: update READMEs with new layer info
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
X-List-Received-Date: Mon, 21 Nov 2011 22:44:51 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The affected BSPs now need to access common metadata in locations off
of the top level of meta-intel, so need to add meta-intel itself to
their layer configuration.  This updates the READMEs for those BSPs to
mention that.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/README     |    4 +++-
 meta-emenlow/README      |    4 +++-
 meta-fishriver/README    |    4 +++-
 meta-fri2/README         |    5 ++++-
 meta-jasperforest/README |    8 +++++---
 meta-romley/README       |    4 +++-
 meta-sugarbay/README     |    4 +++-
 7 files changed, 24 insertions(+), 9 deletions(-)

diff --git a/meta-crownbay/README b/meta-crownbay/README
index de9f1f1..7d96bc2 100644
--- a/meta-crownbay/README
+++ b/meta-crownbay/README
@@ -26,8 +26,10 @@ Package (BSP) Downloads' page of the Yocto Project website.
 Having done that, and assuming you extracted the BSP tarball contents
 at the top-level of your yocto build tree, you can build a crownbay
 image by adding the location of the meta-crownbay layer to
-bblayers.conf e.g.:
+bblayers.conf, along with the meta-intel layer itself (to access
+common metadata shared between BSPs) e.g.:
 
+  yocto/meta-intel \
   yocto/meta-intel/meta-crownbay \
 
 The meta-crownbay layer contains support for two different machine
diff --git a/meta-emenlow/README b/meta-emenlow/README
index fc3317e..d802bfb 100644
--- a/meta-emenlow/README
+++ b/meta-emenlow/README
@@ -30,8 +30,10 @@ Package (BSP) Downloads' page of the Yocto Project website.
 Having done that, and assuming you extracted the BSP tarball contents
 at the top-level of your yocto build tree, you can build an emenlow
 image by adding the location of the meta-emenlow layer to
-bblayers.conf e.g.:
+bblayers.conf, along with the meta-intel layer itself (to access
+common metadata shared between BSPs) e.g.:
 
+  yocto/meta-intel \
   yocto/meta-intel/meta-emenlow \
 
 To enable the emenlow layer, add the emenlow MACHINE to local.conf:
diff --git a/meta-fishriver/README b/meta-fishriver/README
index b76056c..6425432 100644
--- a/meta-fishriver/README
+++ b/meta-fishriver/README
@@ -20,8 +20,10 @@ Package (BSP) Downloads' page of the Yocto Project website.
 Having done that, and assuming you extracted the BSP tarball contents
 at the top-level of your yocto build tree, you can build a fishriver
 image by adding the location of the meta-fishriver layer to
-bblayers.conf e.g.:
+bblayers.conf, along with the meta-intel layer itself (to access
+common metadata shared between BSPs) e.g.:
 
+  yocto/meta-intel \
   yocto/meta-intel/meta-fishriver \
 
 To enable the fishriver layer, add the fishriver MACHINE to local.conf:
diff --git a/meta-fri2/README b/meta-fri2/README
index 4dc135b..12b0b37 100644
--- a/meta-fri2/README
+++ b/meta-fri2/README
@@ -28,8 +28,11 @@ Package (BSP) Downloads' page of the Yocto Project website.
 
 Having done that, and assuming you extracted the BSP tarball contents
 at the top-level of your yocto build tree, you can build an fri2 image
-by adding the location of the meta-fri2 layer to bblayers.conf e.g.:
+by adding the location of the meta-fri2 layer to bblayers.conf, along
+with the meta-intel layer itself (to access common metadata shared
+between BSPs) e.g.:
 
+  yocto/meta-intel \
   yocto/meta-intel/meta-fri2 \
 
 The meta-fri2 layer contains support for two different machine
diff --git a/meta-jasperforest/README b/meta-jasperforest/README
index 7652da0..a464a11 100644
--- a/meta-jasperforest/README
+++ b/meta-jasperforest/README
@@ -23,10 +23,12 @@ need to download the corresponding BSP tarball from the 'Board Support
 Package (BSP) Downloads' page of the Yocto Project website.
 
 Having done that, and assuming you extracted the BSP tarball contents
-at the top-level of your yocto build tree, you can build a jasperforest
-image by adding the location of the meta-jasperforest layer to
-bblayers.conf e.g.:
+at the top-level of your yocto build tree, you can build a
+jasperforest image by adding the location of the meta-jasperforest
+layer to bblayers.conf, along with the meta-intel layer itself (to
+access common metadata shared between BSPs) e.g.:
 
+  yocto/meta-intel \
   yocto/meta-intel/meta-jasperforest \
 
 To enable the jasperforest layer, add the jasperforest MACHINE to local.conf:
diff --git a/meta-romley/README b/meta-romley/README
index d242534..6c13ea6 100644
--- a/meta-romley/README
+++ b/meta-romley/README
@@ -22,8 +22,10 @@ Package (BSP) Downloads' page of the Yocto Project website.
 Having done that, and assuming you extracted the BSP tarball contents
 at the top-level of your yocto build tree, you can build a romley
 image by adding the location of the meta-romley layer to
-bblayers.conf e.g.:
+bblayers.conf, along with the meta-intel layer itself (to access
+common metadata shared between BSPs) e.g.:
 
+  yocto/meta-intel \
   yocto/meta-intel/meta-romley \
 
 To enable the romley layer, add the romley MACHINE to local.conf:
diff --git a/meta-sugarbay/README b/meta-sugarbay/README
index 2d72f8a..72b1faf 100644
--- a/meta-sugarbay/README
+++ b/meta-sugarbay/README
@@ -23,8 +23,10 @@ Package (BSP) Downloads' page of the Yocto Project website.
 Having done that, and assuming you extracted the BSP tarball contents
 at the top-level of your yocto build tree, you can build a sugarbay
 image by adding the location of the meta-sugarbay layer to
-bblayers.conf e.g.:
+bblayers.conf, along with the meta-intel layer itself (to access
+common metadata shared between BSPs) e.g.:
 
+  yocto/meta-intel \
   yocto/meta-intel/meta-sugarbay \
 
 To enable the sugarbay layer, add the sugarbay MACHINE to local.conf:
-- 
1.7.0.4


