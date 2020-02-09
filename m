Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com [209.85.215.193])
 by mx.groups.io with SMTP id smtpd.web11.10015.1581270059936226494
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Feb 2020 09:41:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FxIOHNKQ;
 spf=pass (domain: gmail.com, ip: 209.85.215.193, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f193.google.com with SMTP id z7so2599784pgk.7
        for <yocto@lists.yoctoproject.org>; Sun, 09 Feb 2020 09:40:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=oYqBX3ExLqRW/NKceuIpbQK12OXEKCeL8Dcz+zTDeVE=;
        b=FxIOHNKQIqEMXEbrMVjS36GbXPtgOZAf625VRD2TeB+5nt8pUchJOiEJGhg2kjoM0Z
         tr/d3qMKTrAn8+rpF2B3GHZkHLRa4h1omJhFOEyDKCTJ4e60KgiFrocvkNrU40Imwiyp
         4cjKyB60NR/UMCygyMC4ImTKsGsDBM3jiURTQBHcF+Csz1pWX7c7S/93mIkzy+h2GIa7
         HvqLH4uE+GuADSeM4HKhOfQ/N8EHdX9xdN7cp/asuIVVODrsXcWpF7+7brK8BGFBeW2i
         C2DAIGFkOecET+qhWJ+XrMAuqLdPNGd5rqn8hPxEEn7AFRz1Q3sFRwZUrcIka/rwRNAI
         EF/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=oYqBX3ExLqRW/NKceuIpbQK12OXEKCeL8Dcz+zTDeVE=;
        b=hSpCq62OqWJXfxEGtJG3Op3SQiOej08xkhRFtXM37FlgtgU51nr7jwtex6797HY7F4
         efP03TAp9qwCQGlSv37deXEL0dfxehmdtyttOqZv0DJdZfLTaJjLaveTkY2yudvyw/SL
         jCQr3uoV+Zy0mxXOLeJYIuLzheudHThzvhEUdIhiwWRpipOuTIKfEuvpymPesoTWE0sc
         knIT98pCTCnScUsxgGuAsA/X9UkNNMuVOtCCeh2k9EHSblZ/thFz9IlRTnDCJfK9hzvz
         076EGddz9ZwhAPdXPRQTcJGZrvg993VKzLx8MVZl4VJaHFOwheGSuvcxPQyNpsxggG2t
         A+aA==
X-Gm-Message-State: APjAAAXF0IPuOEeP/hzhnSoIsr+geocrpYZtOtosx8RA9fU8lUncpgmd
	jM8k7H08cApiFQhNIYfY5rwyvtZS
X-Google-Smtp-Source: APXvYqxweRIqo0wDiW5toMyz+Nmz+9MtUGXK7sHVUBUBJ6drqe9I3zWv23+xST+cmzH+f9FVgNwb3Q==
X-Received: by 2002:a63:f70e:: with SMTP id x14mr9922687pgh.71.1581270059260;
        Sun, 09 Feb 2020 09:40:59 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:154b:3780:5122:4aa9])
        by smtp.gmail.com with ESMTPSA id l21sm9636725pgo.33.2020.02.09.09.40.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2020 09:40:58 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][v2][PATCH] ibmswtpm2: update to 1563
Date: Sun,  9 Feb 2020 09:40:57 -0800
Message-Id: <20200209174057.3314-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

fix build issue

[v2]
Fix subject line

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../ibmswtpm2/files/remove_optimization.patch | 26 ++++++++++++++++++
 .../recipes-tpm2/ibmswtpm2/ibmswtpm2_1332.bb  | 24 -----------------
 .../recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb  | 27 +++++++++++++++++++
 3 files changed, 53 insertions(+), 24 deletions(-)
 create mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/files/remove_optimization.patch
 delete mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1332.bb
 create mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb

diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/files/remove_optimization.patch b/meta-tpm/recipes-tpm2/ibmswtpm2/files/remove_optimization.patch
new file mode 100644
index 0000000..2919e2e
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/files/remove_optimization.patch
@@ -0,0 +1,26 @@
+Allow recipe to overide optimization.
+
+fixes:
+
+397 | #  warning _FORTIFY_SOURCE requires compiling with optimization (-O)
+|       |    ^~~~~~~
+| cc1: all warnings being treated as errors
+
+
+Upstream-Status: OE specific
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: src/makefile
+===================================================================
+--- src.orig/makefile
++++ src/makefile
+@@ -43,7 +43,7 @@ CC = /usr/bin/gcc
+ CCFLAGS = -Wall  			\
+ 	-Wmissing-declarations -Wmissing-prototypes -Wnested-externs \
+ 	-Werror -Wsign-compare \
+-	 -c -ggdb -O0 			\
++	 -c -ggdb -O 			\
+ 	-DTPM_POSIX			\
+ 	-D_POSIX_			\
+ 	-DTPM_NUVOTON
diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1332.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1332.bb
deleted file mode 100644
index a6068e6..0000000
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1332.bb
+++ /dev/null
@@ -1,24 +0,0 @@
-SUMMARY = "IBM's Software TPM 2.0"
-
-LICENSE = "BSD"
-SECTION = "securty/tpm"
-LIC_FILES_CHKSUM = "file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
-
-SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm1332.tar.gz"
-SRC_URI[md5sum] = "0ab34a655b4e09812d7ada19746af4f9"
-SRC_URI[sha256sum] = "8e8193af3d11d9ff6a951dda8cd1f4693cb01934a8ad7876b84e92c6148ab0fd"
-
-DEPENDS = "openssl"
-
-S = "${WORKDIR}/src"
-
-LDFLAGS = "${LDFALGS}"
-
-do_compile () {
-   make CC='${CC}'
-}
-
-do_install () {
-   install -d ${D}/${bindir}
-   install -m 0755 tpm_server  ${D}/${bindir}
-}
diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
new file mode 100644
index 0000000..8054226
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1563.bb
@@ -0,0 +1,27 @@
+SUMMARY = "IBM's Software TPM 2.0"
+LICENSE = "BSD"
+SECTION = "securty/tpm"
+LIC_FILES_CHKSUM = "file://../LICENSE;md5=1e023f61454ac828b4aa1bc4293f7d5f"
+
+DEPENDS = "openssl"
+
+SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
+           file://remove_optimization.patch \
+           "
+SRC_URI[md5sum] = "13013612b3a13dc935fefe1a5684179c"
+SRC_URI[sha256sum] = "fc3a17f8315c1f47670764f2384943afc0d3ba1e9a0422dacb08d455733bd1e9"
+SRC_URI[sha1sum] = "a2a5335024a2edc1739f08b99e716fa355be627d"
+SRC_URI[sha384sum] = "b1f278acabe2198aa79c0fe8aa0182733fe701336cbf54a88058be0b574cab768f59f9315882d0e689e634678d05b79f"
+SRC_URI[sha512sum] = "ff0b9e5f0d0070eb572b23641f7a0e70a8bc65cbf4b59dca1778be3bb014124011221a492147d4c492584e87af23e2f842ca6307641b3919f67a3f27f09312c0"
+
+S = "${WORKDIR}/src"
+
+do_compile () {
+   make CC='${CC}'
+}
+
+do_install () {
+   install -d ${D}/${bindir}
+   install -m 0755 tpm_server  ${D}/${bindir}
+}
+
-- 
2.17.1

