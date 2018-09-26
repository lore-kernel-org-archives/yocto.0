Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5102E00718; Tue, 25 Sep 2018 22:44:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E191CE006AF
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2018 22:44:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w8Q5iHEa027457
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2018 22:44:17 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Tue, 25 Sep 2018 22:44:16 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 26 Sep 2018 13:44:13 +0800
Message-ID: <1537940653-12582-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-security][PATCH] keynote: remove recipe
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
X-List-Received-Date: Wed, 26 Sep 2018 05:44:18 -0000
Content-Type: text/plain

The keynote is unmaintained for a long time. It had been removed from
main distributions (Fedora, Suse and Debian).
See: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=594867

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../configure-remove-hardcode-path.patch           | 37 --------------------
 .../keynote/keynote-2.3/makefile-add-ldflags.patch | 36 -------------------
 recipes-security/keynote/keynote-2.3/run-ptest     | 16 ---------
 recipes-security/keynote/keynote_2.3.bb            | 40 ----------------------
 4 files changed, 129 deletions(-)
 delete mode 100644 recipes-security/keynote/keynote-2.3/configure-remove-hardcode-path.patch
 delete mode 100644 recipes-security/keynote/keynote-2.3/makefile-add-ldflags.patch
 delete mode 100644 recipes-security/keynote/keynote-2.3/run-ptest
 delete mode 100644 recipes-security/keynote/keynote_2.3.bb

