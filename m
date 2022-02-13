Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A416DC433F5
	for <webhook@archiver.kernel.org>; Sun, 13 Feb 2022 14:26:02 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web09.21462.1644762361658050993
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 06:26:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VTqz9Cfv;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id o34so4422839wms.1
        for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 06:26:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=snnPzxr5VXFcp3LiC6U1pOjAQFox8pVgbbrzvojN8IQ=;
        b=VTqz9Cfv73ujztQT2ceJrfYe54JwwGRi0zOT9uBgW/OtPnT1qtbEfuWvoXTOGlxL8O
         SIPbZ7JuPl7qjtJtG1n/K40tL3Q8e2/iT2evdZ1n9sYU9QH3kqDSwfv9Eakk/OuXDTUX
         OFGeTBrwxcLI/AsxRyPaWRwqWfDTjmKBM+/5k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=snnPzxr5VXFcp3LiC6U1pOjAQFox8pVgbbrzvojN8IQ=;
        b=VPxZ77T4qfjIkXduaCN++HQuGBVGj0aYznOseRinoHIPEmV/03jqeYKRC5wSVUMLsz
         vKWufdgMsZ8A0bY3Sx/Q1fecoRwgSi8DQBdXBtP1a+cdx3S1YLiBXxk/giKgNAxmjg/c
         YZw+eCuDSwQcdq3MPfK0wHp1wFVzIKq0U+SKYN/L72G9pVF0JGNtjvYGAv2B5vcWtxMS
         moEpnIZauWA4lR01+YJVwuqFeu4cw7Ud787bVsEGJI50v4lX8xr1vtXt09naZMGnvJwj
         HYHz8aLAdHfX0j1h3TP2xMp5fSAfLsVyMl2WeV2LzMzRargNv3vDB7L+ueQlNEIq6Qar
         aSkQ==
X-Gm-Message-State: AOAM533WVZp+OkdO74Qlu2BZE12pXNJVhJqtgxkKSXAyIkSTi2olaVtM
	qdal7HrwmjTKUwdZeArF2Z6vtQ==
X-Google-Smtp-Source: 
 ABdhPJzLqtj5LVcVpGysf9EsrsaDGIJssDfxswDwMCx6lG2HvMyLNilcwhawKxQ6ZfosUR9qXmBYrQ==
X-Received: by 2002:a05:600c:644:: with SMTP id
 p4mr7492322wmm.34.1644762360099;
        Sun, 13 Feb 2022 06:26:00 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:385:df26:3e57:9893?
 ([2001:8b0:aba:5f3c:385:df26:3e57:9893])
        by smtp.gmail.com with ESMTPSA id
 p8sm20229296wro.106.2022.02.13.06.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Feb 2022 06:25:59 -0800 (PST)
Message-ID: 
 <6fb100df73ce2889cd2ce0c37a6945725d12360f.camel@linuxfoundation.org>
Subject: Re: [yocto] [meta-mingw] [PATCH 1/2] mingw-w64: Upgrade
 runtime/headers/winpthreads to 9.0.0
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Date: Sun, 13 Feb 2022 14:25:56 +0000
In-Reply-To: <20220212184300.2850465-1-raj.khem@gmail.com>
References: <20220212184300.2850465-1-raj.khem@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 13 Feb 2022 14:26:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56171

