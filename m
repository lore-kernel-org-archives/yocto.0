Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94771C41513
	for <webhook@archiver.kernel.org>; Thu, 30 May 2024 05:11:13 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
 by mx.groups.io with SMTP id smtpd.web10.995.1717045870370605807
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 May 2024 22:11:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LZCwqBxM;
 spf=pass (domain: gmail.com, ip: 209.85.210.50, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6f8e9522bfaso259320a34.0
        for <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 22:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717045869; x=1717650669; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=txEdaIm0MQkgfCzu3CqhPMp9BTLnLfhbKZ4+/PXUwao=;
        b=LZCwqBxMWwO1UJ0NaHK8a57Eq72FHSNzhe786cm9OF2ywd/3FvaDWbR/bA1H7c1V6n
         OrYWbnk8usfbDm9frQpzt0f3ufAta9DR8cFTA881Dwhgpfv7T/PwFo9+1xxG6aE/Aavw
         JSlfxTr93PlDrL+bhCaa836T3B56yie62idthz0+2BHEy5eOK00sp7Wc8qvBMgKHmEPA
         zahzFHaXa0x4cTyWsVxdT/KyBYgzVbXhDZCrh5jaP0NZnXtbFM5ZPuUv+34fKWjo3tyQ
         IY35c2svxRQ2RqKRpsjJ6Grlo+cp8MpecIcZYkvZ8EdSSqMJpAHXdkTk3evoyeFSBSNA
         f25g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717045869; x=1717650669;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=txEdaIm0MQkgfCzu3CqhPMp9BTLnLfhbKZ4+/PXUwao=;
        b=di8DKPOaMC5DHzCLDTHeSk7q3ySTvFHq9YZcczjGRl6w1VApmPLXixd33xEzaiBRW6
         EwoDMq6XDngdVmOkMH01guM++VWFCoEaZ+BW4xHb/GR3KUflDM4QFtB8QcmSZ81BPgur
         fdptXFaCe6XLQT9dHEF+Yq5E8rJac0/Yt+xSg+qUyRK04HFKRSWSVS+X1xnmwRFFn9cv
         Nl82NByPIITzu9fDLI7R9x8p7DEQv6607eGTRMm7OV5BGKLaPk2K5sLW0sFXKoPIlW+o
         pJ0IXfEDoee/8jROvODdQHgUurCOayghWw4CnWQbMPmLRwdiZF9UETs7WHQuSmgPSdZn
         w3jQ==
X-Gm-Message-State: AOJu0YySqAzyZIf2LtwGHny9mkqWzXAuUiBJ7jPoQgdefZ45vFsjNwgp
	B6cATWOSg9kL5e0dS2fI4C6f9z1u+0x9iyw6aC7d4/t1Hwtxlt2TyXXEv0PQfRs=
X-Google-Smtp-Source: AGHT+IFXKml4KB/LmzZSajZ+bjHiNdQaJlILalVySoqor83gBvdugH29oQguFo7X+Ov4BgZQkqPAHA==
X-Received: by 2002:a05:6870:ac0e:b0:24c:fd36:4480 with SMTP id 586e51a60fabf-25060b00bc2mr1835541fac.6.1717045868877;
        Wed, 29 May 2024 22:11:08 -0700 (PDT)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9d80:4380::3972])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f8fcbf5388sm8853029b3a.136.2024.05.29.22.11.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 22:11:07 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-mingw] [PATCH 1/4] mingw-w64: Upgrade to 12.0.0 release
Date: Wed, 29 May 2024 22:10:57 -0700
Message-ID: <20240530051104.2814410-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240530051104.2814410-1-raj.khem@gmail.com>
References: <20240530051104.2814410-1-raj.khem@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 May 2024 05:11:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63234

Drop GCC-14 related backport, its not needed anymore

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...in-the-ucrt-__imp_vfscanf-assignment.patch | 30 -------------------
 recipes-devtools/mingw-w64/mingw-w64.inc      |  3 +-
 ... => nativesdk-mingw-w64-headers_12.0.0.bb} |  0
 ... => nativesdk-mingw-w64-runtime_12.0.0.bb} |  2 +-
 ...nativesdk-mingw-w64-winpthreads_12.0.0.bb} |  0
 5 files changed, 2 insertions(+), 33 deletions(-)
 delete mode 100644 recipes-devtools/mingw-w64/files/0001-crt-Fix-a-typo-in-the-ucrt-__imp_vfscanf-assignment.patch
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-headers_9.0.0.bb => nativesdk-mingw-w64-headers_12.0.0.bb} (100%)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-runtime_9.0.0.bb => nativesdk-mingw-w64-runtime_12.0.0.bb} (86%)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-winpthreads_9.0.0.bb => nativesdk-mingw-w64-winpthreads_12.0.0.bb} (100%)

