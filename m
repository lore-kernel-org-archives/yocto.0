Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 757E5E0045D
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 10:50:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Oct 2012 10:50:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,648,1344236400"; d="scan'208";a="210824628"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by orsmga001.jf.intel.com with ESMTP; 25 Oct 2012 10:50:40 -0700
From: nitin.a.kamble@intel.com
To: yocto@yoctoproject.org,
	tom.zanussi@intel.com,
	darren.hart@intel.com
Date: Thu, 25 Oct 2012 10:49:38 -0700
Message-Id: <0c72a4867641ddcc3992b62acdcb8e35cc108551.1351187270.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <f079f49b2ed20714daa07b33c49b1bffce70bf0b.1351187270.git.nitin.a.kamble@intel.com>
References: <f079f49b2ed20714daa07b33c49b1bffce70bf0b.1351187270.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1351187270.git.nitin.a.kamble@intel.com>
References: <cover.1351187270.git.nitin.a.kamble@intel.com>
Subject: [Patch v3 3/7] crownbay: add WEBTITLE & Compliance information
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
X-List-Received-Date: Thu, 25 Oct 2012 17:50:52 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The WEBTITLE will be used to publish the BSP on the Yocto Project Website.
And adding the Yocto Project Compliance information for the 1.3 release.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta-crownbay/README                            |   10 +++++++++-
 meta-crownbay/conf/machine/crownbay-noemgd.conf |    2 ++
 meta-crownbay/conf/machine/crownbay.conf        |    2 ++
 3 files changed, 13 insertions(+), 1 deletions(-)

diff --git a/meta-crownbay/README b/meta-crownbay/README
index 4bc9f31..1f164f4 100644
--- a/meta-crownbay/README
+++ b/meta-crownbay/README
@@ -2,13 +2,21 @@ This README file contains information on building the meta-crownbay
 BSP layer, and booting the images contained in the /binary directory.
 Please see the corresponding sections below for details.
 
-The Crown Bay platform consists of the Intel Atom Z6xx processor,
+The Crown Bay platform consists of the Intel Atom E6xx processor,
 plus the Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff).
 
 It also supports the E6xx embedded on-chip graphics via the Intel
 Embedded Media and Graphics Driver (EMGD) 1.14 Driver.
 
 
+Compliance
+==========
+
+This BSP is compliant with Yocto Project as per the requirements listed
+here:
+  http://www.yoctoproject.org/yocto-project-compatible-registration
+
+
 Dependencies
 ============
 
diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index 4c869ee..c6f816a 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -1,6 +1,8 @@
 #@TYPE: Machine
 #@NAME: crownbay-noemgd
 
+#@WEBTITLE: Intel Atom E6xx Processor With Intel EG20T Controller Hub Development Kit (Crown Bay) With Open Source VESA Graphics
+
 #@DESCRIPTION: Machine configuration for Crown Bay systems, without Intel-proprietary graphics bits
 # i.e. E660 + EG20T
 
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 624ca56..1fd9fe8 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -1,6 +1,8 @@
 #@TYPE: Machine
 #@NAME: crownbay
 
+#@WEBTITLE: Intel Atom E6xx Processor With Intel EG20T Controller Hub Development Kit (Crown Bay) With Proprietary IEMGD Accelerated Graphics
+
 #@DESCRIPTION: Machine configuration for Crown Bay systems
 # i.e. E660 + EG20T
 
-- 
1.7.3.4


