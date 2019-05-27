Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E4CAE00D44; Sun, 26 May 2019 21:56:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 493FAE00C36
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:47 -0700 (PDT)
Received: by mail-pf1-f193.google.com with SMTP id y11so3991638pfm.13
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=CUfA5XuzjWQqKahevMBnZQZAsu35IjrZysQ1EgtlT3Q=;
	b=jRMpFYk9HGHLP2ZFKFSHc3rq6mcUbcMVSKGp+WlXU/hH6Sek4t5ZZ3jmHXY52HY6/7
	JfK+y3Cnr7WpFA534sjdMwtHnYtVbVBaqVfS9O03IptkHre6V/Al6S/AR8JrQD798IKi
	YK4GhtFsX3vixYAoW6T5Ngd1MLUK2WZGtBSBtuQYbnxQoIyv3Lq6trLkEk3Ru7Qid/a4
	qe1CIquPG/nKXvf6AXde5U0MkD/P2MHml4CjffU2ulFb3KOj7nlw/NOTXI6FRCe7CbYj
	ZvlAheZKlxgDC5yvip0wzAnJ4osGm+fHzEYGSbjx0DIy/Hdl5DQQaYOVTJDjdcgL4Mrk
	NuNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=CUfA5XuzjWQqKahevMBnZQZAsu35IjrZysQ1EgtlT3Q=;
	b=lpSW52/lnGKCjNs7Az9f6XD1LL9FzANWuiIonTMwVSvgXJKA6TTcQmnehw1uhW3lar
	57/1VtcskcL/jnbk+cM984neTWthAD5lJh8hN8754gP0wATKVd705zrwOkSWZDgScuNX
	Jgo9RfqaoRx2xGWQ4I4ynCmaR988L8IVg5A87gN21IgmVF13UJ9zc21FcrpAi/8KuQ9R
	ZinEygArFH7p8i6BaTGWWBseOHw9vq+cxcZDdba3HM8shD9N0dUOMayHx6audEeBvvw4
	mKWJ/8IxL//ZtiCB3U63YroVVP/3HfTdVeTyahg+/Ci1Mvsmo3V5KY8p9PBEFDMhGC7V
	ypcg==
X-Gm-Message-State: APjAAAVToYxn5s7KHVs3WcFD+7ZcpSSy/FgnbRoZhE9jpV1YqPiZdnC2
	3Gp6QrNwnx8xOMSije00Y1VnWVKM
X-Google-Smtp-Source: APXvYqxSZuqb3NeP7Oz/7CI5dN6k91nGxo0cwaq4UVC+jlPmm7VXZb8RuEU9nt3rASV57t9MaGrUJA==
X-Received: by 2002:a63:e645:: with SMTP id p5mr123290622pgj.4.1558933006652; 
	Sun, 26 May 2019 21:56:46 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x24sm8648072pjq.27.2019.05.26.21.56.45 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 May 2019 21:56:46 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 26 May 2019 21:56:31 -0700
Message-Id: <20190527045641.18884-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527045641.18884-1-akuster808@gmail.com>
References: <20190527045641.18884-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 04/14] ima-evm-utils: cleanup and update to tip
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
X-List-Received-Date: Mon, 27 May 2019 04:56:50 -0000

update to tip
backported patches to fix build issues.
fix native support

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../ima-evm-utils/ima-evm-utils.inc           | 19 ------
 ...link-to-libcrypto-instead-of-OpenSSL.patch | 65 +++++++++++++++++++
 ...ls-replace-INCLUDES-with-AM_CPPFLAGS.patch | 43 ++++++++++++
 ...clude-hash-info.gen-into-distributio.patch | 31 +++++++++
 ...ma-evm-utils-update-.gitignore-files.patch | 34 ++++++++++
 .../ima-evm-utils/ima-evm-utils_git.bb        | 30 ++++++++-
 6 files changed, 200 insertions(+), 22 deletions(-)
 delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils.inc
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-ima-evm-utils-link-to-libcrypto-instead-of-OpenSSL.patch
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0002-ima-evm-utils-replace-INCLUDES-with-AM_CPPFLAGS.patch
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0003-ima-evm-utils-include-hash-info.gen-into-distributio.patch
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0004-ima-evm-utils-update-.gitignore-files.patch

diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils.inc b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils.inc
deleted file mode 100644
index 72a13f7..0000000
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils.inc
+++ /dev/null
@@ -1,19 +0,0 @@
-DESCRIPTION = "IMA/EVM control utility"
-LICENSE = "GPL-2.0-with-OpenSSL-exception"
-LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
-
-DEPENDS = " \
-openssl \
-attr \
-keyutils \
-pkgconfig \
-"
-
-# blkid is called by evmctl when creating evm checksums.
-# This is less useful when signing files on the build host,
-# so disable it when compiling on the host.
-RDEPENDS_${PN}_append_class-target = " util-linux-blkid"
-
-inherit autotools
-
-BBCLASSEXTEND = "native"
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-ima-evm-utils-link-to-libcrypto-instead-of-OpenSSL.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-ima-evm-utils-link-to-libcrypto-instead-of-OpenSSL.patch
new file mode 100644
index 0000000..5ccb73d
--- /dev/null
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-ima-evm-utils-link-to-libcrypto-instead-of-OpenSSL.patch
@@ -0,0 +1,65 @@
+From 4feaf9b61f93e4043eca26b4ec9f9f68d0cf5e68 Mon Sep 17 00:00:00 2001
+From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
+Date: Wed, 6 Mar 2019 01:08:43 +0300
+Subject: [PATCH 1/4] ima-evm-utils: link to libcrypto instead of OpenSSL
+
+There is no need to link to full libssl. evmctl uses functions from
+libcrypto, so let's link only against that library.
+
+Signed-off-by: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
+---
+ configure.ac    | 4 +---
+ src/Makefile.am | 9 ++++-----
+ 2 files changed, 5 insertions(+), 8 deletions(-)
+
+diff --git a/configure.ac b/configure.ac
+index 60f3684..32e8d85 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -24,9 +24,7 @@ LT_INIT
+ # Checks for header files.
+ AC_HEADER_STDC
+ 
+-PKG_CHECK_MODULES(OPENSSL, [ openssl >= 0.9.8 ])
+-AC_SUBST(OPENSSL_CFLAGS)
+-AC_SUBST(OPENSSL_LIBS)
++PKG_CHECK_MODULES(LIBCRYPTO, [libcrypto >= 0.9.8 ])
+ AC_SUBST(KERNEL_HEADERS)
+ AC_CHECK_HEADER(unistd.h)
+ AC_CHECK_HEADERS(openssl/conf.h)
+diff --git a/src/Makefile.am b/src/Makefile.am
+index d74fc6f..b81281a 100644
+--- a/src/Makefile.am
++++ b/src/Makefile.am
+@@ -1,11 +1,11 @@
+ lib_LTLIBRARIES = libimaevm.la
+ 
+ libimaevm_la_SOURCES = libimaevm.c
+-libimaevm_la_CPPFLAGS = $(OPENSSL_CFLAGS)
++libimaevm_la_CPPFLAGS = $(LIBCRYPTO_CFLAGS)
+ # current[:revision[:age]]
+ # result: [current-age].age.revision
+ libimaevm_la_LDFLAGS = -version-info 0:0:0
+-libimaevm_la_LIBADD =  $(OPENSSL_LIBS)
++libimaevm_la_LIBADD =  $(LIBCRYPTO_LIBS)
+ 
+ include_HEADERS = imaevm.h
+ 
+@@ -17,12 +17,11 @@ hash_info.h: Makefile
+ bin_PROGRAMS = evmctl
+ 
+ evmctl_SOURCES = evmctl.c
+-evmctl_CPPFLAGS = $(OPENSSL_CFLAGS)
++evmctl_CPPFLAGS = $(LIBCRYPTO_CFLAGS)
+ evmctl_LDFLAGS = $(LDFLAGS_READLINE)
+-evmctl_LDADD =  $(OPENSSL_LIBS) -lkeyutils libimaevm.la
++evmctl_LDADD =  $(LIBCRYPTO_LIBS) -lkeyutils libimaevm.la
+ 
+ INCLUDES = -I$(top_srcdir) -include config.h
+ 
+ CLEANFILES = hash_info.h
+ DISTCLEANFILES = @DISTCLEANFILES@
+-
+-- 
+2.17.1
+
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0002-ima-evm-utils-replace-INCLUDES-with-AM_CPPFLAGS.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0002-ima-evm-utils-replace-INCLUDES-with-AM_CPPFLAGS.patch
new file mode 100644
index 0000000..8237274
--- /dev/null
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0002-ima-evm-utils-replace-INCLUDES-with-AM_CPPFLAGS.patch
@@ -0,0 +1,43 @@
+From 5bb10f3da420f4c46e44423276a9da0d4bc1b691 Mon Sep 17 00:00:00 2001
+From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
+Date: Wed, 6 Mar 2019 01:17:12 +0300
+Subject: [PATCH 2/4] ima-evm-utils: replace INCLUDES with AM_CPPFLAGS
+
+Replace INCLUDES variable with AM_CPPFLAGS to stop Automake from warning
+about deprecated variable usage.
+
+Signed-off-by: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
+---
+ src/Makefile.am | 6 +++---
+ 1 file changed, 3 insertions(+), 3 deletions(-)
+
+diff --git a/src/Makefile.am b/src/Makefile.am
+index b81281a..164e7e4 100644
+--- a/src/Makefile.am
++++ b/src/Makefile.am
+@@ -1,7 +1,7 @@
+ lib_LTLIBRARIES = libimaevm.la
+ 
+ libimaevm_la_SOURCES = libimaevm.c
+-libimaevm_la_CPPFLAGS = $(LIBCRYPTO_CFLAGS)
++libimaevm_la_CPPFLAGS = $(AM_CPPFLAGS) $(LIBCRYPTO_CFLAGS)
+ # current[:revision[:age]]
+ # result: [current-age].age.revision
+ libimaevm_la_LDFLAGS = -version-info 0:0:0
+@@ -17,11 +17,11 @@ hash_info.h: Makefile
+ bin_PROGRAMS = evmctl
+ 
+ evmctl_SOURCES = evmctl.c
+-evmctl_CPPFLAGS = $(LIBCRYPTO_CFLAGS)
++evmctl_CPPFLAGS = $(AM_CPPFLAGS) $(LIBCRYPTO_CFLAGS)
+ evmctl_LDFLAGS = $(LDFLAGS_READLINE)
+ evmctl_LDADD =  $(LIBCRYPTO_LIBS) -lkeyutils libimaevm.la
+ 
+-INCLUDES = -I$(top_srcdir) -include config.h
++AM_CPPFLAGS = -I$(top_srcdir) -include config.h
+ 
+ CLEANFILES = hash_info.h
+ DISTCLEANFILES = @DISTCLEANFILES@
+-- 
+2.17.1
+
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0003-ima-evm-utils-include-hash-info.gen-into-distributio.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0003-ima-evm-utils-include-hash-info.gen-into-distributio.patch
new file mode 100644
index 0000000..3d250d2
--- /dev/null
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0003-ima-evm-utils-include-hash-info.gen-into-distributio.patch
@@ -0,0 +1,31 @@
+From c587ec307a6259a990bfab727cea7db28dba4c23 Mon Sep 17 00:00:00 2001
+From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
+Date: Wed, 6 Mar 2019 01:22:30 +0300
+Subject: [PATCH 3/4] ima-evm-utils: include hash-info.gen into distribution
+
+Include hash-info.gen into tarball and call it from the sourcedir to fix
+out-of-tree build (and thus 'make distcheck').
+
+Signed-off-by: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
+---
+ src/Makefile.am | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/src/Makefile.am b/src/Makefile.am
+index 164e7e4..9c037e2 100644
+--- a/src/Makefile.am
++++ b/src/Makefile.am
+@@ -11,8 +11,9 @@ include_HEADERS = imaevm.h
+ 
+ nodist_libimaevm_la_SOURCES = hash_info.h
+ BUILT_SOURCES = hash_info.h
++EXTRA_DIST = hash_info.gen
+ hash_info.h: Makefile
+-	./hash_info.gen $(KERNEL_HEADERS) >$@
++	$(srcdir)/hash_info.gen $(KERNEL_HEADERS) >$@
+ 
+ bin_PROGRAMS = evmctl
+ 
+-- 
+2.17.1
+
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0004-ima-evm-utils-update-.gitignore-files.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0004-ima-evm-utils-update-.gitignore-files.patch
new file mode 100644
index 0000000..4ada1a2
--- /dev/null
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0004-ima-evm-utils-update-.gitignore-files.patch
@@ -0,0 +1,34 @@
+From b9f327c5c513ccea9cb56d4bbd50c1f66d629099 Mon Sep 17 00:00:00 2001
+From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
+Date: Wed, 6 Mar 2019 01:24:04 +0300
+Subject: [PATCH 4/4] ima-evm-utils: update .gitignore files
+
+Signed-off-by: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
+---
+ .gitignore     | 1 +
+ src/.gitignore | 1 +
+ 2 files changed, 2 insertions(+)
+ create mode 100644 src/.gitignore
+
+diff --git a/.gitignore b/.gitignore
+index ca7a06e..cb82166 100644
+--- a/.gitignore
++++ b/.gitignore
+@@ -45,6 +45,7 @@ cscope.*
+ ncscope.*
+ 
+ # Generated documentation
++*.1
+ *.8
+ *.5
+ manpage.links
+diff --git a/src/.gitignore b/src/.gitignore
+new file mode 100644
+index 0000000..38e8e3c
+--- /dev/null
++++ b/src/.gitignore
+@@ -0,0 +1 @@
++hash_info.h
+-- 
+2.17.1
+
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
index 8a9999f..929d853 100644
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
@@ -1,9 +1,14 @@
-require ima-evm-utils.inc
+DESCRIPTION = "IMA/EVM control utility"
+LICENSE = "GPL-2.0-with-OpenSSL-exception"
+LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
+
+DEPENDS += "openssl attr keyutils"
+
+DEPENDS_class-native += "openssl-native keyutils-native"
 
 PV = "1.0+git${SRCPV}"
