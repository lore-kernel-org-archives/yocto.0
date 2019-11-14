Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60125E00E3D; Wed, 13 Nov 2019 17:49:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 634A6E00E3D
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 17:49:20 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xAE1nJXl024240
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 17:49:19 -0800 (PST)
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 13 Nov 2019 17:49:18 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 14 Nov 2019 09:48:46 +0800
Message-ID: <20191114014901.22862-5-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114014901.22862-1-yi.zhao@windriver.com>
References: <20191114014901.22862-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Subject: [meta-selinux][PATCH 04/19] libselinux: uprev to 2.9 (20190315)
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
X-List-Received-Date: Thu, 14 Nov 2019 01:49:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

* Switch to python3

* Drop patches:
  0001-libselinux-Do-not-define-gettid-if-glibc-2.30-is-use.patch
  0001-src-Makefile-fix-includedir-in-libselinux.pc.patch

* Split into libselinux recipe and libselinux-python recipe to fix the
  loop dependency error.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/libselinux.inc       | 24 +-------
 ...t-define-gettid-if-glibc-2.30-is-use.patch | 60 -------------------
 ...file-fix-includedir-in-libselinux.pc.patch | 28 ---------
 .../{libselinux_2.8.bb => libselinux_2.9.bb}  | 10 ++--
 4 files changed, 6 insertions(+), 116 deletions(-)
 delete mode 100644 recipes-security/selinux/libselinux/0001-libselinux-Do-not-define-gettid-if-glibc-2.30-is-use.patch
 delete mode 100644 recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
 rename recipes-security/selinux/{libselinux_2.8.bb => libselinux_2.9.bb} (50%)

diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/selinux/libselinux.inc
index 6e115e3..8d381de 100644
--- a/recipes-security/selinux/libselinux.inc
+++ b/recipes-security/selinux/libselinux.inc
@@ -5,15 +5,10 @@ decisions.  Required for any applications that use the SELinux API."
 SECTION = "base"
 LICENSE = "PD"
 
-inherit lib_package pythonnative
+inherit lib_package python3native
 
-DEPENDS += "libsepol python libpcre swig-native"
+DEPENDS += "libsepol libpcre"
 DEPENDS_append_libc-musl = " fts"
