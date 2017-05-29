Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 650D6E00B2E; Sun, 28 May 2017 22:03:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B88CE00A38
	for <yocto@yoctoproject.org>; Sun, 28 May 2017 22:03:50 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:3fe5:5e2:ef97:4abb])
	by kozue.soulik.info (Postfix) with ESMTPA id 3875C1020F8;
	Mon, 29 May 2017 14:04:54 +0900 (JST)
From: Randy Li <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Mon, 29 May 2017 13:03:38 +0800
Message-Id: <20170529050339.11203-3-ayaka@soulik.info>
X-Mailer: git-send-email 2.9.4
In-Reply-To: <20170529050339.11203-1-ayaka@soulik.info>
References: <20170529050339.11203-1-ayaka@soulik.info>
Cc: Randy Li <ayaka@soulik.info>
Subject: [PATCH v4 2/3] recipes-multimedia: add gstreamer rockchip support
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
X-List-Received-Date: Mon, 29 May 2017 05:03:52 -0000

This Gstreamer plugin provides a encoder and decoder plugin
for Gstreamer through the Rockchip MPP library.

Signed-off-by: Randy Li <ayaka@soulik.info>
---
 .../gstreamer/gstreamer1.0-rockchip.inc            | 32 ++++++++++++++++++++++
 .../gstreamer/gstreamer1.0-rockchip_20170516.bb    |  9 ++++++
 .../gstreamer/gstreamer1.0-rockchip_git.bb         | 13 +++++++++
 3 files changed, 54 insertions(+)
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip.inc
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip_20170516.bb
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip_git.bb

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-rockchip.inc b/recipes-multimedia/gstreamer/gstreamer1.0-rockchip.inc
new file mode 100644
index 0000000..fd8fc98
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-rockchip.inc
@@ -0,0 +1,32 @@
+# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
+# Released under the GNU GENERAL PUBLIC LICENSE Version 2
+# (see COPYING.GPLv2 for the terms)
+
+require recipes-multimedia/gstreamer/gstreamer1.0-plugins.inc
+
+DESCRIPTION = "GStreamer 1.0 plugins for Rockchip platforms"
+
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=6d1e4aa87f6192354d3de840cf774d93"
+DEPENDS += "gstreamer1.0-plugins-base"
+
+inherit gettext autotools pkgconfig
+
+PACKAGECONFIG ??= " \
+    mpp             \
+"
+PACKAGECONFIG[mpp]    = "--enable-rockchipmpp,--disable-rockchipmpp,rockchip-mpp"
+PACKAGECONFIG[vpudec] = "--enable-vpudec,--disable-vpudec,rockchip-vpu"
+PACKAGECONFIG[drm]    = "--enable-drmrockchip,--disable-drmrockchip,libdrm-rockchip"
+
+EXTRA_OECONF += "    \
+    --disable-kms    \
+"
+EXTRA_OECONF_remove = "--disable-gtk-doc"
+
+do_configure[prefuncs] = " delete_pkg_m4_file"
+
+do_configure() {
+    NOCONFIGURE=true ${S}/autogen.sh
+    oe_runconf
+}
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-rockchip_20170516.bb b/recipes-multimedia/gstreamer/gstreamer1.0-rockchip_20170516.bb
new file mode 100644
index 0000000..e3fecaf
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-rockchip_20170516.bb
@@ -0,0 +1,9 @@
+# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
+# Released under the GNU GENERAL PUBLIC LICENSE Version 2
+# (see COPYING.GPLv2 for the terms)
+include gstreamer1.0-rockchip.inc
+
+TAG = "release_${PV}"
+SRC_URI = "git://github.com/rockchip-linux/gstreamer-rockchip.git;tag=${TAG};nobranch=1"
+
+S = "${WORKDIR}/git"
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-rockchip_git.bb b/recipes-multimedia/gstreamer/gstreamer1.0-rockchip_git.bb
new file mode 100644
index 0000000..bd20121
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-rockchip_git.bb
@@ -0,0 +1,13 @@
+# Copyright (C) 2016 - 2017 Randy Li <ayaka@soulik.info>
+# Released under the GNU GENERAL PUBLIC LICENSE Version 2
+# (see COPYING.GPLv2 for the terms)
+
+DEFAULT_PREFERENCE = "-1"
+
+include gstreamer1.0-rockchip.inc
+
+SRCBRANCH ?= "develop"
+SRCREV = "${AUTOREV}"
+SRC_URI = "git://github.com/rockchip-linux/gstreamer-rockchip.git;branch=develop"
+
+S = "${WORKDIR}/git"
-- 
2.9.4


