Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3C50E00DD1; Tue, 27 Aug 2019 22:28:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45ADAE00D38
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2019 22:28:46 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 46JDms0qRsz4s
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2019 07:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1566970125;
	bh=PgrUYP7jfwTvPbAxPA2dPyCc6oQKvuaM7EUcfX+Mmyo=;
	h=From:To:Subject:Date:From;
	b=UqqNHD25sjDINX2+00bYmFeCM170MaSUjzO+/+m5q2WtsMAHVmg4UwPg+qaAT6Acv
	pQETbOBbuSad3SrzQu13qY7KnHFpxBleatsW5xzfHYylM4Fiv6KX022lT4XWYoLuZn
	Cw8P3yjcwuPxmw2mGzuTDe7bfWGxbJN9o0lpBYtDMSiYzjAs0O1d07RttySj6xCi0R
	S2BD9LBoS+TIO1ClcqzMh3Z88K9hXFkgqtiGxmuulrurP7CSaeB3LssAje/WCra0yx
	ct1NhVYZikC7LA8UlLWW0pePFF1e2VQ9K6HoktqY9yZcvNvtzPPICAWKHJ2NBQAXdO
	kF5Anf+NQoyXvhUJT4fRI3iejndETPI8OFymmsftnhRXSPwTEtariFTLtGUx08jvho
	W1pRYOTSVVKh2XadaTxeKH7tKgl1c0R5ADclzkNXJDZRrqCX5Sl2XYrGn7lh7Ga9F2
	nXRIGLiR1daziZLpwQEP6aIatZZJXiIwOnhD3G6wIL5yFA4ju7OwszhCpJnKR7XsXb
	+kr2Y0PV2wlcVSoZxp8MsEavvyYRsIdr7IWdlKt75+WWagAZHkSSVYaeoDjFmoRGjZ
	5R/9EvZ582+i27GAdthGMuz5YeJjIaNp7GMN/nZi5i/kKGZp3ig3VRxPapQN4fYGcf
	D00pCekYsz/w3tASpHs1Yb8Q=
From: Adrian Bunk <bunk@stusta.de>
To: yocto@yoctoproject.org
Date: Wed, 28 Aug 2019 08:28:43 +0300
Message-Id: <20190828052844.2557-1-bunk@stusta.de>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] xmlsec1: Remove, moved to meta-oe
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
X-List-Received-Date: Wed, 28 Aug 2019 05:28:50 -0000

Signed-off-by: Adrian Bunk <bunk@stusta.de>
---
 conf/distro/include/maintainers.inc           |  1 -
 .../packagegroup-core-security-ptest.bb       |  1 -
 .../packagegroup-core-security.bb             |  1 -
 .../xmlsec1/change-finding-path-of-nss.patch  | 67 ---------------
 .../xmlsec1/xmlsec1/fix-ltmain.sh.patch       | 26 ------
 .../xmlsec1/xmlsec1/makefile-ptest.patch      | 40 ---------
 recipes-security/xmlsec1/xmlsec1/run-ptest    | 85 -------------------
 ...examples-allow-build-in-separate-dir.patch | 30 -------
 recipes-security/xmlsec1/xmlsec1_1.2.28.bb    | 64 --------------
 9 files changed, 315 deletions(-)
 delete mode 100644 recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch
 delete mode 100644 recipes-security/xmlsec1/xmlsec1/fix-ltmain.sh.patch
 delete mode 100644 recipes-security/xmlsec1/xmlsec1/makefile-ptest.patch
 delete mode 100755 recipes-security/xmlsec1/xmlsec1/run-ptest
 delete mode 100644 recipes-security/xmlsec1/xmlsec1/xmlsec1-examples-allow-build-in-separate-dir.patch
 delete mode 100644 recipes-security/xmlsec1/xmlsec1_1.2.28.bb

