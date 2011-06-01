Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E16D94C808B6
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2011 14:58:24 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Jun 2011 12:58:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,305,1304319600"; 
   d="scan'208";a="5452400"
Received: from unknown (HELO localhost) ([10.255.13.85])
	by azsmga001.ch.intel.com with ESMTP; 01 Jun 2011 12:58:24 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed,  1 Jun 2011 14:56:02 -0500
Message-Id: <913e9ec56a756e5e9ab34a9d130dae51b23915c7.1306958045.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <5b509a5e7bc0fc37844d684ef3fb870d45e1b3ef.1306958045.git.tom.zanussi@intel.com>
References: <5b509a5e7bc0fc37844d684ef3fb870d45e1b3ef.1306958045.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306958045.git.tom.zanussi@intel.com>
References: <cover.1306958045.git.tom.zanussi@intel.com>
Subject: [PATCH 6/6] meta-crownbay: update README with new build instructions.
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
X-List-Received-Date: Wed, 01 Jun 2011 19:58:25 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

EMGD 1.6 added a new non-clickthrough Linux tarball download; this
changes the README to make use of it and also updates new directory
naming, etc.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/README |   95 ++++++++++++++++++++++++++++++++++++++++---------
 1 files changed, 77 insertions(+), 18 deletions(-)

diff --git a/meta-crownbay/README b/meta-crownbay/README
index bb1e0c3..89056ed 100644
--- a/meta-crownbay/README
+++ b/meta-crownbay/README
@@ -6,7 +6,7 @@ The Crown Bay platform consists of the Intel Atom Z6xx processor,
 plus the Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff).
 
 It also supports the E6xx embedded on-chip graphics via the Intel
-Embedded Media and Graphics Driver (EMGD) 1.5 Gold Driver.
+Embedded Media and Graphics Driver (EMGD) 1.6 Gold Driver.
 
 Table of Contents
 =================
@@ -33,7 +33,7 @@ bblayers.conf e.g.:
 The meta-crownbay layer contains support for two different machine
 configurations. These configurations are identical except for the fact
 that the one prefixed with 'crownbay' makes use of the
-Intel-proprietary EMGD 1.5 graphics driver, while the one prefixed
+Intel-proprietary EMGD 1.6 graphics driver, while the one prefixed
 with 'crownbay-noemgd' does not.
 
 If you want to enable the layer that supports EMGD graphics add
@@ -73,19 +73,71 @@ userspace drivers when building the "crownbay" machine (but not when
 building the "crownbay-noemgd" machine).  If you got the BSP from the
 'BSP Downloads' section of the Yocto website, the EMGD binaries needed
 to perform the build will already be present in the BSP, located in
-the recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin directory, and
+the recipes-graphics/xorg-xserver/emgd-driver-bin-1.6 directory, and
 you can ignore the rest of this section.
 
 If you didn't get the BSP from the 'BSP Downloads' section of the
-Yocto website, you'll need to download the a Windows executable from
-the official EMGD website, extract the binaries from it, and copy them
-to the proper location in the meta-crownbay layer.
+Yocto website, you have two choices:
+
+- You can download a tarball containing an rpm that contains the
+  binaries and extract the binaries from that, and copy them to the
+  proper location in the meta-crownbay layer.
+
+- You can download a Windows executable from the official EMGD
+  website, extract the binaries from it, and copy them to the proper
+  location in the meta-crownbay layer.
+
+The following subsections describe each option in detail.
+
+
+IIa Downloading and extracting the binaries using the EMGD Linux tarball
+------------------------------------------------------------------------
+
+The first step of the process is to download the EMGD 1.6 Gold Driver.
+Here is the current link to the URL which it can be downloaded from:
+
+http://edc.intel.com/Software/Downloads/EMGD/
+
+In the Download Now tab, select:
+
+Intel® architecture-based product: Linux Tar Ball
+Operating System: MeeGo 1.0 IVI Linux (kernel 2.6.33.3, X.server 1.8.0)
+
+That will give you a large tar file:
+
+Lin_EMGD_1_6_RC_1922.tar
+
+Extract the files in the tar file, which will in turn give you a
+directory named IEMGD_HEAD_Linux.
+
+The binaries are contained in an rpm file; you can extract the
+binaries from the rpm file using rpm2cpio and cpio:
+
+$ cd IEMGD_HEAD_Linux/MeeGo1.2
+$ rpm2cpio emgd-bin-1922-1.6.i586.rpm > emgd-bin-1922-1.6.i586.cpio
+$ mkdir extracted; cd extracted
+$ cpio -idv < ../poky-image-minimal-initramfs-emenlow.cpio
+
+Finally, you can copy the xorg-xserver binaries to the
+emgd-driver-bin-1.6 directory in the meta-crownbay layer:
+
+$ cp -a usr/lib meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.6
+
+You also need to copy the IEMGD License.txt file to the same directory:
+
+$ cp IEMGD_HEAD_Linux/License/License.txt meta-crownbay/recipes/xorg-xserver/emgd-driver-bin-1.6
+
+At this point, you should be able to build meta-crownbay images as usual.
+
+
+IIb Extracting the binaries using the graphical ced application
+---------------------------------------------------------------
 
 These steps require that you run a graphical application in Windows.
 Windows 7 was used for these instructions, but it shouldn't matter
 which version of Windows you use.
 
