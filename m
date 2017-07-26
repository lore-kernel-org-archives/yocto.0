Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0C35E00BFF; Wed, 26 Jul 2017 01:12:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F7F0E00BAF
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 01:12:06 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v6Q8C6Le025877
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 01:12:06 -0700
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Wed, 26 Jul 2017 01:12:05 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 26 Jul 2017 16:11:44 +0800
Message-ID: <20170726081144.2245-1-jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-security][PATCH] keynote: add new recipe
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
X-List-Received-Date: Wed, 26 Jul 2017 08:12:08 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

KeyNote is a simple and flexible trust-management system
designed to work well for a variety of large- and small-
scale Internet-based applications

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../configure-remove-hardcode-path.patch           | 37 ++++++++++++++++++++++
 .../keynote/keynote-2.3/makefile-add-ldflags.patch | 36 +++++++++++++++++++++
 recipes-security/keynote/keynote-2.3/run-ptest     | 16 ++++++++++
 recipes-security/keynote/keynote_2.3.bb            | 37 ++++++++++++++++++++++
 4 files changed, 126 insertions(+)
 create mode 100644 recipes-security/keynote/keynote-2.3/configure-remove-hardcode-path.patch
 create mode 100644 recipes-security/keynote/keynote-2.3/makefile-add-ldflags.patch
 create mode 100644 recipes-security/keynote/keynote-2.3/run-ptest
 create mode 100644 recipes-security/keynote/keynote_2.3.bb

