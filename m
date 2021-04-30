Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web12.1248.1619827170092041532
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Apr 2021 16:59:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=L4GaOy5m;
 spf=pass (domain: gmail.com, ip: 209.85.215.178, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f178.google.com with SMTP id z16so9542871pga.1
        for <yocto@lists.yoctoproject.org>; Fri, 30 Apr 2021 16:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MtauGit7KqFbjzFjln31Eh3qZ3C6u3caoREofLeZA7Q=;
        b=L4GaOy5mBz1IatA4++PLFpziOnzrFVCDSW25QjqMyu50kF0xSVUD657qWXm5dAbsmA
         z6BGptzEXv9NoULVmYeAXARdrw70DOnpqej0/TcDFgyrtxYq6ugLkNTuoteWzHIsO9ac
         Y3RcOMrOxCKzr85gwZlPA6r+dKj6zvpyxMdlD+RkiIbDuI/HXg5626qdq6oxlTiCcK0p
         vEhSX5WwpxxROOTO3LujAO1ZF7oAOC/gAh69IA0onvzLQH/C3Fd/a1Wwp4+trmQVS4O3
         RhlKWJTx7iAIMWGtFTudoqHSy3rll9TFAp4xYqdbapN0QmYCL+WlUIGxnsjAx611P3SL
         sO+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MtauGit7KqFbjzFjln31Eh3qZ3C6u3caoREofLeZA7Q=;
        b=T2S2uxMylH46s5fFJNn9Vyf7PPoripaAiH3ETy26wpUGsxfgjvHnSM522rAU35NfXb
         S8Oo4pv1ig6AzkEaCHbaUiRZJo43jwcUo4qP/QKbcrdLXLUp5pb7HfkGukpLJEdiU1tQ
         K61CQrlHtcZ0OfHGZMcvY8m3Td7FtZkcm3b1/oInPSsSVjRBUdJqMbNKyrK0MKnUtsYL
         Cq+LZeDzXpzGOB0ml7qfOfbDNoNATvRTWL4ALO4c6B4QaKcb1nMwRk/+Jz7KhfR9nurw
         ZZkyIVcXHxG02wFl03VBSkuuUyNVzup5lhY24JxkqqbLbJ6N5p9bcYKypEGVoO6WbIwp
         d8QQ==
X-Gm-Message-State: AOAM53156y/G+g253eYJGnuMjqzz9gBeWFzSMVTBdr6akprKmoAv1clr
	3jyh4ZJaszKKk7ttOJKl21L6FygWvoO2Og==
X-Google-Smtp-Source: ABdhPJw84s24OciEUzlO2d5qahp97uR2b3T1jIayufSo133C5B+QblehrVDqtot4bkf+BXBpNrs8iA==
X-Received: by 2002:a65:4303:: with SMTP id j3mr6865347pgq.55.1619827169343;
        Fri, 30 Apr 2021 16:59:29 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::ef3])
        by smtp.gmail.com with ESMTPSA id a16sm560557pfc.37.2021.04.30.16.59.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Apr 2021 16:59:28 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Khem Raj <raj.khem@gmail.com>
Subject: [meta-mingw] [PATCH 2/2] nativesdk-mingw-w64-winpthreads: Implement __udivmoddi4
Date: Fri, 30 Apr 2021 16:59:20 -0700
Message-Id: <20210430235920.3800985-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210430235920.3800985-1-raj.khem@gmail.com>
References: <20210430235920.3800985-1-raj.khem@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fixes build with gcc 11+

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../0001-winpthreads-Add-__udivmoddi4.patch   | 52 +++++++++++++++++++
 .../nativesdk-mingw-w64-winpthreads_8.0.0.bb  |  2 +
 2 files changed, 54 insertions(+)
 create mode 100644 recipes-devtools/mingw-w64/files/0001-winpthreads-Add-__udivmoddi4.patch

diff --git a/recipes-devtools/mingw-w64/files/0001-winpthreads-Add-__udivmoddi4.patch b/recipes-devtools/mingw-w64/files/0001-winpthreads-Add-__udivmoddi4.patch
new file mode 100644
index 0000000..3eb298e
--- /dev/null
+++ b/recipes-devtools/mingw-w64/files/0001-winpthreads-Add-__udivmoddi4.patch
@@ -0,0 +1,52 @@
+From 3b0af7327446ae179dc93b6a6ab1074251d348d0 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Fri, 30 Apr 2021 16:50:36 -0700
+Subject: [PATCH] winpthreads: Add __udivmoddi4
+
+Newer GCC ( 11.1.0+ ) is generating calls to __udivmoddi4 on i686
+architecture, therefore provide an implementation to avoid undefined
+references
+
+Upstream-Status: Pending
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ .../winpthreads/src/libgcc/dll_math.c            | 16 +++++++++++++++-
+ 1 file changed, 15 insertions(+), 1 deletion(-)
+
+diff --git a/mingw-w64-libraries/winpthreads/src/libgcc/dll_math.c b/mingw-w64-libraries/winpthreads/src/libgcc/dll_math.c
+index aeec068..d170967 100644
+--- a/mingw-w64-libraries/winpthreads/src/libgcc/dll_math.c
++++ b/mingw-w64-libraries/winpthreads/src/libgcc/dll_math.c
+@@ -121,6 +121,7 @@ u_quad_t	__udivdi3(u_quad_t a, u_quad_t b);
+ u_quad_t	__umoddi3(u_quad_t a, u_quad_t b);
+ int		__ucmpdi2(u_quad_t a, u_quad_t b);
+ quad_t	__divmoddi4(quad_t a, quad_t b, quad_t *rem);
++u_quad_t	__udivmoddi4(u_quad_t a, u_quad_t b, u_quad_t *rem);
+ 
+ #endif /* !_LIBKERN_QUAD_H_ */
+ 
+@@ -573,7 +574,20 @@ __divmoddi4(a, b, rem)
+ 	return (negq ? -uq : uq);
+ }
+ 
++/*
++ * Divide two unsigned quads.
++ * This function is new in GCC 7.
++ */
++u_quad_t
++__udivmoddi4(a, b, rem)
++	u_quad_t a, b, *rem;
++{
++	u_quad_t q = __udivdi3(a, b);
++	if (rem)
++		*rem = a - b * q;
++	return q;
++}
++
+ #else
+ static int __attribute__((unused)) dummy;
+ #endif /*deined (_X86_) && !defined (__x86_64__)*/
+-
+-- 
+2.31.1
+
diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb
index e694e5b..814268d 100644
--- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb
+++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb
@@ -2,6 +2,8 @@ DESCRIPTION = "Winpthreads runtime libraries from MinGW-w64 project"
 
 require mingw-w64.inc
 
+SRC_URI += "file://0001-winpthreads-Add-__udivmoddi4.patch;striplevel=3"
+
 S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-libraries/winpthreads"
 B = "${WORKDIR}/build-${TARGET_SYS}"
 
-- 
2.31.1

