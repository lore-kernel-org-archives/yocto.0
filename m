Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48628C83F18
	for <webhook@archiver.kernel.org>; Mon, 28 Aug 2023 09:44:58 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web10.9870.1693215888314458816
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Aug 2023 02:44:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=QocaR33o;
 spf=pass (domain: snapchat.com, ip: 209.85.208.44, mailfrom: ecordonnier@snapchat.com)
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5230a22cfd1so3824063a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 28 Aug 2023 02:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1693215886; x=1693820686;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=euRjS/ZJ4hj4o1gEavsJOWNylyB5GEly8YDw8LfNBIA=;
        b=QocaR33oUaoLqHAHJrlsh5yYHFfUXrVs+icXBLJkEG368DQNrEwzDRcmvUpmF26pt4
         ilcbFWdV44FZe7gW+KNmwfJlZ92SGDD1Cnl97NTGOWiHuatk8JYJaA7rSBGMtdPx/6Hz
         /ti9F4UXh0xsaP9UtWr4hVcAxuFx/urvfJtuc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693215886; x=1693820686;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=euRjS/ZJ4hj4o1gEavsJOWNylyB5GEly8YDw8LfNBIA=;
        b=JlYO4rqGAuTxECt8nQ3t8jBxyE7EIEZ7gHt82sIrMlhJroHpQRSGP+JiH2YDQY8cYD
         HeXGRx4pOokvabo142YbRtGnhy0nZTPB7fjfgNwtedw6uac5UpT17n6nu4YlQ8WCERJf
         gbp88Z20OU4kHORAjTAw2yVOVOq3wXkX26yA3hOb04I7gAqNYpIEiUavtu8WtWkeEKrJ
         JP7QvV0cGpzHq0ikzkvCyAcQQa2bdf91HONlmdfdOiOfZaIcZKaVhFDayawGnv9/WRPH
         ndvSw3FgFbra8L7PzgxAQzHmk4kTUKYflcsNISK7UPoFYGaSiUQwTG9WKsHKyjET3smj
         ahpA==
X-Gm-Message-State: AOJu0Yy8Dv5KSet/pUSGOuDNOWQ6IrvNwi35xI1PJg/f/AiHx1FsPCJC
	VFAOLtdy9mkEAEBKSySiyfbo1EO2vsttDtUfoHMe6w==
X-Google-Smtp-Source: AGHT+IEMa3lnYthxsBvNPcDL6ew1vWYAIPxaq8QMWNSOhWoGJuGSaDDC6WDan/dhIBwxUcZG5lrmVw==
X-Received: by 2002:a17:906:1c9:b0:99d:ff60:6ff0 with SMTP id 9-20020a17090601c900b0099dff606ff0mr17133939ejj.21.1693215886025;
        Mon, 28 Aug 2023 02:44:46 -0700 (PDT)
Received: from lj8k2dq3.sc-core.net ([85.237.126.22])
        by smtp.gmail.com with ESMTPSA id ha19-20020a170906a89300b00989027eb30asm4396556ejb.158.2023.08.28.02.44.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 02:44:45 -0700 (PDT)
From: ecordonnier@snap.com
To: yocto@lists.yoctoproject.org
Cc: Etienne Cordonnier <ecordonnier@snap.com>
Subject: [meta-darwin][PATCH 1/2] gcc: rebase patches on top of gcc 11.4
Date: Mon, 28 Aug 2023 11:44:20 +0200
Message-Id: <20230828094421.763574-1-ecordonnier@snap.com>
X-Mailer: git-send-email 2.36.1.vfs.0.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Aug 2023 09:44:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60901

From: Etienne Cordonnier <ecordonnier@snap.com>

poky kirkstone 4.0.12 updates gcc from 11.3 to 11.4, thus
the patches need to be rebased.

- The changes of 0001-libstdcxx-Rename-null-terminated-to-avoid-collision.patch
  are in 11.4 so it can be removed.
- upstream introduced DARWIN_MIN_LIB_VERSION instead of the hard-coded 10.4, so assign
  this variable the value 12.3
- use include path of gcc 11.4.0

Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
---
 .../clang/0037-Fixes_for_Darwin_SDKs.patch    |  4 +-
 ...e-null-terminated-to-avoid-collision.patch | 81 -------------------
 ...00-change-macosx-version-min-to-12.3.patch | 29 +++----
 recipes-devtools/gcc/gcc-source_%.bbappend    |  1 -
 4 files changed, 11 insertions(+), 104 deletions(-)
 delete mode 100644 recipes-devtools/gcc/files/0001-libstdcxx-Rename-null-terminated-to-avoid-collision.patch

