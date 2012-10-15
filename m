Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF390E013A6
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 03:30:25 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Oct 2012 03:30:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,587,1344236400"; d="scan'208";a="233992974"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.76])
	by fmsmga001.fm.intel.com with ESMTP; 15 Oct 2012 03:30:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 15 Oct 2012 11:30:01 +0100
Message-Id: <1350297001-10910-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-intel][PATCH] ffmpeg: set LICENSE_FLAGS
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
X-List-Received-Date: Mon, 15 Oct 2012 10:30:25 -0000

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 common/recipes-multimedia/ffmpeg/ffmpeg.inc |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/recipes-multimedia/ffmpeg/ffmpeg.inc b/common/recipes-multimedia/ffmpeg/ffmpeg.inc
index 96da7c2..3ce950e 100644
--- a/common/recipes-multimedia/ffmpeg/ffmpeg.inc
+++ b/common/recipes-multimedia/ffmpeg/ffmpeg.inc
@@ -5,6 +5,8 @@ SECTION = "libs"
 PRIORITY = "optional"
 LICENSE = "GPLv2+ & LGPLv2.1+"
 
+LICENSE_FLAGS = "commercial"
+
 ARM_INSTRUCTION_SET = "arm"
 
 DEPENDS = "zlib libogg libvorbis libtheora liba52 libva yasm-native"
-- 
1.7.9.5


