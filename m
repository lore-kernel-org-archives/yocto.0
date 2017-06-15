Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FC87E00B9E; Wed, 14 Jun 2017 23:44:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D1B6E00B77
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 23:44:04 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v5F6i3b4011822
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 23:44:04 -0700
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Wed, 14 Jun 2017 23:44:03 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 15 Jun 2017 14:44:01 +0800
Message-ID: <20170615064401.26015-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-security][PATCH] xmlsec1: add new recipe
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
X-List-Received-Date: Thu, 15 Jun 2017 06:44:08 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

XML Security Library is a C library based on LibXML2 and OpenSSL.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../xmlsec1/change-finding-path-of-nss.patch       | 68 +++++++++++++++++
 .../xmlsec1/xmlsec1/fix-ltmain.sh.patch            | 26 +++++++
 .../xmlsec1/xmlsec1/makefile-ptest.patch           | 32 ++++++++
 recipes-security/xmlsec1/xmlsec1/run-ptest         | 85 ++++++++++++++++++++++
 ...sec1-examples-allow-build-in-separate-dir.patch | 32 ++++++++
 recipes-security/xmlsec1/xmlsec1_1.2.24.bb         | 53 ++++++++++++++
 6 files changed, 296 insertions(+)
 create mode 100644 recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch
 create mode 100644 recipes-security/xmlsec1/xmlsec1/fix-ltmain.sh.patch
 create mode 100644 recipes-security/xmlsec1/xmlsec1/makefile-ptest.patch
 create mode 100755 recipes-security/xmlsec1/xmlsec1/run-ptest
 create mode 100644 recipes-security/xmlsec1/xmlsec1/xmlsec1-examples-allow-build-in-separate-dir.patch
 create mode 100644 recipes-security/xmlsec1/xmlsec1_1.2.24.bb

