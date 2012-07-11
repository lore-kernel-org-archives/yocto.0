Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E64E9E00347
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 10:52:06 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jul 2012 10:52:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="191364485"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.253])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jul 2012 10:52:06 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 11 Jul 2012 18:51:58 +0100
Message-Id: <703c6af8736052645f99f45203db481e43c4da8c.1342029029.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1342029029.git.paul.eggleton@linux.intel.com>
References: <cover.1342029029.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1342029029.git.paul.eggleton@linux.intel.com>
References: <cover.1342029029.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon] [PATCH 2/4] faac: split out staticdev files
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
X-List-Received-Date: Wed, 11 Jul 2012 17:52:07 -0000

Fixes the following QA issue:

ERROR: QA Issue: non -staticdev package contains static .a library:
libfaac-dev path '${WORKDIR}/packages-split/libfaac-dev/usr/lib/libfaac.a'

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-multimedia/faac/faac_1.24.bb |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/recipes-multimedia/faac/faac_1.24.bb b/recipes-multimedia/faac/faac_1.24.bb
index b862ad0..fc403ac 100644
--- a/recipes-multimedia/faac/faac_1.24.bb
+++ b/recipes-multimedia/faac/faac_1.24.bb
@@ -6,7 +6,7 @@ LICENSE = "LGPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
                     file://libfaac/coder.h;beginline=5;endline=17;md5=fa1fd6a5fa8cdc877d63a12530d273e0"
 
-PR = "r2"
+PR = "r3"
 
 inherit autotools
 
@@ -17,7 +17,8 @@ PACKAGES =+ "lib${PN} lib${PN}-dev"
 
 FILES_${PN} = " ${bindir}/faac "
 FILES_lib${PN} = " ${libdir}/libfaac.so.*"
-FILES_lib${PN}-dev = " ${includedir}/faac.h ${includedir}/faaccfg.h ${libdir}/libfaac.so ${libdir}/libfaac.la ${libdir}/libfaac.a "
+FILES_lib${PN}-dev = "${includedir}/faac.h ${includedir}/faaccfg.h ${libdir}/libfaac.so ${libdir}/libfaac.la"
+FILES_lib${PN}-staticdev = "${libdir}/libfaac.a"
 
 
 SRC_URI[md5sum] = "e72dc74db17b42b06155613489077ad7"
-- 
1.7.9.5


