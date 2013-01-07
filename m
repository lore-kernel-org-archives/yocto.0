Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2866CE0145F
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 13:06:57 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Jan 2013 13:06:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,425,1355126400"; d="scan'208";a="243146063"
Received: from wrk.jf.intel.com ([10.7.202.62])
	by orsmga001.jf.intel.com with ESMTP; 07 Jan 2013 13:06:56 -0800
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  7 Jan 2013 13:05:53 -0800
Message-Id: <ed4b0951e64066c418383811c1b0b5d925ab590b.1357591796.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1888ecc22ef3c39d03cb3a133516443c6f0e81cf.1357591796.git.kevin.strasser@linux.intel.com>
References: <1888ecc22ef3c39d03cb3a133516443c6f0e81cf.1357591796.git.kevin.strasser@linux.intel.com>
In-Reply-To: <cover.1357591796.git.kevin.strasser@linux.intel.com>
References: <cover.1357591796.git.kevin.strasser@linux.intel.com>
Subject: [meta-baryon][PATCH 2/4] ffmpeg: build position independent code where possible
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
X-List-Received-Date: Mon, 07 Jan 2013 21:06:57 -0000

Fixes several of the textrel warnings the package has been
producing.

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-multimedia/ffmpeg/ffmpeg_0.6.1.bb |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-multimedia/ffmpeg/ffmpeg_0.6.1.bb b/recipes-multimedia/ffmpeg/ffmpeg_0.6.1.bb
index 232cea1..a715ad7 100644
--- a/recipes-multimedia/ffmpeg/ffmpeg_0.6.1.bb
+++ b/recipes-multimedia/ffmpeg/ffmpeg_0.6.1.bb
@@ -2,7 +2,7 @@ require ffmpeg.inc
 
 LICENSE = "LGPLv2.1+ & GPLv2+"
 DEPENDS += "schroedinger libgsm"
-PR = "${INC_PR}.1"
+PR = "${INC_PR}.2"
 
 SRC_URI = "http://ffmpeg.org/releases/ffmpeg-${PV}.tar.bz2"
 SRC_URI[md5sum] = "4f5d732d25eedfb072251b5314ba2093"
@@ -28,6 +28,7 @@ EXTRA_OECONF = " \
         --enable-pthreads \
         --enable-shared \
         --enable-swscale \
+		--enable-pic \
         --extra-cflags="${TARGET_CFLAGS} ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}" \
         --extra-ldflags="${TARGET_LDFLAGS} ${HOST_CC_ARCH}${TOOLCHAIN_OPTIONS}" \
         --prefix=${prefix}/ \
-- 
1.7.9.5


