Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF7B3E00DA3; Wed, 31 Jul 2019 13:24:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
	[209.85.208.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35390E00D75
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 13:24:55 -0700 (PDT)
Received: by mail-lj1-f195.google.com with SMTP id v18so66910886ljh.6
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 13:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=eQsCk+JTkfwfl46RFP5Uj8JYYxCLDVX28w/8RuoYWrY=;
	b=eB1WCUfqIGH4ZwqYY2YKj+KMujvpmu++CP8RwgNIsnPYGkUD93DA59UoNVJpLJqB9q
	FnOviTAIc6+CmCXvg3erQ3F5KWPHeYzsFymuXEkkk3mP55HbncClsbOoqZ0LNrm2nUHz
	Gb35ChDkOCdlJQ3eR01j5U5z8tlPhYrjqXZ4ywnlplpSoabIVkOpOMZrkObNMrWP330p
	DNc6MeFsOBg+WEaTWsRfxoAlkGExUH9WtztZ5M9ZjqTo0a2KmgjcHvSiKR2nf0OvR3Du
	+6MH4XYXwmYx634OZ1J+zVUZTgeZxUr9kzTDiPMsbUPQmwFK9Y+LoVbPoZMZUXd0yawE
	m5LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=eQsCk+JTkfwfl46RFP5Uj8JYYxCLDVX28w/8RuoYWrY=;
	b=ZVJVUnG0xyGH0Zjnk6m8sdBjwsyyiF7MWvk4Einn5nKhJgbSVUHwaqSe4QFLxM3Wlh
	1ZTRTCd1bCs/j1U4AthnCc8rHaH42IO3jVKy0D301LdRU9FZwrVIqJbU2Tb7OMTz7HvK
	JqOOnqP2sWUhQc9z4ll0tKJYIcFtBe7KLn/FOOomE4V+H2l9vLOxI9U6sqikAJAGAMUY
	nRzD0hP2cWSYrjjYn5lJiw1LTS1JQ087/g3bB7SJUaOsEa0AWd1yTpicMajCMpJtSTSS
	46aSFVaDF8cUXWh66qQ3/A34+Y8Ioj0kdSJfW3CWVF3IWLipekj9h5xJiP+Yz1R6FD/Q
	N1Iw==
X-Gm-Message-State: APjAAAUaNp7kFTR55Nia0P8YMuFnQEmOw3lGumAOWFva81Hrk/6bO+A6
	gI3f0umttfkpI9SrWZxf/E448PRiHpc=
X-Google-Smtp-Source: APXvYqyu9cp4BbwfX0IZVEDpI3x9nYU0zNB62W54diutcMnMDIenCQHs64EWyXUSOnhly32x38Si9g==
X-Received: by 2002:a2e:970d:: with SMTP id r13mr65611372lji.126.1564604693560;
	Wed, 31 Jul 2019 13:24:53 -0700 (PDT)
Received: from localhost.localdomain ([94.25.228.150])
	by smtp.gmail.com with ESMTPSA id
	y4sm11899138lfc.56.2019.07.31.13.24.52 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 31 Jul 2019 13:24:52 -0700 (PDT)
From: dbaryshkov@gmail.com
To: yocto@yoctoproject.org
Date: Wed, 31 Jul 2019 23:24:51 +0300
Message-Id: <20190731202451.845-1-dbaryshkov@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [meta-integrity][PATCH] ima-evm-utils: bump to release 1.2.1
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
X-List-Received-Date: Wed, 31 Jul 2019 20:24:58 -0000
Content-Transfer-Encoding: 8bit

From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
---
 ...link-to-libcrypto-instead-of-OpenSSL.patch | 65 -------------------
 ...ls-replace-INCLUDES-with-AM_CPPFLAGS.patch | 43 ------------
 ...clude-hash-info.gen-into-distributio.patch | 31 ---------
 ...ma-evm-utils-update-.gitignore-files.patch | 34 ----------
 .../ima-evm-utils/ima-evm-utils_git.bb        | 12 +---
 5 files changed, 3 insertions(+), 182 deletions(-)
 delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-ima-evm-utils-link-to-libcrypto-instead-of-OpenSSL.patch
 delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0002-ima-evm-utils-replace-INCLUDES-with-AM_CPPFLAGS.patch
 delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0003-ima-evm-utils-include-hash-info.gen-into-distributio.patch
 delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0004-ima-evm-utils-update-.gitignore-files.patch

diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-ima-evm-utils-link-to-libcrypto-instead-of-OpenSSL.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-ima-evm-utils-link-to-libcrypto-instead-of-OpenSSL.patch
deleted file mode 100644
index 5ccb73d9b6e6..000000000000
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-ima-evm-utils-link-to-libcrypto-instead-of-OpenSSL.patch
+++ /dev/null
@@ -1,65 +0,0 @@
-From 4feaf9b61f93e4043eca26b4ec9f9f68d0cf5e68 Mon Sep 17 00:00:00 2001
-From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
-Date: Wed, 6 Mar 2019 01:08:43 +0300
-Subject: [PATCH 1/4] ima-evm-utils: link to libcrypto instead of OpenSSL
-
-There is no need to link to full libssl. evmctl uses functions from
-libcrypto, so let's link only against that library.
-
-Signed-off-by: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
----
- configure.ac    | 4 +---
- src/Makefile.am | 9 ++++-----
- 2 files changed, 5 insertions(+), 8 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index 60f3684..32e8d85 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -24,9 +24,7 @@ LT_INIT
- # Checks for header files.
- AC_HEADER_STDC
- 
--PKG_CHECK_MODULES(OPENSSL, [ openssl >= 0.9.8 ])
--AC_SUBST(OPENSSL_CFLAGS)
--AC_SUBST(OPENSSL_LIBS)
-+PKG_CHECK_MODULES(LIBCRYPTO, [libcrypto >= 0.9.8 ])
- AC_SUBST(KERNEL_HEADERS)
- AC_CHECK_HEADER(unistd.h)
- AC_CHECK_HEADERS(openssl/conf.h)
-diff --git a/src/Makefile.am b/src/Makefile.am
-index d74fc6f..b81281a 100644
---- a/src/Makefile.am
-+++ b/src/Makefile.am
-@@ -1,11 +1,11 @@
- lib_LTLIBRARIES = libimaevm.la
- 
- libimaevm_la_SOURCES = libimaevm.c
--libimaevm_la_CPPFLAGS = $(OPENSSL_CFLAGS)
-+libimaevm_la_CPPFLAGS = $(LIBCRYPTO_CFLAGS)
- # current[:revision[:age]]
- # result: [current-age].age.revision
- libimaevm_la_LDFLAGS = -version-info 0:0:0
--libimaevm_la_LIBADD =  $(OPENSSL_LIBS)
-+libimaevm_la_LIBADD =  $(LIBCRYPTO_LIBS)
- 
- include_HEADERS = imaevm.h
- 
-@@ -17,12 +17,11 @@ hash_info.h: Makefile
- bin_PROGRAMS = evmctl
- 
- evmctl_SOURCES = evmctl.c
--evmctl_CPPFLAGS = $(OPENSSL_CFLAGS)
-+evmctl_CPPFLAGS = $(LIBCRYPTO_CFLAGS)
- evmctl_LDFLAGS = $(LDFLAGS_READLINE)
--evmctl_LDADD =  $(OPENSSL_LIBS) -lkeyutils libimaevm.la
-+evmctl_LDADD =  $(LIBCRYPTO_LIBS) -lkeyutils libimaevm.la
- 
- INCLUDES = -I$(top_srcdir) -include config.h
- 
- CLEANFILES = hash_info.h
- DISTCLEANFILES = @DISTCLEANFILES@
--
--- 
-2.17.1
-
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0002-ima-evm-utils-replace-INCLUDES-with-AM_CPPFLAGS.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0002-ima-evm-utils-replace-INCLUDES-with-AM_CPPFLAGS.patch
deleted file mode 100644
index 8237274ca8b6..000000000000
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0002-ima-evm-utils-replace-INCLUDES-with-AM_CPPFLAGS.patch
+++ /dev/null
@@ -1,43 +0,0 @@
-From 5bb10f3da420f4c46e44423276a9da0d4bc1b691 Mon Sep 17 00:00:00 2001
-From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
-Date: Wed, 6 Mar 2019 01:17:12 +0300
-Subject: [PATCH 2/4] ima-evm-utils: replace INCLUDES with AM_CPPFLAGS
-
-Replace INCLUDES variable with AM_CPPFLAGS to stop Automake from warning
-about deprecated variable usage.
-
-Signed-off-by: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
----
- src/Makefile.am | 6 +++---
- 1 file changed, 3 insertions(+), 3 deletions(-)
-
-diff --git a/src/Makefile.am b/src/Makefile.am
-index b81281a..164e7e4 100644
---- a/src/Makefile.am
-+++ b/src/Makefile.am
-@@ -1,7 +1,7 @@
- lib_LTLIBRARIES = libimaevm.la
- 
- libimaevm_la_SOURCES = libimaevm.c
--libimaevm_la_CPPFLAGS = $(LIBCRYPTO_CFLAGS)
-+libimaevm_la_CPPFLAGS = $(AM_CPPFLAGS) $(LIBCRYPTO_CFLAGS)
- # current[:revision[:age]]
- # result: [current-age].age.revision
- libimaevm_la_LDFLAGS = -version-info 0:0:0
-@@ -17,11 +17,11 @@ hash_info.h: Makefile
- bin_PROGRAMS = evmctl
- 
- evmctl_SOURCES = evmctl.c
--evmctl_CPPFLAGS = $(LIBCRYPTO_CFLAGS)
-+evmctl_CPPFLAGS = $(AM_CPPFLAGS) $(LIBCRYPTO_CFLAGS)
- evmctl_LDFLAGS = $(LDFLAGS_READLINE)
- evmctl_LDADD =  $(LIBCRYPTO_LIBS) -lkeyutils libimaevm.la
- 
--INCLUDES = -I$(top_srcdir) -include config.h
-+AM_CPPFLAGS = -I$(top_srcdir) -include config.h
- 
- CLEANFILES = hash_info.h
- DISTCLEANFILES = @DISTCLEANFILES@
--- 
-2.17.1
-
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0003-ima-evm-utils-include-hash-info.gen-into-distributio.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0003-ima-evm-utils-include-hash-info.gen-into-distributio.patch
deleted file mode 100644
index 3d250d2fca5d..000000000000
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0003-ima-evm-utils-include-hash-info.gen-into-distributio.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-From c587ec307a6259a990bfab727cea7db28dba4c23 Mon Sep 17 00:00:00 2001
-From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
-Date: Wed, 6 Mar 2019 01:22:30 +0300
-Subject: [PATCH 3/4] ima-evm-utils: include hash-info.gen into distribution
-
-Include hash-info.gen into tarball and call it from the sourcedir to fix
-out-of-tree build (and thus 'make distcheck').
-
-Signed-off-by: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
----
- src/Makefile.am | 3 ++-
- 1 file changed, 2 insertions(+), 1 deletion(-)
-
-diff --git a/src/Makefile.am b/src/Makefile.am
-index 164e7e4..9c037e2 100644
---- a/src/Makefile.am
-+++ b/src/Makefile.am
-@@ -11,8 +11,9 @@ include_HEADERS = imaevm.h
- 
- nodist_libimaevm_la_SOURCES = hash_info.h
- BUILT_SOURCES = hash_info.h
-+EXTRA_DIST = hash_info.gen
- hash_info.h: Makefile
--	./hash_info.gen $(KERNEL_HEADERS) >$@
-+	$(srcdir)/hash_info.gen $(KERNEL_HEADERS) >$@
- 
- bin_PROGRAMS = evmctl
- 
--- 
-2.17.1
-
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0004-ima-evm-utils-update-.gitignore-files.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0004-ima-evm-utils-update-.gitignore-files.patch
deleted file mode 100644
index 4ada1a2710ca..000000000000
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0004-ima-evm-utils-update-.gitignore-files.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From b9f327c5c513ccea9cb56d4bbd50c1f66d629099 Mon Sep 17 00:00:00 2001
-From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
-Date: Wed, 6 Mar 2019 01:24:04 +0300
-Subject: [PATCH 4/4] ima-evm-utils: update .gitignore files
-
-Signed-off-by: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
----
- .gitignore     | 1 +
- src/.gitignore | 1 +
- 2 files changed, 2 insertions(+)
- create mode 100644 src/.gitignore
-
-diff --git a/.gitignore b/.gitignore
-index ca7a06e..cb82166 100644
---- a/.gitignore
-+++ b/.gitignore
-@@ -45,6 +45,7 @@ cscope.*
- ncscope.*
- 
- # Generated documentation
-+*.1
- *.8
- *.5
- manpage.links
-diff --git a/src/.gitignore b/src/.gitignore
-new file mode 100644
-index 0000000..38e8e3c
---- /dev/null
-+++ b/src/.gitignore
-@@ -0,0 +1 @@
-+hash_info.h
--- 
-2.17.1
-
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
index 6d4f008df334..92c24c902d88 100644
--- a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
@@ -6,9 +6,9 @@ DEPENDS += "openssl attr keyutils"
 
 DEPENDS_class-native += "openssl-native keyutils-native"
 
-PV = "1.1+git${SRCPV}"
-SRCREV = "782224f33cd711050cbf6146a12122cd73f9136b"
-SRC_URI = "git://git.code.sf.net/p/linux-ima/ima-evm-utils"
+PV = "1.2.1+git${SRCPV}"
+SRCREV = "3eab1f93b634249c1720f65fcb495b1996f0256e"
+SRC_URI = "git://git.code.sf.net/p/linux-ima/ima-evm-utils;branch=ima-evm-utils-1.2.y"
 
 # Documentation depends on asciidoc, which we do not have, so
 # do not build documentation.
@@ -21,12 +21,6 @@ SRC_URI += "file://evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch"
 # Required for xargs with more than one path as argument (better for performance).
 SRC_URI += "file://command-line-apply-operation-to-all-paths.patch"
 
-SRC_URI += "\
-    file://0001-ima-evm-utils-link-to-libcrypto-instead-of-OpenSSL.patch \
-    file://0002-ima-evm-utils-replace-INCLUDES-with-AM_CPPFLAGS.patch \
-    file://0003-ima-evm-utils-include-hash-info.gen-into-distributio.patch \
-    file://0004-ima-evm-utils-update-.gitignore-files.patch \
-"
 S = "${WORKDIR}/git"
 
 inherit pkgconfig autotools
-- 
2.20.1


