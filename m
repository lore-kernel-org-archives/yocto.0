Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web12.1852.1625425092641901732
 for <yocto@lists.yoctoproject.org>;
 Sun, 04 Jul 2021 11:58:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IeilG6+U;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id f5so7344644qvu.8
        for <yocto@lists.yoctoproject.org>; Sun, 04 Jul 2021 11:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=GWyVj0dXqTPy+cWzim122I8Db43zgl7/Mz7jvVykGNo=;
        b=IeilG6+Uiimsb9KSeWxbeS0gxVwCrta6R55ZhC4Y4ltNrHmpoeAE6ub+aj51jbVdy8
         tilU8T7EYOzgAes/APwYEdIJAUzZp6u+vLOniAFPqmmzjrmnpbV6jBtI+s4u9GhmGmCb
         aOkM8+obRBMBBE1mT8TCMaBCFczDrt73K+Yu7xJprAeG1HF9h5b+C11EiGM7skrzi9su
         GhR+1jjJ8RKe4VQRBT3FL7lnDYHHByObgdQnEoOEOM1kMlc6avkV6yt4+j5y7J9iPsdz
         QludpY0k54wneAeP10gvmpW9ax7x5Z05+bPoGS2eoySSJXfv7E+12GryJ60Yg7l3/ehh
         B6DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=GWyVj0dXqTPy+cWzim122I8Db43zgl7/Mz7jvVykGNo=;
        b=ZFFby2RRgNIFc6grP2P7LHU9Up+hfNIr3KsLCLhLVW/0fCxfFxK48rCtjaZsEFuqor
         Vj6Goj0mvcXhz3sDZPjJfcZzIWS2BL0vmD54Il2YVBim0QEdF/hscLFtqo0m4fmW0hVL
         QzeINNUZHZ5ttGVxmdb26uh1QRBMOvD0HMlzBMmUnl3rh3gMUs/LESYeY+hy00wowEAB
         VXB8LuYDtEY17vykC+H44M1JpuKybLkHffBMtLRJkINROaZfU6tjJ4CqxdAZoR77gWbq
         hNDymRHTbs0eMfK0jrJT1+HrMPtuGqIQkOtJJTzl2XYW0qIB6sgY5fvCgh9T6lyO/9oY
         XlfQ==
X-Gm-Message-State: AOAM531xY/yHYyPVXYp7i9aaJuzR3SKEj3H+aFysi6DmzXbT7egsjBR2
	CS8ulb9ub+NQtQgOQ1plAYecpg4RO8ZLc7/+2EyOXaHiG+0=
X-Google-Smtp-Source: ABdhPJzYVKTFRV6amTaRHmNUy/ULj3AJS7ZytC4T8ukk6iRLdgQ63p/wCbhSRvKi1+e+4X9H8M/Z4FmzJfatvRPmWpA=
X-Received: by 2002:a0c:ecc8:: with SMTP id o8mr9927545qvq.55.1625425091667;
 Sun, 04 Jul 2021 11:58:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210704185243.404621-1-raj.khem@gmail.com>
In-Reply-To: <20210704185243.404621-1-raj.khem@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sun, 4 Jul 2021 11:57:45 -0700
Message-ID: <CAMKF1spvz_CFGSkZA+=6b_S_rST-ospBL04XjOUFYeN1ASVJCg@mail.gmail.com>
Subject: Re: [meta-gplv2] [PATCH v2] coreutils_6.9.bb: Fix build with glibc 2.34
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

ignore this, as I sent a followup which applies on top of master.

On Sun, Jul 4, 2021 at 11:52 AM Khem Raj <raj.khem@gmail.com> wrote:
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
> v2: Rebase the patch to respect other patches
>
>  ...-includes-for-glibc-2.34-portability.patch | 35 +++++++++++++++++++
>  recipes-core/coreutils/coreutils_6.9.bb       |  1 +
>  2 files changed, 36 insertions(+)
>  create mode 100644 recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reor=
der-includes-for-glibc-2.34-portability.patch
>
> diff --git a/recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-inc=
ludes-for-glibc-2.34-portability.patch b/recipes-core/coreutils/coreutils-6=
.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch
> new file mode 100644
> index 0000000..f37cb47
> --- /dev/null
> +++ b/recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-includes-f=
or-glibc-2.34-portability.patch
> @@ -0,0 +1,35 @@
> +From e241a55767c4eaac7d14c412d880037cb6d2ee33 Mon Sep 17 00:00:00 2001
> +From: Khem Raj <raj.khem@gmail.com>
> +Date: Tue, 29 Jun 2021 22:43:16 -0700
> +Subject: [PATCH] sort.c: Reorder includes for glibc 2.34 portability
> +
> +With glibc 2.34 config.h will include stdlib.h and that would disable
> +sys/wait.h to include needed definitions from bits/waitflags.h since
> +_STDLIB_H would have been defined already and sys/wait.h would think
> +these paths are included already, this is fixed with newer gnulib and
> +configure so this is to get this old version to compile with latest
> +glibc headers
> +
> +Upstream-Status: Inappropriate [OE-Specific]
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +---
> + src/sort.c | 4 ++--
> + 1 file changed, 2 insertions(+), 2 deletions(-)
> +
> +--- a/src/sort.c
> ++++ b/src/sort.c
> +@@ -21,12 +21,12 @@
> +
> +    =C3=98rn E. Hansen added NLS support in 1997.  */
> +
> ++#include <sys/types.h>
> ++#include <sys/wait.h>
> + #include <config.h>
> +
> + #include <assert.h>
> + #include <getopt.h>
> +-#include <sys/types.h>
> +-#include <sys/wait.h>
> + #include <signal.h>
> + #if HAVE_WCHAR_H
> + # include <wchar.h>
> diff --git a/recipes-core/coreutils/coreutils_6.9.bb b/recipes-core/coreu=
tils/coreutils_6.9.bb
> index 42b4f3c..69e5489 100644
> --- a/recipes-core/coreutils/coreutils_6.9.bb
> +++ b/recipes-core/coreutils/coreutils_6.9.bb
> @@ -27,6 +27,7 @@ SRC_URI =3D "${GNU_MIRROR}/coreutils/${BP}.tar.bz2 \
>             file://no-man.patch \
>             file://build-don-t-need-charset.alias-when-building-for-mus.p=
atch \
>             file://no-su.patch \
> +           file://0001-sort.c-Reorder-includes-for-glibc-2.34-portabilit=
y.patch \
>             "
>
>  SRC_URI[md5sum] =3D "c9607d8495f16e98906e7ed2d9751a06"
> --
> 2.32.0
