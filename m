Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9EE7C433EF
	for <webhook@archiver.kernel.org>; Mon, 14 Feb 2022 04:44:51 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web09.30413.1644813888879647929
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 20:44:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ELYSD/0w;
 spf=pass (domain: gmail.com, ip: 209.85.222.173,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id bs32so13504015qkb.1
        for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 20:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dykfb0gE8Ewu9SVTcWV1DuhbdYuhbJ+62SjcbprvM/M=;
        b=ELYSD/0wpj0yPO0miGJZR3ExaR9eEs8HhF5MEVouKCylVmFU6yiVinac+I3+95NAa1
         kP0CiHQhomxqkRda+z/6D1GJMV7rU6x1hdVcO7NyT17FTZc/mEfbQSCW/Xv5/1QzRrXl
         UYoWTA44I24Pak/zSVgGecMulZ2mBoRT1Hg4Lv9Bq0bcliCNPi3lHl0UdxvGj23L0Do8
         YJOUq0Y0PxBkcgm5HL3TLb6fkmbvZgCV+Abol3UKk8ssKoSP0jJ4hXtZWsIZRndENXMM
         7ALKqDrlyULK6ZimEGl9lC4hiBfpU0x2n8YZ1SjKvZYv+siM+aFiLQE0y9Danx/ZxxZm
         xRUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dykfb0gE8Ewu9SVTcWV1DuhbdYuhbJ+62SjcbprvM/M=;
        b=vircfGJdz7T4/Tjj/NQdPZ1/3ApCDVtVHYV44OhlTuFAmo2rmxql76uHyiQ0PtZlrG
         X6hPNpmP4wfct3QyVoqoxH1Za0G+WSPU37xYQR0ZsjPrC2sRy59c7HMigphhrtm1U2OD
         Kwt94kuI4uoWelOd1VavNQdh5VHX1a1XwBcJSz/vnZT945/WuigPn6sS0oMqiPbGgxYR
         QeQgmkKO++8I1cdz+mVekYfybCzs5C37ckHlWivAXjjwvi2/Raw9yT3BF2U94ZprVlxo
         qnR+l9z7oz/OqMmM95m5Slx76HS7LkoC4pHrUROoW26MiKdDwn9BJ1SlaBLX55O6oqNC
         78Ig==
X-Gm-Message-State: AOAM5339unttcgduZj7xo1FvpEHlnqR6cxXsMqraZE8SOza6M9aMLsZW
	SlzmMbOegmRTKZGKDcceWv8wxvjdgk+VPQNPY4s=
X-Google-Smtp-Source: 
 ABdhPJwJ7D73gFj/gUT9Wu/rDY3eVBJFX0m0A6/NI3MSI0KPsBM7ODWzRibE2jnQaTPvxqRmvOL2LKW82KtEHN+1XJk=
X-Received: by 2002:a05:620a:152b:: with SMTP id
 n11mr6077817qkk.463.1644813887711;
 Sun, 13 Feb 2022 20:44:47 -0800 (PST)
MIME-Version: 1.0
References: <20220212184300.2850465-1-raj.khem@gmail.com>
 <6fb100df73ce2889cd2ce0c37a6945725d12360f.camel@linuxfoundation.org>
In-Reply-To: 
 <6fb100df73ce2889cd2ce0c37a6945725d12360f.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 13 Feb 2022 20:44:21 -0800
Message-ID: 
 <CAMKF1srSGtRxU-gvhE+_a0Qc0ovZ1dZqJMSyOnQMfhDbmF0r9A@mail.gmail.com>
Subject: Re: [yocto] [meta-mingw] [PATCH 1/2] mingw-w64: Upgrade
 runtime/headers/winpthreads to 9.0.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 Joshua Watt <jpewhacker@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Feb 2022 04:44:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56180

On Sun, Feb 13, 2022 at 6:26 AM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Sat, 2022-02-12 at 10:42 -0800, Khem Raj wrote:
> > Drop upstreamed fixes for rdtsc [1] __udivmoddi4[2]
> >
> > [1] https://sourceforge.net/p/mingw-w64/mingw-w64/ci/6a0e9165008f731bccadfc41a59719cf7c8efc02/
> > [2] https://sourceforge.net/p/mingw-w64/mingw-w64/ci/ab0fa5ad3c67d634fd7754d9473d1bb7051f9bf0/
> >
> > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > ---
> >  ...rincs-Check-for-__builtin_ia32_rdtsc.patch | 33 ------------
> >  .../0001-winpthreads-Add-__udivmoddi4.patch   | 52 -------------------
> >  recipes-devtools/mingw-w64/mingw-w64.inc      |  4 +-
> >  ...b => nativesdk-mingw-w64-headers_9.0.0.bb} |  0
> >  ...b => nativesdk-mingw-w64-runtime_9.0.0.bb} |  2 -
> >  ... nativesdk-mingw-w64-winpthreads_9.0.0.bb} |  2 -
> >  6 files changed, 1 insertion(+), 92 deletions(-)
> >  delete mode 100644 recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch
> >  delete mode 100644 recipes-devtools/mingw-w64/files/0001-winpthreads-Add-__udivmoddi4.patch
> >  rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-headers_8.0.0.bb => nativesdk-mingw-w64-headers_9.0.0.bb} (100%)
> >  rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-runtime_8.0.0.bb => nativesdk-mingw-w64-runtime_9.0.0.bb} (88%)
> >  rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-winpthreads_8.0.0.bb => nativesdk-mingw-w64-winpthreads_9.0.0.bb} (87%)
> >
> > diff --git a/recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch b/recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch
> > deleted file mode 100644
> > index ce4ba81..0000000
> > --- a/recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch
> > +++ /dev/null
> > @@ -1,33 +0,0 @@
> > -From 346de7591f58015d111f4d4f3b001382c04d5557 Mon Sep 17 00:00:00 2001
> > -From: Khem Raj <raj.khem@gmail.com>
> > -Date: Tue, 13 Apr 2021 18:44:25 -0700
> > -Subject: [PATCH] intrincs: Check for __builtin_ia32_rdtsc
> > -
> > -on modern gcc ( >=4.6 ) __rdtsc function is implemented using
> > -special builtin function called __builtin_ia32_rdtsc, its actually
> > -a define in gcc, so __has_builtin check fails for __rdtsc even
> > -though it is defined to imply __builtin_ia32_rdtsc(), therefore
> > -check for existence of __builtin_ia32_rdtsc as well
> > -
> > -Upstream-Status: Pending
> > -Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > ----
> > - mingw-w64-crt/intrincs/rdtsc.c | 2 +-
> > - 1 file changed, 1 insertion(+), 1 deletion(-)
> > -
> > -diff --git a/mingw-w64-crt/intrincs/rdtsc.c b/mingw-w64-crt/intrincs/rdtsc.c
> > -index bf9c03b..df04711 100644
> > ---- a/mingw-w64-crt/intrincs/rdtsc.c
> > -+++ b/mingw-w64-crt/intrincs/rdtsc.c
> > -@@ -11,7 +11,7 @@
> > -   #define __has_builtin(x) 0
> > - #endif
> > -
> > --#if !__has_builtin(__rdtsc)
> > -+#if !__has_builtin(__rdtsc) && !__has_builtin(__builtin_ia32_rdtsc)
> > - unsigned __int64 __rdtsc(void)
> > - {
> > - #ifdef _WIN64
> > ---
> > -2.31.1
> > -
> > diff --git a/recipes-devtools/mingw-w64/files/0001-winpthreads-Add-__udivmoddi4.patch b/recipes-devtools/mingw-w64/files/0001-winpthreads-Add-__udivmoddi4.patch
> > deleted file mode 100644
> > index 3eb298e..0000000
> > --- a/recipes-devtools/mingw-w64/files/0001-winpthreads-Add-__udivmoddi4.patch
> > +++ /dev/null
> > @@ -1,52 +0,0 @@
> > -From 3b0af7327446ae179dc93b6a6ab1074251d348d0 Mon Sep 17 00:00:00 2001
> > -From: Khem Raj <raj.khem@gmail.com>
> > -Date: Fri, 30 Apr 2021 16:50:36 -0700
> > -Subject: [PATCH] winpthreads: Add __udivmoddi4
> > -
> > -Newer GCC ( 11.1.0+ ) is generating calls to __udivmoddi4 on i686
> > -architecture, therefore provide an implementation to avoid undefined
> > -references
> > -
> > -Upstream-Status: Pending
> > -Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > ----
> > - .../winpthreads/src/libgcc/dll_math.c            | 16 +++++++++++++++-
> > - 1 file changed, 15 insertions(+), 1 deletion(-)
> > -
> > -diff --git a/mingw-w64-libraries/winpthreads/src/libgcc/dll_math.c b/mingw-w64-libraries/winpthreads/src/libgcc/dll_math.c
> > -index aeec068..d170967 100644
> > ---- a/mingw-w64-libraries/winpthreads/src/libgcc/dll_math.c
> > -+++ b/mingw-w64-libraries/winpthreads/src/libgcc/dll_math.c
> > -@@ -121,6 +121,7 @@ u_quad_t __udivdi3(u_quad_t a, u_quad_t b);
> > - u_quad_t    __umoddi3(u_quad_t a, u_quad_t b);
> > - int         __ucmpdi2(u_quad_t a, u_quad_t b);
> > - quad_t      __divmoddi4(quad_t a, quad_t b, quad_t *rem);
> > -+u_quad_t    __udivmoddi4(u_quad_t a, u_quad_t b, u_quad_t *rem);
> > -
> > - #endif /* !_LIBKERN_QUAD_H_ */
> > -
> > -@@ -573,7 +574,20 @@ __divmoddi4(a, b, rem)
> > -     return (negq ? -uq : uq);
> > - }
> > -
> > -+/*
> > -+ * Divide two unsigned quads.
> > -+ * This function is new in GCC 7.
> > -+ */
> > -+u_quad_t
> > -+__udivmoddi4(a, b, rem)
> > -+    u_quad_t a, b, *rem;
> > -+{
> > -+    u_quad_t q = __udivdi3(a, b);
> > -+    if (rem)
> > -+            *rem = a - b * q;
> > -+    return q;
> > -+}
> > -+
> > - #else
> > - static int __attribute__((unused)) dummy;
> > - #endif /*deined (_X86_) && !defined (__x86_64__)*/
> > --
> > ---
> > -2.31.1
> > -
> > diff --git a/recipes-devtools/mingw-w64/mingw-w64.inc b/recipes-devtools/mingw-w64/mingw-w64.inc
> > index d40d4a5..322fb79 100644
> > --- a/recipes-devtools/mingw-w64/mingw-w64.inc
> > +++ b/recipes-devtools/mingw-w64/mingw-w64.inc
> > @@ -5,9 +5,7 @@ COMPATIBLE_HOST = ".*-mingw.*"
> >
> >  SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2"
> >
> > -SRC_URI[sha256sum] = "44c740ea6ab3924bc3aa169bad11ad3c5766c5c8459e3126d44eabb8735a5762"
> > +SRC_URI[sha256sum] = "1929b94b402f5ff4d7d37a9fe88daa9cc55515a6134805c104d1794ae22a4181"
> >
> >  UPSTREAM_CHECK_URI = "http://sourceforge.net/projects/mingw-w64/files/mingw-w64/mingw-w64-release/"
> >  UPSTREAM_CHECK_REGEX = "mingw-w64-v(?P<pver>(\d+[\.\-_]*)+)\.tar"
> > -
> > -
> > diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_8.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_9.0.0.bb
> > similarity index 100%
> > rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_8.0.0.bb
> > rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_9.0.0.bb
> > diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_8.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb
> > similarity index 88%
> > rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_8.0.0.bb
> > rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb
> > index 02132c1..e2ca6a5 100644
> > --- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_8.0.0.bb
> > +++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb
> > @@ -2,8 +2,6 @@ DESCRIPTION = "Runtime libraries from MinGW-w64 project"
> >
> >  require mingw-w64.inc
> >
> > -SRC_URI += "file://0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch;striplevel=2"
> > -
> >  S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-crt"
> >  B = "${WORKDIR}/build-${TARGET_SYS}"
> >
> > diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_9.0.0.bb
> > similarity index 87%
> > rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb
> > rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_9.0.0.bb
> > index 38092dc..fb7e54e 100644
> > --- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb
> > +++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_9.0.0.bb
> > @@ -2,8 +2,6 @@ DESCRIPTION = "Winpthreads runtime libraries from MinGW-w64 project"
> >
> >  require mingw-w64.inc
> >
> > -SRC_URI += "file://0001-winpthreads-Add-__udivmoddi4.patch;striplevel=3"
> > -
> >  S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-libraries/winpthreads"
> >  B = "${WORKDIR}/build-${TARGET_SYS}"
>
> With these two patches and the binutils upgrade we see a new issue:
>
> https://autobuilder.yoctoproject.org/typhoon/#/builders/89/builds/4733/steps/12/logs/stdio
>

thanks, sent a fix for diffutils.

> Cheers,
>
> Richard
>
>