On Sat, 2022-02-12 at 10:42 -0800, Khem Raj wrote:
> Drop upstreamed fixes for rdtsc [1] __udivmoddi4[2]
> 
> [1] https://sourceforge.net/p/mingw-w64/mingw-w64/ci/6a0e9165008f731bccadfc41a59719cf7c8efc02/
> [2] https://sourceforge.net/p/mingw-w64/mingw-w64/ci/ab0fa5ad3c67d634fd7754d9473d1bb7051f9bf0/
> 
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  ...rincs-Check-for-__builtin_ia32_rdtsc.patch | 33 ------------
>  .../0001-winpthreads-Add-__udivmoddi4.patch   | 52 -------------------
>  recipes-devtools/mingw-w64/mingw-w64.inc      |  4 +-
>  ...b => nativesdk-mingw-w64-headers_9.0.0.bb} |  0
>  ...b => nativesdk-mingw-w64-runtime_9.0.0.bb} |  2 -
>  ... nativesdk-mingw-w64-winpthreads_9.0.0.bb} |  2 -
>  6 files changed, 1 insertion(+), 92 deletions(-)
>  delete mode 100644 recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch
>  delete mode 100644 recipes-devtools/mingw-w64/files/0001-winpthreads-Add-__udivmoddi4.patch
>  rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-headers_8.0.0.bb => nativesdk-mingw-w64-headers_9.0.0.bb} (100%)
>  rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-runtime_8.0.0.bb => nativesdk-mingw-w64-runtime_9.0.0.bb} (88%)
>  rename recipes-devtools/mingw-w64/{nativesdk-mingw-w64-winpthreads_8.0.0.bb => nativesdk-mingw-w64-winpthreads_9.0.0.bb} (87%)
> 
> diff --git a/recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch b/recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch
> deleted file mode 100644
> index ce4ba81..0000000
> --- a/recipes-devtools/mingw-w64/files/0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch
> +++ /dev/null
> @@ -1,33 +0,0 @@
> -From 346de7591f58015d111f4d4f3b001382c04d5557 Mon Sep 17 00:00:00 2001
> -From: Khem Raj <raj.khem@gmail.com>
> -Date: Tue, 13 Apr 2021 18:44:25 -0700
> -Subject: [PATCH] intrincs: Check for __builtin_ia32_rdtsc
> -
> -on modern gcc ( >=4.6 ) __rdtsc function is implemented using
> -special builtin function called __builtin_ia32_rdtsc, its actually
> -a define in gcc, so __has_builtin check fails for __rdtsc even
> -though it is defined to imply __builtin_ia32_rdtsc(), therefore
> -check for existence of __builtin_ia32_rdtsc as well
> -
> -Upstream-Status: Pending
> -Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ----
> - mingw-w64-crt/intrincs/rdtsc.c | 2 +-
> - 1 file changed, 1 insertion(+), 1 deletion(-)
> -
> -diff --git a/mingw-w64-crt/intrincs/rdtsc.c b/mingw-w64-crt/intrincs/rdtsc.c
> -index bf9c03b..df04711 100644
> ---- a/mingw-w64-crt/intrincs/rdtsc.c
> -+++ b/mingw-w64-crt/intrincs/rdtsc.c
> -@@ -11,7 +11,7 @@
> -   #define __has_builtin(x) 0
> - #endif
> - 
> --#if !__has_builtin(__rdtsc)
> -+#if !__has_builtin(__rdtsc) && !__has_builtin(__builtin_ia32_rdtsc)
> - unsigned __int64 __rdtsc(void)
> - {
> - #ifdef _WIN64
> --- 
> -2.31.1
> -
> diff --git a/recipes-devtools/mingw-w64/files/0001-winpthreads-Add-__udivmoddi4.patch b/recipes-devtools/mingw-w64/files/0001-winpthreads-Add-__udivmoddi4.patch
> deleted file mode 100644
> index 3eb298e..0000000
> --- a/recipes-devtools/mingw-w64/files/0001-winpthreads-Add-__udivmoddi4.patch
> +++ /dev/null
> @@ -1,52 +0,0 @@
> -From 3b0af7327446ae179dc93b6a6ab1074251d348d0 Mon Sep 17 00:00:00 2001
> -From: Khem Raj <raj.khem@gmail.com>
> -Date: Fri, 30 Apr 2021 16:50:36 -0700
> -Subject: [PATCH] winpthreads: Add __udivmoddi4
> -
> -Newer GCC ( 11.1.0+ ) is generating calls to __udivmoddi4 on i686
> -architecture, therefore provide an implementation to avoid undefined
> -references
> -
> -Upstream-Status: Pending
> -Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ----
> - .../winpthreads/src/libgcc/dll_math.c            | 16 +++++++++++++++-
> - 1 file changed, 15 insertions(+), 1 deletion(-)
> -
> -diff --git a/mingw-w64-libraries/winpthreads/src/libgcc/dll_math.c b/mingw-w64-libraries/winpthreads/src/libgcc/dll_math.c
> -index aeec068..d170967 100644
> ---- a/mingw-w64-libraries/winpthreads/src/libgcc/dll_math.c
> -+++ b/mingw-w64-libraries/winpthreads/src/libgcc/dll_math.c
> -@@ -121,6 +121,7 @@ u_quad_t	__udivdi3(u_quad_t a, u_quad_t b);
> - u_quad_t	__umoddi3(u_quad_t a, u_quad_t b);
> - int		__ucmpdi2(u_quad_t a, u_quad_t b);
> - quad_t	__divmoddi4(quad_t a, quad_t b, quad_t *rem);
> -+u_quad_t	__udivmoddi4(u_quad_t a, u_quad_t b, u_quad_t *rem);
> - 
> - #endif /* !_LIBKERN_QUAD_H_ */
> - 
> -@@ -573,7 +574,20 @@ __divmoddi4(a, b, rem)
> - 	return (negq ? -uq : uq);
> - }
> - 
> -+/*
> -+ * Divide two unsigned quads.
> -+ * This function is new in GCC 7.
> -+ */
> -+u_quad_t
> -+__udivmoddi4(a, b, rem)
> -+	u_quad_t a, b, *rem;
> -+{
> -+	u_quad_t q = __udivdi3(a, b);
> -+	if (rem)
> -+		*rem = a - b * q;
> -+	return q;
> -+}
> -+
> - #else
> - static int __attribute__((unused)) dummy;
> - #endif /*deined (_X86_) && !defined (__x86_64__)*/
> --
> --- 
> -2.31.1
> -
> diff --git a/recipes-devtools/mingw-w64/mingw-w64.inc b/recipes-devtools/mingw-w64/mingw-w64.inc
> index d40d4a5..322fb79 100644
> --- a/recipes-devtools/mingw-w64/mingw-w64.inc
> +++ b/recipes-devtools/mingw-w64/mingw-w64.inc
> @@ -5,9 +5,7 @@ COMPATIBLE_HOST = ".*-mingw.*"
>  
>  SRC_URI = "${SOURCEFORGE_MIRROR}/project/mingw-w64/mingw-w64/mingw-w64-release/mingw-w64-v${PV}.tar.bz2"
>  
> -SRC_URI[sha256sum] = "44c740ea6ab3924bc3aa169bad11ad3c5766c5c8459e3126d44eabb8735a5762"
> +SRC_URI[sha256sum] = "1929b94b402f5ff4d7d37a9fe88daa9cc55515a6134805c104d1794ae22a4181"
>  
>  UPSTREAM_CHECK_URI = "http://sourceforge.net/projects/mingw-w64/files/mingw-w64/mingw-w64-release/"
>  UPSTREAM_CHECK_REGEX = "mingw-w64-v(?P<pver>(\d+[\.\-_]*)+)\.tar"
> -
> -
> diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_8.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_9.0.0.bb
> similarity index 100%
> rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_8.0.0.bb
> rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-headers_9.0.0.bb
> diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_8.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb
> similarity index 88%
> rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_8.0.0.bb
> rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb
> index 02132c1..e2ca6a5 100644
> --- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_8.0.0.bb
> +++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-runtime_9.0.0.bb
> @@ -2,8 +2,6 @@ DESCRIPTION = "Runtime libraries from MinGW-w64 project"
>  
>  require mingw-w64.inc
>  
> -SRC_URI += "file://0001-intrincs-Check-for-__builtin_ia32_rdtsc.patch;striplevel=2"
> -
>  S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-crt"
>  B = "${WORKDIR}/build-${TARGET_SYS}"
>  
> diff --git a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_9.0.0.bb
> similarity index 87%
> rename from recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb
> rename to recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_9.0.0.bb
> index 38092dc..fb7e54e 100644
> --- a/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_8.0.0.bb
> +++ b/recipes-devtools/mingw-w64/nativesdk-mingw-w64-winpthreads_9.0.0.bb
> @@ -2,8 +2,6 @@ DESCRIPTION = "Winpthreads runtime libraries from MinGW-w64 project"
>  
>  require mingw-w64.inc
>  
> -SRC_URI += "file://0001-winpthreads-Add-__udivmoddi4.patch;striplevel=3"
> -
>  S = "${WORKDIR}/mingw-w64-v${PV}/mingw-w64-libraries/winpthreads"
>  B = "${WORKDIR}/build-${TARGET_SYS}"

With these two patches and the binutils upgrade we see a new issue:

https://autobuilder.yoctoproject.org/typhoon/#/builders/89/builds/4733/steps/12/logs/stdio

Cheers,

Richard



