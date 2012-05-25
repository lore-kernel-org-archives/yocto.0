Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69FC4E00746
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:00:42 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 May 2012 14:00:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="171407333"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by fmsmga002.fm.intel.com with ESMTP; 25 May 2012 13:59:41 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, kishore.k.bodke@intel.com, dvhart@linux.intel.com,
	rahul.saxena@intel.com
Date: Fri, 25 May 2012 16:00:15 -0500
Message-Id: <f64ab3a8c976b379195b459ca8e4c9e8ab440bd6.1337979216.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1337979215.git.tom.zanussi@intel.com>
References: <cover.1337979215.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-intel: update README.sources with denzil link
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
X-List-Received-Date: Fri, 25 May 2012 21:00:42 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update the README.sources for all the meta-intel BSPs to reflect final
Yocto tarball location for denzil.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-cedartrail/README.sources   |    2 +-
 meta-crownbay/README.sources     |    2 +-
 meta-emenlow/README.sources      |    2 +-
 meta-fishriver/README.sources    |    2 +-
 meta-fri2/README.sources         |    2 +-
 meta-jasperforest/README.sources |    2 +-
 meta-n450/README.sources         |    2 +-
 meta-romley/README.sources       |    2 +-
 meta-sugarbay/README.sources     |    2 +-
 meta-sys940x/README.sources      |    3 +--
 10 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/meta-cedartrail/README.sources b/meta-cedartrail/README.sources
index 8e006fb..76180f1 100755
--- a/meta-cedartrail/README.sources
+++ b/meta-cedartrail/README.sources
@@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can be found at the
 following location:
 
-http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
+http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
 
 The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can also be found at the
diff --git a/meta-crownbay/README.sources b/meta-crownbay/README.sources
index 8e006fb..76180f1 100644
--- a/meta-crownbay/README.sources
+++ b/meta-crownbay/README.sources
@@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can be found at the
 following location:
 
-http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
+http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
 
 The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can also be found at the
diff --git a/meta-emenlow/README.sources b/meta-emenlow/README.sources
index 8e006fb..76180f1 100644
--- a/meta-emenlow/README.sources
+++ b/meta-emenlow/README.sources
@@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can be found at the
 following location:
 
-http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
+http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
 
 The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can also be found at the
diff --git a/meta-fishriver/README.sources b/meta-fishriver/README.sources
index 8e006fb..76180f1 100644
--- a/meta-fishriver/README.sources
+++ b/meta-fishriver/README.sources
@@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can be found at the
 following location:
 
-http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
+http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
 
 The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can also be found at the
diff --git a/meta-fri2/README.sources b/meta-fri2/README.sources
index 8e006fb..76180f1 100644
--- a/meta-fri2/README.sources
+++ b/meta-fri2/README.sources
@@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can be found at the
 following location:
 
-http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
+http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
 
 The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can also be found at the
diff --git a/meta-jasperforest/README.sources b/meta-jasperforest/README.sources
index 8e006fb..76180f1 100644
--- a/meta-jasperforest/README.sources
+++ b/meta-jasperforest/README.sources
@@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can be found at the
 following location:
 
-http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
+http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
 
 The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can also be found at the
diff --git a/meta-n450/README.sources b/meta-n450/README.sources
index 8e006fb..76180f1 100644
--- a/meta-n450/README.sources
+++ b/meta-n450/README.sources
@@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can be found at the
 following location:
 
-http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
+http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
 
 The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can also be found at the
diff --git a/meta-romley/README.sources b/meta-romley/README.sources
index 8e006fb..76180f1 100644
--- a/meta-romley/README.sources
+++ b/meta-romley/README.sources
@@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can be found at the
 following location:
 
-http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
+http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
 
 The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can also be found at the
diff --git a/meta-sugarbay/README.sources b/meta-sugarbay/README.sources
index 8e006fb..76180f1 100644
--- a/meta-sugarbay/README.sources
+++ b/meta-sugarbay/README.sources
@@ -7,7 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can be found at the
 following location:
 
-http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
+http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
 
 The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can also be found at the
diff --git a/meta-sys940x/README.sources b/meta-sys940x/README.sources
index c6cab4d..76180f1 100644
--- a/meta-sys940x/README.sources
+++ b/meta-sys940x/README.sources
@@ -7,8 +7,7 @@ The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can be found at the
 following location:
 
-# FIXME: update the following link after the Yocto Project 1.2 release
-http://www.yoctoproject.org/downloads/yocto-1.2/poky-RELEASENAME-6.0.tar.bz2
+http://www.yoctoproject.org/downloads/yocto-1.2/poky-denzil-7.0.tar.bz2
 
 The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can also be found at the
-- 
1.7.0.4