-SRCREV = "3e2a67bdb0673581a97506262e62db098efef6d7"
+SRCREV = "0267fa16990fd0ddcc89984a8e55b27d43e80167"
 SRC_URI = "git://git.code.sf.net/p/linux-ima/ima-evm-utils"
-S = "${WORKDIR}/git"
 
 # Documentation depends on asciidoc, which we do not have, so
 # do not build documentation.
@@ -15,3 +20,22 @@ SRC_URI += "file://evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch"
 
 # Required for xargs with more than one path as argument (better for performance).
 SRC_URI += "file://command-line-apply-operation-to-all-paths.patch"
+
+SRC_URI += "\
+    file://0001-ima-evm-utils-link-to-libcrypto-instead-of-OpenSSL.patch \
+    file://0002-ima-evm-utils-replace-INCLUDES-with-AM_CPPFLAGS.patch \
+    file://0003-ima-evm-utils-include-hash-info.gen-into-distributio.patch \
+    file://0004-ima-evm-utils-update-.gitignore-files.patch \
+"
+S = "${WORKDIR}/git"
+
+inherit pkgconfig autotools
+
+EXTRA_OECONF_append_class-target = " --with-kernel-headers=${STAGING_KERNEL_BUILDDIR}"
+
+# blkid is called by evmctl when creating evm checksums.
+# This is less useful when signing files on the build host,
+# so disable it when compiling on the host.
+RDEPENDS_${PN}_append_class-target = " util-linux-blkid libcrypto attr libattr keyutils"
+
+BBCLASSEXTEND = "native nativesdk"
-- 
2.17.1


