Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC4D3E01248
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 10:41:24 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 Oct 2012 10:41:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,673,1344236400"; d="scan'208";a="210824314"
Received: from kishore-desktop.sc.intel.com (HELO localhost) ([143.183.188.87])
	by azsmga001.ch.intel.com with ESMTP; 29 Oct 2012 10:41:23 -0700
From: kishore.k.bodke@intel.com
To: tom.zanussi@intel.com,
	nitin.a.kamble@intel.com,
	yocto@yoctoproject.org
Date: Mon, 29 Oct 2012 10:42:27 -0700
Message-Id: <c7294ca4d14e88f50ef4ce0389384bbf75cf1c05.1351532199.git.kishore.k.bodke@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1351532199.git.kishore.k.bodke@intel.com>
References: <cover.1351532199.git.kishore.k.bodke@intel.com>
Subject: [PATCH 1/2] [meta-intel] crystalforest: Change the machine names
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
X-List-Received-Date: Mon, 29 Oct 2012 17:41:25 -0000

From: Kishore Bodke <kishore.k.bodke@intel.com>

Change the Machine names for the two machines
that will be used to publish the BSP on the Yocto
Project website.  And add the Yocto Project Compliance
information for the 1.3 release.

Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
---
 meta-crystalforest/README                          |   26 +++++++++-----------
 ...rest-stargo.conf => crystalforest-gladden.conf} |    4 +--
 ...rest-shumway.conf => crystalforest-server.conf} |    4 +--
 .../machconfig                                     |    0
 .../machconfig                                     |    0
 .../xorg.conf                                      |    0
 .../xorg.conf                                      |    0
 .../linux/linux-yocto-rt_3.4.bbappend              |   21 ++++++++--------
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   20 +++++++--------
 9 files changed, 36 insertions(+), 39 deletions(-)
 rename meta-crystalforest/conf/machine/{crystalforest-stargo.conf => crystalforest-gladden.conf} (87%)
 rename meta-crystalforest/conf/machine/{crystalforest-shumway.conf => crystalforest-server.conf} (94%)
 rename meta-crystalforest/recipes-bsp/formfactor/formfactor/{crystalforest-shumway => crystalforest-gladden}/machconfig (100%)
 rename meta-crystalforest/recipes-bsp/formfactor/formfactor/{crystalforest-stargo => crystalforest-server}/machconfig (100%)
 rename meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/{crystalforest-shumway => crystalforest-gladden}/xorg.conf (100%)
 rename meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/{crystalforest-stargo => crystalforest-server}/xorg.conf (100%)

diff --git a/meta-crystalforest/README b/meta-crystalforest/README
index 7b88b22..2a25edc 100644
--- a/meta-crystalforest/README
+++ b/meta-crystalforest/README
@@ -3,11 +3,11 @@ BSP layer, and booting the images contained in the /binary directory.
 Please see the corresponding sections below for details.
 
 The 'Crystal Forest' platform consists of two versions.
-1. STARGO
-2. SHUMWAY
+1. GLADDEN
+2. SERVER
 
-Stargo Platform is based on Intel Sandy Bridge Gladden Processor,plus the Cave Creek chipset.  
-Shumway Platform is based on two Intel Sandy Bridge (SNB-EP ES2 Grade and SNB-EN ES2 Grade)
+Gladden Platform is based on Intel Sandy Bridge Gladden Processor,plus the Cave Creek chipset.
+Server Platform is based on two Intel Sandy Bridge (SNB-EP ES2 Grade and SNB-EN ES2 Grade)
 Processors plus two Cave Creek Chipsets.
 
 Both Platforms uses Matrox graphics Card.
@@ -64,13 +64,13 @@ common metadata shared between BSPs) e.g.:
   yocto/meta-intel \
   yocto/meta-intel/meta-crystalforest \
 
-To enable the Crystal Forest Stargo layer, add the crystalforest-stargo MACHINE to local.conf:
+To enable the Crystal Forest Gladden layer, add the crystalforest-gladden MACHINE to local.conf:
 
-  MACHINE ?= "crystalforest-stargo"
+  MACHINE ?= "crystalforest-gladden"
 
-To enable the Crystal Forest Shumway layer, add the crystalforest-shumway MACHINE to local.conf:
+To enable the Crystal Forest Server layer, add the crystalforest-server MACHINE to local.conf:
 
-  MACHINE ?= "crystalforest-shumway"
+  MACHINE ?= "crystalforest-server"
 
 
 You should then be able to build a crystalforest image as such:
