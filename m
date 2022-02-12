Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE60C433EF
	for <webhook@archiver.kernel.org>; Sat, 12 Feb 2022 18:43:04 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web10.12239.1644691384065620614
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Feb 2022 10:43:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dztokzjM;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id
 c5-20020a17090a1d0500b001b904a7046dso13488425pjd.1
        for <yocto@lists.yoctoproject.org>;
 Sat, 12 Feb 2022 10:43:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6y1jAE4c5M7nvKz0f+FpqCBYPqiAWCXPff6tKbNEwAo=;
        b=dztokzjMd55E3j59U7saOCwVUkBk/RYmwS64oseEhbd81Q3whzCeNuQX5gLUnkUW0Q
         vBBnPjkz3OpFaWfL7aKmX5PHI7roK9cXv+gi/jZ+Ma6WrXPn3T73FX5C8hiBa2ZAoBem
         es3hDGwp+K8ByM+qYOoyQiOL6xZV0nstawuTAXP688HXc23CO42jgy0OZkrYP2HVE6ax
         6f4+T8tXxVJilAzcu2Ec/0wI0Eb0ME7QwDDX8pgPw2HcaE02F1NNO7ICRDry4bNVUSA6
         nnWEMlCk9O2w6pAMMW5YLdpF5YCVQ2nwWDrnMJv2XABKBxFt81b+6SkfC0A0IFd3YOyj
         1lZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6y1jAE4c5M7nvKz0f+FpqCBYPqiAWCXPff6tKbNEwAo=;
        b=CkFM39e9dDrA+t8P9Skgkb+X/DoqVnm+jyTMljBJmRHwULmYwgiXTTNUx6vv3PVBIW
         quXpik1zknThVG9Z6rWXlfZv2MbHCQ9fc/BO5UaVXZwHK3Q+bruxxRLNoiRLuJp3DMmt
         S4Z5FlMR9taGet29EPudOZ0rkN0WkiiAcIrMBPjegie6fdlcDCPktRQCRUsJnTgSXtz1
         7nu6cUsHaFxChhUs8lN2HsrXwH3/BsC6YbuIOjh1mFCyic9WUSLflUCq07ENP4BwqKm/
         XpCqcNY2PPM+xC2HnmFrHlxSuipCNyhL57oJiNJeiAm53cTUklKnJFgMqS615lODSgqV
         nKQA==
X-Gm-Message-State: AOAM532rM8BlXeN7uXrV6HF0U892hEH+phuU2WPoSEQ2/YeTjXBMYAmg
	HHVb2s5pK9CXeEBqpVHkgUasbd7iHKmQnw==
X-Google-Smtp-Source: 
 ABdhPJyufI21ic6cNv88TocBY1Jtsx7MytNILky3Vptg3cIN4PF9YJbyOfkLWLihKMnHXlK2fKvzvg==
X-Received: by 2002:a17:902:db03:: with SMTP id
 m3mr2098757plx.29.1644691383226;
        Sat, 12 Feb 2022 10:43:03 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::fb6e])
        by smtp.gmail.com with ESMTPSA id
 g4sm14755909pgw.9.2022.02.12.10.43.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Feb 2022 10:43:02 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-mingw] [PATCH 1/2] mingw-w64: Upgrade
 runtime/headers/winpthreads to 9.0.0
Date: Sat, 12 Feb 2022 10:42:59 -0800
Message-Id: <20220212184300.2850465-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 12 Feb 2022 18:43:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56167

Drop upstreamed fixes for rdtsc [1] __udivmoddi4[2]

