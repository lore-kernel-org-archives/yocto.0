Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61F6DE01214
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 22:15:59 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 31 Oct 2012 22:15:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,691,1344236400"; d="scan'208";a="241182301"
Received: from yocto-hm1.jf.intel.com ([10.23.232.32])
	by fmsmga001.fm.intel.com with ESMTP; 31 Oct 2012 22:15:58 -0700
From: nitin.a.kamble@intel.com
To: tom.zanussi@intel.com,
	darren.hart@intel.com,
	yocto@yoctoproject.org
Date: Wed, 31 Oct 2012 22:14:59 -0700
Message-Id: <cc997f64e44836888e4cb5ecb7fa2a7a6915856f.1351746741.git.nitin.a.kamble@intel.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <5c5a917f76a4875f6d2d27db854added5926d774.1351746741.git.nitin.a.kamble@intel.com>
References: <5c5a917f76a4875f6d2d27db854added5926d774.1351746741.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1351746741.git.nitin.a.kamble@intel.com>
References: <cover.1351746741.git.nitin.a.kamble@intel.com>
Subject: [Patch v2 3/4] libva: remove redundant libva 1.0.12
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
X-List-Received-Date: Thu, 01 Nov 2012 05:15:59 -0000

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