diff --git a/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch b/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch
new file mode 100644
index 0000000..0f4cef9
--- /dev/null
+++ b/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch
@@ -0,0 +1,68 @@
+From: Yulong Pei <Yulong.pei@windriver.com>
+Date: Wed, 21 Jul 2010 22:33:43 +0800
+Subject: [PATCH] change finding path of nss and nspr
+
+Upstream-Status: Pending
+
+Signed-off-by: Yulong Pei <Yulong.pei@windriver.com>
+Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
+---
+ configure.ac |   12 ++++++------
+ 1 files changed, 6 insertions(+), 6 deletions(-)
+
+--- a/configure.ac
++++ b/configure.ac
+@@ -618,7 +618,7 @@
+ 
+     if test "z$with_nspr" != "z" ; then
+ 	NSPR_PREFIX="$with_nspr"
+-	NSPR_CFLAGS="-I$with_nspr/include -I$with_nspr/include/nspr"
++	NSPR_CFLAGS="-I$with_nspr/usr/include -I$with_nspr/usr/include/nspr4"
+ 	if test "z$with_gnu_ld" = "zyes" ; then
+ 	    NSPR_LIBS="-Wl,-rpath-link -Wl,$with_nspr/lib -L$with_nspr/lib $NSPR_LIBS_LIST"
+ 	else
+@@ -626,7 +626,7 @@
+ 	fi
+ 	NSPR_INCLUDES_FOUND="yes"
+ 	NSPR_LIBS_FOUND="yes"
+-	NSPR_PRINIT_H="$with_nspr/include/prinit.h"
++	NSPR_PRINIT_H="$with_nspr/usr/include/nspr4/prinit.h"
+     else
+ 	for dir in $ac_nss_inc_dir ; do
+     	    if test -f $dir/nspr/prinit.h ; then
+@@ -664,7 +664,7 @@
+ 	OLD_CPPFLAGS=$CPPFLAGS
+ 	CPPFLAGS="$NSPR_CFLAGS"
+ 	AC_EGREP_CPP(yes,[
+-    	    #include <prinit.h>
++	    #include <nspr4/prinit.h>
+             #if PR_VMAJOR >= 4
+                yes
+             #endif
+@@ -689,7 +689,7 @@
+     NSS_NSS_H=""
+ 
+     if test "z$with_nss" != "z" ; then
+-	NSS_CFLAGS="$NSS_CFLAGS -I$with_nss/include -I$with_nss/include/nss"
++	NSS_CFLAGS="$NSS_CFLAGS -I$with_nss/usr/include -I$with_nss/usr/include/nss3 -I$with_nspr/usr/include/nspr4"
+ 	if test "z$with_gnu_ld" = "zyes" ; then
+ 	    NSS_LIBS="$NSS_LIBS -Wl,-rpath-link -Wl,$with_nss/lib -L$with_nss/lib $NSS_LIBS_LIST"
+         else
+@@ -697,7 +697,7 @@
+         fi
+ 	NSS_INCLUDES_FOUND="yes"
+ 	NSS_LIBS_FOUND="yes"
+-	NSS_NSS_H="$with_nss/include/nss.h"
++	NSS_NSS_H="$with_nss/usr/include/nss3/nss.h"
+     else
+ 	for dir in $ac_nss_inc_dir ; do
+ 	    if test -f $dir/nss/nss.h ; then
+@@ -735,7 +735,7 @@
+        OLD_CPPFLAGS=$CPPFLAGS
+        CPPFLAGS="$NSS_CFLAGS"
+        AC_EGREP_CPP(yes,[
+-          #include <nss.h>
++	  #include <nss3/nss.h>
+           #if NSS_VMAJOR >= 3 && NSS_VMINOR >= 2
+              yes
+           #endif
diff --git a/recipes-security/xmlsec1/xmlsec1/fix-ltmain.sh.patch b/recipes-security/xmlsec1/xmlsec1/fix-ltmain.sh.patch
new file mode 100644
index 0000000..472f1cc
--- /dev/null
+++ b/recipes-security/xmlsec1/xmlsec1/fix-ltmain.sh.patch
@@ -0,0 +1,26 @@
+From: Yulong Pei <Yulong.pei@windriver.com>
+Date: Thu, 21 Jan 2010 14:11:20 +0800
+Subject: [PATCH] force to use our own libtool
+
+Upstream-Status: Inappropriate [ OE specific ]
+
+Signed-off-by: Yulong Pei <Yulong.pei@windriver.com>
+---
+ ltmain.sh |    2 +-
+ 1 files changed, 1 insertions(+), 1 deletions(-)
+
+diff --git a/ltmain.sh b/ltmain.sh
+--- a/ltmain.sh
++++ b/ltmain.sh
+@@ -1309,7 +1309,7 @@ EOF
+ 	dir=`$echo "X$arg" | $Xsed -e 's/^-L//'`
+ 	# We need an absolute path.
+ 	case $dir in
+-	[\\/]* | [A-Za-z]:[\\/]*) ;;
++	=* | [\\/]* | [A-Za-z]:[\\/]*) ;;
+ 	*)
+ 	  absdir=`cd "$dir" && pwd`
+ 	  if test -z "$absdir"; then
+-- 
+1.6.4
+
diff --git a/recipes-security/xmlsec1/xmlsec1/makefile-ptest.patch b/recipes-security/xmlsec1/xmlsec1/makefile-ptest.patch
new file mode 100644
index 0000000..2a199f4
--- /dev/null
+++ b/recipes-security/xmlsec1/xmlsec1/makefile-ptest.patch
@@ -0,0 +1,32 @@
+This enables the building of the examples directory
+and it's installed as ptest.
+
+Upstream-Status: Inappropriate [ OE ptest specific ]
+
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+---
+ examples/Makefile |    7 +++++--
+ 1 files changed, 7 insertions(+), 0 deletions(-)
+
+--- a/examples/Makefile
++++ b/examples/Makefile
+@@ -9,9 +9,17 @@
+ 	xmldsigverify \
+ 	xkms-server
+ 
++ifndef CC
+ CC	= gcc
+-CFLAGS	+= -g $(shell xmlsec1-config --cflags) -DUNIX_SOCKETS
+-LDLIBS	+= -g $(shell xmlsec1-config --libs)
++endif
++
++CFLAGS  += -I../include -g $(shell PKG_CONFIG_PATH=.. pkg-config --cflags xmlsec1 ) -DUNIX_SOCKETS
++LDLIBS += -L../src/.libs -g $(shell PKG_CONFIG_PATH=.. pkg-config --libs xmlsec1 )
++
++DESTDIR = /usr/share/xmlsec1
++install-ptest:
++	if [ ! -d $(DESTDIR) ]; then mkdir -p $(DESTDIR); fi
++	cp * $(DESTDIR)
+ 
+ all: $(PROGRAMS)
+ 
diff --git a/recipes-security/xmlsec1/xmlsec1/run-ptest b/recipes-security/xmlsec1/xmlsec1/run-ptest
new file mode 100755
index 0000000..a203c38
--- /dev/null
+++ b/recipes-security/xmlsec1/xmlsec1/run-ptest
@@ -0,0 +1,85 @@
+#!/bin/sh
+
+check_return() {
+    if [ $? == 0 ]; then
+        echo -e "PASS: $1\n"
+    else
+        echo -e "FAIL: $1\n"
+    fi
+}
+
+echo "---------------------------------------------------"
+echo "Signing a template file..."
+./sign1 sign1-tmpl.xml rsakey.pem > sign1-res.xml
+./verify1 sign1-res.xml rsapub.pem
+check_return sign-tmpl
+
+echo "---------------------------------------------------"
+echo "Signing a dynamicaly created template..."
+./sign2 sign2-doc.xml rsakey.pem > sign2-res.xml
+./verify1 sign2-res.xml rsapub.pem
+check_return sign-dynamic-templ
+
+echo "---------------------------------------------------"
+echo "Signing with X509 certificate..."
+./sign3 sign3-doc.xml rsakey.pem rsacert.pem > sign3-res.xml
+./verify3 sign3-res.xml ca2cert.pem cacert.pem
+check_return sign-x509
+
+echo "---------------------------------------------------"
+echo "Verifying a signature with a single key..."
+./verify1 sign1-res.xml rsapub.pem
+./verify1 sign2-res.xml rsapub.pem
+check_return verify-single-key
+
+echo "---------------------------------------------------"
+echo "Verifying a signature with keys manager..."
+./verify2 sign1-res.xml rsapub.pem
+./verify2 sign2-res.xml rsapub.pem
+check_return verify-keys-manager
+
+echo "---------------------------------------------------"
+echo "Verifying a signature with X509 certificates..."
+./verify3 sign3-res.xml ca2cert.pem cacert.pem
+check_return verify-x509
+
+echo "---------------------------------------------------"
+echo "Verifying a signature with additional restrictions..."
+./verify4 verify4-res.xml ca2cert.pem cacert.pem
+check_return verify-res
+
+echo "---------------------------------------------------"
+echo "Encrypting data with a template file..."
+./encrypt1 encrypt1-tmpl.xml deskey.bin > encrypt1-res.xml
+./decrypt1 encrypt1-res.xml deskey.bin
+check_return encrypt-tmpl
+
+echo "---------------------------------------------------"
+echo "Encrypting data with a dynamicaly created template..."
+./encrypt2 encrypt2-doc.xml deskey.bin > encrypt2-res.xml
+./decrypt1 encrypt2-res.xml deskey.bin
+check_return encrypt-dynamic-tmpl
+
+echo "---------------------------------------------------"
+echo "Encrypting data with a session key..."
+./encrypt3 encrypt3-doc.xml rsakey.pem > encrypt3-res.xml
+./decrypt3 encrypt3-res.xml
+check_return encrypt-session-key
+
+echo "---------------------------------------------------"
+echo "Decrypting data with a single key..."
+./decrypt1 encrypt1-res.xml deskey.bin
+./decrypt1 encrypt2-res.xml deskey.bin
+check_return encrypt-single-key
+
+echo "---------------------------------------------------"
+echo "Decrypting data with keys manager..."
+./decrypt2 encrypt1-res.xml deskey.bin
+./decrypt2 encrypt2-res.xml deskey.bin
+check_return encrypt-keys-manager
+
+echo "---------------------------------------------------"
+echo "Writing a custom keys manager..."
+./decrypt3 encrypt1-res.xml
+./decrypt3 encrypt2-res.xml
+check_return write-keys-manager
diff --git a/recipes-security/xmlsec1/xmlsec1/xmlsec1-examples-allow-build-in-separate-dir.patch b/recipes-security/xmlsec1/xmlsec1/xmlsec1-examples-allow-build-in-separate-dir.patch
new file mode 100644
index 0000000..b0ced03
--- /dev/null
+++ b/recipes-security/xmlsec1/xmlsec1/xmlsec1-examples-allow-build-in-separate-dir.patch
@@ -0,0 +1,32 @@
+From ef8872185dcd05d20c93cd98317ede1913371c94 Mon Sep 17 00:00:00 2001
+From: Jackie Huang <jackie.huang@windriver.com>
+Date: Tue, 30 Dec 2014 11:18:17 +0800
+Subject: [PATCH] examples: allow build in separate dir
+
+Upstream-Status: Inappropriate [ OE specific ]
+
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+---
+ examples/Makefile | 6 ++++--
+ 1 file changed, 4 insertions(+), 2 deletions(-)
+
+diff --git a/examples/Makefile b/examples/Makefile
+index 0d72ad7..f9bccc6 100644
+--- a/examples/Makefile
++++ b/examples/Makefile
+@@ -13,8 +13,10 @@ ifndef CC
+ CC	= gcc
+ endif
+ 
+-CFLAGS  += -I../include -g $(shell PKG_CONFIG_PATH=.. pkg-config --cflags xmlsec1 ) -DUNIX_SOCKETS
+-LDLIBS += -L../src/.libs -g $(shell PKG_CONFIG_PATH=.. pkg-config --libs xmlsec1 )
++top_srcdir = ..
++top_builddir = ..
++CFLAGS  += -I$(top_srcdir)/include -g $(shell PKG_CONFIG_PATH=$(top_srcdir) pkg-config --cflags xmlsec1 ) -DUNIX_SOCKETS
++LDLIBS += -L$(top_builddir)/src/.libs -g $(shell PKG_CONFIG_PATH=$(top_srcdir) pkg-config --libs xmlsec1 )
+ 
+ DESTDIR = /usr/share/xmlsec1
+ install-ptest:
+-- 
+1.9.1
+
diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.24.bb b/recipes-security/xmlsec1/xmlsec1_1.2.24.bb
new file mode 100644
index 0000000..9798ce2
--- /dev/null
+++ b/recipes-security/xmlsec1/xmlsec1_1.2.24.bb
@@ -0,0 +1,53 @@
+SUMMARY = "XML Security Library is a C library based on LibXML2"
+DESCRIPTION = "\
+    XML Security Library is a C library based on \
+    LibXML2 and OpenSSL. The library was created with a goal to support major \
+    XML security standards "XML Digital Signature" and "XML Encryption". \
+    "
+HOMEPAGE = "http://www.aleksey.com/xmlsec/"
+DEPENDS = "libtool libxml2 libxslt openssl zlib libgcrypt gnutls nss nspr libgpg-error"
+
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://COPYING;md5=352791d62092ea8104f085042de7f4d0"
+
+SECTION = "libs"
+
+SRC_URI = "http://www.aleksey.com/xmlsec/download/${BP}.tar.gz \
+    file://fix-ltmain.sh.patch \
+    file://change-finding-path-of-nss.patch \
+    file://makefile-ptest.patch \
+    file://xmlsec1-examples-allow-build-in-separate-dir.patch \
+    file://run-ptest \
+    "
+
+SRC_URI[md5sum] = "2f4944356b69ea14c18814d9248fbbd8"
+SRC_URI[sha256sum] = "99a8643f118bb1261a72162f83e2deba0f4f690893b4b90e1be4f708e8d481cc"
+
+inherit autotools-brokensep ptest pkgconfig
+
+CFLAGS += "-I${STAGING_INCDIR}/nspr4 -I${STAGING_INCDIR}/nss3"
+CPPFLAGS += "-I${STAGING_INCDIR}/nspr4 -I${STAGING_INCDIR}/nss3"
+
+EXTRA_OECONF = "\
+    --with-nss=${STAGING_LIBDIR}/../.. --with-nspr=${STAGING_LIBDIR}/../.. \
+    "
+
+FILES_${PN}-dev += "${libdir}/xmlsec1Conf.sh"
+FILES_${PN}-dbg += "${PTEST_PATH}/.debug/*"
+
+RDEPENDS_${PN}-ptest += "${PN}-dev"
+INSANE_SKIP_${PN}-ptest += "dev-deps"
+
+PTEST_EXTRA_ARGS = "top_srcdir=${S} top_builddir=${B}"
+
+do_compile_ptest () {
+    oe_runmake -C ${S}/examples ${PTEST_EXTRA_ARGS} all
+}
+
+do_install_append() {
+    sed -i -e "s@${STAGING_DIR_HOST}@@g" ${D}${bindir}/xmlsec1-config
+}
+
+do_install_ptest () {
+    oe_runmake -C ${S}/examples DESTDIR=${D}${PTEST_PATH} ${PTEST_EXTRA_ARGS} install-ptest
+}
-- 
2.11.0


