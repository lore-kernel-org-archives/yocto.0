Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8244BE0027D
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 16:18:04 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Jul 2012 16:18:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="171649729"
Received: from wrk.jf.intel.com ([10.7.202.60])
	by orsmga002.jf.intel.com with ESMTP; 13 Jul 2012 16:18:04 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 13 Jul 2012 16:19:01 -0700
Message-Id: <1342221542-17995-1-git-send-email-kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-baryon][PATCH 1/2] ffmpegthumbnailer: enable jpeg support
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
X-List-Received-Date: Fri, 13 Jul 2012 23:18:04 -0000

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 .../ffmpeg/ffmpegthumbnailer_2.0.7.bb              |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-multimedia/ffmpeg/ffmpegthumbnailer_2.0.7.bb b/recipes-multimedia/ffmpeg/ffmpegthumbnailer_2.0.7.bb
index ec6d625..92e484c 100644
--- a/recipes-multimedia/ffmpeg/ffmpegthumbnailer_2.0.7.bb
+++ b/recipes-multimedia/ffmpeg/ffmpegthumbnailer_2.0.7.bb
@@ -6,11 +6,11 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
 SRC_URI = "http://ffmpegthumbnailer.googlecode.com/files/${PN}-${PV}.tar.gz"
 
-DEPENDS = "ffmpeg libpng"
+DEPENDS = "ffmpeg jpeg libpng"
 
 SRC_URI[md5sum] = "2b5726894792ef484793dce9568a065a"
 SRC_URI[sha256sum] = "a71155339d17201a13fc3ebb649b0d00c7ab2d5a8880da071c8157a69c6f612b"
 
-PR = "r0"
+PR = "r1"
 
 inherit autotools
-- 
1.7.9.5