@@ -103,15 +103,15 @@ Under Linux, insert a USB flash drive.  Assuming the USB flash drive
 takes device /dev/sdf, use dd to copy the live image to it.  For
 example:
 
-To boot the Stargo Platform:
+To boot the Gladden Platform:
 
-# dd if=core-image-sato-crystalforest-stargo-20120829033154.hddimg of=/dev/sdf
+# dd if=core-image-sato-crystalforest-gladden-20120829033154.hddimg of=/dev/sdf
 # sync
 # eject /dev/sdf
 
-To boot the Shumway Platform:
+To boot the Server Platform:
 
-# dd if=core-image-sato-crystalforest-shumway-20120829044852.hddimg of=/dev/sdf
+# dd if=core-image-sato-crystalforest-server-20120829044852.hddimg of=/dev/sdf
 # sync
 # eject /dev/sdf
 
@@ -135,5 +135,3 @@ the syslinux boot: prompt, or the boot: prompt contains strange
 characters), try doing this first:
 
 # dd if=/dev/zero of=/dev/sdf bs=1M count=512
-
-
diff --git a/meta-crystalforest/conf/machine/crystalforest-stargo.conf b/meta-crystalforest/conf/machine/crystalforest-gladden.conf
similarity index 87%
rename from meta-crystalforest/conf/machine/crystalforest-stargo.conf
rename to meta-crystalforest/conf/machine/crystalforest-gladden.conf
index 575a504..a84088a 100644
--- a/meta-crystalforest/conf/machine/crystalforest-stargo.conf
+++ b/meta-crystalforest/conf/machine/crystalforest-gladden.conf
@@ -1,7 +1,7 @@
 #@TYPE: Machine
-#@NAME: crystalforest-stargo 
+#@NAME: crystalforest-gladden
 
-#@DESCRIPTION: Machine configuration for Crystal Forest (STARGO) systems
+#@DESCRIPTION: Machine configuration for Crystal Forest (GLADDEN) systems
 # i.e. One Sandy Bridge based Gladden Processor + One Cave Creek Chipset
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
diff --git a/meta-crystalforest/conf/machine/crystalforest-shumway.conf b/meta-crystalforest/conf/machine/crystalforest-server.conf
similarity index 94%
rename from meta-crystalforest/conf/machine/crystalforest-shumway.conf
rename to meta-crystalforest/conf/machine/crystalforest-server.conf
index 0a2141c..2bbc4f3 100644
--- a/meta-crystalforest/conf/machine/crystalforest-shumway.conf
+++ b/meta-crystalforest/conf/machine/crystalforest-server.conf
@@ -1,7 +1,7 @@
 #@TYPE: Machine
-#@NAME: crystalforest-shumway 
+#@NAME: crystalforest-server
 
-#@DESCRIPTION: Machine configuration for Crystal Forest  Server (SHUMWAY) systems
+#@DESCRIPTION: Machine configuration for Crystal Forest  Server systems
 # i.e. Two Sandy Bridge Jaketown processors (SNB-EP ES2 Grade and SNB-EN ES2 Grade) + Two Cave Creek Chipsets.
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
diff --git a/meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-shumway/machconfig b/meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-gladden/machconfig
similarity index 100%
rename from meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-shumway/machconfig
rename to meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-gladden/machconfig
diff --git a/meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-stargo/machconfig b/meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-server/machconfig
similarity index 100%
rename from meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-stargo/machconfig
rename to meta-crystalforest/recipes-bsp/formfactor/formfactor/crystalforest-server/machconfig
diff --git a/meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-shumway/xorg.conf b/meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-gladden/xorg.conf
similarity index 100%
rename from meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-shumway/xorg.conf
rename to meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-gladden/xorg.conf
diff --git a/meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-stargo/xorg.conf b/meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-server/xorg.conf
similarity index 100%
rename from meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-stargo/xorg.conf
rename to meta-crystalforest/recipes-graphics/xorg-xserver/xserver-xf86-config/crystalforest-server/xorg.conf
diff --git a/meta-crystalforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend b/meta-crystalforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
index 240ba2f..1295b85 100644
--- a/meta-crystalforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
+++ b/meta-crystalforest/recipes-kernel/linux/linux-yocto-rt_3.4.bbappend
@@ -1,18 +1,17 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
-COMPATIBLE_MACHINE_crystalforest-stargo = "crystalforest-stargo"
-KMACHINE_crystalforest-stargo  = "crystalforest"
-KBRANCH_crystalforest-stargo = "standard/preempt-rt/base"
+COMPATIBLE_MACHINE_crystalforest-gladden = "crystalforest-gladen"
+KMACHINE_crystalforest-gladden  = "crystalforest"
+KBRANCH_crystalforest-gladden = "standard/preempt-rt/base"
 
