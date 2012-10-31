Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBA03E00533
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 19:24:47 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Oct 2012 19:24:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,683,1344236400"; d="scan'208";a="242184153"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga002.fm.intel.com with ESMTP; 30 Oct 2012 19:24:47 -0700
From: nitin.a.kamble@intel.com
To: tom.zanussi@intel.com,
	darren.hart@intel.com,
	yocto@yoctoproject.org
Date: Tue, 30 Oct 2012 19:23:47 -0700
Message-Id: <633f99a4a04c51c08e8d97bf6a8f6329dc2ef4b4.1351650062.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <a23a64768feb4b0165e79a2f77ec15d9f7e39526.1351650062.git.nitin.a.kamble@intel.com>
References: <a23a64768feb4b0165e79a2f77ec15d9f7e39526.1351650062.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1351650062.git.nitin.a.kamble@intel.com>
References: <cover.1351650062.git.nitin.a.kamble@intel.com>
Subject: [PATCH 3/4] libva: remove redundant libva 1.0.12
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

From: Ross Burton <ross.burton@intel.com>

No BSP from meta-intel repo is requiring this version of libva now.

Signed-off-by: Ross Burton <ross.burton@intel.com>
Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 common/recipes-multimedia/libva/libva_1.0.12.bb |    8 --------
 1 files changed, 0 insertions(+), 8 deletions(-)
 delete mode 100644 common/recipes-multimedia/libva/libva_1.0.12.bb

diff --git a/common/recipes-multimedia/libva/libva_1.0.12.bb b/common/recipes-multimedia/libva/libva_1.0.12.bb
deleted file mode 100644
index 490e60f..0000000
--- a/common/recipes-multimedia/libva/libva_1.0.12.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-require libva.inc
-
-PR = "${INC_PR}.0"
-
-SRC_URI = "http://cgit.freedesktop.org/libva/snapshot/libva-${PV}.tar.bz2"
-
-SRC_URI[md5sum] = "84408a0746a63b8cf308dc7b9f2451cf"
-SRC_URI[sha256sum] = "e80aae68fc78d237d046be6525d333f072fd57fe4f4d8f981e869703ebfee8f5"
-- 
1.7.3.4


