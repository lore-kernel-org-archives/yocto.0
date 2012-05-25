Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5C2FE01412
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:50:24 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 May 2012 14:50:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="171420165"
Received: from unknown (HELO localhost) ([10.255.12.14])
	by fmsmga002.fm.intel.com with ESMTP; 25 May 2012 14:50:23 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Fri, 25 May 2012 16:50:32 -0500
Message-Id: <083206dec1f0b8fa22f26e0d2860b9c2d3950cbb.1337981720.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
References: <a5a4b657ee72340fc000206e5f8208a8bfbdad1a.1337981719.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337981713.git.tom.zanussi@intel.com>
References: <cover.1337981713.git.tom.zanussi@intel.com>
Subject: [PATCH 07/22] ffmpeg: add --enable-gpl
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
X-List-Received-Date: Fri, 25 May 2012 21:50:25 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

libpostproc needs --enable-gpl in order to be built.  This essentially
changes ffmpeg's license to GPL v2+ as per the ffmpeg LICENSE file.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb b/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
index 5442b0d..0d316d0 100644
--- a/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
+++ b/common/recipes-multimedia/ffmpeg/ffmpeg_0.7.12.bb
@@ -26,6 +26,7 @@ EXTRA_OECONF = " \
         --enable-shared \
         --enable-swscale \
         --enable-vaapi \
+        --enable-gpl \
         --extra-cflags="${TARGET_CFLAGS} ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}" \
         --extra-ldflags="${TARGET_LDFLAGS}" \
         --sysroot="${STAGING_DIR_TARGET}" \
-- 
1.7.0.4


