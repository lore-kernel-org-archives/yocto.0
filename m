Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48230E0045D
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 19:24:47 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Oct 2012 19:24:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,683,1344236400"; d="scan'208";a="242184145"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga002.fm.intel.com with ESMTP; 30 Oct 2012 19:24:46 -0700
From: nitin.a.kamble@intel.com
To: tom.zanussi@intel.com,
	darren.hart@intel.com,
	yocto@yoctoproject.org
Date: Tue, 30 Oct 2012 19:23:45 -0700
Message-Id: <a23a64768feb4b0165e79a2f77ec15d9f7e39526.1351650062.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1351650062.git.nitin.a.kamble@intel.com>
References: <cover.1351650062.git.nitin.a.kamble@intel.com>
Subject: [PATCH 1/4] libva: update to the latest version
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
X-List-Received-Date: Wed, 31 Oct 2012 02:24:47 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

This bug https://bugzilla.yoctoproject.org/show_bug.cgi?id=3348 is triggering
this change. The old versions of libva components are affecting video playback
on few BSPs like sugarbay & chiefriver.

Also, use the release tarball instead of a tag snapshot.

Signed-off-by: Ross Burton <ross.burton@intel.com>
Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 common/recipes-multimedia/libva/libva_1.0.15.bb |    8 --------
 common/recipes-multimedia/libva/libva_1.0.16.bb |    8 ++++++++
 2 files changed, 8 insertions(+), 8 deletions(-)
 delete mode 100644 common/recipes-multimedia/libva/libva_1.0.15.bb
 create mode 100644 common/recipes-multimedia/libva/libva_1.0.16.bb

diff --git a/common/recipes-multimedia/libva/libva_1.0.15.bb b/common/recipes-multimedia/libva/libva_1.0.15.bb
deleted file mode 100644
index e60a4b6..0000000
--- a/common/recipes-multimedia/libva/libva_1.0.15.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-require libva.inc
-
-PR = "${INC_PR}.0"
-
-SRC_URI = "http://cgit.freedesktop.org/vaapi/libva/snapshot/libva-${PV}.tar.bz2"
-
-SRC_URI[md5sum] = "ad8a94ba87ff0563a533c3c142816794"
-SRC_URI[sha256sum] = "7cc24ae9c947aa13904255244810d3637b03d41e2b6f4b643db3b97412cacd37"
diff --git a/common/recipes-multimedia/libva/libva_1.0.16.bb b/common/recipes-multimedia/libva/libva_1.0.16.bb
new file mode 100644
index 0000000..7374c70
--- /dev/null
+++ b/common/recipes-multimedia/libva/libva_1.0.16.bb
@@ -0,0 +1,8 @@
+require libva.inc
+
+PR = "${INC_PR}.0"
+
+SRC_URI = "http://www.freedesktop.org/software/vaapi/releases/libva/libva-${PV}.tar.bz2"
+
+SRC_URI[md5sum] = "99343b27cf24e99abc0c5db2d09e30c8"
+SRC_URI[sha256sum] = "03e46f8f48f252e6b6112c495745100bc217ddded801fdb393384aab1fafeaa2"
-- 
1.7.3.4


