Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web10.7281.1618365662160516882
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 19:01:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=r+OO/C/A;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id w8so6906590plg.9
        for <yocto@lists.yoctoproject.org>; Tue, 13 Apr 2021 19:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cg9AM9V55oL41hltJL4DHZOnruGQZykCGT0P6niVAqg=;
        b=r+OO/C/AE/cDTJ8HaKL5/sgFcEzmPu0GqdW4jNKfEJWnPjgDT1Q6tQ10EIbIDIZGaz
         LPd6WGBGlLoc7qNut6VqU3LROJf1TEMZDFvOL6QPi8U7oUE/JToD9SDn7yrgEflsjVEw
         /NYCGFKdaYcspL3lLSBDhxhEWAywph1eaLQB+TmY1eEICJ/5FweOXtre7xN8s46gUV8g
         WEIJF9DdPGyUao5+3PY3DLlhy0WdHCmbT+pfFjgPax6rdPOr8P/FhT/GWo6t8tdyNlx0
         r0Abhkjiq/+yZ/mvoFYZ9mGj7Q95M99LD5+3H2L9anF94KEGN07SENJxNdwi5B8n/ftp
         u4Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cg9AM9V55oL41hltJL4DHZOnruGQZykCGT0P6niVAqg=;
        b=Sw2cXzC2BIF5ldhMH9Pkak6aRmdfUVC4rSitzd6WajNbOZizUaMD1oReG86tZh0bf8
         A8PXwt6r0b1V1naizkL3eu1IZnD59enqA2+ZQ+yWyVyLnbZSFs++5GzLEgRZXacZ78CP
         Wa/bAQgeQrUDoUG1onLf3sz5I93o6NU8qvtyLj+HoVxbvQGHKdEZrk4f0eJgEhSYdKeR
         3rmqQNMil9pK2ok6K45r2wE6M8JfuSn5u225xj12JwR+0b/AhNr7koXpQYfYMTGzrrfC
         RGvajcVPYdXmo14zf2tODsWYp9l3FfkWd88c8rI8OEQat2XSJ/gmZoBUWfIksD91f4UU
         9b/g==
X-Gm-Message-State: AOAM532YgFfrDxmsEtsn6pf9d2Jd+hRWoY0cpZ1bn6ChIqm0kqEGvWhc
	SR79dOmODp2TAp1RkISiDZN4ijeHdVNvAg==
X-Google-Smtp-Source: ABdhPJwrPHWBI/PDk+UFpWuhXNTFfZSKVJlhnEnKE9eCQKvM/r6W0WLeVIU1zntiPzrmJir3IJOe2w==
X-Received: by 2002:a17:90a:ba05:: with SMTP id s5mr829315pjr.194.1618365661166;
        Tue, 13 Apr 2021 19:01:01 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::630])
        by smtp.gmail.com with ESMTPSA id e6sm15621830pgh.17.2021.04.13.19.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 19:01:00 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-mingw] [PATCH] mingw-w64: Check for __builtin_ia32_rdtsc
Date: Tue, 13 Apr 2021 19:00:58 -0700
Message-Id: <20210414020058.875501-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...rincs-Check-for-__builtin_ia32_rdtsc.patch | 33 +++++++++++++++++++
 .../nativesdk-mingw-w64-runtime_7.0.0.bb      |  2 ++
 2 files changed, 35 insertions(+)
 create mode 100644 recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch

diff --git a/recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch b/recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch
new file mode 100644
index 0000000..ce4ba81
--- /dev/null
+++ b/recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch
@@ -0,0 +1,33 @@
+From 346de7591f58015d111f4d4f3b001382c04d5557 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Tue, 13 Apr 2021 18:44:25 -0700
+Subject: [PATCH] intrincs: Check for __builtin_ia32_rdtsc
+
+on modern gcc ( >=4.6 ) __rdtsc function is implemented using
+special builtin function called __builtin_ia32_rdtsc, its actually
+a define in gcc, so __has_builtin check fails for __rdtsc even
+though it is defined to imply __builtin_ia32_rdtsc(), therefore
+check for existence of __builtin_ia32_rdtsc as well
+
+Upstream-Status: Pending
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ mingw-w64-crt/intrincs/rdtsc.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/mingw-w64-crt/intrincs/rdtsc.c b/mingw-w64-crt/intrincs/rdtsc.c
+index bf9c03b..df04711 100644
+--- a/mingw-w64-crt/intrincs/rdtsc.c
++++ b/mingw-w64-crt/intrincs/rdtsc.c
+@@ -11,7 +11,7 @@
+   #define __has_builtin(x) 0
+ #endif
+ 
+-#if !__has_builtin(__rdtsc)
++#if !__has_builtin(__rdtsc) && !__has_builtin(__builtin_ia32_rdtsc)
+ unsigned __int64 __rdtsc(void)
+ {
+ #ifdef _WIN64
+-- 
+2.31.1
+
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
index 9f79ffe..0368841 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_7.0.0.bb
@@ -2,6 +2,8 @@ DESCRIPTION = "Runtime libraries from MinGW-w64 project"
 
 require mingw-w64.inc
 
+SRC_URI += "file://0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch;striplevel=2"
+
 S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-crt"
 B = "${WORKDIR}/build-${TARGET_SYS}"
 
-- 
2.31.1

