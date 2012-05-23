Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0714E0142F
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 12:52:37 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 May 2012 12:52:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="156323125"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by fmsmga001.fm.intel.com with ESMTP; 23 May 2012 12:52:37 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 23 May 2012 14:52:36 -0500
Message-Id: <46f3795327dd380cab13316447aff5e70fe302ad.1337801535.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337801535.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337801535.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337801535.git.tom.zanussi@intel.com>
References: <cover.1337801535.git.tom.zanussi@intel.com>
Subject: [PATCH 09/20] ffmpeg: add --enable-yasm
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
X-List-Received-Date: Wed, 23 May 2012 19:52:37 -0000

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


