Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E681EE00985; Wed, 12 Apr 2017 09:05:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B8ECE00985
	for <yocto@yoctoproject.org>; Wed, 12 Apr 2017 09:05:40 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:3fe5:5e2:ef97:4abb])
	by kozue.soulik.info (Postfix) with ESMTPA id 9849E1000DE;
	Thu, 13 Apr 2017 01:05:41 +0900 (JST)
From: ayaka <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Thu, 13 Apr 2017 00:05:26 +0800
Message-Id: <1492013128-5920-2-git-send-email-ayaka@soulik.info>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1492013128-5920-1-git-send-email-ayaka@soulik.info>
References: <1492013128-5920-1-git-send-email-ayaka@soulik.info>
Cc: ayaka <ayaka@soulik.info>
Subject: [meta-rockchip] [PATCH v2 1/3] recipes-multimedia: add Rockchip MPP library
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
X-List-Received-Date: Wed, 12 Apr 2017 16:05:41 -0000

MPP means Media Process Platform. The MPP is a middleware
for the other video encoder/decoder interface, translating
the video information into the hardware registers.

Signed-off-by: ayaka <ayaka@soulik.info>
---
 recipes-multimedia/rockchip-mpp/rockchip-mpp.inc    | 21 +++++++++++++++++++++
 .../rockchip-mpp/rockchip-mpp_20170412.bb           |  9 +++++++++
 recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb | 16 ++++++++++++++++
 3 files changed, 46 insertions(+)
 create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp.inc
 create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp_20170412.bb
 create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb

diff --git a/recipes-multimedia/rockchip-mpp/rockchip-mpp.inc b/recipes-multimedia/rockchip-mpp/rockchip-mpp.inc
new file mode 100644
index 0000000..6a45637
--- /dev/null
+++ b/recipes-multimedia/rockchip-mpp/rockchip-mpp.inc
@@ -0,0 +1,21 @@
+# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
+# Released under the GNU GENERAL PUBLIC LICENSE Version 2
+# (see COPYING.GPLv2 for the terms)
+
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://inc/rk_mpi.h;beginline=4;endline=14;md5=acbba394ae5639b0c786f60c1f48e3d6"
+
+inherit pkgconfig cmake
+
+EXTRA_OECMAKE = "     \
+    -DRKPLATFORM=ON   \
+    -DHAVE_DRM=ON     \
+"
+
+PACKAGES = "${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN} rockchip-vpu"
+FILES_rockchip-vpu = "${libdir}/lib*vpu${SOLIBS}"
+FILES_${PN} = "${libdir}/lib*mpp${SOLIBS}"
+FILES_${PN}-dev = "${libdir}/lib*${SOLIBSDEV} ${includedir} ${libdir}/pkgconfig"
+SECTION_${PN}-dev = "devel"
+FILES_${PN}-staticdev = "${libdir}/*.a"
+SECTION_${PN}-staticdev = "devel"
diff --git a/recipes-multimedia/rockchip-mpp/rockchip-mpp_20170412.bb b/recipes-multimedia/rockchip-mpp/rockchip-mpp_20170412.bb
new file mode 100644
index 0000000..501306a
--- /dev/null
+++ b/recipes-multimedia/rockchip-mpp/rockchip-mpp_20170412.bb
@@ -0,0 +1,9 @@
+# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
+# Released under the GNU GENERAL PUBLIC LICENSE Version 2
+# (see COPYING.GPLv2 for the terms)
+include rockchip-mpp.inc
+
+TAG = "release_${PV}"
+SRC_URI = "git://github.com/rockchip-linux/mpp.git;tag=${TAG};nobranch=1"
+
+S = "${WORKDIR}/git"
diff --git a/recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb b/recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb
new file mode 100644
index 0000000..23f3f15
--- /dev/null
+++ b/recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb
@@ -0,0 +1,16 @@
+# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
+# Released under the GNU GENERAL PUBLIC LICENSE Version 2
+# (see COPYING.GPLv2 for the terms)
+
+DEFAULT_PREFERENCE = "-1"
+
+include rockchip-mpp.inc
+DEPENDS = "git-replacement-native"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+FILESPATH_prepend := "${THISDIR}/${PN}:"
+
+SRCREV = "${AUTOREV}"
+SRC_URI = "git://github.com/rockchip-linux/mpp.git;branch=develop"
+
+S = "${WORKDIR}/git"
-- 
2.7.4


