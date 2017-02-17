Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DBD4E0095F; Thu, 16 Feb 2017 22:44:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53BA7E00924
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 22:44:42 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v1H6ifhJ008614
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 22:44:41 -0800 (PST)
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 16 Feb 2017 22:44:40 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 16 Feb 2017 22:44:40 -0800
Message-ID: <1487313880-216027-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [meta-security][PATCH] libseccomp: convert test package to ptest
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
X-List-Received-Date: Fri, 17 Feb 2017 06:44:47 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/libseccomp/files/run-ptest |  4 ++++
 recipes-security/libseccomp/libseccomp.bb   | 24 ++++++++++++------------
 2 files changed, 16 insertions(+), 12 deletions(-)
 create mode 100644 recipes-security/libseccomp/files/run-ptest

diff --git a/recipes-security/libseccomp/files/run-ptest b/recipes-security/libseccomp/files/run-ptest
new file mode 100644
index 0000000..54b4a63
--- /dev/null
+++ b/recipes-security/libseccomp/files/run-ptest
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+cd tests
+./regression -a
diff --git a/recipes-security/libseccomp/libseccomp.bb b/recipes-security/libseccomp/libseccomp.bb
index c131bea..830e051 100644
--- a/recipes-security/libseccomp/libseccomp.bb
+++ b/recipes-security/libseccomp/libseccomp.bb
@@ -8,37 +8,37 @@ SRCREV = "937e774d8ccfd063a601f49ef46769de3926b62d"
 
 PV = "2.3.1+git${SRCPV}"
 
-SRC_URI = "git://github.com/seccomp/libseccomp.git"
+SRC_URI = "git://github.com/seccomp/libseccomp.git \
+           file://run-ptest \
+"
 
 S = "${WORKDIR}/git"
 
-inherit autotools-brokensep pkgconfig
+inherit autotools-brokensep pkgconfig ptest
 
 PACKAGECONFIG ??= ""
 PACKAGECONFIG[python] = "--enable-python, --disable-python, python"
 
-do_compile_append() {
+do_compile_ptest() {
     oe_runmake -C tests check-build
 }
 
-do_install_append() {
-    install -d ${D}/${libdir}/${PN}/tests
-    install -d ${D}/${libdir}/${PN}/tools
+do_install_ptest() {
+    install -d ${D}${PTEST_PATH}/tests
+    install -d ${D}${PTEST_PATH}/tools
     for file in $(find tests/* -executable -type f); do
-        install -m 744 ${S}/${file} ${D}/${libdir}/${PN}/tests
+        install -m 744 ${S}/${file} ${D}${PTEST_PATH}/tests
     done
     for file in $(find tests/*.tests -type f); do
-        install -m 744 ${S}/${file} ${D}/${libdir}/${PN}/tests
+        install -m 744 ${S}/${file} ${D}${PTEST_PATH}/tests
     done
     for file in $(find tools/* -executable -type f); do
-        install -m 744 ${S}/${file} ${D}/${libdir}/${PN}/tools
+        install -m 744 ${S}/${file} ${D}${PTEST_PATH}/tools
     done
 }
 
-PACKAGES += " ${PN}-tests"
 FILES_${PN} = "${bindir} ${libdir}/${PN}.so*"
-FILES_${PN}-tests = "${libdir}/${PN}/tools ${libdir}/${PN}/tests"
 FILES_${PN}-dbg += "${libdir}/${PN}/tests/.debug/* ${libdir}/${PN}/tools/.debug"
 
 RDEPENDS_${PN} = "bash"
-RDEPENDS_${PN}-tests = "bash"
+RDEPENDS_${PN}-ptest = "bash"
-- 
2.7.4


