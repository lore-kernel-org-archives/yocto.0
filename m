Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93BEEE01214
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 22:15:58 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 31 Oct 2012 22:15:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,691,1344236400"; d="scan'208";a="241182296"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2012 22:15:58 -0700
From: nitin.a.kamble@intel.com
To: tom.zanussi@intel.com,
	darren.hart@intel.com,
	yocto@yoctoproject.org
Date: Wed, 31 Oct 2012 22:14:58 -0700
Message-Id: <d0485af84ca8ec89b78ed1b1884459b738d5cf2c.1351746741.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <5c5a917f76a4875f6d2d27db854added5926d774.1351746741.git.nitin.a.kamble@intel.com>
References: <5c5a917f76a4875f6d2d27db854added5926d774.1351746741.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1351746741.git.nitin.a.kamble@intel.com>
References: <cover.1351746741.git.nitin.a.kamble@intel.com>
Subject: [Patch v2 2/4] libva-intel-driver: update to the latest version
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
X-List-Received-Date: Thu, 01 Nov 2012 05:15:58 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The older version of libva-intel-driver recipe with
newer gst-vaapi recipe was causing video playback failure.

As per the discussion on the bug here:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3348

The maintainer of the upstream project is recommending
to update the recipe to the latest version to fix the video
playback issue.

Also, use the release tarball instead of a tag snapshot.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../libva/libva-intel-driver.inc                   |    2 +-
 .../libva/libva-intel-driver_1.0.15.bb             |    8 --------
 .../libva/libva-intel-driver_1.0.18.bb             |    8 ++++++++
 3 files changed, 9 insertions(+), 9 deletions(-)
 delete mode 100644 common/recipes-multimedia/libva/libva-intel-driver_1.0.15.bb
 create mode 100644 common/recipes-multimedia/libva/libva-intel-driver_1.0.18.bb

diff --git a/common/recipes-multimedia/libva/libva-intel-driver.inc b/common/recipes-multimedia/libva/libva-intel-driver.inc
index f0c6b9a..fa7be4c 100644
--- a/common/recipes-multimedia/libva/libva-intel-driver.inc
+++ b/common/recipes-multimedia/libva/libva-intel-driver.inc
@@ -15,7 +15,7 @@ INC_PR = "r0"
 
 DEPENDS = "libva"
 
-S = "${WORKDIR}/intel-driver-${PV}"
+S = "${WORKDIR}/${PN}-${PV}"
 
 inherit autotools pkgconfig
 
diff --git a/common/recipes-multimedia/libva/libva-intel-driver_1.0.15.bb b/common/recipes-multimedia/libva/libva-intel-driver_1.0.15.bb
deleted file mode 100644
index 6fdd6a9..0000000
--- a/common/recipes-multimedia/libva/libva-intel-driver_1.0.15.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-require libva-intel-driver.inc
-
-PR = "${INC_PR}.0"
-
-SRC_URI = "http://cgit.freedesktop.org/vaapi/intel-driver/snapshot/intel-driver-${PV}.tar.bz2"
-
-SRC_URI[md5sum] = "9dbd642f18993335146480a3a2987874"
-SRC_URI[sha256sum] = "52f16f78129af00ec40afc6a1b8fb07c7b6c6c0da7f43a54e19afd2a41791098"
diff --git a/common/recipes-multimedia/libva/libva-intel-driver_1.0.18.bb b/common/recipes-multimedia/libva/libva-intel-driver_1.0.18.bb
new file mode 100644
index 0000000..fcd3b6f
--- /dev/null
+++ b/common/recipes-multimedia/libva/libva-intel-driver_1.0.18.bb
@@ -0,0 +1,8 @@
+require libva-intel-driver.inc
+
+PR = "${INC_PR}.0"
+
+SRC_URI = "http://www.freedesktop.org/software/vaapi/releases/libva-intel-driver/libva-intel-driver-${PV}.tar.bz2"
+
+SRC_URI[md5sum] = "13907085223d88d956cdfc282962b7a7"
+SRC_URI[sha256sum] = "789fa2d6e22b9028ce12a89981eb33e57b04301431415149acfb61a49d3a63ee"
-- 
1.7.3.4


