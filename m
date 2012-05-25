Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 089D5E0143F
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:50:26 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 May 2012 14:50:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="147944650"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by azsmga001.ch.intel.com with ESMTP; 25 May 2012 14:50:26 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 25 May 2012 16:50:34 -0500
Message-Id: <46f3795327dd380cab13316447aff5e70fe302ad.1337981720.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337981713.git.tom.zanussi@intel.com>
References: <cover.1337981713.git.tom.zanussi@intel.com>
Subject: [PATCH 09/22] ffmpeg: add --enable-yasm
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
X-List-Received-Date: Fri, 25 May 2012 21:50:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Enable yasm for the ffmpeg build - we don't want a 'crippled build' or
lipsync problems.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 common/recipes-multimedia/ffmpeg/ffmpeg.inc       |    2 +-
 common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb |    1 +
 2 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/common/recipes-multimedia/ffmpeg/ffmpeg.inc b/common/recipes-multimedia/ffmpeg/ffmpeg.inc
index aa11ee9..96da7c2 100644
--- a/common/recipes-multimedia/ffmpeg/ffmpeg.inc
+++ b/common/recipes-multimedia/ffmpeg/ffmpeg.inc
@@ -7,7 +7,7 @@ LICENSE = "GPLv2+ & LGPLv2.1+"
 
 ARM_INSTRUCTION_SET = "arm"
 
-DEPENDS = "zlib libogg libvorbis libtheora liba52 libva"
+DEPENDS = "zlib libogg libvorbis libtheora liba52 libva yasm-native"
 
 INC_PR = "r0"
 
diff --git a/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb b/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
index 0d316d0..31442cc 100644
--- a/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
+++ b/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
@@ -27,6 +27,7 @@ EXTRA_OECONF = " \
         --enable-swscale \
         --enable-vaapi \
         --enable-gpl \
+        --enable-yasm \
         --extra-cflags="${TARGET_CFLAGS} ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}" \
         --extra-ldflags="${TARGET_LDFLAGS}" \
         --sysroot="${STAGING_DIR_TARGET}" \
-- 
1.7.0.4


