Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C53C0E0163D
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 16:11:00 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Oct 2013 16:11:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1036,1371106800"; d="scan'208";a="411747457"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.174])
	by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2013 16:09:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat,  5 Oct 2013 00:09:16 +0100
Message-Id: <8edb775e6d77ebb98aa5c5fbccd0b0d55e00f938.1380928084.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1380928084.git.paul.eggleton@linux.intel.com>
References: <cover.1380928084.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1380928084.git.paul.eggleton@linux.intel.com>
References: <cover.1380928084.git.paul.eggleton@linux.intel.com>
Subject: [meta-baryon][PATCH 3/6] faac: remove
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
X-List-Received-Date: Fri, 04 Oct 2013 23:11:00 -0000

No longer needed. A patch has been sent to add it to meta-multimedia.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-multimedia/faac/faac_1.24.bb | 24 ------------------------
 1 file changed, 24 deletions(-)
 delete mode 100644 recipes-multimedia/faac/faac_1.24.bb

diff --git a/recipes-multimedia/faac/faac_1.24.bb b/recipes-multimedia/faac/faac_1.24.bb
deleted file mode 100644
index 8b8905b..0000000
--- a/recipes-multimedia/faac/faac_1.24.bb
+++ /dev/null
@@ -1,24 +0,0 @@
-DESCRIPTION = "Library for reading some sort of media format."
-SECTION = "libs"
-DEPENDS = ""
-LICENSE = "LGPLv2+"
-LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
-                    file://libfaac/coder.h;beginline=5;endline=17;md5=fa1fd6a5fa8cdc877d63a12530d273e0"
-
-PR = "r3"
-
-inherit autotools
-
-SRC_URI = "${SOURCEFORGE_MIRROR}/faac/${PN}-${PV}.tar.gz"
-S = "${WORKDIR}/${PN}"
-
-PACKAGES =+ "lib${PN} lib${PN}-dev"
-
-FILES_${PN} = " ${bindir}/faac "
-FILES_lib${PN} = " ${libdir}/libfaac.so.*"
-FILES_lib${PN}-dev = "${includedir}/faac.h ${includedir}/faaccfg.h ${libdir}/libfaac.so ${libdir}/libfaac.la"
-FILES_lib${PN}-staticdev = "${libdir}/libfaac.a"
-
-
-SRC_URI[md5sum] = "e72dc74db17b42b06155613489077ad7"
-SRC_URI[sha256sum] = "a5844ff3bce0d7c885af71f41da01395d3253dcfc33863306a027a78a7cfad9e"
-- 
1.8.1.2