diff --git a/recipes-security/keynote/keynote-2.3/configure-remove-hardcode-path.patch b/recipes-security/keynote/keynote-2.3/configure-remove-hardcode-path.patch
new file mode 100644
index 0000000..af3ef42
--- /dev/null
+++ b/recipes-security/keynote/keynote-2.3/configure-remove-hardcode-path.patch
@@ -0,0 +1,37 @@
+Remove the hardcoded lib and include dirs
+
+Upstream-Status: Inappropriate [cross compile specific]
+
+written by: Amy Fong <amy.fong@windriver.com>
+Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
+
+--- keynote-2.3/configure.in.orig	2010-05-24 04:44:16.000000000 -0700
++++ keynote-2.3/configure.in	2010-05-24 04:44:55.000000000 -0700
+@@ -21,27 +21,16 @@
+ AC_PATH_PROG(ECHO, echo, /bin/echo)
+ AC_PATH_PROG(SED, sed, /usr/bin/sed)
+ 
+-dnl Checks for libraries.
+-LIBS="-L/usr/lib -L/usr/local/lib -L/usr/ssl/lib -L/usr/openssl/lib\
+- -L/usr/local/ssl/lib -L/usr/local/openssl/lib -L/usr/pkg/lib -L/pkg/lib"
+-
+ AC_CHECK_LIB(m, floor, LIBS="$LIBS -lm")
+ AC_CHECK_LIB(rsaref, RSAPrivateDecrypt, LIBS="$LIBS -lrsaref")
+ AC_CHECK_LIB(crypto, i2a_ASN1_STRING, LIBS="$LIBS -lcrypto")
+ AC_CHECK_LIB(RSAglue, RSA_ref_private_encrypt, LIBS="$LIBS -lRSAglue")
+ 
+-dnl Checks for header files.
+-CPPFLAGS="-I/usr/include -I/usr/local/include -I/usr/ssl/include\
+- -I/usr/local/ssl/include -I/usr/openssl/include -I/usr/pkg/include\
+- -I/usr/local/openssl/include -I/pkg/include"
+-
+ AC_HEADER_STDC
+ AC_HEADER_TIME
+ AC_CHECK_HEADERS(fcntl.h limits.h unistd.h regex.h sys/time.h io.h)
+ AC_CHECK_HEADERS(ssl/crypto.h openssl/crypto.h crypto.h memory.h)
+ 
+-dnl Checks for other files
+-
+ dnl Checks for typedefs, structures, and compiler characteristics.
+ AC_C_CONST
+ AC_CHECK_TYPE(u_int, unsigned int)
diff --git a/recipes-security/keynote/keynote-2.3/makefile-add-ldflags.patch b/recipes-security/keynote/keynote-2.3/makefile-add-ldflags.patch
new file mode 100644
index 0000000..80d87cf
--- /dev/null
+++ b/recipes-security/keynote/keynote-2.3/makefile-add-ldflags.patch
@@ -0,0 +1,36 @@
+Add LDFLAGS variable to Makefile so that extra linker flags can be sent via this variable.
+
+Upstream-Status: Pending
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+
+diff --git a/Makefile.in b/Makefile.in
+index b216648..42b4827 100644
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -35,6 +35,7 @@ MKDIR = @MKDIR@
+ SED = @SED@
+ ECHO = @ECHO@
+ TR = @TR@
++LDFLAGS = @LDFLAGS@
+ 
+ TARFLAGS = -cvzf ${DISTFILE}
+ YACCFLAGS2 = -d -p kv -b z
+@@ -83,7 +84,7 @@ $(TARGET): $(OBJS)
+ 	$(RANLIB) $(TARGET)
+ 
+ $(TARGET2): $(TARGET) $(OBJS2)
+-	$(CC) $(CFLAGS) -o $(TARGET2) $(OBJS2) $(LIBS)
++	$(CC) $(CFLAGS) $(LDFLAGS) -o $(TARGET2) $(OBJS2) $(LIBS)
+ 
+ k.tab.c: keynote.y header.h keynote.h assertion.h config.h
+ 	$(YACC) $(YACCFLAGS) keynote.y
+@@ -131,7 +132,7 @@ $(SSLCERT) $(SSLKEY):
+ 	-keyout $(SSLKEY)
+ 
+ test-sample: all $(OBJS3)
+-	$(CC) $(CFLAGS) -o $(TARGET3) $(OBJS3) $(LIBS)
++	$(CC) $(CFLAGS) $(LDFLAGS) -o $(TARGET3) $(OBJS3) $(LIBS)
+ 
+ test-sig: all $(SSLCERT) $(SSLKEY)
+ 	$(SED) -e 's/--.*//' < $(SSLCERT) > $(SSLCERT).1
diff --git a/recipes-security/keynote/keynote-2.3/run-ptest b/recipes-security/keynote/keynote-2.3/run-ptest
new file mode 100644
index 0000000..4dc35c9
--- /dev/null
+++ b/recipes-security/keynote/keynote-2.3/run-ptest
@@ -0,0 +1,16 @@
+#!/bin/sh
+
+cd @PTEST_PATH@
+keynote verify -e testsuite/test-env \
+               -r false,maybe,probably,true \
+               -k testsuite/auth1 -k testsuite/auth2 \
+               -k testsuite/auth3 -k testsuite/auth4 \
+               -l testsuite/test-assertion1 \
+               -l testsuite/test-assertion2 \
+               -l testsuite/test-assertion3 \
+               -l testsuite/test-assertion4 \
+               -l testsuite/test-assertion5 \
+               -l testsuite/test-assertion6 \
+               -l testsuite/test-assertion7 \
+               && echo "PASS: keynote-ptest" \
+               || echo "FAIL: keynote-ptest"
diff --git a/recipes-security/keynote/keynote_2.3.bb b/recipes-security/keynote/keynote_2.3.bb
new file mode 100644
index 0000000..b1df880
--- /dev/null
+++ b/recipes-security/keynote/keynote_2.3.bb
@@ -0,0 +1,37 @@
+SUMMARY = "Keynote tool and library"
+DESCRIPTION = "KeyNote is a simple and flexible trust-management \
+  system designed to work well for a variety of large- and small- \
+  scale Internet-based applications. \
+"
+HOMEPAGE = "http://www.cs.columbia.edu/~angelos/keynote.html"
+SECTION = "security"
+
+LICENSE = "ISC"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=3a265095c549c1808686a676f2699c98"
+
+SRC_URI = "http://www.cs.columbia.edu/~angelos/Code/${BPN}.tar.gz \
+       file://configure-remove-hardcode-path.patch \
+       file://makefile-add-ldflags.patch \
+       file://run-ptest \
+"
+
+inherit autotools-brokensep ptest
+
+SRC_URI[md5sum] = "ba58a0297c421dc6aa671e6b753ef695"
+SRC_URI[sha256sum] = "62f7a9d57ceb6bcdd47b604b637a7ac8ed337cef0ab02f1fa28b7e61c9b15821"
+
+DEPENDS = "flex openssl"
+
+EXTRA_OEMAKE += "test-sample -j1"
+
+do_install() {
+    install -D -m 0755 ${S}/keynote ${D}${bindir}/keynote
+    install -D -m 0644 ${S}/libkeynote.a ${D}${libdir}/libkeynote.a
+    install -D -m 0644 ${S}/keynote.h ${D}${includedir}/keynote.h
+}
+
+do_install_ptest() {
+    install -D -m 0755 ${S}/sample-app ${D}${PTEST_PATH}
+    cp -r ${S}/testsuite ${D}${PTEST_PATH}
+    sed -i 's|@PTEST_PATH@|${PTEST_PATH}|' ${D}${PTEST_PATH}/run-ptest
+}
-- 
2.11.0