[1] https://sourceforge.net/p/mingw-w64/mingw-w64/ci/6a0e9165008f731bccadfc41a59719cf7c8efc02/
[2] https://sourceforge.net/p/mingw-w64/mingw-w64/ci/ab0fa5ad3c67d634fd7754d9473d1bb7051f9bf0/

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...rincs-Check-for-__builtin_ia32_rdtsc.patch | 33 ------------
 .../0001-winpthreads-Add-__udivmoddi4.patch   | 52 -------------------
 recipes-devtools/mingw-w64/mingw-w64.inc      |  4 +-
 ...b => nativesdk-mingw-w64-headers_9.0.0.bb} |  0
 ...b => nativesdk-mingw-w64-runtime_9.0.0.bb} |  2 -
 ... nativesdk-mingw-w64-winpthreads_9.0.0.bb} |  2 -
 6 files changed, 1 insertion(+), 92 deletions(-)
 delete mode 100644 recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch
 delete mode 100644 recipes-devtools/mingw-w64/files/0001-winpthreads-Add-__udivmoddi4.patch
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-headers_8.0.0.bb => nativesdk-mingw-w64-headers_9.0.0.bb} (100%)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-runtime_8.0.0.bb => nativesdk-mingw-w64-runtime_9.0.0.bb} (88%)
 rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-winpthreads_8.0.0.bb => nativesdk-mingw-w64-winpthreads_9.0.0.bb} (87%)

diff --git a/recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch b/recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch
deleted file mode 100644
index ce4ba81..0000000
--- a/recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-From 346de7591f58015d111f4d4f3b001382c04d5557 Mon Sep 17 00:00:00 2001
-From: Khem Raj <raj.khem@gmail.com>
-Date: Tue, 13 Apr 2021 18:44:25 -0700
-Subject: [PATCH] intrincs: Check for __builtin_ia32_rdtsc
-
-on modern gcc ( >=4.6 ) __rdtsc function is implemented using
-special builtin function called __builtin_ia32_rdtsc, its actually
-a define in gcc, so __has_builtin check fails for __rdtsc even
-though it is defined to imply __builtin_ia32_rdtsc(), therefore
-check for existence of __builtin_ia32_rdtsc as well
-
-Upstream-Status: Pending
-Signed-off-by: Khem Raj <raj.khem@gmail.com>
----
- mingw-w64-crt/intrincs/rdtsc.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/mingw-w64-crt/intrincs/rdtsc.c b/mingw-w64-crt/intrincs/rdtsc.c
-index bf9c03b..df04711 100644
---- a/mingw-w64-crt/intrincs/rdtsc.c
-+++ b/mingw-w64-crt/intrincs/rdtsc.c
-@@ -11,7 +11,7 @@
-   #define __has_builtin(x) 0
- #endif
- 
--#if !__has_builtin(__rdtsc)
-+#if !__has_builtin(__rdtsc) && !__has_builtin(__builtin_ia32_rdtsc)
- unsigned __int64 __rdtsc(void)
- {
- #ifdef _WIN64
--- 
-2.31.1
-
diff --git a/recipes-devtools/mingw-w64/files/0001-winpthreads-Add-__udivmoddi4.patch b/recipes-devtools/mingw-w64/files/0001-winpthreads-Add-__udivmoddi4.patch
deleted file mode 100644
index 3eb298e..0000000
--- a/recipes-devtools/mingw-w64/files/0001-winpthreads-Add-__udivmoddi4.patch
+++ /dev/null
@@ -1,52 +0,0 @@
-From 3b0af7327446ae179dc93b6a6ab1074251d348d0 Mon Sep 17 00:00:00 2001
-From: Khem Raj <raj.khem@gmail.com>
-Date: Fri, 30 Apr 2021 16:50:36 -0700
-Subject: [PATCH] winpthreads: Add __udivmoddi4
-
-Newer GCC ( 11.1.0+ ) is generating calls to __udivmoddi4 on i686
-architecture, therefore provide an implementation to avoid undefined
-references
-
-Upstream-Status: Pending
-Signed-off-by: Khem Raj <raj.khem@gmail.com>
----
- .../winpthreads/src/libgcc/dll_math.c            | 16 +++++++++++++++-
- 1 file changed, 15 insertions(+), 1 deletion(-)
-
-diff --git a/mingw-w64-libraries/winpthreads/src/libgcc/dll_math.c b/mingw-w64-libraries/winpthreads/src/libgcc/dll_math.c
-index aeec068..d170967 100644
---- a/mingw-w64-libraries/winpthreads/src/libgcc/dll_math.c
-+++ b/mingw-w64-libraries/winpthreads/src/libgcc/dll_math.c
-@@ -121,6 +121,7 @@ u_quad_t	__udivdi3(u_quad_t a, u_quad_t b);
- u_quad_t	__umoddi3(u_quad_t a, u_quad_t b);
- int		__ucmpdi2(u_quad_t a, u_quad_t b);
- quad_t	__divmoddi4(quad_t a, quad_t b, quad_t *rem);
-+u_quad_t	__udivmoddi4(u_quad_t a, u_quad_t b, u_quad_t *rem);
- 
- #endif /* !_LIBKERN_QUAD_H_ */
- 
-@@ -573,7 +574,20 @@ __divmoddi4(a, b, rem)
- 	return (negq ? -uq : uq);
- }
- 
-+/*
-+ * Divide two unsigned quads.
-+ * This function is new in GCC 7.
-+ */
-+u_quad_t
-+__udivmoddi4(a, b, rem)
-+	u_quad_t a, b, *rem;
-+{
-+	u_quad_t q = __udivdi3(a, b);
-+	if (rem)
-+		*rem = a - b * q;
-+	return q;
-+}
-+
- #else
- static int __attribute__((unused)) dummy;
- #endif /*deined (_X86_) && !defined (__x86_64__)*/
--
--- 
-2.31.1
-
diff --git a/recipes-devtools/mingw-w64/mingw-w64.inc b/recipes-devtools/mingw-w64/mingw-w64.inc
index d40d4a5..322fb79 100644
--- a/recipes-devtools/mingw-w64/mingw-w64.inc
+++ b/recipes-devtools/mingw-w64/mingw-w64.inc
@@ -5,9 +5,7 @@ COMPATIBLE_HOST = ".*-mingw.*"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2"
 
