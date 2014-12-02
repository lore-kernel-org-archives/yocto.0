Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2D55E008D7; Tue,  2 Dec 2014 00:06:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDA92E0086F
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 00:06:42 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="44335879"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 02 Dec 2014 16:03:11 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id sB28685Q016941
	for <yocto@yoctoproject.org>; Tue, 2 Dec 2014 16:06:08 +0800
Received: from localhost.localdomain (10.167.226.31) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Tue, 2 Dec 2014 16:06:29 +0800
From: Bian Naimeng <biannm@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Tue, 2 Dec 2014 16:03:22 +0800
Message-ID: <1417507403-7408-2-git-send-email-biannm@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1417507403-7408-1-git-send-email-biannm@cn.fujitsu.com>
References: <1417507403-7408-1-git-send-email-biannm@cn.fujitsu.com>
MIME-Version: 1.0
X-Originating-IP: [10.167.226.31]
Subject: [PATCH 1/2] [meta-cgl] device-mapper-multipath: add recipe
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
X-List-Received-Date: Tue, 02 Dec 2014 08:06:45 -0000
Content-Type: text/plain

Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
---
 .../device-mapper-multipath/multipathd.init.patch  | 12 +++++
 .../device-mapper-multipath_0.5.0.bb               | 53 ++++++++++++++++++++++
 2 files changed, 65 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/device-mapper-multipath/multipathd.init.patch
 create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/device-mapper-multipath_0.5.0.bb

diff --git a/meta-cgl-common/recipes-cgl/device-mapper-multipath/device-mapper-multipath/multipathd.init.patch b/meta-cgl-common/recipes-cgl/device-mapper-multipath/device-mapper-multipath/multipathd.init.patch
new file mode 100644
index 0000000..84ac0c0
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/device-mapper-multipath/device-mapper-multipath/multipathd.init.patch
@@ -0,0 +1,12 @@
+diff -Nurp multipath-tools-0.5.0.orig/multipathd/multipathd.init.debian multipath-tools-0.5.0/multipathd/multipathd.init.debian
+--- multipath-tools-0.5.0.orig/multipathd/multipathd.init.debian	2013-12-18 05:40:41.000000000 +0800
++++ multipath-tools-0.5.0/multipathd/multipathd.init.debian	2014-12-02 15:22:59.171503631 +0800
+@@ -1,7 +1,7 @@
+ #!/bin/sh
+ 
+ PATH=/bin:/usr/bin:/sbin:/usr/sbin
+-DAEMON=/usr/bin/multipathd
++DAEMON=/sbin/multipathd
+ 
+ test -x $DAEMON || exit 0
+ 
diff --git a/meta-cgl-common/recipes-cgl/device-mapper-multipath/device-mapper-multipath_0.5.0.bb b/meta-cgl-common/recipes-cgl/device-mapper-multipath/device-mapper-multipath_0.5.0.bb
new file mode 100644
index 0000000..bbdd492
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/device-mapper-multipath/device-mapper-multipath_0.5.0.bb
@@ -0,0 +1,53 @@
+SUMMARY = "Tools to manage multipath devices using device-mapper"
+DESCRIPTION = "device-mapper-multipath provides tools to manage multipath devices by\
+instructing the device-mapper multipath kernel module what to do.\
+The tools are :\
+* multipath - Scan the system for multipath devices and assemble them.\
+* multipathd - Detects when paths fail and execs multipath to update things."
+
+HOMEPAGE = "http://christophe.varoqui.free.fr/"
+SECTION = "System Environment/Base"
+LICENSE = "GPLv2"
+
+SRC_URI = "http://christophe.varoqui.free.fr/multipath-tools/multipath-tools-0.5.0.tar.bz2 \
+           file://multipathd.init.patch"
+
+SRC_URI[md5sum] = "faf261d4cc717bf4c979557dc7bf5f52"
+SRC_URI[sha256sum] = "f13cf1eb84e94e83b2019e68f7965526903c13e94246db43965d181668a0a6f9"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=7be2873b6270e45abacc503abbe2aa3d"
+
+S = "${WORKDIR}/multipath-tools-${PV}"
+
+DEPENDS = "lvm2 libaio"
+
+inherit systemd
+
+SYSTEMD_PACKAGES = "${PN}"
+SYSTEMD_SERVICE_${PN} = "multipathd.service"
+SYSTEMD_AUTO_ENABLE = "enable"
+
+EXTRA_OEMAKE += "DESTDIR=${D} LIB=${libdir}"
+
+do_compile() {
+    oe_runmake
+}
+
+do_install() {
+    oe_runmake install
+}
+
+do_install_append () {
+    install -d ${D}${sysconfdir}/init.d
+    install -m 0755 ${S}/multipathd/multipathd.init.debian ${D}${sysconfdir}/init.d/multipathd
+
+    if ${@base_contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+        install -d ${D}${systemd_unitdir}/system
+        install -m 0644 ${S}/multipathd/multipathd.service ${D}${systemd_unitdir}/system/
+        install -m 0644 ${S}/multipathd/multipathd.socket ${D}${systemd_unitdir}/system/
+    fi
+}
+
+FILES_${PN} += "${libdir}/ \
+                ${base_libdir}/udev/"
+FILES_${PN}-dbg += "${libdir}/multipath/.debug/"
-- 
1.9.1