-RDEPENDS_${PN}-python += "python-core python-shell"
-
-PACKAGES += "${PN}-python"
-FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
-FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/selinux/.debug/*"
 
 def get_policyconfigarch(d):
     import re
@@ -26,19 +21,4 @@ EXTRA_OEMAKE += "${@get_policyconfigarch(d)}"
 EXTRA_OEMAKE += "LDFLAGS='${LDFLAGS} -lpcre' LIBSEPOLA='${STAGING_LIBDIR}/libsepol.a'"
 EXTRA_OEMAKE_append_libc-musl = " FTS_LDLIBS=-lfts"
 
-do_compile_append() {
-    oe_runmake pywrap -j1 \
-            INCLUDEDIR='${STAGING_INCDIR}' \
-            LIBDIR='${STAGING_LIBDIR}' \
-            PYINC='-I${STAGING_INCDIR}/python${PYTHON_BASEVERSION}'
-}
-
-do_install_append() {
-    oe_runmake install-pywrap swigify \
-            PYTHONLIBDIR=${D}${libdir}/python${PYTHON_BASEVERSION}/site-packages
-    if ! ${@bb.utils.contains('DISTRO_FEATURES','usrmerge','true','false',d)}; then
-        rm -rf ${D}${base_sbindir}
-    fi
-}
-
 BBCLASSEXTEND = "native"
diff --git a/recipes-security/selinux/libselinux/0001-libselinux-Do-not-define-gettid-if-glibc-2.30-is-use.patch b/recipes-security/selinux/libselinux/0001-libselinux-Do-not-define-gettid-if-glibc-2.30-is-use.patch
deleted file mode 100644
index fc3e37e..0000000
--- a/recipes-security/selinux/libselinux/0001-libselinux-Do-not-define-gettid-if-glibc-2.30-is-use.patch
+++ /dev/null
@@ -1,60 +0,0 @@
-From 2c672b4cc39fbddb6faec2c7434832058f339d59 Mon Sep 17 00:00:00 2001
-From: Petr Lautrbach <plautrba@redhat.com>
-Date: Mon, 11 Mar 2019 16:00:41 +0100
-Subject: [PATCH] libselinux: Do not define gettid() if glibc >= 2.30 is used
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-Since version 2.30 glibc implements gettid() system call wrapper, see
-https://sourceware.org/bugzilla/show_bug.cgi?id=6399
-
-Fixes:
-cc -O2 -g -pipe -Wall -Werror=format-security -Wp,-D_FORTIFY_SOURCE=2 -Wp,-D_GLIBCXX_ASSERTIONS -fexceptions -fstack-protector-strong -grecord-gcc-switches -specs=/usr/lib/rpm/redhat/redhat-hardened-cc1 -specs=/usr/lib/rpm/redhat/redhat-annobin-cc1 -m64 -mtune=generic -fasynchronous-unwind-tables -fstack-clash-protection -fcf-protection -I../include -D_GNU_SOURCE  -DNO_ANDROID_BACKEND   -c -o procattr.o procattr.c
-procattr.c:28:14: error: static declaration of ‘gettid’ follows non-static declaration
-   28 | static pid_t gettid(void)
-      |              ^~~~~~
-In file included from /usr/include/unistd.h:1170,
-                 from procattr.c:2:
-/usr/include/bits/unistd_ext.h:34:16: note: previous declaration of ‘gettid’ was here
-   34 | extern __pid_t gettid (void) __THROW;
-      |                ^~~~~~
-
-Upstream-Status: Backport
-[https://github.com/SELinuxProject/selinux/commit/707e4b8610733b5c9eaac0f00239778f3edb23c2]
-
-Signed-off-by: Petr Lautrbach <plautrba@redhat.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- src/procattr.c | 15 +++++++++++++--
- 1 file changed, 13 insertions(+), 2 deletions(-)
-
-diff --git a/src/procattr.c b/src/procattr.c
-index 8bf8432..3c7b87f 100644
---- a/src/procattr.c
-+++ b/src/procattr.c
-@@ -22,8 +22,19 @@ static pthread_key_t destructor_key;
- static int destructor_key_initialized = 0;
- static __thread char destructor_initialized;
- 
--#ifndef __BIONIC__
--/* Bionic declares this in unistd.h and has a definition for it */
-+/* Bionic and glibc >= 2.30 declare gettid() system call wrapper in unistd.h and
-+ * has a definition for it */
-+#ifdef __BIONIC__
-+  #define OVERRIDE_GETTID 0
-+#elif !defined(__GLIBC_PREREQ)
-+  #define OVERRIDE_GETTID 1
-+#elif !__GLIBC_PREREQ(2,30)
-+  #define OVERRIDE_GETTID 1
-+#else
-+  #define OVERRIDE_GETTID 0
-+#endif
-+
-+#if OVERRIDE_GETTID
- static pid_t gettid(void)
- {
- 	return syscall(__NR_gettid);
--- 
-2.7.4
-
diff --git a/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch b/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
deleted file mode 100644
index 46cfaaf..0000000
--- a/recipes-security/selinux/libselinux/0001-src-Makefile-fix-includedir-in-libselinux.pc.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-From 37f3299e8f5c468fe692f36356c2c35f968b6aee Mon Sep 17 00:00:00 2001
-From: Robert Yang <liezhi.yang@windriver.com>
-Date: Thu, 18 Feb 2016 02:39:16 +0000
-Subject: [PATCH] src/Makefile: fix includedir in libselinux.pc
-
-Upstream-Status: Pending
-
-Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- src/Makefile | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/src/Makefile b/src/Makefile
-index 977b5c8..92a4289 100644
---- a/src/Makefile
-+++ b/src/Makefile
-@@ -156,6 +156,7 @@ $(LIBSO): $(LOBJS)
- 
- $(LIBPC): $(LIBPC).in ../VERSION
- 	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:$(LIBDIR):; s:@includedir@:$(INCLUDEDIR):; s:@PCRE_MODULE@:$(PCRE_MODULE):' < $< > $@
-+	sed -e 's/@VERSION@/$(VERSION)/; s:@prefix@:$(PREFIX):; s:@libdir@:${libdir}:; s:@includedir@:${prefix}/include:; s:@PCRE_MODULE@:$(PCRE_MODULE):' < $< > $@
- 
- selinuxswig_python_exception.i: ../include/selinux/selinux.h
- 	bash -e exception.sh > $@ || (rm -f $@ ; false)
--- 
-2.7.4
-
diff --git a/recipes-security/selinux/libselinux_2.8.bb b/recipes-security/selinux/libselinux_2.9.bb
similarity index 50%
rename from recipes-security/selinux/libselinux_2.8.bb
rename to recipes-security/selinux/libselinux_2.9.bb
index 7545967..f04bc4a 100644
--- a/recipes-security/selinux/libselinux_2.8.bb
+++ b/recipes-security/selinux/libselinux_2.9.bb
@@ -1,16 +1,14 @@
-include selinux_20180524.inc
-include ${BPN}.inc
+require selinux_20190315.inc
+require ${BPN}.inc
 
 LIC_FILES_CHKSUM = "file://LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
 
-SRC_URI[md5sum] = "56057e60192b21122c1aede8ff723ca2"
-SRC_URI[sha256sum] = "31db96ec7643ce10912b3c3f98506a08a9116dcfe151855fd349c3fda96187e1"
+SRC_URI[md5sum] = "bb449431b6ed55a0a0496dbc366d6e31"
+SRC_URI[sha256sum] = "1bccc8873e449587d9a2b2cf253de9b89a8291b9fbc7c59393ca9e5f5f4d2693"
 
 SRC_URI += "\
         file://libselinux-drop-Wno-unused-but-set-variable.patch \
         file://libselinux-make-O_CLOEXEC-optional.patch \
         file://libselinux-make-SOCK_CLOEXEC-optional.patch \
         file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
-        file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
-        file://0001-libselinux-Do-not-define-gettid-if-glibc-2.30-is-use.patch \
         "
-- 
2.17.1


