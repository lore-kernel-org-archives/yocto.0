Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web09.1847.1625424750960216862
 for <yocto@lists.yoctoproject.org>;
 Sun, 04 Jul 2021 11:52:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iKiST305;
 spf=pass (domain: gmail.com, ip: 209.85.160.177, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id h2so2599042qtq.13
        for <yocto@lists.yoctoproject.org>; Sun, 04 Jul 2021 11:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=R+DtMNIkB0fYQab6GcnCqG0+CM32Dxkp1EE6HRFiXdI=;
        b=iKiST305KLtdRsdRI4l3wm+CNiDojbyRc114bUe+7aiRAzmqqUfKqh6qgAG6crMHgX
         SplfOlkbvKb7wnOLW7FeIjLiizsNpKnX12K2tPmxhyXGcwCZdLw0byd7+kodoAFvB+IU
         jItecQLOAF/riuhdNivLGRW3Bbq9qGkibdukqi/Gt8Ec6zOtev/chRPbULVpsGLTsbJr
         /NVdYwcpm9J6n8GkQB7Bv4oo9AyUKm09evRto4oSqj83Oi3z7xGsXUfXDkzacgyKLE4n
         qHyDemjSZ2GsXQezx6/MiSWWhZkK9EcjiJR6OzvWHt6rx0o/tRFFG/wO8YJ/YEIP6oaZ
         71lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=R+DtMNIkB0fYQab6GcnCqG0+CM32Dxkp1EE6HRFiXdI=;
        b=GaUhQQdHM+l8UgmmFMPFzfyXcFOdbhWHtXA+8bfL+qP3klzmD3Xwt1MmYc6LxI+oMX
         huwdAaC4siFPT3PRBljo1QnNYR4r6Rt2yv92SART5LANNgVp1UruM9VPnyWFKnwYvmZ/
         328tBBDOEllm0DUpqEImKLpk444a0JAEF2DjzloWlOxPYpxFIrRJNZC47OiUev+mkZwo
         JtUI6fRNLY3AGPE6wbbT15ak7XwRaLMTRLf994ble7LfywMyW187EneND0DyQSmJKVpX
         QKLGlzjoQ1KV4YINrfaffN4cJs1R8MjHpb8ANQsfBDu6Rz5OLWy/5OniyR4w42TqX0Gu
         X8DQ==
X-Gm-Message-State: AOAM531eEuavI59+6tBoJJ/x18bCjv/y6tfGBOfoturUkxUgCX4vFxgX
	JuIbGomSkhaMe/WfUqMIcrxOedLjlWTEVe8sjvB4D0pn8iA=
X-Google-Smtp-Source: ABdhPJzhysV+8ecH23S+pxLI8BK6EX/YPaMa610D48xaxL+86ZWM+l9yxixYAT6vWLnIWAOKApNubWd5/ND1pdztQ1k=
X-Received: by 2002:ac8:424c:: with SMTP id r12mr3549602qtm.214.1625424750114;
 Sun, 04 Jul 2021 11:52:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210630055025.465215-1-raj.khem@gmail.com> <YOG1bWs0bvGZqRp+@piout.net>
In-Reply-To: <YOG1bWs0bvGZqRp+@piout.net>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sun, 4 Jul 2021 11:52:04 -0700
Message-ID: <CAMKF1sofJbQDXfGCok=192xtQaz=+Uv-g3RBY6ksSxh5gB++Zw@mail.gmail.com>
Subject: Re: [yocto] [meta-gplv2] [PATCH] coreutils_6.9.bb: Fix build with glibc 2.34
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jul 4, 2021 at 6:19 AM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
> Hello Khem,
>
> Richard applied this patch and it unfortunately fails:
>
> https://autobuilder.yoctoproject.org/typhoon/#/builders/75/builds/3637/s=
teps/11/logs/stdio
>

yeah my bad, too many context switches, the patch was applied before
any other patches from meta-gpl2
to isolate the issue, but then I should have rebased it before sending.

Sent a v2 now, use that and it should be ok.

> On 29/06/2021 22:50:25-0700, Khem Raj wrote:
> > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > ---
> >  ...-includes-for-glibc-2.34-portability.patch | 39 ++++++++++++++++++=
+
> >  recipes-core/coreutils/coreutils_6.9.bb       |  1 +
> >  2 files changed, 40 insertions(+)
> >  create mode 100644 recipes-core/coreutils/coreutils-6.9/0001-sort.c-R=
eorder-includes-for-glibc-2.34-portability.patch
> >
> > diff --git a/recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-=
includes-for-glibc-2.34-portability.patch b/recipes-core/coreutils/coreutil=
s-6.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch
> > new file mode 100644
> > index 0000000..0d9b5e2
> > --- /dev/null
> > +++ b/recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-include=
s-for-glibc-2.34-portability.patch
> > @@ -0,0 +1,39 @@
> > +From e241a55767c4eaac7d14c412d880037cb6d2ee33 Mon Sep 17 00:00:00 200=
1
> > +From: Khem Raj <raj.khem@gmail.com>
> > +Date: Tue, 29 Jun 2021 22:43:16 -0700
> > +Subject: [PATCH] sort.c: Reorder includes for glibc 2.34 portability
> > +
> > +With glibc 2.34 config.h will include stdlib.h and that would disable
> > +sys/wait.h to include needed definitions from bits/waitflags.h since
> > +_STDLIB_H would have been defined already and sys/wait.h would think
> > +these paths are included already, this is fixed with newer gnulib and
> > +configure so this is to get this old version to compile with latest
> > +glibc headers
> > +
> > +Upstream-Status: Inappropriate [OE-Specific]
> > +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > +---
> > + src/sort.c | 4 ++--
> > + 1 file changed, 2 insertions(+), 2 deletions(-)
> > +
> > +diff --git a/src/sort.c b/src/sort.c
> > +index 58ca66a..48b22c8 100644
> > +--- a/src/sort.c
> > ++++ b/src/sort.c
> > +@@ -21,11 +21,11 @@
> > +
> > +    =C3=98rn E. Hansen added NLS support in 1997.  */
> > +
> > ++#include <sys/types.h>
> > ++#include <sys/wait.h>
> > + #include <config.h>
> > +
> > + #include <getopt.h>
> > +-#include <sys/types.h>
> > +-#include <sys/wait.h>
> > + #include <signal.h>
> > + #include "system.h"
> > + #include "argmatch.h"
> > +--
> > +2.32.0
> > +
> > diff --git a/recipes-core/coreutils/coreutils_6.9.bb b/recipes-core/co=
reutils/coreutils_6.9.bb
> > index 42b4f3c..69e5489 100644
> > --- a/recipes-core/coreutils/coreutils_6.9.bb
> > +++ b/recipes-core/coreutils/coreutils_6.9.bb
> > @@ -27,6 +27,7 @@ SRC_URI =3D "${GNU_MIRROR}/coreutils/${BP}.tar.bz2 \
> >             file://no-man.patch \
> >             file://build-don-t-need-charset.alias-when-building-for-mu=
s.patch \
> >             file://no-su.patch \
> > +           file://0001-sort.c-Reorder-includes-for-glibc-2.34-portabi=
lity.patch \
> >             "
> >
> >  SRC_URI[md5sum] =3D "c9607d8495f16e98906e7ed2d9751a06"
> > --
> > 2.32.0
> >
>
> >
> >=20
> >
>
>
> --
> Alexandre Belloni, co-owner and COO, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
