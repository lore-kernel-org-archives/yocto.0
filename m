Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F27CAE00AA9; Sun, 19 Mar 2017 10:54:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66B22E00A53
	for <yocto@yoctoproject.org>; Sun, 19 Mar 2017 10:54:38 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:3fe5:5e2:ef97:4abb])
	by kozue.soulik.info (Postfix) with ESMTPA id AFEC9102263;
	Mon, 20 Mar 2017 02:55:22 +0900 (JST)
From: ayaka <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Mon, 20 Mar 2017 01:54:23 +0800
Message-Id: <1489946065-28272-2-git-send-email-ayaka@soulik.info>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489946065-28272-1-git-send-email-ayaka@soulik.info>
References: <1489946065-28272-1-git-send-email-ayaka@soulik.info>
X-Mailman-Approved-At: Mon, 20 Mar 2017 10:57:32 -0700
Cc: ayaka <ayaka@soulik.info>
Subject: [PATCH 1/3] recipes-multimedia: add Rockchip MPP library
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
X-List-Received-Date: Sun, 19 Mar 2017 17:54:40 -0000

MPP means Media Process Platform. The MPP is a middleware
for the other video encoder/decoder interface, translating
the video information into the hardware registers.

Signed-off-by: ayaka <ayaka@soulik.info>
---
 recipes-multimedia/rockchip-mpp/rockchip-mpp.inc     | 20 ++++++++++++++++++++
 .../rockchip-mpp/rockchip-mpp_20170319.bb            | 13 +++++++++++++
 recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb  | 14 ++++++++++++++
 3 files changed, 47 insertions(+)
 create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp.inc
 create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp_20170319.bb
 create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb

diff --git a/recipes-multimedia/rockchip-mpp/rockchip-mpp.inc b/recipes-multimedia/rockchip-mpp/rockchip-mpp.inc
new file mode 100644
index 0000000..795efb8
--- /dev/null
+++ b/recipes-multimedia/rockchip-mpp/rockchip-mpp.inc
@@ -0,0 +1,20 @@
+# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
+# Released under the GNU GENERAL PUBLIC LICENSE Version 2
+# (see COPYING.GPLv2 for the terms)
+
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://readme.txt;md5=5783b0faa80f27469c4ee56334229e1a"
+
+inherit pkgconfig cmake
+
+EXTRA_OECMAKE = "     \
+    -DRKPLATFORM=ON   \
+    -DHAVE_DRM=ON     \
+"
+
+PACKAGES = "${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}"
+FILES_${PN} = "${libdir}/lib*${SOLIBS}"
+FILES_${PN}-dev = "${libdir}/lib*${SOLIBSDEV} ${includedir} ${libdir}/pkgconfig"
+SECTION_${PN}-dev = "devel"
+FILES_${PN}-staticdev = "${libdir}/*.a"
+SECTION_${PN}-staticdev = "devel"
diff --git a/recipes-multimedia/rockchip-mpp/rockchip-mpp_20170319.bb b/recipes-multimedia/rockchip-mpp/rockchip-mpp_20170319.bb
new file mode 100644
index 0000000..00afa0f
--- /dev/null
+++ b/recipes-multimedia/rockchip-mpp/rockchip-mpp_20170319.bb
@@ -0,0 +1,13 @@
+# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
+# Released under the GNU GENERAL PUBLIC LICENSE Version 2
+# (see COPYING.GPLv2 for the terms)
+include rockchip-mpp.inc
+
+TAG = "release_20170319"
+SRC_URI = "git://github.com/rockchip-linux/mpp.git;tag=${TAG};nobranch=1"
+
+MPP_VERSION = "1.3.1"
+
+PV = "${MPP_VERSION}+${TAG}"
+
+S = "${WORKDIR}/git"
diff --git a/recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb b/recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb
new file mode 100644
index 0000000..1befafc
--- /dev/null
+++ b/recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb
@@ -0,0 +1,14 @@
+# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
+# Released under the GNU GENERAL PUBLIC LICENSE Version 2
+# (see COPYING.GPLv2 for the terms)
+
+DEFAULT_PREFERENCE = "-1"
+
+include rockchip-mpp.inc
+
+SRCREV = "${AUTOREV}"
+SRC_URI = "git://github.com/rockchip-linux/mpp.git;branch=develop"
+
+PV = "develop+git${SRCPV}"
+
+S = "${WORKDIR}/git"
-- 
2.7.4


