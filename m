Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C680E013DB
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 17:40:40 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 17 Oct 2012 17:40:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,603,1344236400"; d="scan'208";a="157468978"
Received: from rsaxena-rosecity.sc.intel.com (HELO localhost)
	([143.183.188.86])
	by AZSMGA002.ch.intel.com with ESMTP; 17 Oct 2012 17:40:26 -0700
From: rahul.saxena@intel.com
To: yocto@yoctoproject.org,
	nitin.a.kamble@intel.com,
	tom.zanussi@intel.com
Date: Wed, 17 Oct 2012 17:28:04 -0700
Message-Id: <ea250b3b84ff84988a34fae5e408b449d3b1b90f.1350519099.git.rahul.saxena@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <eb8e569d055ddfd14425ec7472be8f9eb7b075fc.1350519099.git.rahul.saxena@intel.com>
References: <eb8e569d055ddfd14425ec7472be8f9eb7b075fc.1350519099.git.rahul.saxena@intel.com>
In-Reply-To: <cover.1350519099.git.rahul.saxena@intel.com>
References: <cover.1350519099.git.rahul.saxena@intel.com>
Subject: [PATCH 2/3] meta-cedartrail: Fix package naming issue
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
X-List-Received-Date: Thu, 18 Oct 2012 00:40:41 -0000

From: Rahul Saxena <rahul.saxena@intel.com>

cdv-pvr-driver was generating rpm packages with name "libwsbm"
This name can potentialy clash with other package names.
Fix this problem by specifying package names in the recipe with the
PKG_ vars
This fixes bug: [YOCTO #3286]

Signed-off-by: Rahul Saxena <rahul.saxena@intel.com>
---
 .../xorg-driver/cdv-pvr-driver_1.0.3.bb            |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
index cd3407c..2f44649 100644
--- a/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
+++ b/meta-cedartrail/recipes-graphics/xorg-driver/cdv-pvr-driver_1.0.3.bb
@@ -14,7 +14,7 @@ LIC_FILES_CHKSUM = " \
 
 DEPENDS = "rpm-native libva"
 
-PR = "r2"
+PR = "r3"
 
 PSB-VIDEO = "psb-video-cdv-1.0.3-1.1.i586.rpm"
 PSB-VIDEO-REV = "1.0.3"
@@ -44,6 +44,12 @@ SRC_URI[psbrpm.sha256sum] = "0861d69b44d5ce29a3f778ac82976a22f7726af84d9b2e5438c
 SRC_URI[wsbmrpm.md5sum] = "b8b21ca8325abd7850d197f9bf3071c7"
 SRC_URI[wsbmrpm.sha256sum] = "f436386967c1adec5211e662251bd542bbe0b8cd55e1d9f9c203da5ee934d4f0"
 
+# make sure generated rpm packages get non conflicting names
+PKG_${PN} = "cdv-pvr-driver"
+PKG_${PN}-dev = "cdv-pvr-driver-dev"
+PKG_${PN}-dbg = "cdv-pvr-driver-dbg"
+PKG_${PN}-doc = "cdv-pvr-driver-doc"
+
 S  = "${WORKDIR}/cdv-graphics-drivers_${PV}"
 
 # These are closed binaries generated elsewhere so don't check ldflags
-- 
1.7.4.1


