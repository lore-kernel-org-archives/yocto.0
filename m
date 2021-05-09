Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web08.20142.1620575265551037841
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 May 2021 08:47:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bO+L9kgk;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id lj11-20020a17090b344bb029015bc3073608so8891972pjb.3
        for <yocto@lists.yoctoproject.org>; Sun, 09 May 2021 08:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=DPj9dqnc/APZw3a+WL14MuUGQbHVy3UApY419KSo6zQ=;
        b=bO+L9kgkImiQiZPSwj/reYnsbzPcBvCUQJ6BZBsiTFS9ASxMy1/1In4kNKlORQHdWl
         INWuK1Ubc4w69FOqhfof82zFJaFTzRuAvzS3eUhgmhJH2uLBd1l0j2wFbmDI54/AzPq8
         c0is+QhOyyk9gKZ8vRYe8I0C2wVSDBmUc/mdWqDfxlVsrc56ov/7Q5adLNVBnzN+Sfs9
         p8Cf7wYqkczXowgnX/vbi+QsillulZAnd5t4yNnV6g7U+c1K+VG3gJEQPLdXRjadrQT/
         fmJ1O7wJEvEAxV7wuv1RlqyIZeyJGVVoBVPHywYBle6WaJs96Y+NtPCQJtBQIjMHPNoW
         i3tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DPj9dqnc/APZw3a+WL14MuUGQbHVy3UApY419KSo6zQ=;
        b=DFa/mH+XpybDlwcQEHFDiuJgHW63wfUd8Z8xKzxeEklb2PYWoOGJ++Godqvrp7wnyc
         tOPjzHOq159GWJgjEsi6BAnyMm3znDpuU4Q1uF4eSYsArPGZFtj0+2T42401i/TfBTh4
         WfxC4/qi335JfRN+SIOCO8vzeMYREWS+FE6qTB9rbC68PqdQWT4i689DZ0TMzL8U1dC+
         0radsCIQB+XnqREcxLw6EXUDU4Mfmee84dt++K9Asby1zhvoqLZUK4l93OprVdKH2EVX
         rdIx5Wfd+cT9oIGjmKWABz3Gfw3tQwz83EG5maUsssa6kv52fZO9pgJ14ZXk0NCCzc/F
         xcZQ==
X-Gm-Message-State: AOAM530prUwhHSGsI1KhTzj769bHnnueGx6pP921uuvdNVkNTKfkDv0/
	OafcF/kiklxqgoO2O7J7YXRY5h8wUL15tw==
X-Google-Smtp-Source: ABdhPJxMciHxCSU6gAVzYSP7zdQdVSFpqrNy+g/LegpXWoX6AY+tlLk1q8oVDRpVBhye8ScQTjW4Pw==
X-Received: by 2002:a17:90a:9f44:: with SMTP id q4mr35662858pjv.233.1620575264978;
        Sun, 09 May 2021 08:47:44 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id in16sm9428165pjb.14.2021.05.09.08.47.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 08:47:44 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/6] ibmswtpm2: update to 1661
Date: Sun,  9 May 2021 15:47:39 +0000
Message-Id: <20210509154740.1628375-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210509154740.1628375-1-akuster808@gmail.com>
References: <20210509154740.1628375-1-akuster808@gmail.com>
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