diff --git a/recipes-devtools/clang/clang/0037-Fixes_for_Darwin_SDKs.patch b/recipes-devtools/clang/clang/0037-Fixes_for_Darwin_SDKs.patch
index 024894b..c6db8d9 100644
--- a/recipes-devtools/clang/clang/0037-Fixes_for_Darwin_SDKs.patch
+++ b/recipes-devtools/clang/clang/0037-Fixes_for_Darwin_SDKs.patch
@@ -22,13 +22,13 @@ index f7da3f187814..0656f5cbad69 100644
 -                                                "4.2.1",
 -                                                "i686-apple-darwin10",
 -                                                arch == llvm::Triple::x86_64 ? "x86_64" : "");
-+                                                "11.3.0",
++                                                "11.4.0",
 +                                                "x86_64#SDK_VENDOR#-darwin21",
 +                                                "");
        IsBaseFound |= AddGnuCPlusPlusIncludePaths(DriverArgs, CC1Args, UsrIncludeCxx,
 -                                                "4.0.0", "i686-apple-darwin8",
 -                                                 "");
-+                                                "11.3.0", "", "");
++                                                "11.4.0", "", "");
 +      {
 +          const char *S = ::getenv("YOCTO_SDKPATH");
 +          if (S && (S[0] != '\0')) {
diff --git a/recipes-devtools/gcc/files/0001-libstdcxx-Rename-null-terminated-to-avoid-collision.patch b/recipes-devtools/gcc/files/0001-libstdcxx-Rename-null-terminated-to-avoid-collision.patch
deleted file mode 100644
index ff7b912..0000000
--- a/recipes-devtools/gcc/files/0001-libstdcxx-Rename-null-terminated-to-avoid-collision.patch
+++ /dev/null
@@ -1,81 +0,0 @@
-From d1201dbf55a11d391030914985ba6b443e59baa5 Mon Sep 17 00:00:00 2001
-From: Mark Mentovai <mark@mentovai.com>
-Date: Mon, 13 Jun 2022 16:40:19 +0100
-Subject: [PATCH] libstdc++: Rename __null_terminated to avoid collision with
- Apple SDK
-
-The macOS 13 SDK (and equivalent-version iOS and other Apple OS SDKs)
-contain this definition in <sys/cdefs.h>:
-
-863  #define __null_terminated
-
-This collides with the use of __null_terminated in libstdc++'s
-experimental fs_path.h.
-
-As libstdc++'s use of this token is entirely internal to fs_path.h, the
-simplest workaround, renaming it, is most appropriate. Here, it's
-renamed to __nul_terminated, referencing the NUL ('\0') value that is
-used to terminate the strings in the context in which this tag structure
-is used.
-
-libstdc++-v3/ChangeLog:
-
-	* include/experimental/bits/fs_path.h (__detail::__null_terminated):
-	Rename to __nul_terminated to avoid colliding with a macro in
-	Apple's SDK.
-
-Signed-off-by: Mark Mentovai <mark@mentovai.com>
-(cherry picked from commit 254e88b3d7e8abcc236be3451609834371cf4d5d)
----
- libstdc++-v3/include/experimental/bits/fs_path.h | 12 ++++++------
- 1 file changed, 6 insertions(+), 6 deletions(-)
-
-diff --git a/libstdc++-v3/include/experimental/bits/fs_path.h b/libstdc++-v3/include/experimental/bits/fs_path.h
-index b0825ba76e803..19d246100cb5a 100644
---- a/libstdc++-v3/include/experimental/bits/fs_path.h
-+++ b/libstdc++-v3/include/experimental/bits/fs_path.h
-@@ -140,10 +140,10 @@ namespace __detail
-     inline _Source
-     _S_range_begin(_Source __begin) { return __begin; }
- 
--  struct __null_terminated { };
-+  struct __nul_terminated { };
- 
-   template<typename _Source>
--    inline __null_terminated
-+    inline __nul_terminated
-     _S_range_end(_Source) { return {}; }
- 
-   template<typename _CharT, typename _Traits, typename _Alloc>
-@@ -459,11 +459,11 @@ namespace __detail
-       struct _Cvt;
- 
-     static string_type
--    _S_convert(value_type* __src, __detail::__null_terminated)
-+    _S_convert(value_type* __src, __detail::__nul_terminated)
-     { return string_type(__src); }
- 
-     static string_type
--    _S_convert(const value_type* __src, __detail::__null_terminated)
-+    _S_convert(const value_type* __src, __detail::__nul_terminated)
-     { return string_type(__src); }
- 
-     template<typename _Iter>
-@@ -477,7 +477,7 @@ namespace __detail
- 
-     template<typename _InputIterator>
-       static string_type
--      _S_convert(_InputIterator __src, __detail::__null_terminated)
-+      _S_convert(_InputIterator __src, __detail::__nul_terminated)
-       {
- 	auto __s = _S_string_from_iter(__src);
- 	return _S_convert(__s.c_str(), __s.c_str() + __s.size());
-@@ -504,7 +504,7 @@ namespace __detail
- 
-     template<typename _InputIterator>
-       static string_type
--      _S_convert_loc(_InputIterator __src, __detail::__null_terminated,
-+      _S_convert_loc(_InputIterator __src, __detail::__nul_terminated,
- 		     const std::locale& __loc)
-       {
- 	const std::string __s = _S_string_from_iter(__src);
diff --git a/recipes-devtools/gcc/files/0100-change-macosx-version-min-to-12.3.patch b/recipes-devtools/gcc/files/0100-change-macosx-version-min-to-12.3.patch
index 5b28bf1..d1f22b9 100644
--- a/recipes-devtools/gcc/files/0100-change-macosx-version-min-to-12.3.patch
+++ b/recipes-devtools/gcc/files/0100-change-macosx-version-min-to-12.3.patch
@@ -1,4 +1,4 @@
-From 07ee0f0eb8442174b2e5d39862bd99952c2cfb64 Mon Sep 17 00:00:00 2001
+From 8f7f5820b24f57460e26440e770c8407ec11e10d Mon Sep 17 00:00:00 2001
 From: Etienne Cordonnier <ecordonnier@snap.com>
 Date: Thu, 11 Aug 2022 15:39:44 +0200
 Subject: [PATCH] change macosx-version-min to 12.3
@@ -6,33 +6,22 @@ Subject: [PATCH] change macosx-version-min to 12.3
 Upstream-Status: Inappropriate [OE specific]
 Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
 ---
- libgcc/config/t-darwin | 8 ++++----
- 1 file changed, 4 insertions(+), 4 deletions(-)
+ libgcc/config/t-darwin | 3 +++
+ 1 file changed, 3 insertions(+)
 
 diff --git a/libgcc/config/t-darwin b/libgcc/config/t-darwin
-index 299d26c2c96..c7117023277 100644
+index a3bb70c6a0a..8923a375c68 100644
 --- a/libgcc/config/t-darwin
 +++ b/libgcc/config/t-darwin
-@@ -1,15 +1,15 @@
+@@ -1,5 +1,8 @@
  # Set this as a minimum (unless overriden by arch t-files) since it's a
  # reasonable lowest common denominator that works for all our archs.
--HOST_LIBGCC2_CFLAGS += -mmacosx-version-min=10.4
-+HOST_LIBGCC2_CFLAGS += -mmacosx-version-min=12.3
++DARWIN_MIN_CRT_VERSION="-mmacosx-version-min=12.3"
++DARWIN_MIN_LIB_VERSION="-mmacosx-version-min=12.3"
++
+ HOST_LIBGCC2_CFLAGS += $(DARWIN_MIN_LIB_VERSION)
  
  crt3.o: $(srcdir)/config/darwin-crt3.c
--	$(crt_compile) -mmacosx-version-min=10.4 -c $<
-+	$(crt_compile) -mmacosx-version-min=12.3 -c $<
- 
- crttms.o: $(srcdir)/config/darwin-crt-tm.c
--	$(crt_compile) -mmacosx-version-min=10.4 -DSTART -c $<
-+	$(crt_compile) -mmacosx-version-min=12.3 -DSTART -c $<
- 
- crttme.o: $(srcdir)/config/darwin-crt-tm.c
--	$(crt_compile) -mmacosx-version-min=10.4 -DEND -c $<
-+	$(crt_compile) -mmacosx-version-min=12.3 -DEND -c $<
- 
- # Make emutls weak so that we can deal with -static-libgcc, override the
- # hidden visibility when this is present in libgcc_eh.
 -- 
 2.36.1.vfs.0.0
 
diff --git a/recipes-devtools/gcc/gcc-source_%.bbappend b/recipes-devtools/gcc/gcc-source_%.bbappend
index a2b117a..110462d 100644
--- a/recipes-devtools/gcc/gcc-source_%.bbappend
+++ b/recipes-devtools/gcc/gcc-source_%.bbappend
@@ -4,5 +4,4 @@ SRC_URI:append = "\
     file://0099-nativesdk-gcc-darwin.patch \
     file://0100-change-macosx-version-min-to-12.3.patch \
     file://0101-optional-libstdc.patch \
-    file://0001-libstdcxx-Rename-null-terminated-to-avoid-collision.patch \
 "
-- 
2.36.1.vfs.0.0


