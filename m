Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC632E009B0; Wed, 10 Dec 2014 00:36:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F417E00924
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 00:34:46 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="44796776"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 10 Dec 2014 16:31:22 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id sBA8YIfv018237
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 16:34:18 +0800
Received: from localhost.localdomain (10.167.226.35) by
	G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Wed, 10 Dec 2014 16:34:46 +0800
From: Li xin <lixin.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Wed, 10 Dec 2014 16:33:50 +0800
Message-ID: <1418200430-2173-1-git-send-email-lixin.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [10.167.226.35]
Subject: [meta-cgl][PATCH] samhain: add new recipe
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
X-List-Received-Date: Wed, 10 Dec 2014 08:36:17 -0000
Content-Type: text/plain

Samhain is an open source file integrity and intrusion detection
system for Unix that uses cryptographic checksums of files to
detect modifications, and allows you to trace: what changes have
occured in your system, when these changes have occured, and who
was logged into the system at the respective time.

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 .../samhain/0001-Makefile.in-error-fix.patch       | 31 ++++++++++++
 .../samhain/samhain/config-site.samhain-3.1.3      |  2 +
 .../recipes-cgl/samhain/samhain_3.1.3.bb           | 58 ++++++++++++++++++++++
 3 files changed, 91 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.patch
 create mode 100644 meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3
 create mode 100644 meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb

diff --git a/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.patch b/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.patch
new file mode 100644
index 0000000..cd646f6
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-fix.patch
@@ -0,0 +1,31 @@
+From a9ce38c56bf7072f292d685a48b912e6e59260a6 Mon Sep 17 00:00:00 2001
+From: Li xin <lixin.fnst@cn.fujitsu.com>
+Date: Wed, 10 Dec 2014 14:45:28 +0900
+Subject: [PATCH] Makefile.in: error fix
+
+error:File '/usr/sbin/samhain' from samhain was already stripped,
+this will prevent future debugging!
+
+Upstream-Status: pending
+
+Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
+---
+ Makefile.in | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/Makefile.in b/Makefile.in
+index b1904d9..000de49 100644
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -54,7 +54,7 @@ selectconfig = @selectconfig@
+ top_builddir = .
+ 
+ INSTALL = @INSTALL@
+-INSTALL_PROGRAM = @INSTALL@ -s -m 700
++INSTALL_PROGRAM = @INSTALL@ -m 700
+ INSTALL_SHELL = @INSTALL@ -m 700
+ INSTALL_DATA = @INSTALL@ -m 600
+ INSTALL_MAN = @INSTALL@ -m 644
+-- 
+1.8.4.2
+
diff --git a/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3 b/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3
new file mode 100644
index 0000000..2ce3769
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1.3
@@ -0,0 +1,2 @@
+ssp_cv_lib=no
+sh_cv_va_copy=yes
diff --git a/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb b/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb
new file mode 100644
index 0000000..22c8577
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb
@@ -0,0 +1,58 @@
+SUMMARY = "File Integrity and Intrusion Detection System"
+DESCRIPTION = "Samhain is an open source file integrity and intrusion detection \
+system for Unix that uses cryptographic checksums of files to \
+detect modifications, and allows you to trace: what changes have \
+occured in your system, when these changes have occured, and who \
+was logged into the system at the respective time."
+
+HOMEPAGE = "http://la-samhna.de/samhain/"
+SECTION = "Filesystem"
+
+SRC_URI = "http://la-samhna.de/samhain/samhain-current.tar.gz;extract=samhain-3.1.3.tar.gz \
+   file://0001-Makefile.in-error-fix.patch"
+SRC_URI[md5sum] = "64572a4dbfdc8065d6e9f7ca0eab0a34"
+SRC_URI[sha256sum] = "c234afaf9ba3c6b7d240858b74423f935185de66e996405b3016ec4a288a7e1e"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
+
+DEPENDS = "libpthread-stubs acl zlib attr"
+inherit autotools-brokensep pkgconfig
+
+do_unpack2() {
+    cd ${WORKDIR}
+    tar zxvf ${PN}-${PV}.tar.gz
+}
+
+S = "${WORKDIR}/${BP}"
+
+addtask unpack2 after do_unpack before do_patch
+do_configure() {
+    export CONFIG_SITE=./config-site.${BP}
+    ./configure \
+        --host=${HOST_SYS} \
+        --build=${BUILD_SYS} \
+        --prefix=${prefix} \
+        --sbindir=${sbindir} \
+        --mandir=${mandir} \
+        --sysconfdir=${sysconfdir} \
+        --localstatedir=${localstatedir} \
+        --with-config-file=/etc/samhain/samhainrc \
+        --with-state-dir=/var/samhain \
+        --with-html-file=/var/samhain/samhain.html \
+        --with-data-file=/var/samhain/samhain.data \
+        --with-pid-file=/var/samhain/samhain.pid \
+        --with-log-file=/var/samhain/samhain.log \
+        --enable-login-watch \
+        --disable-khide \
+        --enable-suidcheck \
+        --with-trusted=0
+}
+
+do_install() {
+    install -d -m 755 ${D}/var/samhain
+    install -d  ${D}/${mandir}
+    oe_runmake DESTDIR=${D} install-program install-man install-data
+    chmod -R a+r ${D}/${mandir}
+    install -d ${D}/etc/samhain
+    install -c -m 644  samhainrc.linux ${D}/etc/samhain/samhainrc
+}
-- 
1.8.4.2


