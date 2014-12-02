Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59159E008D9; Tue,  2 Dec 2014 00:06:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2D6FE008C6
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 00:06:43 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="44335880"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 02 Dec 2014 16:03:12 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id sB2869Ad016947
	for <yocto@yoctoproject.org>; Tue, 2 Dec 2014 16:06:09 +0800
Received: from localhost.localdomain (10.167.226.31) by
	G08CNEXCHPEKD03.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Tue, 2 Dec 2014 16:06:30 +0800
From: Bian Naimeng <biannm@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Tue, 2 Dec 2014 16:03:23 +0800
Message-ID: <1417507403-7408-3-git-send-email-biannm@cn.fujitsu.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1417507403-7408-1-git-send-email-biannm@cn.fujitsu.com>
References: <1417507403-7408-1-git-send-email-biannm@cn.fujitsu.com>
MIME-Version: 1.0
X-Originating-IP: [10.167.226.31]
Subject: [PATCH 2/2] [meta-cgl]drbd: add recipe
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
X-List-Received-Date: Tue, 02 Dec 2014 08:06:46 -0000
Content-Type: text/plain

Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
---
 meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service | 12 +++++
 meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb     | 57 ++++++++++++++++++++++
 2 files changed, 69 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service
 create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb

diff --git a/meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service b/meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service
new file mode 100644
index 0000000..22f853f
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service
@@ -0,0 +1,12 @@
+[Unit]
+Description=DRBD Service
+After=network.target
+
+[Service]
+Type=oneshot
+RemainAfterExit=yes
+ExecStart=/usr/lib/drbd/drbd-helper start
+ExecStop=/usr/lib/drbd/drbd-helper stop
+
+[Install]
+WantedBy=multi-user.target
diff --git a/meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb b/meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb
new file mode 100644
index 0000000..9c77f2f
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb
@@ -0,0 +1,57 @@
+SUMMARY = "BD driver for Linux"
+DESCRIPTION = "DRBD mirrors a block device over the network to another machine.\
+DRBD mirrors a block device over the network to another machine.\
+Think of it as networked raid 1. It is a building block for\
+setting up high availability (HA) clusters."
+
+HOMEPAGE = "http://www.drbd.org/"
+
+SECTION = "kernel/userland"
+
+LICENSE = "GPLv2+"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=5574c6965ae5f583e55880e397fbb018"
+
+PR = "r0"
+#PR = "r1001"
+
+SRC_URI = "http://oss.linbit.com/${BPN}/8.4/${BPN}-${PV}.tar.gz \
+           file://drbd.service \
+          "
+
+#SRC_URI[md5sum] = "ef4e6db51cda1898c597a3d61fcb9e1e"
+#SRC_URI[sha256sum] = "7c1558459614fbdc1b3209f1b9e5767a443d9bdfe681a49c652b5f392799d58d"
+
+SRC_URI[md5sum] = "b51815343c1a9151e2936b3b97520388"
+SRC_URI[sha256sum] = "a056219c5c23b079c3354179f7a1b9f55d47e573a4cd3178f2ef4c15604288f0"
+
+inherit autotools-brokensep systemd
+
+EXTRA_OECONF = "--with-utils                  \
+                --without-km                  \
+                --with-initdir=/etc/init.d    \
+                --without-pacemaker           \
+                --without-rgmanager           \
+                --without-bashcompletion      \
+                --with-distro debian          \
+               "
+
+do_configure (){
+    oe_runconf
+}
+
+SYSTEMD_SERVICE_${PN} = "drbd.service"
+SYSTEMD_AUTO_ENABLE = "disable"
+
+do_install_append() {
+    if ${@base_contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+        install -d ${D}/${systemd_unitdir}/system
+        install -m 644 ${WORKDIR}/drbd.service ${D}/${systemd_unitdir}/system
+        install -d ${D}/${libexecdir}
+        install -m 755 ${D}${sysconfdir}/init.d/drbd ${D}/${libexecdir}/drbd-helper
+    fi
+}
+
+FILES_${PN} += "run"
+FILES_${PN} += "${base_libdir}/drbd"
+FILES_${PN}-dbg += "${base_libdir}/drbd/.debug"
-- 
1.9.1