-The first step of the process is to download the EMGD 1.5 Gold Driver.
+The first step of the process is to download the EMGD 1.6 Gold Driver.
 Here is the current link to the URL which it can be downloaded from:
 
 http://edc.intel.com/Software/Downloads/EMGD/
@@ -97,14 +149,14 @@ Operating System: MeeGo 1.0 IVI Linux (kernel 2.6.33.3, X.server 1.8.0)
 
 That will give you a large zip file:
 
-IEMGD_1_5_GOLD_ALL_1742.zip
+IEMGD_1_6_GOLD_1922.zip
 
 Extract the files in the zip file, which will in turn give you a large
 .exe file:
 
-IEMGD_1_5_GOLD_ALL_1742.exe
+IEMGD_1_6_GOLD_ALL_1922.exe
 
-Run IEMGD_1_5_GOLD_ALL_1742.exe to install, accept licenses, etc.
+Run IEMGD_1_6_GOLD_ALL_1922.exe to install, accept licenses, etc.
 
 If it says to install watcom, follow the instructions to do that.
 
@@ -157,32 +209,39 @@ system, and uncompress/untar it:
 
 $ tar cvfz IEMGD_HEAD_Linux.tgz
 
-Finally, copy Xorg-xserver binaries in the Meego1.0 driver directory
-to the xserver-xf86-emgd-bin directory in the meta-crownbay layer:
+The binaries are contained in an rpm file; you can extract the
+binaries from the rpm file using rpm2cpio and cpio:
+
+$ cd IEMGD_HEAD_Linux/MeeGo1.2
+$ rpm2cpio emgd-bin-1922-1.6.i586.rpm > emgd-bin-1922-1.6.i586.cpio
+$ mkdir extracted; cd extracted
+$ cpio -idv < ../poky-image-minimal-initramfs-emenlow.cpio
+
+Finally, you can copy the xorg-xserver binaries to the
+emgd-driver-bin-1.6 directory in the meta-crownbay layer:
 
-$ cp IEMGD_HEAD_Linux/MeeGo1.0/driver/Xorg-xserver-1.7.99/* meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin
+$ cp -a usr/lib meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin-1.6
 
 You also need to copy the IEMGD License.txt file to the same directory:
 
-$ cp IEMGD_HEAD_Linux/License/License.txt meta-crownbay/recipes/xorg-xserver/xserver-xf86-emgd-bin
+$ cp IEMGD_HEAD_Linux/License/License.txt meta-crownbay/recipes/xorg-xserver/emgd-driver-bin-1.6
 
 At this point, you should be able to build meta-crownbay images as usual.
 
 ----
 
 For reference, the EMGD Driver documentation is also available at the
-above link (it's also part of the installation).
+above link.
 
 The specific text of the document is:
 
 User Guide: Intel® Embedded Media and Graphics Driver, EFI Video
-Driver, EPOG, and Video BIOS v1.5 for Windows* XP and Linux* Provides
+Driver, EPOG, and Video BIOS v1.6 for Windows* XP and Linux* Provides
 installation requirements/procedures & describes the vbios/firmware,
 configuration options, & functionality of Intel® EMGD under Windows* &
 Linux*. Refer to guide for details.
 
-File Type/Size: PDF 3,340KB
-Version: 008 : October 2010
+April 2011
 
 
 II. Booting the images in /binary
-- 
1.7.0.4


