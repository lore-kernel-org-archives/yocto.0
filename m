Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.25560.1599753953721754747
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 09:05:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nCk6lwDu;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: rehsack@gmail.com)
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D06D738C11E0
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2020 09:05:52 -0700 (PDT)
Received: by mail-ej1-f66.google.com with SMTP id i22so9516783eja.5
        for <yocto@yoctoproject.org>; Thu, 10 Sep 2020 09:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id;
        bh=YrPBWxy+ZJY7vhM5dwBxvuFnPQcbcSTYJcZtzopP0cg=;
        b=nCk6lwDup3HbjPYjK6Ssbng+1CxaFyBIx7Bxn0vGGlaJR05luZGsCxuCnvFs3c+pu9
         eVl0I2lIbeFLX7oMp+j6Fko0dwns/qxbOykwPstHgypnnL7AQm/5oJNqVQO9ldOrdMUB
         pTCr1kr75S6SIJmMJUErJI0txtQ0s/MaVm73K/yYDNcTAblE9nX+IEK+CnJ0c+lZY6RT
         NO1CSylwVxPCSvz3uZSn6P+ldaFyH1t5MCeOwUhGB+COrSVgn8UBf8ulh/rXy+D4/CLW
         JvfyEISZsqUY25nQSXH7NlDDEIfeoZAOV09l2+y9XqotIJSoehbAn92RNIKtQBslGNOA
         QArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
        bh=YrPBWxy+ZJY7vhM5dwBxvuFnPQcbcSTYJcZtzopP0cg=;
        b=syKLI76TeseoKGBgGEktBo0dmbHueHOIrN3pbYA52YvYBOILifEw4yCszGI4XFrhJt
         go28nFmvfVgVpENEozCWH+MnFtNCJ7QSGvvpQmviE+Nhz3rG2YlUeI+p6B4e9Q/T78Zh
         M9hIYw0NlK8NzT3gCistQ6eCqHX15BDZ97sL5eJUujuvdSpWGAWUMpNEesU/wsfGB0Qe
         BlcnLuAbnzTJ2yjhkUjjKdqlx2TXVn6EoOcHmh7Yb5eklmAGEKvh8D3FeChpgcFCmVn6
         NeMaE4lHnxzfpaj1aSuhQK8IlVKsIqChXKajvrp6TnsB+huaXgsOUqLNwq0YykNMkKEp
         L58Q==
X-Gm-Message-State: AOAM530JrlUbd51E4j6/OnGZvi6V+8Y5tbcy7AZyICWSWOWDMeuhbHa5
	jKyukkTQibDMZsktkz0cojAOaj7DYWM=
X-Google-Smtp-Source: ABdhPJz+SwsnHsV/lnjRrB9Cvdu/0u2TBdvRpEEiThByp+13IYrW5mICUAxKmlIOw/gzgdeL+OuusQ==
X-Received: by 2002:a17:906:5488:: with SMTP id r8mr9355998ejo.483.1599753950908;
        Thu, 10 Sep 2020 09:05:50 -0700 (PDT)
Received: from beaker.muppets.liwing.de (p5b25b0d4.dip0.t-ipconnect.de. [91.37.176.212])
        by smtp.gmail.com with ESMTPSA id ce14sm8018211edb.25.2020.09.10.09.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 09:05:50 -0700 (PDT)
Sender: Jens Rehsack <rehsack@gmail.com>
From: "Jens Rehsack" <rehsack@gmail.com>
To: yocto@yoctoproject.org
Cc: Jens Rehsack <sno@netbsd.org>
Subject: [meta-security][PATCH] ibmswtpm2: update to 1637
Date: Thu, 10 Sep 2020 18:05:32 +0200
Message-Id: <20200910160532.28776-1-sno@netbsd.org>
X-Mailer: git-send-email 2.17.1

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
 .../recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb  | 30 +++++++++++
 5 files changed, 107 insertions(+), 52 deletions(-)
 create mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/files/fix-wrong-cast.patch
 delete mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/files/remove_optimization.patch
 create mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/files/tune-makefile.patch
 delete mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1628.bb
 create mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb

diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/files/fix-wrong-cast.patch b/meta-tpm/recipes-tpm2/ibmswtpm2/files/fix-wrong-cast.patch
new file mode 100644
index 0000000..9f10fbe
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
+Upstream-Status: OE specific
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
index 0000000..ff8c604
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb
@@ -0,0 +1,30 @@
+SUMMARY = "IBM's Software TPM 2.0"
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

