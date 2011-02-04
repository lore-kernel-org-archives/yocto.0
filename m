Return-Path: <aleksandr.koltsoff@ebts.fi>
Received: from smtp.ebi (ebi0.eke.fi [213.140.179.212])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D0134C800A8
	for <yocto@yoctoproject.org>; Fri,  4 Feb 2011 08:02:08 -0600 (CST)
Received: from localhost.localdomain (bob.ebi [192.168.0.244])
	by smtp.ebi (Postfix) with ESMTP id 505001F0E2;
	Fri,  4 Feb 2011 16:02:08 +0200 (EET)
From: Aleksandr Koltsoff <aleksandr.koltsoff@ebts.fi>
To: yocto@yoctoproject.org
Date: Fri,  4 Feb 2011 16:01:51 +0200
Message-Id: <1296828111-16867-1-git-send-email-aleksandr.koltsoff@ebts.fi>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH 1/1] openssl: Propagate LDFLAGS properly.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 04 Feb 2011 14:02:09 -0000

The LDFLAGS handling in openssl is slightly difficult, the
shared libraries use SHARED_LDFLAGS, and the programs (openssl) use
LDFLAGS, except that it isn't passed by default to the underlying
Makefiles. This patch fixes both cases and makes the QA issues
about GNU_HASH go away.

Signed-off-by: Aleksandr Koltsoff <aleksandr.koltsoff@ebts.fi>
---
 .../openssl/openssl-0.9.8p/respect-ldflags.patch   |   31 ++++++++++++++++++++
 meta/recipes-connectivity/openssl/openssl.inc      |    4 ++-
 .../recipes-connectivity/openssl/openssl_0.9.8p.bb |    7 ++--
 3 files changed, 38 insertions(+), 4 deletions(-)
 create mode 100644 meta/recipes-connectivity/openssl/openssl-0.9.8p/respect-ldflags.patch

diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8p/respect-ldflags.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/respect-ldflags.patch
new file mode 100644
index 0000000..37da447
--- /dev/null
+++ b/meta/recipes-connectivity/openssl/openssl-0.9.8p/respect-ldflags.patch
@@ -0,0 +1,31 @@
+http://bugs.gentoo.org/181438 inspired the makefile fixes, although this
+patch must be applied after the Debian ones, since the rlib stuff has
+already been removed by the time of this patch.
+
+SHARED_LDFLAGS needs to be set from top-level make though, so this patch
+by itself is not enough.
+
+
+diff -urN openssl-0.9.8q.orig/Makefile.org openssl-0.9.8q/Makefile.org
+--- openssl-0.9.8q.orig/Makefile.org	2011-02-04 12:46:35.000000000 +0200
++++ openssl-0.9.8q/Makefile.org	2011-02-04 12:47:12.000000000 +0200
+@@ -208,6 +208,7 @@
+ 		MAKEDEPEND='$$$${TOP}/util/domd $$$${TOP} -MD ${MAKEDEPPROG}' \
+ 		DEPFLAG='-DOPENSSL_NO_DEPRECATED ${DEPFLAG}'	\
+ 		MAKEDEPPROG='${MAKEDEPPROG}'			\
++		LDFLAGS='${LDFLAGS}'				\
+ 		SHARED_LDFLAGS='${SHARED_LDFLAGS}'		\
+ 		KRB5_INCLUDES='${KRB5_INCLUDES}' LIBKRB5='${LIBKRB5}'	\
+ 		EXE_EXT='${EXE_EXT}' SHARED_LIBS='${SHARED_LIBS}'	\
+diff -urN openssl-0.9.8q.orig/Makefile.shared openssl-0.9.8q/Makefile.shared
+--- openssl-0.9.8q.orig/Makefile.shared	2011-02-04 12:46:35.000000000 +0200
++++ openssl-0.9.8q/Makefile.shared	2011-02-04 12:47:31.000000000 +0200
+@@ -151,7 +151,7 @@
+ 	NOALLSYMSFLAGS='-Wl,--no-whole-archive'; \
+ 	SHAREDFLAGS="$(CFLAGS) $(SHARED_LDFLAGS) -shared -Wl,-Bsymbolic -Wl,-soname=$$SHLIB$$SHLIB_SOVER$$SHLIB_SUFFIX"
+ 
+-DO_GNU_APP=LDFLAGS="$(CFLAGS)"
++DO_GNU_APP=LDFLAGS="$(LDFLAGS) $(CFLAGS)"
+ 
+ #This is rather special.  It's a special target with which one can link
+ #applications without bothering with any features that have anything to
diff --git a/meta/recipes-connectivity/openssl/openssl.inc b/meta/recipes-connectivity/openssl/openssl.inc
index f054c26..c190e5c 100644
--- a/meta/recipes-connectivity/openssl/openssl.inc
+++ b/meta/recipes-connectivity/openssl/openssl.inc
@@ -93,7 +93,9 @@ do_configure () {
 }
 
 do_compile () {
-	oe_runmake
+	# SHARED_LDFLAGS are used instead of LDFLAGS for shared libs
+	# Applications and tests use LDFLAGS.
+	oe_runmake SHARED_LDFLAGS="${LDFLAGS}"
 }
 
 do_install () {
diff --git a/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb b/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
index 283b82a..c6979bb 100644
--- a/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
+++ b/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
@@ -1,6 +1,6 @@
 require openssl.inc
 
-PR = "r2"
+PR = "r3"
 SRC_URI += "file://debian/ca.patch \
             file://debian/config-hurd.patch;apply=no \
             file://debian/debian-targets.patch \
@@ -24,7 +24,8 @@ SRC_URI += "file://debian/ca.patch \
 SRC_URI[md5sum] = "7f24047f70364c9eabc94899e356ce39"
 SRC_URI[sha256sum] = "b2645e2a2af221fa230b5ef6aa2b9388a875801b74cbddbb16be557f80f45242"
 
-SRC_URI += "file://configure-targets.patch \
-            file://shared-libs.patch"
+SRC_URI += "file://shared-libs.patch \
+            file://configure-targets.patch \
+            file://respect-ldflags.patch"
 
 BBCLASSEXTEND = "native nativesdk"
-- 
1.7.0.4


