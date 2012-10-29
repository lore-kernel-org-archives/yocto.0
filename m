Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05EABE01302
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 11:55:33 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 Oct 2012 11:55:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,673,1344236400"; d="scan'208";a="234194249"
Received: from unknown (HELO localhost) ([10.7.199.66])
	by orsmga002.jf.intel.com with ESMTP; 29 Oct 2012 11:55:33 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Mon, 29 Oct 2012 11:54:23 -0700
Message-Id: <b63db504cc97b1b3067e60f9faa72243770ace12.1351536782.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <1351536863-18712-1-git-send-email-dvhart@linux.intel.com>
References: <1351536863-18712-1-git-send-email-dvhart@linux.intel.com>
In-Reply-To: <749418b943b9ae67cad9ba91507c999a51a5779b.1351536782.git.dvhart@linux.intel.com>
References: <749418b943b9ae67cad9ba91507c999a51a5779b.1351536782.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 3/3] n450: Add WEBTITLE and boilerplate README
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
X-List-Received-Date: Mon, 29 Oct 2012 18:55:34 -0000

The WEBTITLE will be used to publish the BSP on the Yocto Project website.
Add a boilerplate README including the Yocto Project compliance
information for the 1.3 release.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-n450/README                 | 125 +++++++++++++++++++++++++++++++++++++++
 meta-n450/conf/machine/n450.conf |   4 +-
 2 files changed, 128 insertions(+), 1 deletion(-)
 create mode 100644 meta-n450/README

diff --git a/meta-n450/README b/meta-n450/README
new file mode 100644
index 0000000..95000e9
--- /dev/null
+++ b/meta-n450/README
@@ -0,0 +1,125 @@
+This README file contains information on building the meta-n450
+BSP layer, and booting the images contained in the /binary directory.
+Please see the corresponding sections below for details.
+
+The Luna Pier platform consists of the Intel Atom E4xx processor (Pineview),
+plus the Intel 82801Hm I/O Controller.
+
+
+Compliance
+==========
+
+This BSP is compliant with the Yocto Project as per the requirements
+listed here:
+
+  http://www.yoctoproject.org/yocto-project-compatible-registration
+
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
+Patches
+=======
+
+Please submit any patches against this BSP to the Yocto mailing list
+(yocto@yoctoproject.org) and cc: the maintainer:
+
+Maintainer: Darren Hart <dvhart@linux.intel.com>
+
+Please see the meta-intel/MAINTAINERS file for more details.
+
+
+Table of Contents
+=================
+
+  I. Building the meta-n450 BSP layer
+ II. Booting the images in /binary
+
+
+I. Building the meta-n450 BSP layer
+=======================================
+
+In order to build an image with BSP support for a given release, you
+need to download the corresponding BSP tarball from the 'Board Support
+Package (BSP) Downloads' page of the Yocto Project website.
+
+Having done that, and assuming you extracted the BSP tarball contents
+at the top-level of your yocto build tree, you can build an n450
+image by adding the location of the meta-n450 layer to
+bblayers.conf, along with the meta-intel layer itself (to access
+common metadata shared between BSPs) e.g.:
+
+  yocto/meta-intel \
+  yocto/meta-intel/meta-n450 \
+
+Configure your build to build for the n450 machine in your local.conf file:
+
+  MACHINE ?= "n450"
+
+You should then be able to build an n450 image as such:
+
+  $ bitbake core-image-sato
+
+At the end of a successful build, you should have a live image that
+you can boot from a USB flash drive (see instructions on how to do
+that below, in the section 'Booting the images from /binary').
+
+As an alternative to downloading the BSP tarball, you can also work
+directly from the meta-intel git repository.  For each BSP in the
+'meta-intel' repository, there are multiple branches, one
+corresponding to each major release starting with 'laverne' (0.90), in
+addition to the latest code which tracks the current master (note that
+not all BSPs are present in every release).  Instead of extracting
+a BSP tarball at the top level of your yocto build tree, you can
+equivalently check out the appropriate branch from the meta-intel
+repository at the same location.
+
+
+II. Booting the images in /binary
+=================================
+
+This BSP contains bootable live images, which can be used to directly
+boot Yocto off of a USB flash drive.
+
+Under Linux, insert a USB flash drive.  Assuming the USB flash drive
+takes device /dev/sdf, use dd to copy the live image to it.  For
+example:
+
+# dd if=core-image-sato-n450-20101207053738.hddimg of=/dev/sdf
+# sync
+# eject /dev/sdf
+
+This should give you a bootable USB flash device.  Insert the device
+into a bootable USB socket on the target, and power on.  This should
+result in a system booted to the Sato graphical desktop.
+
+If you want a terminal, use the arrows at the top of the UI to move to
+different pages of available applications, one of which is named
+'Terminal'.  Clicking that should give you a root terminal.
+
+If you want to ssh into the system, you can use the root terminal to
+ifconfig the IP address and use that to ssh in.  The root password is
+empty, so to log in type 'root' for the user name and hit 'Enter' at
+the Password prompt: and you should be in.
+
+----
+
+If you find you're getting corrupt images on the USB (it doesn't show
+the syslinux boot: prompt, or the boot: prompt contains strange
+characters), try doing this first:
+
+# dd if=/dev/zero of=/dev/sdf bs=1M count=512
diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/n450.conf
index 7ce4cc7..da54561 100644
--- a/meta-n450/conf/machine/n450.conf
+++ b/meta-n450/conf/machine/n450.conf
@@ -1,7 +1,9 @@
 #@TYPE: Machine
 #@NAME: n450
 
-#@DESCRIPTION: Machine configuration for Intel 1-N450 based systems
+#@WEBTITLE: Intel Atom N450 Processor with Intel 82801 HM I/O Controller Compute Module (Luna Pier) with Intel Compute Module Mini-ITX Carrier
+
+#@DESCRIPTION: Machine configuration for Intel Embedded Development Board 1-N450
 
 PREFERRED_PROVIDER-virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "3.2%"
-- 
1.7.11.7


