Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.3156.1599809668390787413
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Sep 2020 00:34:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rchvlfST;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: rehsack@gmail.com)
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3CAF238C087B
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2020 00:34:27 -0700 (PDT)
Received: by mail-ej1-f68.google.com with SMTP id p9so12458411ejf.6
        for <yocto@yoctoproject.org>; Fri, 11 Sep 2020 00:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id;
        bh=7IXMb58ADhzSni2GiyntuxjZXu3W80mzggBMJo9a/as=;
        b=rchvlfSTpnIXK76BK2QHDLhzT6eUEdkbFuqF3wkUSsQES0w39gb6ADep39xwxLMKOj
         14tPdYSAFKFuYMwPogRGnbxKI1mOfXncRczDtwJEaWVmUvEtRMmP4waRS7Mz7c1TBnGm
         iih7roTLkriskktiRvEUBc8RGce5DwuCly5Q7P5FliyNYmWi0ncnM6YPAoyhIbGgc/6q
         7jUvXdln1PWAUCfBZgLnCpwDx1vkF5/nVIZ1upIrtKeWkFG1+qs8D1tFW+IXwpVebMqb
         hCBLRDmICmG70QNEWwjI2205WP0GDMUva3VBj3mJAqQjpRYraraYpxghOjWk87tI2c0U
         plUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
        bh=7IXMb58ADhzSni2GiyntuxjZXu3W80mzggBMJo9a/as=;
        b=XHIc58afKX5XzMNe42tzq4Ky0ZK9fu0zR8xjET7NoTpzCug2ogi0XrhQaEQoEWcO7L
         xrgym+EIOJpmtjckC9CSU2D4GMFMooFuBDapP/Ebz3fLiP5/oNtJuylSwPu7IxMjYjp6
         /4wezFyKxGnY8tl5yFN1AVghbHm+yYYQ30emSZudPvgqr4j+F43K1rPLdI7n+qipvYDT
         O2zGPt8OBvvyFcwWdrVOQ2KgKJTeDiFKdrGEsgv3q3Cx47O38ZQ749cMzNDgqdngb5Cp
         krY8FPUdiikWPjJD3Hagu2YkQaPH3kVsJMRI+0TDfC3uI0ER6A/StuRa4Tptw6TCZNp0
         1F5w==
X-Gm-Message-State: AOAM533Cz7WAXvzhlVEgnv/0RTbExQepcF6A5B+9yrl7cYs2YARJKdyJ
	7tdYGKCNxUYotqpVaey8dG5QgePjNo0=
X-Google-Smtp-Source: ABdhPJwI1/VQFn6BKQKEfyEwQgx3TBhdKMT4cC6q6byPHbx/jmjeL5aHaBy5XnyNStpjgfkrXi7ykQ==
X-Received: by 2002:a17:906:ce3b:: with SMTP id sd27mr767758ejb.433.1599809665279;
        Fri, 11 Sep 2020 00:34:25 -0700 (PDT)
Received: from beaker.muppets.liwing.de (p5b25b0d4.dip0.t-ipconnect.de. [91.37.176.212])
        by smtp.gmail.com with ESMTPSA id g11sm967792edj.85.2020.09.11.00.34.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 00:34:24 -0700 (PDT)
Sender: Jens Rehsack <rehsack@gmail.com>
From: "Jens Rehsack" <rehsack@gmail.com>
To: yocto@yoctoproject.org
Cc: Jens Rehsack <sno@netbsd.org>
Subject: [meta-security][PATCH v2] ibmswtpm2: update to 1637
Date: Fri, 11 Sep 2020 09:34:08 +0200
Message-Id: <20200911073408.16407-1-sno@NetBSD.org>
X-Mailer: git-send-email 2.17.1

From: Jens Rehsack <sno@netbsd.org>

Update ibmswtpm2 from 1628 to 1637. Build 1637 Includes:
* Increase NV memory size to match PC Client RSA 3072 requirements
* Add and fix ACT support
* Update Visual Studio files to 2019.

Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 .../ibmswtpm2/files/fix-wrong-cast.patch      | 27 ++++++++++
 .../ibmswtpm2/files/remove_optimization.patch | 26 ----------
 .../ibmswtpm2/files/tune-makefile.patch       | 50 +++++++++++++++++++
 .../recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb  | 26 ----------
 .../recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb  | 39 +++++++++++++++
 5 files changed, 116 insertions(+), 52 deletions(-)
 create mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/files/fix-wrong-cast.patch
 delete mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/files/remove_optimization.patch
 create mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch
 delete mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb
 create mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb

diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/files/fix-wrong-cast.patch b/meta-tpm/recipes-tpm2/ibmswtpm2/files/fix-wrong-cast.patch
new file mode 100644
index 0000000..f2938e0
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/files/fix-wrong-cast.patch
@@ -0,0 +1,27 @@
+Fix strict aliasing issue of gcc10
+
+fixes:
+
+TpmFail.c: In function 'TpmLogFailure':
+TpmFail.c:217:23: error: dereferencing type-punned pointer will break strict-aliasing rules [-Werror=strict-aliasing]
+  217 |     s_failFunction = *(UINT32 *)&function; /* kgold */
+      |                       ^~~~~~~~~~~~~~~~~~~
+cc1: all warnings being treated as errors
+
+Upstream-Status: Submitted
+
+Signed-off-by: Jens Rehsack <sno@NetBSD.org>
+
+Index: src/TpmFail.c
+===================================================================
+--- src.orig/TpmFail.c	2020-09-10 15:43:57.085063875 +0200
++++ src/TpmFail.c	2020-09-10 15:48:35.563302634 +0200
+@@ -214,7 +214,7 @@
+     // On a 64-bit machine, this may truncate the address of the string
+     // of the function name where the error occurred.
+ #if FAIL_TRACE
+-    s_failFunction = *(UINT32 *)&function;	/* kgold */
++    memcpy(&s_failFunction, function, sizeof(uint32_t));	/* kgold */
+     s_failLine = line;
+ #else
+     s_failFunction = 0;
diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/files/remove_optimization.patch b/meta-tpm/recipes-tpm2/ibmswtpm2/files/remove_optimization.patch
deleted file mode 100644
index 2919e2e..0000000
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/files/remove_optimization.patch
+++ /dev/null
@@ -1,26 +0,0 @@
-Allow recipe to overide optimization.
-
-fixes:
-
-397 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O)
-|       |    ^~~~~~~
-| cc1: all warnings being treated as errors
-
-
-Upstream-Status: OE specific
-
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: src/makefile
-===================================================================
---- src.orig/makefile
-+++ src/makefile
-@@ -43,7 +43,7 @@ CC = /usr/bin/gcc
- CCFLAGS = -Wall  			\
- 	-Wmissing-declarations -Wmissing-prototypes -Wnested-externs \
- 	-Werror -Wsign-compare \
--	 -c -ggdb -O0 			\
-+	 -c -ggdb -O 			\
- 	-DTPM_POSIX			\
- 	-D_POSIX_			\
- 	-DTPM_NUVOTON
diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch b/meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch
new file mode 100644
index 0000000..eebddb9
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch
@@ -0,0 +1,50 @@
+1) Allow recipe to overide optimization.
+
+fixes:
+
+397 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O)
+|       |    ^~~~~~~
+| cc1: all warnings being treated as errors
+
+2) Allow recipe to override OE related compile-/link-flags
+
+fixes:
+
+ERROR: QA Issue: File /usr/bin/tpm_server in package ibmswtpm2 doesn't have GNU_HASH (didn't pass LDFLAGS?) [ldflags]
+
+Upstream-Status: OE specific
+
+Signed-off-by: Jens Rehsack <sno@NetBSD.org>
+
+Index: src/makefile
+===================================================================
+--- src.orig/makefile
++++ src/makefile
+@@ -38,12 +38,10 @@
+ #################################################################################
+ 
+ 
+-CC = /usr/bin/gcc
+-
+ CCFLAGS = -Wall  			\
+ 	-Wmissing-declarations -Wmissing-prototypes -Wnested-externs \
+ 	-Werror -Wsign-compare \
+-	 -c -ggdb -O0 			\
++	 -c -ggdb -O 			\
+ 	-DTPM_POSIX			\
+ 	-D_POSIX_			\
+ 	-DTPM_NUVOTON
+@@ -79,11 +77,11 @@
+ .PRECIOUS:	%.o
+ 
+ tpm_server:	$(OBJFILES)
+-		$(CC) $(OBJFILES) $(LNFLAGS) -o tpm_server
++		$(CCLD) $(OBJFILES) $(LDFLAGS) $(LNFLAGS) -o tpm_server
+ 
+ clean:		
+ 		rm -f *.o tpm_server *~
+ 
+ %.o:		%.c
+-		$(CC) $(CCFLAGS) $< -o $@
++		$(CC) $(CCFLAGS) $(CFLAGS) $< -o $@
+ 
diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb
deleted file mode 100644
index 3373a30..0000000
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb
+++ /dev/null
@@ -1,26 +0,0 @@
-SUMMARY = "IBM's Software TPM 2.0"
-LICENSE = "BSD"
-SECTION = "securty/tpm"
-LIC_FILES_CHKSUM = "file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
-
-DEPENDS = "openssl"
-
-SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
-           file://remove_optimization.patch \
-           "
-SRC_URI[md5sum] = "bfd3eca2411915f24de628b9ec36f259"
-SRC_URI[sha256sum] = "a8e874e7a1ae13a1290d7679d846281f72d0eb6a5e4cfbafca5297dbf4e29ea3"
-SRC_URI[sha1sum] = "7c8241a4e97a801eace9f0eea8cdda7c58114f7f"
-SRC_URI[sha384sum] = "eec25cc8ba0e3cb27d41ba4fa4c71d8158699953ccb61bb6d440236dcbd8f52b6954eaae9d640a713186e0b99311fd91"
-SRC_URI[sha512sum] = "ab47caa4406ba57c0afc6fadae304fc9ef5e3e125be0f2fb1955a419cf93cd5e9176e103f0b566825abc16cca00b795f98d2b407f0a2bf7b141ef4b025d907d0"
-
-S = "${WORKDIR}/src"
-
-do_compile () {
-   make CC='${CC}'
-}
-
-do_install () {
-   install -d ${D}/${bindir}
-   install -m 0755 tpm_server  ${D}/${bindir}
-}
diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb
new file mode 100644
index 0000000..32afd37
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb
@@ -0,0 +1,39 @@
+SUMMARY = "IBM's Software TPM 2.0"
+DESCRIPTION = "The software TPM 2.0 is targeted toward application development, \
+education, and virtualization. \
+\
+The intent is that an application can be developed using the software TPM. \
+The application should then run using a hardware TPM without changes. \
+Advantages of this approach: \
+* In contrast to a hardware TPM, it runs on many platforms and it's generally faster. \
+* Application software errors are easily reversed by simply removing the TPM state and starting over. \
+* Difficult crypto errors are quickly debugged by looking inside the TPM."
+HOMEPAGE = "http://ibmswtpm.sourceforge.net/ibmswtpm2.html"
+LICENSE = "BSD"
+SECTION = "securty/tpm"
+LIC_FILES_CHKSUM = "file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
+
+DEPENDS = "openssl"
+
+SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
+           file://tune-makefile.patch \
+           file://fix-wrong-cast.patch \
+           "
+SRC_URI[md5sum] = "43b217d87056e9155633925eb6ef749c"
+SRC_URI[sha256sum] = "dd3a4c3f7724243bc9ebcd5c39bbf87b82c696d1c1241cb8e5883534f6e2e327"
+SRC_URI[sha1sum] = "ab4b94079e57a86996991e8a2b749ce063e4ad3e"
+SRC_URI[sha384sum] = "bbef16a934853ce78cba7ddc766aa9d7ef3cde3430a322b1be772bf3ad4bd6d413ae9c4de21bc1a4879d17dfe2aadc1d"
+SRC_URI[sha512sum] = "007aa415cccf19a2bcf789c426727dc4032dcb04cc9d11eedc231d2add708c1134d3d5ee5cfbe7de68307c95fff7a30bd306fbd8d53c198a5ef348440440a6ed"
+
+S = "${WORKDIR}/src"
+
+CFLAGS += "-Wno-error=maybe-uninitialized"
+
+do_compile () {
+   make CC='${CC}'
+}
+
+do_install () {
+   install -d ${D}/${bindir}
+   install -m 0755 tpm_server  ${D}/${bindir}
+}
-- 
2.17.1