diff --git a/recipes-devtools/mingw-w64/files/0001-crt-Fix-a-typo-in-the-ucrt-__imp_vfscanf-assignment.patch b/recipes-devtools/mingw-w64/files/0001-crt-Fix-a-typo-in-the-ucrt-__imp_vfscanf-assignment.patch
deleted file mode 100644
index bc41482..0000000
--- a/recipes-devtools/mingw-w64/files/0001-crt-Fix-a-typo-in-the-ucrt-__imp_vfscanf-assignment.patch
+++ /dev/null
@@ -1,30 +0,0 @@
-From b0dcc496228373417e4f6134beb2f13ca3ed807e Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?Martin=20Storsj=C3=B6?= <martin@martin.st>
-Date: Thu, 5 Aug 2021 11:08:39 +0300
-Subject: [PATCH] crt: Fix a typo in the ucrt __imp_vfscanf assignment
-MIME-Version: 1.0
-Content-Type: text/plain; charset=UTF-8
-Content-Transfer-Encoding: 8bit
-
-The wrong function was assigned; this was a bug present since
-0dd9563a3ad71ad75cab1699ba5cfef2dd0bf9d8 (April 2021).
-
-Upstream-Status: Backport [https://sourceforge.net/p/mingw-w64/mingw-w64/ci/b0dcc496228373417e4f6134beb2f13ca3ed807e]
-Signed-off-by: Martin Storsjö <martin@martin.st>
----
- mingw-w64-crt/stdio/ucrt_vfscanf.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/mingw-w64-crt/stdio/ucrt_vfscanf.c b/mingw-w64-crt/stdio/ucrt_vfscanf.c
-index fe44cdf71..8d1a76a8b 100644
---- a/mingw-w64-crt/stdio/ucrt_vfscanf.c
-+++ b/mingw-w64-crt/stdio/ucrt_vfscanf.c
-@@ -11,4 +11,4 @@
- int __cdecl vfscanf (FILE *__stream,  const char *__format, __builtin_va_list __local_argv) {
-   return __stdio_common_vfscanf(0, __stream, __format, NULL, __local_argv);
- }
--int __cdecl (*__MINGW_IMP_SYMBOL(vfscanf))(FILE *, const char *, __builtin_va_list) = vsscanf;
-+int __cdecl (*__MINGW_IMP_SYMBOL(vfscanf))(FILE *, const char *, __builtin_va_list) = vfscanf;
--- 
-2.43.0
-
diff --git a/recipes-devtools/mingw-w64/mingw-w64.inc b/recipes-devtools/mingw-w64/mingw-w64.inc
index ce5d0db..97315f4 100644
--- a/recipes-devtools/mingw-w64/mingw-w64.inc
+++ b/recipes-devtools/mingw-w64/mingw-w64.inc
@@ -4,8 +4,7 @@ LIC_FILES_CHKSUM = "file://${WORKDIR}/mingw-w64-v${PV}/COPYING;md5=bb936f0e04d8f
 COMPATIBLE_HOST = ".*-mingw.*"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2"
-
-SRC_URI[sha256sum] = "1929b94b402f5ff4d7d37a9fe88daa9cc55515a6134805c104d1794ae22a4181"
+SRC_URI[sha256sum] = "cc41898aac4b6e8dd5cffd7331b9d9515b912df4420a3a612b5ea2955bbeed2f"
 
 UPSTREAM_CHECK_URI = "http://sourceforge.net/projects/mingw-w64/files/mingw-w64/mingw-w64-release/"
 UPSTREAM_CHECK_REGEX = "mingw-w64-v(?P<pver>(\d+[\.\-_]*)+)\.tar"
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_9.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_12.0.0.bb
similarity index 100%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_9.0.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_12.0.0.bb
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_12.0.0.bb
similarity index 86%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_12.0.0.bb
index 1aa470e..6d01d35 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_12.0.0.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "Runtime libraries from MinGW-w64 project"
 
 require mingw-w64.inc
 
-SRC_URI += "file://0001-crt-Fix-a-typo-in-the-ucrt-__imp_vfscanf-assignment.patch;striplevel=2"
+#SRC_URI += "file://0001-crt-Fix-a-typo-in-the-ucrt-__imp_vfscanf-assignment.patch;striplevel=2"
 
 S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-crt"
 B = "${WORKDIR}/build-${TARGET_SYS}"
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_9.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_12.0.0.bb
similarity index 100%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_9.0.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_12.0.0.bb
-- 
2.45.1


