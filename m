Return-Path: <kishore.k.bodke@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19199E013D9;
	Fri,  8 Feb 2013 17:20:40 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Feb 2013 17:20:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,632,1355126400"; d="scan'208";a="254609900"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.178])
	by azsmga001.ch.intel.com with ESMTP; 08 Feb 2013 17:20:39 -0800
From: rahul.saxena@intel.com
To: dvhart@linux.intel.com, tom.zanussi@intel.com, nitin.a.kamble@intel.com,
	meta-intel@yoctoproject.org, yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 17:06:09 -0800
Message-Id: <b8acb8fdec8ff76a419b72b4831b8c4d51e46f04.1360371585.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1360371585.git.rahul.saxena@intel.com>
References: <cover.1360371585.git.rahul.saxena@intel.com>
Subject: [PATCH 1/1] meta-cedartrail: Update README with workaround for Yocto Bugzilla #3607 The PVR driver has a issue that for some systems it causes it to incorrectly assume that a LVDS display is connected while infact a VGA display is connected and Vice Versa. The README file is updated with the work-around for this issue.
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
X-List-Received-Date: Sat, 09 Feb 2013 01:20:40 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

Signed-off-by: Rahul Saxena <Rahul.Saxena@intel.com>
---
 meta-cedartrail/README |   27 ++++++++++++++++++++++++++-
 1 files changed, 26 insertions(+), 1 deletions(-)

diff --git a/meta-cedartrail/README b/meta-cedartrail/README
index 0d166b2..e394faf 100755
--- a/meta-cedartrail/README
+++ b/meta-cedartrail/README
@@ -51,7 +51,7 @@ Table of Contents
 
  I. Building the meta-cedartrail BSP layer
 II. Booting the images in /binary
-
+III. Miscellaneous Notes
 
 I. Building the meta-cedartrail BSP layer
 =========================================
@@ -188,3 +188,28 @@ EXTRA_IMAGE_FEATURES = "debug-tweaks"
 and change above line to..
 
 EXTRA_IMAGE_FEATURES = "debug-tweaks tools-testapps"
+
+
+Work Around for VGA and LVDS Display issue in PVR driver
+--------------------------------------------------------
+
+The PVR driver has a issue that for some systems it causes
+it to incorrectly assume that a LVDS display is connected
+while infact a VGA display is connected and Vice Versa.
+If your VGA or LVDS display does not work with
+"cedartrail" MACHINE, then if you have connected a VGA display,
+add the following to the kernel command line:
+
+video=LVDS-1:d video=VGA-1:e
+
+If you have connected a LVDS display, add the following to
+the kernel command line:
+
+video=LVDS-1:e video=VGA-1:d
+
+The kernel boot command line can be updated before BSP build by
+editing the "APPEND +=..." line in  conf/machine/cedartrail.conf file.
+
+The kernel command line can also be edited after a image is built by
+editing the syslinux.cfg file in the USB flash device on which
+the image is installed.
-- 
1.7.4.1


