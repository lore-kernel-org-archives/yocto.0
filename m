Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web08.2651.1617769356709027359
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 21:22:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FQA/Uoc3;
 spf=pass (domain: gmail.com, ip: 209.85.215.179, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id k8so12062555pgf.4
        for <yocto@lists.yoctoproject.org>; Tue, 06 Apr 2021 21:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xnWrNRHLsBfLxAGRCRYTS9H71/pBUMNg8O1QTdJeZqo=;
        b=FQA/Uoc3Fr57R3sTWlhIMVbXJ//Z6AjO+YvHJPpJoeqevOhpBCSNvrf2dFsGXsj7JK
         GlaptNwaB51sxsnya+byOE4rxpTtbx9j9aU2Ltqm22jreNi2SZMtqWFbCSDfMw8pm+yI
         yo/ozuHX+1bp2DNymGb9aK43E6QE/tJ+3vH7sCOLlrjrJRSfeBr1gLw69VqI2U1vSrov
         qZOaRduyew904LxzuxLUbIxOuLGwz3aTbNIRW25Cne90LQGc0MncnCOW8uw9WrpLUaWM
         lZTIIAFFbFk3Rd3/WhM5F0poRjshIHke2ic1m1rvAY7Rf8RgY6n+q8s3onWVlFJuveqy
         N4DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xnWrNRHLsBfLxAGRCRYTS9H71/pBUMNg8O1QTdJeZqo=;
        b=qelvzdIrDikxpdIqv2sIURJm+gkGOry/6j0sOiZ3ZhmvHA0fLtDiJReAHd/mJux8UN
         v7iARqHDiYI+07vzQ8tYGIqjhELUExoMAK+OvxmaXcdD4jngZBzTHWF3VuqJcFD+PXnV
         Uhbcw7LnKfVkvT+beNUi05PRdtkcCBBGrSBr+CMugITuSE++LDK6WJBh4NEO8u0K6UO2
         g93LYRelCQFGsyWJCvtua0PrrH4Jzaj3e4M7uTw5bhY9kIe+xTGV3KHPVIN3kqAsFMaK
         sslr4glnwTyitalvRYtH33mdOUP622IbAKFVWJ0frAwwF3ijMYRUWAFfHw332+2NX6rz
         TQ5g==
X-Gm-Message-State: AOAM532yDKL4NNs03ntj5n2gp0HwhPNNjOQapdDFesEpw+PslvanD6bQ
	PxLMwzUYgmOMY3xve82FuaUfQ+jNUV8=
X-Google-Smtp-Source: ABdhPJxOMV5hwUdTWIvj4dvsg6B9qnMKyn61uEyknktmRlYf9MsVet9c7RCzpNFDbR1YpQudhNH1Lw==
X-Received: by 2002:a63:390:: with SMTP id 138mr1538882pgd.8.1617769354983;
        Tue, 06 Apr 2021 21:22:34 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id v134sm19722791pfc.182.2021.04.06.21.22.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 21:22:34 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/5] swtpm: fix check for tscd deamon on host
Date: Wed,  7 Apr 2021 04:22:28 +0000
Message-Id: <20210407042232.3373253-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Found a few  places that tscd check was trying to run the hosts.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../swtpm/files/oe_configure.patch            | 65 +++++++++++++++++++
 meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb     |  1 +
 2 files changed, 66 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm/swtpm/files/oe_configure.patch

diff --git a/meta-tpm/recipes-tpm/swtpm/files/oe_configure.patch b/meta-tpm/recipes-tpm/swtpm/files/oe_configure.patch
new file mode 100644
index 0000000..5aee933
--- /dev/null
+++ b/meta-tpm/recipes-tpm/swtpm/files/oe_configure.patch
@@ -0,0 +1,65 @@
+Don't check for tscd deamon on host.
+
+Upstream-Status: OE Specific
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Index: git/configure.ac
+===================================================================
+--- git.orig/configure.ac
++++ git/configure.ac
+@@ -179,15 +179,6 @@ AC_SUBST([LIBTPMS_LIBS])
+ AC_CHECK_LIB(c, clock_gettime, LIBRT_LIBS="", LIBRT_LIBS="-lrt")
+ AC_SUBST([LIBRT_LIBS])
+ 
+-AC_PATH_PROG([TCSD], tcsd)
+-if test "x$TCSD" = "x"; then
+-    have_tcsd=no
+-    AC_MSG_WARN([tcsd could not be found; typically need it for tss user account and tests])
+-else
+-    have_tcsd=yes
+-fi
+-AM_CONDITIONAL([HAVE_TCSD], test "$have_tcsd" != "no")
+-
+ dnl We either need netstat (more common across systems) or 'ss' for test cases
+ AC_PATH_PROG([NETSTAT], [netstat])
+ if test "x$NETSTAT" = "x"; then
+@@ -440,23 +431,6 @@ AC_ARG_WITH([tss-group],
+             [TSS_GROUP="tss"]
+ )
+ 
+-case $have_tcsd in
+-yes)
+-	AC_MSG_CHECKING([whether TSS_USER $TSS_USER is available])
+-	if ! test $(id -u $TSS_USER); then
+-		AC_MSG_ERROR(["$TSS_USER is not available"])
+-	else
+-		AC_MSG_RESULT([yes])
+-	fi
+-	AC_MSG_CHECKING([whether TSS_GROUP $TSS_GROUP is available])
+-	if ! test $(id -g $TSS_GROUP); then
+-		AC_MSG_ERROR(["$TSS_GROUP is not available"])
+-	else
+-		AC_MSG_RESULT([yes])
+-	fi
+-	;;
+-esac
+-
+ AC_SUBST([TSS_USER])
+ AC_SUBST([TSS_GROUP])
+ 
+Index: git/tests/Makefile.am
+===================================================================
+--- git.orig/tests/Makefile.am
++++ git/tests/Makefile.am
+@@ -83,10 +83,6 @@ TESTS += \
+ 	test_tpm2_swtpm_cert \
+ 	test_tpm2_swtpm_cert_ecc \
+ 	test_tpm2_swtpm_setup_create_cert
+-if HAVE_TCSD
+-TESTS += \
+-	test_tpm2_samples_create_tpmca
+-endif
+ endif
+ 
+ EXTRA_DIST=$(TESTS) \
diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
index ab77196..caf99e8 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
@@ -12,6 +12,7 @@ DEPENDS_append = " tpm-tools-native expect-native socat-native python3-pip-nativ
 SRCREV = "e59c0c1a7b4c8d652dbb280fd6126895a7057464"
 SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.5 \
            file://ioctl_h.patch \
+           file://oe_configure.patch \
            "
 PE = "1"
 
-- 
2.25.1

