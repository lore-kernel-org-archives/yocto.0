Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68A5AE00347
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 10:52:06 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jul 2012 10:52:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="191364481"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.253])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jul 2012 10:52:05 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Jul 2012 18:51:57 +0100
Message-Id: <d8fcbeed23b9445ad932940688bd6fd63fdc353b.1342029029.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1342029029.git.paul.eggleton@linux.intel.com>
References: <cover.1342029029.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1342029029.git.paul.eggleton@linux.intel.com>
References: <cover.1342029029.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon] [PATCH 1/4] faad2: split out staticdev files
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
X-List-Received-Date: Wed, 11 Jul 2012 17:52:06 -0000

Fixes the following QA issues:

ERROR: QA Issue: non -staticdev package contains static .a library:
libfaad-dev path '${WORKDIR}/packages-split/libfaad-dev/usr/lib/libfaad.a'
ERROR: QA Issue: non -staticdev package contains static .a library:
libmp4ff-dev path '${WORKDIR}/packages-split/libmp4ff-dev/usr/lib/libmp4ff.a'

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-multimedia/faad2/faad2_2.7.bb |   10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/recipes-multimedia/faad2/faad2_2.7.bb b/recipes-multimedia/faad2/faad2_2.7.bb
index 33e1743..e9fb8f6 100644
--- a/recipes-multimedia/faad2/faad2_2.7.bb
+++ b/recipes-multimedia/faad2/faad2_2.7.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=381c8cbe277a7bc1ee2ae6083a04c958 \
                     file://README;beginline=19;endline=40;md5=79929d64a69b0588ba8445f6eea56913"
 PRIORITY = "optional"
 
-PR = "r1"
+PR = "r2"
 
 inherit autotools
 
@@ -15,13 +15,15 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/faac/faad2-src/faad2-${PV}/${PN}-${PV}.tar.bz2;
 SRC_URI[faad2.md5sum] = "4c332fa23febc0e4648064685a3d4332"
 SRC_URI[faad2.sha256sum] = "14561b5d6bc457e825bfd3921ae50a6648f377a9396eaf16d4b057b39a3f63b5"
 
-PACKAGES =+ "libfaad libfaad-dev libmp4ff libmp4ff-dev"
+PACKAGES =+ "libfaad libfaad-dev libfaad-staticdev libmp4ff libmp4ff-dev libmp4ff-staticdev"
 
 FILES_${PN} = "${bindir}/faad"
 
 FILES_libfaad = "${libdir}/libfaad.so.*"
-FILES_libfaad-dev = "${libdir}/libfaad.so ${libdir}/libfaad.la ${libdir}/libfaad.a ${includedir}/faad.h"
+FILES_libfaad-dev = "${libdir}/libfaad.so ${libdir}/libfaad.la ${includedir}/faad.h"
+FILES_libfaad-staticdev = "${libdir}/libfaad.a"
 
 FILES_libmp4ff = "${libdir}/libmp4ff.so.*"
-FILES_libmp4ff-dev = "${libdir}/libmp4ff.so ${libdir}/libmp4ff.la ${libdir}/libmp4ff.a ${includedir}/mp4ff.h"
+FILES_libmp4ff-dev = "${libdir}/libmp4ff.so ${libdir}/libmp4ff.la ${includedir}/mp4ff.h"
+FILES_libmp4ff-staticdev = "${libdir}/libmp4ff.a"
 
-- 
1.7.9.5