diff --git a/recipes-security/keynote/keynote-2.3/configure-remove-hardcode-path.patch b/recipes-security/keynote/keynote-2.3/configure-remove-hardcode-path.patch
deleted file mode 100644
index af3ef42..0000000
--- a/recipes-security/keynote/keynote-2.3/configure-remove-hardcode-path.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-Remove the hardcoded lib and include dirs
-
-Upstream-Status: Inappropriate [cross compile specific]
-
-written by: Amy Fong <amy.fong@windriver.com>
-Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
-
---- keynote-2.3/configure.in.orig	2010-05-24 04:44:16.000000000 -0700
-+++ keynote-2.3/configure.in	2010-05-24 04:44:55.000000000 -0700
-@@ -21,27 +21,16 @@
- AC_PATH_PROG(ECHO, echo, /bin/echo)
- AC_PATH_PROG(SED, sed, /usr/bin/sed)
- 
--dnl Checks for libraries.
--LIBS="-L/usr/lib -L/usr/local/lib -L/usr/ssl/lib -L/usr/openssl/lib\
-- -L/usr/local/ssl/lib -L/usr/local/openssl/lib -L/usr/pkg/lib -L/pkg/lib"
--
- AC_CHECK_LIB(m, floor, LIBS="$LIBS -lm")
- AC_CHECK_LIB(rsaref, RSAPrivateDecrypt, LIBS="$LIBS -lrsaref")
- AC_CHECK_LIB(crypto, i2a_ASN1_STRING, LIBS="$LIBS -lcrypto")
- AC_CHECK_LIB(RSAglue, RSA_ref_private_encrypt, LIBS="$LIBS -lRSAglue")
- 
--dnl Checks for header files.
--CPPFLAGS="-I/usr/include -I/usr/local/include -I/usr/ssl/include\
-- -I/usr/local/ssl/include -I/usr/openssl/include -I/usr/pkg/include\
-- -I/usr/local/openssl/include -I/pkg/include"
--
- AC_HEADER_STDC
- AC_HEADER_TIME
- AC_CHECK_HEADERS(fcntl.h limits.h unistd.h regex.h sys/time.h io.h)
- AC_CHECK_HEADERS(ssl/crypto.h openssl/crypto.h crypto.h memory.h)
- 
--dnl Checks for other files
--
- dnl Checks for typedefs, structures, and compiler characteristics.
- AC_C_CONST
- AC_CHECK_TYPE(u_int, unsigned int)
diff --git a/recipes-security/keynote/keynote-2.3/makefile-add-ldflags.patch b/recipes-security/keynote/keynote-2.3/makefile-add-ldflags.patch
deleted file mode 100644
index 80d87cf..0000000
--- a/recipes-security/keynote/keynote-2.3/makefile-add-ldflags.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-Add LDFLAGS variable to Makefile so that extra linker flags can be sent via this variable.
-
-Upstream-Status: Pending
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
-
-diff --git a/Makefile.in b/Makefile.in
-index b216648..42b4827 100644
---- a/Makefile.in
-+++ b/Makefile.in
-@@ -35,6 +35,7 @@ MKDIR = @MKDIR@
- SED = @SED@
- ECHO = @ECHO@
- TR = @TR@
-+LDFLAGS = @LDFLAGS@
- 
- TARFLAGS = -cvzf ${DISTFILE}
- YACCFLAGS2 = -d -p kv -b z
-@@ -83,7 +84,7 @@ $(TARGET): $(OBJS)
- 	$(RANLIB) $(TARGET)
- 
- $(TARGET2): $(TARGET) $(OBJS2)
--	$(CC) $(CFLAGS) -o $(TARGET2) $(OBJS2) $(LIBS)
-+	$(CC) $(CFLAGS) $(LDFLAGS) -o $(TARGET2) $(OBJS2) $(LIBS)
- 
- k.tab.c: keynote.y header.h keynote.h assertion.h config.h
- 	$(YACC) $(YACCFLAGS) keynote.y
-@@ -131,7 +132,7 @@ $(SSLCERT) $(SSLKEY):
- 	-keyout $(SSLKEY)
- 
- test-sample: all $(OBJS3)
--	$(CC) $(CFLAGS) -o $(TARGET3) $(OBJS3) $(LIBS)
-+	$(CC) $(CFLAGS) $(LDFLAGS) -o $(TARGET3) $(OBJS3) $(LIBS)
- 
- test-sig: all $(SSLCERT) $(SSLKEY)
- 	$(SED) -e 's/--.*//' < $(SSLCERT) > $(SSLCERT).1
diff --git a/recipes-security/keynote/keynote-2.3/run-ptest b/recipes-security/keynote/keynote-2.3/run-ptest
deleted file mode 100644
index 4dc35c9..0000000
--- a/recipes-security/keynote/keynote-2.3/run-ptest
+++ /dev/null
@@ -1,16 +0,0 @@
-#!/bin/sh
-
-cd @PTEST_PATH@
-keynote verify -e testsuite/test-env \
-               -r false,maybe,probably,true \
-               -k testsuite/auth1 -k testsuite/auth2 \
-               -k testsuite/auth3 -k testsuite/auth4 \
-               -l testsuite/test-assertion1 \
-               -l testsuite/test-assertion2 \
-               -l testsuite/test-assertion3 \
-               -l testsuite/test-assertion4 \
-               -l testsuite/test-assertion5 \
-               -l testsuite/test-assertion6 \
-               -l testsuite/test-assertion7 \
-               && echo "PASS: keynote-ptest" \
-               || echo "FAIL: keynote-ptest"
diff --git a/recipes-security/keynote/keynote_2.3.bb b/recipes-security/keynote/keynote_2.3.bb
deleted file mode 100644
index 6ec26b8..0000000
--- a/recipes-security/keynote/keynote_2.3.bb
+++ /dev/null
@@ -1,40 +0,0 @@
-SUMMARY = "Keynote tool and library"
-DESCRIPTION = "KeyNote is a simple and flexible trust-management \
-  system designed to work well for a variety of large- and small- \
-  scale Internet-based applications. \
-"
-HOMEPAGE = "http://www.cs.columbia.edu/~angelos/keynote.html"
-SECTION = "security"
-
-LICENSE = "ISC"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=3a265095c549c1808686a676f2699c98"
-
-MAIN_ID = "${@d.getVar('PV').split('.')[0]}"
-MINOR_ID = "${@d.getVar('PV').split('.')[1]}"
-SRC_URI = "${SOURCEFORGE_MIRROR}/project/${BPN}-${MAIN_ID}-${MINOR_ID}/${BPN}_${PV}.tar.gz \
-       file://configure-remove-hardcode-path.patch \
-       file://makefile-add-ldflags.patch \
-       file://run-ptest \
-"
-S = "${WORKDIR}/${BPN}-${PV}+dfsg.orig"
-
-inherit autotools-brokensep ptest
-
-SRC_URI[md5sum] = "a14553e6ad921b5c85026ce5bec3afe7"
-SRC_URI[sha256sum] = "38d2acfa1c3630a07adcb5c8fe92d2aef7f0e6d242b8998b2bbb1c6e4c408d46"
-
-DEPENDS = "flex openssl10 bison-native"
-
-EXTRA_OEMAKE += "test-sample -j1"
-
-do_install() {
-    install -D -m 0755 ${S}/keynote ${D}${bindir}/keynote
-    install -D -m 0644 ${S}/libkeynote.a ${D}${libdir}/libkeynote.a
-    install -D -m 0644 ${S}/keynote.h ${D}${includedir}/keynote.h
-}
-
-do_install_ptest() {
-    install -D -m 0755 ${S}/sample-app ${D}${PTEST_PATH}
-    cp -r ${S}/testsuite ${D}${PTEST_PATH}
-    sed -i 's|@PTEST_PATH@|${PTEST_PATH}|' ${D}${PTEST_PATH}/run-ptest
-}
-- 
2.7.4


