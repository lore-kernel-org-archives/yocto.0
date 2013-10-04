Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C745E013D6
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 16:11:04 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Oct 2013 16:10:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1036,1371106800"; d="scan'208";a="411747441"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.174])
	by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2013 16:09:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat,  5 Oct 2013 00:09:14 +0100
Message-Id: <079565ceaf83c42e6024140a4ab9a04cf1aeb0df.1380928084.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1380928084.git.paul.eggleton@linux.intel.com>
References: <cover.1380928084.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1380928084.git.paul.eggleton@linux.intel.com>
References: <cover.1380928084.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon][PATCH 1/6] faad2: remove
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 04 Oct 2013 23:11:05 -0000

No longer needed. The recipe is currently maintained in meta-oe.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-multimedia/faad2/faad2_2.7.bb | 28 ----------------------------
 1 file changed, 28 deletions(-)
 delete mode 100644 recipes-multimedia/faad2/faad2_2.7.bb

diff --git a/recipes-multimedia/faad2/faad2_2.7.bb b/recipes-multimedia/faad2/faad2_2.7.bb
deleted file mode 100644
index 6dc79e2..0000000
--- a/recipes-multimedia/faad2/faad2_2.7.bb
+++ /dev/null
@@ -1,28 +0,0 @@
-DESCRIPTION = "Library for reading some sort of media format."
-SECTION = "libs"
-LICENSE = "GPLv2+"
-LIC_FILES_CHKSUM = "file://COPYING;md5=381c8cbe277a7bc1ee2ae6083a04c958 \
-                    file://README;beginline=19;endline=40;md5=79929d64a69b0588ba8445f6eea56913"
-
-PR = "r2"
-
-inherit autotools
-
-SRC_URI = "${SOURCEFORGE_MIRROR}/faac/faad2-src/faad2-${PV}/${PN}-${PV}.tar.bz2;name=faad2 \
-"
-
-SRC_URI[faad2.md5sum] = "4c332fa23febc0e4648064685a3d4332"
-SRC_URI[faad2.sha256sum] = "14561b5d6bc457e825bfd3921ae50a6648f377a9396eaf16d4b057b39a3f63b5"
-
-PACKAGES =+ "libfaad libfaad-dev libfaad-staticdev libmp4ff libmp4ff-dev libmp4ff-staticdev"
-
-FILES_${PN} = "${bindir}/faad"
-
-FILES_libfaad = "${libdir}/libfaad.so.*"
-FILES_libfaad-dev = "${libdir}/libfaad.so ${libdir}/libfaad.la ${includedir}/faad.h"
-FILES_libfaad-staticdev = "${libdir}/libfaad.a"
-
-FILES_libmp4ff = "${libdir}/libmp4ff.so.*"
-FILES_libmp4ff-dev = "${libdir}/libmp4ff.so ${libdir}/libmp4ff.la ${includedir}/mp4ff.h"
-FILES_libmp4ff-staticdev = "${libdir}/libmp4ff.a"
-
-- 
1.8.1.2