diff --git a/conf/distro/include/maintainers.inc b/conf/distro/include/maintainers.inc
index 94b45f2..47f5317 100644
--- a/conf/distro/include/maintainers.inc
+++ b/conf/distro/include/maintainers.inc
@@ -56,4 +56,3 @@ RECIPE_MAINTAINER_pn-smack = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-sssd = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-suricata = "Armin Kuster <akuster808@gmail.com>"
 RECIPE_MAINTAINER_pn-tripwire = "Armin Kuster <akuster808@gmail.com>"
-RECIPE_MAINTAINER_pn-xmlsec1 = "Armin Kuster <akuster808@gmail.com>"
diff --git a/recipes-security/packagegroup/packagegroup-core-security-ptest.bb b/recipes-security/packagegroup/packagegroup-core-security-ptest.bb
index 4934889..ddcf208 100644
--- a/recipes-security/packagegroup/packagegroup-core-security-ptest.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security-ptest.bb
@@ -13,7 +13,6 @@ SUMMARY_${PN} = "Security packages with ptests"
 RDEPENDS_${PN} = " \
     ptest-runner \
     samhain-standalone-ptest \
-    xmlsec1-ptest \
     keyutils-ptest \
     libseccomp-ptest \
     python-scapy-ptest \
diff --git a/recipes-security/packagegroup/packagegroup-core-security.bb b/recipes-security/packagegroup/packagegroup-core-security.bb
index 9165eef..20ba46f 100644
--- a/recipes-security/packagegroup/packagegroup-core-security.bb
+++ b/recipes-security/packagegroup/packagegroup-core-security.bb
@@ -29,7 +29,6 @@ RDEPENDS_packagegroup-security-utils = "\
     pinentry \
     python-scapy \
     ding-libs \
-    xmlsec1 \
     keyutils \
     libseccomp \
     ${@bb.utils.contains("DISTRO_FEATURES", "pam", "sssd", "",d)} \
diff --git a/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch b/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch
deleted file mode 100644
index 1cec47f..0000000
--- a/recipes-security/xmlsec1/xmlsec1/change-finding-path-of-nss.patch
+++ /dev/null
@@ -1,67 +0,0 @@
-From c1c980a95d85bcaf8802524d6148783522b300d7 Mon Sep 17 00:00:00 2001
-From: Yulong Pei <Yulong.pei@windriver.com>
-Date: Wed, 21 Jul 2010 22:33:43 +0800
-Subject: [PATCH] change finding path of nss and nspr
-
-Upstream-Status: Pending
-
-Signed-off-by: Yulong Pei <Yulong.pei@windriver.com>
-Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- configure.ac | 20 ++++++++++----------
- 1 file changed, 10 insertions(+), 10 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index 951b3eb..1fdeb0f 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -866,10 +866,10 @@ MOZILLA_MIN_VERSION="1.4"
- NSS_CRYPTO_LIB="$XMLSEC_PACKAGE-nss"
- NSPR_PACKAGE=mozilla-nspr
- NSS_PACKAGE=mozilla-nss
--NSPR_INCLUDE_MARKER="nspr/nspr.h"
-+NSPR_INCLUDE_MARKER="nspr.h"
- NSPR_LIB_MARKER="libnspr4$shrext"
- NSPR_LIBS_LIST="-lnspr4 -lplds4 -lplc4"
--NSS_INCLUDE_MARKER="nss/nss.h"
-+NSS_INCLUDE_MARKER="nss3/nss.h"
- NSS_LIB_MARKER="libnss3$shrext"
- NSS_LIBS_LIST="-lnss3 -lsmime3"
- 
-@@ -898,24 +898,24 @@ fi
- dnl Priority 1: User specifies the path to installation
- if test "z$NSPR_FOUND" = "zno" -a "z$with_nspr" != "z" -a "z$with_nspr" != "zyes" ; then
-     AC_MSG_CHECKING(for nspr library installation in "$with_nspr" folder)
--    if test -f "$with_nspr/include/$NSPR_INCLUDE_MARKER" -a -f "$with_nspr/lib/$NSPR_LIB_MARKER" ; then
--        NSPR_INCLUDE_PATH="$with_nspr/include"
--        NSPR_LIB_PATH="$with_nspr/lib"
-+    if test -f "$with_nspr/usr/include/$NSPR_INCLUDE_MARKER" -a -f "$with_nspr/${libdir}/$NSPR_LIB_MARKER" ; then
-+        NSPR_INCLUDE_PATH="$with_nspr/usr/include"
-+        NSPR_LIB_PATH="$with_nspr/${libdir}"
-         NSPR_FOUND="yes"
-         AC_MSG_RESULT([yes])
-     else
--        AC_MSG_ERROR([not found: "$with_nspr/include/$NSPR_INCLUDE_MARKER" and/or "$with_nspr/lib/$NSPR_LIB_MARKER" files don't exist), typo?])
-+        AC_MSG_ERROR([not found: "$with_nspr/usr/include/$NSPR_INCLUDE_MARKER" and/or "$with_nspr/${libdir}/$NSPR_LIB_MARKER" files don't exist), typo?])
-     fi
- fi
- if test "z$NSS_FOUND" = "zno" -a "z$with_nss" != "z" -a "z$with_nss" != "zyes" ; then
-     AC_MSG_CHECKING(for nss library installation in "$with_nss" folder)
--    if test -f "$with_nss/include/$NSS_INCLUDE_MARKER" -a -f "$with_nss/lib/$NSS_LIB_MARKER" ; then
--        NSS_INCLUDE_PATH="$with_nss/include"
--        NSS_LIB_PATH="$with_nss/lib"
-+    if test -f "$with_nss/usr/include/$NSS_INCLUDE_MARKER" -a -f "$with_nss/${libdir}/$NSS_LIB_MARKER" ; then
-+        NSS_INCLUDE_PATH="$with_nss/usr/include/nss3"
-+        NSS_LIB_PATH="$with_nss/${libdir}"
-         NSS_FOUND="yes"
-         AC_MSG_RESULT([yes])
-     else
--        AC_MSG_ERROR([not found: "$with_nss/include/$NSS_INCLUDE_MARKER" and/or "$with_nss/lib/$NSS_LIB_MARKER" files don't exist), typo?])
-+        AC_MSG_ERROR([not found: "$with_nss/usr/include/$NSS_INCLUDE_MARKER" and/or "$with_nss/${libdir}/$NSS_LIB_MARKER" files don't exist), typo?])
-     fi
- fi
- 
--- 
-2.7.4
-
diff --git a/recipes-security/xmlsec1/xmlsec1/fix-ltmain.sh.patch b/recipes-security/xmlsec1/xmlsec1/fix-ltmain.sh.patch
deleted file mode 100644
index af598fe..0000000
--- a/recipes-security/xmlsec1/xmlsec1/fix-ltmain.sh.patch
+++ /dev/null
@@ -1,26 +0,0 @@
-From 847dc52f5a50e34ee4d6e3dc2c708711747a58ca Mon Sep 17 00:00:00 2001
-From: Yulong Pei <Yulong.pei@windriver.com>
-Date: Thu, 21 Jan 2010 14:11:20 +0800
-Subject: [PATCH] force to use our own libtool
-
-Upstream-Status: Inappropriate [ OE specific ]
-
-Signed-off-by: Yulong Pei <Yulong.pei@windriver.com>
-
----
- ltmain.sh | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/ltmain.sh b/ltmain.sh
-index 147d758..a61f16b 100644
---- a/ltmain.sh
-+++ b/ltmain.sh
-@@ -6969,7 +6969,7 @@ func_mode_link ()
- 	dir=$func_resolve_sysroot_result
- 	# We need an absolute path.
- 	case $dir in
--	[\\/]* | [A-Za-z]:[\\/]*) ;;
-+	=* | [\\/]* | [A-Za-z]:[\\/]*) ;;
- 	*)
- 	  absdir=`cd "$dir" && pwd`
- 	  test -z "$absdir" && \
diff --git a/recipes-security/xmlsec1/xmlsec1/makefile-ptest.patch b/recipes-security/xmlsec1/xmlsec1/makefile-ptest.patch
deleted file mode 100644
index d453569..0000000
--- a/recipes-security/xmlsec1/xmlsec1/makefile-ptest.patch
+++ /dev/null
@@ -1,40 +0,0 @@
-From 83a1381e1d6bd1b5ec3df6f7c4bc1f4fe4f860b6 Mon Sep 17 00:00:00 2001
-From: Jackie Huang <jackie.huang@windriver.com>
-Date: Thu, 15 Jun 2017 14:44:01 +0800
-Subject: [PATCH] xmlsec1: add new recipe
-
-This enables the building of the examples directory
-and it's installed as ptest.
-
-Upstream-Status: Inappropriate [ OE ptest specific ]
-
-Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
-
----
- examples/Makefile | 12 ++++++++++--
- 1 file changed, 10 insertions(+), 2 deletions(-)
-
-diff --git a/examples/Makefile b/examples/Makefile
-index 89b1d61..c1cbcca 100644
---- a/examples/Makefile
-+++ b/examples/Makefile
-@@ -8,9 +8,17 @@ PROGRAMS = \
- 	decrypt1 decrypt2 decrypt3 \
- 	xmldsigverify
- 
-+ifndef CC
- CC	= gcc
--CFLAGS	+= -g $(shell xmlsec1-config --cflags) -DUNIX_SOCKETS
--LDLIBS	+= -g $(shell xmlsec1-config --libs)
-+endif
-+
-+CFLAGS  += -I../include -g $(shell PKG_CONFIG_PATH=.. pkg-config --cflags xmlsec1 ) -DUNIX_SOCKETS
-+LDLIBS += -L../src/.libs -g $(shell PKG_CONFIG_PATH=.. pkg-config --libs xmlsec1 )
-+
-+DESTDIR = /usr/share/xmlsec1
-+install-ptest:
-+	if [ ! -d $(DESTDIR) ]; then mkdir -p $(DESTDIR); fi
-+	cp * $(DESTDIR)
- 
- all: $(PROGRAMS)
- 
diff --git a/recipes-security/xmlsec1/xmlsec1/run-ptest b/recipes-security/xmlsec1/xmlsec1/run-ptest
deleted file mode 100755
index a203c38..0000000
--- a/recipes-security/xmlsec1/xmlsec1/run-ptest
+++ /dev/null
@@ -1,85 +0,0 @@
-#!/bin/sh
-
-check_return() {
-    if [ $? == 0 ]; then
-        echo -e "PASS: $1\n"
-    else
-        echo -e "FAIL: $1\n"
-    fi
-}
-
-echo "---------------------------------------------------"
-echo "Signing a template file..."
-./sign1 sign1-tmpl.xml rsakey.pem > sign1-res.xml
-./verify1 sign1-res.xml rsapub.pem
-check_return sign-tmpl
-
-echo "---------------------------------------------------"
-echo "Signing a dynamicaly created template..."
-./sign2 sign2-doc.xml rsakey.pem > sign2-res.xml
-./verify1 sign2-res.xml rsapub.pem
-check_return sign-dynamic-templ
-
-echo "---------------------------------------------------"
-echo "Signing with X509 certificate..."
-./sign3 sign3-doc.xml rsakey.pem rsacert.pem > sign3-res.xml
-./verify3 sign3-res.xml ca2cert.pem cacert.pem
-check_return sign-x509
-
-echo "---------------------------------------------------"
-echo "Verifying a signature with a single key..."
-./verify1 sign1-res.xml rsapub.pem
-./verify1 sign2-res.xml rsapub.pem
-check_return verify-single-key
-
-echo "---------------------------------------------------"
-echo "Verifying a signature with keys manager..."
-./verify2 sign1-res.xml rsapub.pem
-./verify2 sign2-res.xml rsapub.pem
-check_return verify-keys-manager
-
-echo "---------------------------------------------------"
-echo "Verifying a signature with X509 certificates..."
-./verify3 sign3-res.xml ca2cert.pem cacert.pem
-check_return verify-x509
-
-echo "---------------------------------------------------"
-echo "Verifying a signature with additional restrictions..."
-./verify4 verify4-res.xml ca2cert.pem cacert.pem
-check_return verify-res
-
-echo "---------------------------------------------------"
-echo "Encrypting data with a template file..."
-./encrypt1 encrypt1-tmpl.xml deskey.bin > encrypt1-res.xml
-./decrypt1 encrypt1-res.xml deskey.bin
-check_return encrypt-tmpl
-
-echo "---------------------------------------------------"
-echo "Encrypting data with a dynamicaly created template..."
-./encrypt2 encrypt2-doc.xml deskey.bin > encrypt2-res.xml
-./decrypt1 encrypt2-res.xml deskey.bin
-check_return encrypt-dynamic-tmpl
-
-echo "---------------------------------------------------"
-echo "Encrypting data with a session key..."
-./encrypt3 encrypt3-doc.xml rsakey.pem > encrypt3-res.xml
-./decrypt3 encrypt3-res.xml
-check_return encrypt-session-key
-
-echo "---------------------------------------------------"
-echo "Decrypting data with a single key..."
-./decrypt1 encrypt1-res.xml deskey.bin
-./decrypt1 encrypt2-res.xml deskey.bin
-check_return encrypt-single-key
-
-echo "---------------------------------------------------"
-echo "Decrypting data with keys manager..."
-./decrypt2 encrypt1-res.xml deskey.bin
-./decrypt2 encrypt2-res.xml deskey.bin
-check_return encrypt-keys-manager
-
-echo "---------------------------------------------------"
-echo "Writing a custom keys manager..."
-./decrypt3 encrypt1-res.xml
-./decrypt3 encrypt2-res.xml
-check_return write-keys-manager
diff --git a/recipes-security/xmlsec1/xmlsec1/xmlsec1-examples-allow-build-in-separate-dir.patch b/recipes-security/xmlsec1/xmlsec1/xmlsec1-examples-allow-build-in-separate-dir.patch
deleted file mode 100644
index 8b2533e..0000000
--- a/recipes-security/xmlsec1/xmlsec1/xmlsec1-examples-allow-build-in-separate-dir.patch
+++ /dev/null
@@ -1,30 +0,0 @@
-From 0c38c6864e7ba8f53a657d87894f24374a6a4932 Mon Sep 17 00:00:00 2001
-From: Jackie Huang <jackie.huang@windriver.com>
-Date: Tue, 30 Dec 2014 11:18:17 +0800
-Subject: [PATCH] examples: allow build in separate dir
-
-Upstream-Status: Inappropriate [ OE specific ]
-
-Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
-
----
- examples/Makefile | 6 ++++--
- 1 file changed, 4 insertions(+), 2 deletions(-)
-
-diff --git a/examples/Makefile b/examples/Makefile
-index c1cbcca..3f1bd14 100644
---- a/examples/Makefile
-+++ b/examples/Makefile
-@@ -12,8 +12,10 @@ ifndef CC
- CC	= gcc
- endif
- 
--CFLAGS  += -I../include -g $(shell PKG_CONFIG_PATH=.. pkg-config --cflags xmlsec1 ) -DUNIX_SOCKETS
--LDLIBS += -L../src/.libs -g $(shell PKG_CONFIG_PATH=.. pkg-config --libs xmlsec1 )
-+top_srcdir = ..
-+top_builddir = ..
-+CFLAGS  += -I$(top_srcdir)/include -g $(shell PKG_CONFIG_PATH=$(top_srcdir) pkg-config --cflags xmlsec1 ) -DUNIX_SOCKETS
-+LDLIBS += -L$(top_builddir)/src/.libs -g $(shell PKG_CONFIG_PATH=$(top_srcdir) pkg-config --libs xmlsec1 )
- 
- DESTDIR = /usr/share/xmlsec1
- install-ptest:
diff --git a/recipes-security/xmlsec1/xmlsec1_1.2.28.bb b/recipes-security/xmlsec1/xmlsec1_1.2.28.bb
deleted file mode 100644
index 0a4c56a..0000000
--- a/recipes-security/xmlsec1/xmlsec1_1.2.28.bb
+++ /dev/null
@@ -1,64 +0,0 @@
-SUMMARY = "XML Security Library is a C library based on LibXML2"
-DESCRIPTION = "\
-    XML Security Library is a C library based on \
-    LibXML2 and OpenSSL. The library was created with a goal to support major \
-    XML security standards "XML Digital Signature" and "XML Encryption". \
-    "
-HOMEPAGE = "http://www.aleksey.com/xmlsec/"
-DEPENDS = "libtool libxml2 libxslt zlib"
-
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://COPYING;md5=352791d62092ea8104f085042de7f4d0"
-
-SECTION = "libs"
-
-SRC_URI = "http://www.aleksey.com/xmlsec/download/${BP}.tar.gz \
-    file://fix-ltmain.sh.patch \
-    file://change-finding-path-of-nss.patch \
-    file://makefile-ptest.patch \
-    file://xmlsec1-examples-allow-build-in-separate-dir.patch \
-    file://run-ptest \
-    "
-
-SRC_URI[md5sum] = "69b8d95c009a404462e19f335e650241"
-SRC_URI[sha256sum] = "13eec4811ea30e3f0e16a734d1dbf7f9d246a71d540b48d143a07b489f6222d4"
-
-inherit autotools-brokensep ptest pkgconfig
-
-CFLAGS += "-I${STAGING_INCDIR}/nspr4 -I${STAGING_INCDIR}/nss3"
-CPPFLAGS += "-I${STAGING_INCDIR}/nspr4 -I${STAGING_INCDIR}/nss3"
-
-PACKAGECONFIG ??= "gnutls libgcrypt nss openssl des"
-PACKAGECONFIG[gnutls] = ",,gnutls"
-PACKAGECONFIG[libgcrypt] = ",,libgcrypt"
-PACKAGECONFIG[nss] = "--with-nss=${STAGING_LIBDIR}/../.. --with-nspr=${STAGING_LIBDIR}/../..,,nss nspr"
-PACKAGECONFIG[openssl] = ",,openssl"
-PACKAGECONFIG[des] = ",--disable-des,,"
-
-# these can be dynamically loaded with xmlSecCryptoDLLoadLibrary()
-FILES_SOLIBSDEV = "${libdir}/libxmlsec1.so"
-FILES_${PN} += "${libdir}/libxmlsec1-*.so"
-INSANE_SKIP_${PN} = "dev-so"
-
-FILES_${PN}-dev += "${libdir}/xmlsec1Conf.sh"
-FILES_${PN}-dbg += "${PTEST_PATH}/.debug/*"
-
-RDEPENDS_${PN}-ptest += "${PN}-dev"
-INSANE_SKIP_${PN}-ptest += "dev-deps"
-
-PTEST_EXTRA_ARGS = "top_srcdir=${S} top_builddir=${B}"
-
-do_compile_ptest () {
-    oe_runmake -C ${S}/examples ${PTEST_EXTRA_ARGS} all
-}
-
-do_install_append() {
-    for i in ${bindir}/xmlsec1-config ${libdir}/xmlsec1Conf.sh \
-        ${libdir}/pkgconfig/xmlsec1-openssl.pc; do
-        sed -i -e "s@${RECIPE_SYSROOT}@@g" ${D}$i
-    done
-}
-
-do_install_ptest () {
-    oe_runmake -C ${S}/examples DESTDIR=${D}${PTEST_PATH} ${PTEST_EXTRA_ARGS} install-ptest
-}
-- 
2.17.1