-SRCREV_machine_pn-linux-yocto-rt_crystalforest-stargo ?= "9032b1e9daf5b4396f939981c3be95f67802d18c"
-SRCREV_meta_pn-linux-yocto-rt_crystalforest-stargo ?= "9e3bdb7344054264b750e53fbbb6394cc1c942ac"
+SRCREV_machine_pn-linux-yocto-rt_crystalforest-gladden ?= "9032b1e9daf5b4396f939981c3be95f67802d18c"
+SRCREV_meta_pn-linux-yocto-rt_crystalforest-gladden ?= "9e3bdb7344054264b750e53fbbb6394cc1c942ac"
 
+COMPATIBLE_MACHINE_crystalforest-server = "crystalforest-server"
+KMACHINE_crystalforest-server  = "crystalforest"
+KBRANCH_crystalforest-server = "standard/preempt-rt/base"
 
-COMPATIBLE_MACHINE_crystalforest-shumway = "crystalforest-shumway"
-KMACHINE_crystalforest-shumway  = "crystalforest"
-KBRANCH_crystalforest-shumway = "standard/preempt-rt/base"
-
-SRCREV_machine_pn-linux-yocto-rt_crystalforest-shumway ?= "9032b1e9daf5b4396f939981c3be95f67802d18c"
-SRCREV_meta_pn-linux-yocto-rt_crystalforest-shumway ?= "9e3bdb7344054264b750e53fbbb6394cc1c942ac"
+SRCREV_machine_pn-linux-yocto-rt_crystalforest-server ?= "9032b1e9daf5b4396f939981c3be95f67802d18c"
+SRCREV_meta_pn-linux-yocto-rt_crystalforest-server ?= "9e3bdb7344054264b750e53fbbb6394cc1c942ac"
 
 module_autoload_uio = "uio"
diff --git a/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
index a065aba..8418307 100644
--- a/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -1,17 +1,17 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
-COMPATIBLE_MACHINE_crystalforest-stargo = "crystalforest-stargo"
-KMACHINE_crystalforest-stargo  = "crystalforest"
-KBRANCH_crystalforest-stargo  = "standard/common-pc-64/crystalforest"
+COMPATIBLE_MACHINE_crystalforest-gladden = "crystalforest-gladden"
+KMACHINE_crystalforest-gladden  = "crystalforest"
+KBRANCH_crystalforest-gladden  = "standard/common-pc-64/crystalforest"
 
-SRCREV_machine_pn-linux-yocto_crystalforest-stargo ?= "449f7f520350700858f21a5554b81cc8ad23267d"
-SRCREV_meta_pn-linux-yocto_crystalforest-stargo ?= "2ec32d511b62d44b63e8560a9b1d6895a5dac695"
+SRCREV_machine_pn-linux-yocto_crystalforest-gladden ?= "449f7f520350700858f21a5554b81cc8ad23267d"
+SRCREV_meta_pn-linux-yocto_crystalforest-gladden ?= "2ec32d511b62d44b63e8560a9b1d6895a5dac695"
 
-COMPATIBLE_MACHINE_crystalforest-shumway = "crystalforest-shumway"
-KMACHINE_crystalforest-shumway  = "crystalforest"
-KBRANCH_crystalforest-shumway  = "standard/common-pc-64/crystalforest"
+COMPATIBLE_MACHINE_crystalforest-server = "crystalforest-server"
+KMACHINE_crystalforest-server  = "crystalforest"
+KBRANCH_crystalforest-server  = "standard/common-pc-64/crystalforest"
 
-SRCREV_machine_pn-linux-yocto_crystalforest-shumway ?= "449f7f520350700858f21a5554b81cc8ad23267d"
-SRCREV_meta_pn-linux-yocto_crystalforest-shumway ?= "2ec32d511b62d44b63e8560a9b1d6895a5dac695"
+SRCREV_machine_pn-linux-yocto_crystalforest-server ?= "449f7f520350700858f21a5554b81cc8ad23267d"
+SRCREV_meta_pn-linux-yocto_crystalforest-server ?= "2ec32d511b62d44b63e8560a9b1d6895a5dac695"
 
 module_autoload_uio = "uio"
-- 
1.7.9.5


