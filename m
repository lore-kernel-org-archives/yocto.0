Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 566CDE00744
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 14:44:57 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Nov 2011 14:44:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,549,1315206000"; d="scan'208";a="77733136"
Received: from unknown (HELO localhost) ([10.255.15.246])
	by azsmga001.ch.intel.com with ESMTP; 21 Nov 2011 14:44:56 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org, dvhart@linux.intel.com, kishore.k.bodke@intel.com
Date: Mon, 21 Nov 2011 16:44:33 -0600
Message-Id: <68c6b19d623b34a504090ad2c706859ecc946256.1321915193.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321915193.git.tom.zanussi@intel.com>
References: <ba97cb7d2dddf3e86e38752d2bce9ff2661d390f.1321915193.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1321915192.git.tom.zanussi@intel.com>
References: <cover.1321915192.git.tom.zanussi@intel.com>
Subject: [PATCH 17/17] meta-intel: update READMEs with layer dependency list
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
X-List-Received-Date: Mon, 21 Nov 2011 22:44:57 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a new 'Dependencies' section listing all the layer dependencies
for each BSP.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/README     |   18 ++++++++++++++++++
 meta-emenlow/README      |   17 +++++++++++++++++
 meta-fishriver/README    |   17 +++++++++++++++++
 meta-fri2/README         |   17 +++++++++++++++++
 meta-jasperforest/README |   17 +++++++++++++++++
 meta-n450/ReleaseNotes   |    4 ++++
 meta-romley/README       |   18 ++++++++++++++++++
 meta-sugarbay/README     |   18 ++++++++++++++++++
 8 files changed, 126 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/README b/meta-crownbay/README
index 7d96bc2..c0e8119 100644
--- a/meta-crownbay/README
+++ b/meta-crownbay/README
@@ -8,6 +8,24 @@ plus the Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff).
 It also supports the E6xx embedded on-chip graphics via the Intel
 Embedded Media and Graphics Driver (EMGD) 1.8 Driver.
 
+
+Dependencies
+============
+
+This layer depends on:
+
+  URI: git://git.openembedded.org/bitbake
+  branch: master
+
+  URI: git://git.openembedded.org/openembedded-core
+  layers: meta
+  branch: master
+
+  URI: git://git.yoctoproject.org/meta-intel
+  layers: intel
+  branch: master
+
+
 Table of Contents
 =================
 
diff --git a/meta-emenlow/README b/meta-emenlow/README
index d802bfb..53c0528 100644
--- a/meta-emenlow/README
+++ b/meta-emenlow/README
@@ -13,6 +13,23 @@ depending on which BSP tarball you downloaded.
 Please see the corresponding sections below for details.
 
 
+Dependencies
+============
+
+This layer depends on:
+
+  URI: git://git.openembedded.org/bitbake
+  branch: master
+
+  URI: git://git.openembedded.org/openembedded-core
+  layers: meta
+  branch: master
+
+  URI: git://git.yoctoproject.org/meta-intel
+  layers: intel
+  branch: master
+
+
 Table of Contents
 =================
 
diff --git a/meta-fishriver/README b/meta-fishriver/README
index 6425432..77262de 100644
--- a/meta-fishriver/README
+++ b/meta-fishriver/README
@@ -3,6 +3,23 @@ BSP layer, and booting the images contained in the /binary directory.
 Please see the corresponding sections below for details.
 
 
+Dependencies
+============
+
+This layer depends on:
+
+  URI: git://git.openembedded.org/bitbake
+  branch: master
+
+  URI: git://git.openembedded.org/openembedded-core
+  layers: meta
+  branch: master
+
+  URI: git://git.yoctoproject.org/meta-intel
+  layers: intel
+  branch: master
+
+
 Table of Contents
 =================
 
diff --git a/meta-fri2/README b/meta-fri2/README
index 12b0b37..d337b2a 100644
--- a/meta-fri2/README
+++ b/meta-fri2/README
@@ -11,6 +11,23 @@ It also supports the E6xx embedded on-chip graphics via the Intel
 Embedded Media and Graphics Driver (EMGD) 1.8 Driver.
 
 
+Dependencies
+============
+
+This layer depends on:
+
+  URI: git://git.openembedded.org/bitbake
+  branch: master
+
+  URI: git://git.openembedded.org/openembedded-core
+  layers: meta
+  branch: master
+
+  URI: git://git.yoctoproject.org/meta-intel
+  layers: intel
+  branch: master
+
+
 Table of Contents
 =================
 
diff --git a/meta-jasperforest/README b/meta-jasperforest/README
index a464a11..6af4b37 100644
--- a/meta-jasperforest/README
+++ b/meta-jasperforest/README
@@ -8,6 +8,23 @@ combined with the Intel 3420 PCH chipset (Ibex Peak) make up the
 'Picket Post' CRB this BSP was developed on.
 
 
+Dependencies
+============
+
+This layer depends on:
+
+  URI: git://git.openembedded.org/bitbake
+  branch: master
+
+  URI: git://git.openembedded.org/openembedded-core
+  layers: meta
+  branch: master
+
+  URI: git://git.yoctoproject.org/meta-intel
+  layers: intel
+  branch: master
+
+
 Table of Contents
 =================
 
diff --git a/meta-n450/ReleaseNotes b/meta-n450/ReleaseNotes
index 5eb1225..2d08f1c 100644
--- a/meta-n450/ReleaseNotes
+++ b/meta-n450/ReleaseNotes
@@ -16,6 +16,10 @@ This layer depends on:
   layers: meta
   branch: master
 
+  URI: git://git.yoctoproject.org/meta-intel
+  layers: intel
+  branch: master
+
   URI: git://git.yoctoproject.org/poky
   layers: meta-yocto
   branch: master
diff --git a/meta-romley/README b/meta-romley/README
index 6c13ea6..a6be1d5 100644
--- a/meta-romley/README
+++ b/meta-romley/README
@@ -5,6 +5,24 @@ Please see the corresponding sections below for details.
 The 'romley' platform consists of the Intel Sandy Bridge processor,
 plus the Patsburg chipset.  This BSP assumes Matrox graphics is being used.
 
+
+Dependencies
+============
+
+This layer depends on:
+
+  URI: git://git.openembedded.org/bitbake
+  branch: master
+
+  URI: git://git.openembedded.org/openembedded-core
+  layers: meta
+  branch: master
+
+  URI: git://git.yoctoproject.org/meta-intel
+  layers: intel
+  branch: master
+
+
 Table of Contents
 =================
 
diff --git a/meta-sugarbay/README b/meta-sugarbay/README
index 72b1faf..d198f61 100644
--- a/meta-sugarbay/README
+++ b/meta-sugarbay/README
@@ -6,6 +6,24 @@ The 'Sugar Bay' platform consists of the Intel Sandy Bridge processor,
 plus the Cougar Point PCH (Q67 Express or B65 Express chipsets).  This
 BSP assumes that the Sandy Bridge integrated graphics are being used.
 
+
+Dependencies
+============
+
+This layer depends on:
+
+  URI: git://git.openembedded.org/bitbake
+  branch: master
+
+  URI: git://git.openembedded.org/openembedded-core
+  layers: meta
+  branch: master
+
+  URI: git://git.yoctoproject.org/meta-intel
+  layers: intel
+  branch: master
+
+
 Table of Contents
 =================
 
-- 
1.7.0.4