-SRC_URI[sha256sum] = "44c740ea6ab3924bc3aa169bad11ad3c5766c5c8459e3126d44eabb8735a5762"
+SRC_URI[sha256sum] = "1929b94b402f5ff4d7d37a9fe88daa9cc55515a6134805c104d1794ae22a4181"
 
 UPSTREAM_CHECK_URI = "http://sourceforge.net/projects/mingw-w64/files/mingw-w64/mingw-w64-release/"
 UPSTREAM_CHECK_REGEX = "mingw-w64-v(?P<pver>(\d+[\.\-_]*)+)\.tar"
-
-
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_8.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_9.0.0.bb
similarity index 100%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_8.0.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_9.0.0.bb
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_8.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb
similarity index 88%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_8.0.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb
index 02132c1..e2ca6a5 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_8.0.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb
@@ -2,8 +2,6 @@ DESCRIPTION = "Runtime libraries from MinGW-w64 project"
 
 require mingw-w64.inc
 
-SRC_URI += "file://0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch;striplevel=2"
-
 S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-crt"
 B = "${WORKDIR}/build-${TARGET_SYS}"
 
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_9.0.0.bb
similarity index 87%
rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb
rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_9.0.0.bb
index 38092dc..fb7e54e 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_9.0.0.bb
@@ -2,8 +2,6 @@ DESCRIPTION = "Winpthreads runtime libraries from MinGW-w64 project"
 
 require mingw-w64.inc
 
-SRC_URI += "file://0001-winpthreads-Add-__udivmoddi4.patch;striplevel=3"
-
 S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-libraries/winpthreads"
 B = "${WORKDIR}/build-${TARGET_SYS}"
 
-- 
2.35.1


