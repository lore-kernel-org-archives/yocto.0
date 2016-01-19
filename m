Return-Path: <philip.balister@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC161E00B36; Tue, 19 Jan 2016 09:24:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f68.google.com (mail-qg0-f68.google.com
	[209.85.192.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F31FE00A7D
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 09:24:41 -0800 (PST)
Received: by mail-qg0-f68.google.com with SMTP id b35so57515760qge.2
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 09:24:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=SXq5oNIes2CumNV8d89XjmJ178eTd3eS6SfS+HKF+Rk=;
	b=AUKfeBSmrhvePummzmY5qZn5jdbuIRYAFKqSsjgS9X0PVVtV1JB8ke7b9GPWtlCAL6
	UKursv8wSNOmnmSsx33Sm84ts5MsHkO2Ax1J92mWYirnj5poJJt09RaqSUm67T2klQu0
	BH9loRaw/R6QXMaaoAeLD8EWLrtjiZ0JvIN9y8KlRBpDX6RNZHZAE0M/JwuQEY1RRRNS
	f2esskHR3rYIm2KbYxwFhVxOpix8Z0RhUdQlz0b42DGvEFOfKjhHwBicf6QSWnO7QJPy
	QAMZodd0zoq+OMSmqA8smB77DI0E1wR44amQUgexEz5zItBTedyQEI1jdUiLRmW2ti8/
	LNZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=SXq5oNIes2CumNV8d89XjmJ178eTd3eS6SfS+HKF+Rk=;
	b=jLDvcuTXSoLJoMOTAhpBr+qtYt2En7H470fsRxB1mC5ikddwHy7HIfv93lx+dhMjkI
	vwga2gYbx5GIeSqdr//HjZ66nRY8FKplag1prT+APW/FygBcdwBRymlOk5eDB2YxVYja
	k+16KzTJKYfS1z75Vw2jhUV8UcpGas7DswKjwYMuzaYuZpN9Pfwgi2vpQALHQPkswWKf
	Ii7QVAsrId4drJXllChcuZ9PUoVNMOQ+oc2gzA66jLU4vp/YW0qO7biqMAW2xWIbGPlY
	6tz0MdLSOPdXxjPY+izhxNP4V9DdCWK67Ue8Jm4lS7jAdoE+2PhVhrQfXSId/S01gPuF
	90rw==
X-Gm-Message-State: ALoCoQkYZh4jj8t+U2xQ810pSnb3oGNSIhwHgp5RG0giphA+r3fyIFHDTSUOVqpWggV/IfhXYWeNSdrv2KFxcp7vCBnk2jCW5A==
X-Received: by 10.140.98.53 with SMTP id n50mr41334451qge.9.1453224281371;
	Tue, 19 Jan 2016 09:24:41 -0800 (PST)
Received: from thuvia.localdomain (pool-108-44-110-59.ronkva.east.verizon.net.
	[108.44.110.59]) by smtp.gmail.com with ESMTPSA id
	e184sm12602190qkb.40.2016.01.19.09.24.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 19 Jan 2016 09:24:40 -0800 (PST)
Sender: Philip Balister <philip.balister@gmail.com>
From: Philip Balister <philip@balister.org>
To: yocto@yoctoproject.org
Date: Tue, 19 Jan 2016 12:24:33 -0500
Message-Id: <1453224275-7493-1-git-send-email-philip@balister.org>
X-Mailer: git-send-email 2.5.0
Subject: [meta-qt4][PATCH 1/3] qwt: Add recipe.
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
X-List-Received-Date: Tue, 19 Jan 2016 17:24:46 -0000

 * Copied from meta-openembedded/jethro.
 * Used by GNU Radio.

Signed-off-by: Philip Balister <philip@balister.org>
---
 .../qwt-6.0.1/qwt6-fix-linking-with-ld-gold.patch  | 34 +++++++++
 recipes-qt4/recipes-libs/qwt-6.0.1/qwt6.patch      | 86 ++++++++++++++++++++++
 recipes-qt4/recipes-libs/qwt.inc                   | 40 ++++++++++
 recipes-qt4/recipes-libs/qwt_6.0.1.bb              | 10 +++
 4 files changed, 170 insertions(+)
 create mode 100644 recipes-qt4/recipes-libs/qwt-6.0.1/qwt6-fix-linking-with-ld-gold.patch
 create mode 100644 recipes-qt4/recipes-libs/qwt-6.0.1/qwt6.patch
 create mode 100644 recipes-qt4/recipes-libs/qwt.inc
 create mode 100644 recipes-qt4/recipes-libs/qwt_6.0.1.bb

diff --git a/recipes-qt4/recipes-libs/qwt-6.0.1/qwt6-fix-linking-with-ld-gold.patch b/recipes-qt4/recipes-libs/qwt-6.0.1/qwt6-fix-linking-with-ld-gold.patch
new file mode 100644
index 0000000..1fdd9cf
--- /dev/null
+++ b/recipes-qt4/recipes-libs/qwt-6.0.1/qwt6-fix-linking-with-ld-gold.patch
@@ -0,0 +1,34 @@
+Upstream-Status: Pending
+
+diff -urpN qwt-6.0.1_orig/qwtbuild.pri qwt-6.0.1/qwtbuild.pri
+--- qwt-6.0.1_orig/qwtbuild.pri	2011-08-02 00:33:53.000000000 +1000
++++ qwt-6.0.1/qwtbuild.pri	2012-08-21 10:27:30.721990849 +1000
+@@ -67,3 +67,13 @@ unix {
+         error( "local build will conflict with $${QMAKE_LIBDIR_QT}/libqwt.*" )
+     }
+ }
++
++######################################################################
++# libs for building qwt
++######################################################################
++
++unix {
++    # Some linkers require explicit linking with librt (eg ld.gold)
++    LIBS += -lrt
++}
++
+diff -urpN qwt-6.0.1_orig/qwt.prf qwt-6.0.1/qwt.prf
+--- qwt-6.0.1_orig/qwt.prf	2011-08-02 00:33:51.000000000 +1000
++++ qwt-6.0.1/qwt.prf	2012-08-21 11:19:49.435240439 +1000
+@@ -9,6 +9,11 @@
+ 
+ include ( ./qwtconfig.pri )
+ 
++unix {
++
++	LIBS += -lrt
++}
++
+ contains(QWT_CONFIG, QwtDll) {
+ 
+     DEFINES *= QWT_DLL
diff --git a/recipes-qt4/recipes-libs/qwt-6.0.1/qwt6.patch b/recipes-qt4/recipes-libs/qwt-6.0.1/qwt6.patch
new file mode 100644
index 0000000..4fb1a9b
--- /dev/null
+++ b/recipes-qt4/recipes-libs/qwt-6.0.1/qwt6.patch
@@ -0,0 +1,86 @@
+- add support for SUFFIX_STR
+---
+diff --git a/examples/examples.pri b/examples/examples.pri
+index a6911c8..854ce89 100644
+--- a/examples/examples.pri
++++ b/examples/examples.pri
+@@ -13,9 +13,17 @@ include( $${QWT_ROOT}/qwtbuild.pri )
+ 
+ TEMPLATE     = app
+ 
++SUFFIX_STR =
++CONFIG(debug, debug|release) {
++    SUFFIX_STR = $${DEBUG_SUFFIX}
++}
++else {
++    SUFFIX_STR = $${RELEASE_SUFFIX}
++}
++
+ INCLUDEPATH += $${QWT_ROOT}/src
+ DEPENDPATH  += $${QWT_ROOT}/src
+-DESTDIR      = $${QWT_ROOT}/examples/bin
++DESTDIR      = $${QWT_ROOT}/examples/bin$${SUFFIX_STR}
+ 
+ QMAKE_RPATHDIR *= $${QWT_ROOT}/lib
+ 
+diff --git a/qwtconfig.pri b/qwtconfig.pri
+index b0d2110..be119b7 100644
+--- a/qwtconfig.pri
++++ b/qwtconfig.pri
+@@ -30,6 +30,13 @@ QWT_INSTALL_DOCS      = $${QWT_INSTALL_PREFIX}/doc
+ QWT_INSTALL_HEADERS   = $${QWT_INSTALL_PREFIX}/include
+ QWT_INSTALL_LIBS      = $${QWT_INSTALL_PREFIX}/lib
+ 
++DEBUG_SUFFIX        = 
++RELEASE_SUFFIX      = 
++
++win32 {
++    DEBUG_SUFFIX      = d
++}
++
+ ######################################################################
+ # Designer plugin
+ ######################################################################
+diff --git a/src/src.pro b/src/src.pro
+index beb7125..ebf8ea6 100644
+--- a/src/src.pro
++++ b/src/src.pro
+@@ -13,8 +13,16 @@ QWT_ROOT = $${PWD}/..
+ include( $${QWT_ROOT}/qwtconfig.pri )
+ include( $${QWT_ROOT}/qwtbuild.pri )
+ 
++SUFFIX_STR =
++CONFIG(debug, debug|release) {
++    SUFFIX_STR = $${DEBUG_SUFFIX}
++}
++else {
++    SUFFIX_STR = $${RELEASE_SUFFIX}
++}
++
+ TEMPLATE          = lib
+-TARGET            = $$qtLibraryTarget(qwt)
++TARGET            = $$qtLibraryTarget(qwt)$${SUFFIX_STR}
+ 
+ DESTDIR           = $${QWT_ROOT}/lib
+ 
+diff --git a/textengines/mathml/mathml.pro b/textengines/mathml/mathml.pro
+index b0ed9f9..403828b 100644
+--- a/textengines/mathml/mathml.pro
++++ b/textengines/mathml/mathml.pro
+@@ -12,7 +12,15 @@ message(Beside the Qwt license you also have to take care of its license. )
+ 
+ include( $${PWD}/../textengines.pri )
+ 
+-TARGET    = $$qtLibraryTarget(qwtmathml)
++SUFFIX_STR =
++CONFIG(debug, debug|release) {
++    SUFFIX_STR = $${DEBUG_SUFFIX}
++}
++else {
++    SUFFIX_STR = $${RELEASE_SUFFIX}
++}
++
++TARGET    = $$qtLibraryTarget(qwtmathml$${SUFFIX_STR})
+ QT       += xml
+ 
+ HEADERS = \
diff --git a/recipes-qt4/recipes-libs/qwt.inc b/recipes-qt4/recipes-libs/qwt.inc
new file mode 100644
index 0000000..60f73a6
--- /dev/null
+++ b/recipes-qt4/recipes-libs/qwt.inc
@@ -0,0 +1,40 @@
+DESCRIPTION = "Qt Widget Extension for Technical Applications"
+SECTION = "libs"
+
+# LGPLv2.1 + some exceptions
+LICENSE = "QWTv1.0"
+LIC_FILES_CHKSUM = "file://COPYING;md5=dac2743472b0462ff3cfb4af42051c88"
+
+SRC_URI = "${SOURCEFORGE_MIRROR}/qwt/qwt-${PV}.tar.bz2;name=qwt \
+           file://qwt6.patch \
+           file://qwt6-fix-linking-with-ld-gold.patch"
+
+S = "${WORKDIR}/qwt-${PV}"
+
+do_configure_prepend() {
+    sed -i -e 's:RELEASE_SUFFIX      = :RELEASE_SUFFIX      = ${QT_LIBINFIX}:' *.pri
+    sed -i -e 's:qtAddLibrary(qwt:qtAddLibrary(qwt)${QT_LIBINFIX}:g' *.prf
+    sed -e 's/# QWT_CONFIG     += QwtExamples/QWT_CONFIG     += QwtExamples/g' -i qwtconfig.pri
+    sed -i -e 's:/usr/local/qwt-$$QWT_VERSION:${D}${prefix}:g' ${S}/*.pri
+}
+
+do_install() {
+    oe_runmake -e install
+    install -d ${D}${datadir}/doc/${PN}
+    mv ${D}${prefix}/doc/* ${D}${datadir}/doc/${PN}/
+    rmdir ${D}${prefix}/doc
+    cd ${S}/examples
+    install -d ${D}/${bindir}
+    cd bin${QT_LIBINFIX}/
+    for i in * ; do
+        cp -pPR ${i} ${D}/${bindir}/${i}${QT_LIBINFIX}
+    done
+    install -d ${D}${libdir}/${QT_DIR_NAME}
+    mv ${D}${prefix}/plugins ${D}${libdir}/${QT_DIR_NAME}
+}
+
+PACKAGES_prepend = "${PN}-examples ${PN}-features ${PN}-plugins "
+FILES_${PN}-examples = "${bindir}/*"
+FILES_${PN}-features = "${prefix}/features"
+FILES_${PN}-plugins = "${libdir}/${QT_DIR_NAME}/plugins/designer/*.so"
+FILES_${PN}-dbg += "${libdir}/${QT_DIR_NAME}/plugins/designer/.debug"
diff --git a/recipes-qt4/recipes-libs/qwt_6.0.1.bb b/recipes-qt4/recipes-libs/qwt_6.0.1.bb
new file mode 100644
index 0000000..f38816a
--- /dev/null
+++ b/recipes-qt4/recipes-libs/qwt_6.0.1.bb
@@ -0,0 +1,10 @@
+inherit qt4x11
+
+require qwt.inc
+
+PR = "r1"
+
+SRC_URI[qwt.md5sum] = "ace68558eab873e2da7e641179c4ef0c"
+SRC_URI[qwt.sha256sum] = "3fe19dd5962d705632fc2ef616b009299de6cf1e702538296924dbfdc8003cb2"
+
+RPROVIDES_${PN}-dev = "libqwt-dev"
-- 
2.5.0


