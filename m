Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web08.7858.1620872713038319775
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 19:25:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kOmIpWfz;
 spf=pass (domain: gmail.com, ip: 209.85.210.173, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id i190so20259108pfc.12
        for <yocto@lists.yoctoproject.org>; Wed, 12 May 2021 19:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DPj9dqnc/APZw3a+WL14MuUGQbHVy3UApY419KSo6zQ=;
        b=kOmIpWfzcZ+ztBUwu9Nf3hTTZ5QlEP9Nl5gGnj2C5aGPxLPwaiSeTF0kzud+OxqvdH
         UuPIvmpGmst67xurA7jzYuxCzoErhdw2qo0pWSLC7kW58JajZ+gnyYx5Q+u/mjWLuZCX
         bt/CzDJnogcmJiN3kFvZba1OfeT7TnWgd0NspiKRbsSHfsQlxEzfSSAqv4+BnSRz3odA
         6eXCD5sb0pCvzN3HIT82YEIufH3hoCYzLjHg2YBAfgaf3qhkQIZy1p/JbtH4y/jbpQtX
         cqa0/nRNFG1Dzob421nijj2KLzEwoaFCMvmpQo9S580zdAMzgvWto5cxYqHS5WVqnqy7
         9tnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DPj9dqnc/APZw3a+WL14MuUGQbHVy3UApY419KSo6zQ=;
        b=uTKtxyUaBikyu2vZ+NVXjUPmgGm7tRUP7e4QtLW5k5Dq4Pua3gkY0yuDef8vIWZqsI
         dMrICu7FVtWxE4KeOYtIH0M+6lo702Dti/p+mBVgobbMjBxhLfpvkB4ZksoF6GI9i/9y
         UJo5c9/Ay97/zUfwuSrQc7yhmkpe3Xvb75ReQqZYWBs37pYG57q5fDnnqWoWFXDi1t+e
         KeOW72pKczhM1iDn7KNGcCwqDsJdrYozmZCkBXgGjDYRgA4MHbGAqtvU0tkSxUUsaxrj
         SPKFnoDDIpYpGSsWDICasXA8HHYtsQlEOSLpaolvtcn+45rC9oBdo82qD+Yji5/QLtKv
         ybYw==
X-Gm-Message-State: AOAM5310qk+Q1CyU1mEFZKiTM5ZzIqgXaBO9ec+uJZ5XPnC4PbWBqBls
	acRNsbBMMxejDdqgbKwKgjiUj0OEzxA=
X-Google-Smtp-Source: ABdhPJwwZJOLwqsUirigccD1a9wwfvPxEgADJMPxgVSa1ETXPGslPwHuuz3h8C2x7VO83703HbZ5ew==
X-Received: by 2002:a17:90b:887:: with SMTP id bj7mr1966774pjb.210.1620872712157;
        Wed, 12 May 2021 19:25:12 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id v12sm870777pgi.44.2021.05.12.19.25.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 19:25:11 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/6] ibmswtpm2: update to 1661
Date: Thu, 13 May 2021 02:25:05 +0000
Message-Id: <20210513022510.3370797-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Drop patch now included in updated

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../ibmswtpm2/files/fix-wrong-cast.patch      | 27 -------------------
 .../{ibmswtpm2_1637.bb => ibmswtpm2_1661.bb}  | 10 +++----
 2 files changed, 4 insertions(+), 33 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/ibmswtpm2/files/fix-wrong-cast.patch
 rename meta-tpm/recipes-tpm2/ibmswtpm2/{ibmswtpm2_1637.bb => ibmswtpm2_1661.bb} (69%)

diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/files/fix-wrong-cast.patch b/meta-tpm/recipes-tpm2/ibmswtpm2/files/fix-wrong-cast.patch
deleted file mode 100644
index f2938e0..0000000
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/files/fix-wrong-cast.patch
+++ /dev/null
@@ -1,27 +0,0 @@
-Fix strict aliasing issue of gcc10
-
-fixes:
-
-TpmFail.c: In function 'TpmLogFailure':
-TpmFail.c:217:23: error: dereferencing type-punned pointer will break strict-aliasing rules [-Werror=strict-aliasing]
-  217 |     s_failFunction = *(UINT32 *)&function; /* kgold */
-      |                       ^~~~~~~~~~~~~~~~~~~
-cc1: all warnings being treated as errors
-
-Upstream-Status: Submitted
-
-Signed-off-by: Jens Rehsack <sno@NetBSD.org>
-
-Index: src/TpmFail.c
-===================================================================
---- src.orig/TpmFail.c	2020-09-10 15:43:57.085063875 +0200
-+++ src/TpmFail.c	2020-09-10 15:48:35.563302634 +0200
-@@ -214,7 +214,7 @@
-     // On a 64-bit machine, this may truncate the address of the string
-     // of the function name where the error occurred.
- #if FAIL_TRACE
--    s_failFunction = *(UINT32 *)&function;	/* kgold */
-+    memcpy(&s_failFunction, function, sizeof(uint32_t));	/* kgold */
-     s_failLine = line;
- #else
-     s_failFunction = 0;
diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1661.bb
similarity index 69%
rename from meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb
rename to meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1661.bb
index 301980d..7ea40a8 100644
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1637.bb
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1661.bb
@@ -17,13 +17,11 @@ DEPENDS = "openssl"
 
 SRC_URI = "https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
            file://tune-makefile.patch \
-           file://fix-wrong-cast.patch \
            "
-SRC_URI[md5sum] = "43b217d87056e9155633925eb6ef749c"
-SRC_URI[sha256sum] = "dd3a4c3f7724243bc9ebcd5c39bbf87b82c696d1c1241cb8e5883534f6e2e327"
-SRC_URI[sha1sum] = "ab4b94079e57a86996991e8a2b749ce063e4ad3e"
-SRC_URI[sha384sum] = "bbef16a934853ce78cba7ddc766aa9d7ef3cde3430a322b1be772bf3ad4bd6d413ae9c4de21bc1a4879d17dfe2aadc1d"
-SRC_URI[sha512sum] = "007aa415cccf19a2bcf789c426727dc4032dcb04cc9d11eedc231d2add708c1134d3d5ee5cfbe7de68307c95fff7a30bd306fbd8d53c198a5ef348440440a6ed"
+
+SRC_URI[sha256sum] = "55145928ad2b24f34be6a0eacf9fb492e10e0ea919b8428c721fa970e85d6147"
+
+UPSTREAM_CHECK_REGEX = "libtpm(?P<pver>).tar.gz"
 
 S = "${WORKDIR}/src"
 
-- 
2.25.1

