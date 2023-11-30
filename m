Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68553C4167B
	for <webhook@archiver.kernel.org>; Thu, 30 Nov 2023 16:54:44 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
 by mx.groups.io with SMTP id smtpd.web10.77585.1701363282036625856
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Nov 2023 08:54:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YFBFZ+LZ;
 spf=pass (domain: gmail.com, ip: 209.85.160.50, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-1fa21f561a1so545456fac.3
        for <yocto@lists.yoctoproject.org>; Thu, 30 Nov 2023 08:54:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701363281; x=1701968081; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qk+yYoQFKLMisahJ8/goMAiRS5ST5VdxuoIJWfpWhTs=;
        b=YFBFZ+LZixYK8EKgmyw2rAWnhYgPNlt/CfP2JDFRmeFaRQ9dNnJw7FT5mzt/CMK5lC
         PC/FEurh6qCqLBVSeIa4VpDWW2dmOMPL2R4QVTWEmm8oRPpvCA+SrQ1HllZWLolbXwSW
         MPmF1AE93a7/ecDlVw6lEHNcqG/YWltIkdPBe1mKWFwLL/OKlY4ELOQNtUA7wyOPru3Y
         qdEXBeReCPlyNTyeTVHuhz4UhT2TVQkqHdzo4CqWpcg3EZMBQ1mh2Ih6aa2b4Yd03IvK
         tbYFswDDRXDUNb91SDgQVBbHho1kjDvs/CZPnuIYdK2vcxZDZRFizBWyoaq6bcnBpQa2
         +HZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701363281; x=1701968081;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qk+yYoQFKLMisahJ8/goMAiRS5ST5VdxuoIJWfpWhTs=;
        b=I0CUj3Wmj5rwT0kJvUQ1f37Ft4ecnvNq/ajPiAdYHO82woObaSvkLGX/yFWlXPT7Oa
         MdgZKoJNRedEyC4UUffRmFQUi0WsrXI+Q/hI24yW12iwnwGD9MQAFMkzr0hjAUepQAXQ
         xKe4GQI6t6xnpC7Wi8FIDg4y7PVkhDZ9cUPyb+KPCYPda1URBZ1tweZTRf7AdjIVWadW
         Gu9Jf667p5greEUD0ckJp0brb3bovNqsbRpCNb72KHbFMOYg+W7agjTBkCCY/sCsKHCy
         WEZw9xeB5XSEL565QI02CmD0H8qgkPLyv6+A7kifuAfmUFQ+pJ70OdmisE7ec+ApOHLL
         mrxQ==
X-Gm-Message-State: AOJu0Yyn81Al/siTG4GlslsgVMrpHjqe+3bd0Hsm86UvWK7elyVCjtOl
	dP7ls9HfXylH2kncpG2YPO+Gdtx/fZjVE7nQRGiAmrJHSzc=
X-Google-Smtp-Source: AGHT+IFmNaY7nT2yHM05BFamJvkZWDmvO0xNK04TTfZAsL4D7uqgfA1lqAJzDKY01xtnV3JL0Ix765tnkoGmv0LUBMk=
X-Received: by 2002:a05:6870:a706:b0:1f9:5407:4c34 with SMTP id
 g6-20020a056870a70600b001f954074c34mr24716809oam.29.1701363281063; Thu, 30
 Nov 2023 08:54:41 -0800 (PST)
MIME-Version: 1.0
References: <20231130083122.2970448-1-wenlin.kang@windriver.com>
In-Reply-To: <20231130083122.2970448-1-wenlin.kang@windriver.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 30 Nov 2023 08:54:15 -0800
Message-ID: <CAMKF1soucss1KKERpwrfr38By7tWuceuFEQJ_HoeSJu5iSMVvA@mail.gmail.com>
Subject: Re: [yocto] [meta-mingw][kirkstone][PATCH] libxcrypt: fixed some
 build error for nativesdk with mingw
To: wenlin.kang@windriver.com
Cc: yocto@lists.yoctoproject.org, jpewhacker@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Nov 2023 16:54:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61780

On Thu, Nov 30, 2023 at 12:31=E2=80=AFAM wenlin.kang@windriver.com via
lists.yoctoproject.org
<wenlin.kang=3Dwindriver.com@lists.yoctoproject.org> wrote:
>
> From: Wenlin Kang <wenlin.kang@windriver.com>
>
> Steps to reproduce
>   1) add layer meta-mingw
>   2) add line in local.conf
>      SDKMACHINE =3D "x86_64-mingw32"
>   3) bitbake nativesdk-libxcrypt
>
> Fixed:
> 1. .symver error
>   | {standard input}: Assembler messages:
>   | {standard input}:4: Error: unknown pseudo-op: `.symver'
>
> 2. pedantic error
>   | ../git/lib/crypt.c:316:24: error: ISO C does not allow extra ';' outs=
ide of a function [-Werror=3Dpedantic]
>   |   316 | SYMVER_crypt_gensalt_rn;
>   |       |
>
> 3. conversion error
>   | ../git/lib/util-get-random-bytes.c: In function '_crypt_get_random_by=
tes':
>   | ../git/lib/util-get-random-bytes.c:140:42: error: conversion from 'si=
ze_t' {aka 'long long unsigned int'} to 'unsigned int' may change value [-W=
error=3Dconversion]
>   |   140 |           ssize_t nread =3D read (fd, buf, buflen);
>
> Signed-off-by: Wenlin Kang <wenlin.kang@windriver.com>
> ---
>  .../0001-Fix-for-compilation-on-Windows.patch | 37 +++++++++++++++
>  ...dom-bytes.c-fixed-conversion-error-w.patch | 47 +++++++++++++++++++
>  recipes-core/libxcrypt/libxcrypt_%.bbappend   |  7 +++
>  3 files changed, 91 insertions(+)
>  create mode 100644 recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compila=
tion-on-Windows.patch
>  create mode 100644 recipes-core/libxcrypt/libxcrypt/0001-lib-util-get-ra=
ndom-bytes.c-fixed-conversion-error-w.patch
>  create mode 100644 recipes-core/libxcrypt/libxcrypt_%.bbappend
>
> diff --git a/recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compilation-on=
-Windows.patch b/recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compilation-=
on-Windows.patch
> new file mode 100644
> index 0000000..5760ee0
> --- /dev/null
> +++ b/recipes-core/libxcrypt/libxcrypt/0001-Fix-for-compilation-on-Window=
s.patch
> @@ -0,0 +1,37 @@
> +From a507b628a5a5d4e4f1cf0f0a9a72967470ee7624 Mon Sep 17 00:00:00 2001
> +From: Brecht Sanders <brecht@sanders.org>
> +Date: Fri, 3 Feb 2023 08:44:49 +0100
> +Subject: [PATCH] Fix for compilation on Windows
> +
> +This fix allows the library to build on Windows (at least with MinGW-w64=
).
> +
> +`.symver` is only supported for ELF format but Windows uses COFF/PE.
> +
> +Workaround dummy define of `symver_set()`
> +
> +Upstream-Status: Backport [https://github.com/besser82/libxcrypt/commit/=
a507b628a5a5d4e4f1cf0f0a9a72967470ee7624]
> +
> +Signed-off-by: Wenlin Kang <wenlin.kang@windriver.com>
> +---
> + lib/crypt-port.h | 5 +++++
> + 1 file changed, 5 insertions(+)
> +
> +diff --git a/lib/crypt-port.h b/lib/crypt-port.h
> +index f06ca24..a707939 100644
> +--- a/lib/crypt-port.h
> ++++ b/lib/crypt-port.h
> +@@ -201,6 +201,11 @@ extern size_t strcpy_or_abort (void *dst, size_t d_=
size, const void *src);
> +   __asm__(".globl _" extstr);                           \
> +   __asm__(".set _" extstr ", _" #intname)
> +
> ++#elif defined _WIN32
> ++
> ++/* .symver is only supported for ELF format, Windows uses COFF/PE */
> ++# define symver_set(extstr, intname, version, mode)
> ++
> + #elif defined __GNUC__ && __GNUC__ >=3D 3
> +
> + # define _strong_alias(name, aliasname) \
> +--
> +2.34.1
> +
> diff --git a/recipes-core/libxcrypt/libxcrypt/0001-lib-util-get-random-by=
tes.c-fixed-conversion-error-w.patch b/recipes-core/libxcrypt/libxcrypt/000=
1-lib-util-get-random-bytes.c-fixed-conversion-error-w.patch
> new file mode 100644
> index 0000000..3846f76
> --- /dev/null
> +++ b/recipes-core/libxcrypt/libxcrypt/0001-lib-util-get-random-bytes.c-f=
ixed-conversion-error-w.patch
> @@ -0,0 +1,47 @@
> +From ff99091eb8a6b9e6edc567f6d2552183fbaacec3 Mon Sep 17 00:00:00 2001
> +From: Wenlin Kang <wenlin.kang@windriver.com>
> +Date: Mon, 6 Nov 2023 14:43:28 +0800
> +Subject: [PATCH] lib/util-get-random-bytes.c: fixed conversion error wit=
h
> + mingw
> +
> +With x86_64-w64-mingw32-gcc. get below error:
> +| ../git/lib/util-get-random-bytes.c: In function '_crypt_get_random_byt=
es':
> +| ../git/lib/util-get-random-bytes.c:140:42: error: conversion from 'siz=
e_t' {aka 'long long unsigned int'} to 'unsigned int' may change value [-We=
rror=3Dconversion]
> +|   140 |           ssize_t nread =3D read (fd, buf, buflen);
> +|       |                                          ^~~~~~
> +
> +In util-get-random-bytes.c, has get_random_bytes(void *buf, size_t bufle=
n),
> +but in mingw-w64-mingw-w64/mingw-w64-headers/crt/io.h, read() has "unsig=
ned int"
> +read(int _FileHandle,void *_DstBuf,unsigned int _MaxCharCount), and has:
> + #ifdef _WIN64
> +   __MINGW_EXTENSION typedef unsigned __int64 size_t;
> + #else
> +   typedef unsigned int size_t;
> + #endif /* _WIN64 */
> +
> +Upstream-Status: Pending
> +
> +Signed-off-by: Wenlin Kang <wenlin.kang@windriver.com>
> +---
> + lib/util-get-random-bytes.c | 4 ++++
> + 1 file changed, 4 insertions(+)
> +
> +diff --git a/lib/util-get-random-bytes.c b/lib/util-get-random-bytes.c
> +index 79816db..68cd378 100644
> +--- a/lib/util-get-random-bytes.c
> ++++ b/lib/util-get-random-bytes.c
> +@@ -137,7 +137,11 @@ get_random_bytes(void *buf, size_t buflen)
> +         dev_urandom_doesnt_work =3D true;
> +       else
> +         {
> ++#ifdef _WIN64
> ++          ssize_t nread =3D read (fd, buf, (unsigned int)buflen);
> ++#else
> +           ssize_t nread =3D read (fd, buf, buflen);
> ++#endif

read is system API and I wonder why we are not getting right API
signature here as I think
size_t should already be defined based on _WIN64 in system headers.

> +           if (nread < 0 || (size_t)nread < buflen)
> +             dev_urandom_doesnt_work =3D true;
> +
> +--
> +2.25.1
> +
> diff --git a/recipes-core/libxcrypt/libxcrypt_%.bbappend b/recipes-core/l=
ibxcrypt/libxcrypt_%.bbappend
> new file mode 100644
> index 0000000..cb9c45e
> --- /dev/null
> +++ b/recipes-core/libxcrypt/libxcrypt_%.bbappend
> @@ -0,0 +1,7 @@
> +FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"
> +
> +SRC_URI:append:mingw32 =3D "file://0001-Fix-for-compilation-on-Windows.p=
atch \
> +                          file://0001-lib-util-get-random-bytes.c-fixed-=
conversion-error-w.patch \
> +"
> +
> +CFLAGS:append:class-nativesdk:mingw32 =3D " -Wno-pedantic"
> --
> 2.39.0
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61775): https://lists.yoctoproject.org/g/yocto/messag=
e/61775
> Mute This Topic: https://lists.yoctoproject.org/mt/102890384/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

