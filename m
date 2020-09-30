Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web10.5595.1601501696545996216
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2020 14:34:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=p1qVts/m;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id c62so3140327qke.1
        for <yocto@lists.yoctoproject.org>; Wed, 30 Sep 2020 14:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dLfvEBRp7Q9T1UD7VhrG76RLSMciJ/iwk1LNI1v8siA=;
        b=p1qVts/m55kVfbmU3NKX/YiidjI5S2vIfCBlvA+9JCH3wROARPWj6n3b3ij8OnJVvL
         gJLHoJmEIsouoqbl/MLZrTIFmewtSc1YkWa/amUqZcPc2WMg/HZ1SzUq57CV8KV3vaX8
         /23ifwFyluUOySRrMkQtkfXaD+xhuBFiC6kMVYVSjlEnKHNDxauNkLpQybmO+fx6m5bb
         1PwdmmQ4EGd1jh1trkJwv8Mts0xG9ngAkIFFabOorWDk1x7MDnqH4t4whR1TRbxRuS0n
         v6EPY6xYiP6WDDIee2N6AhpIffwSSy76+9+14tghBheROuBmFuN8l33zV3Q+Lyf75STf
         p0bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dLfvEBRp7Q9T1UD7VhrG76RLSMciJ/iwk1LNI1v8siA=;
        b=drOeoqQjOTbvz7Z+Ek8BfqPOGdIrBq9ExBz5Jnxqkt9/c0yXaq4pwLB/bMvyuPO0JQ
         UY+2jrxEuyFQHXFbizkul2RVUxCbfPDi6z+XvWMrmHUJuofiiu0SP8+VgiiffJoprBMM
         dAZqN0kIWHDpFKQ1JbjBovOcM5ARzHgbEU5McClwEAsYRkzsQB17OQc0UjTy0ZrdZLhe
         0ff6Plg+xp2WqRw4wwR7I9A45/LHX59QhqeU098Rn/pACqbjJI/Hi+hR/O1yZRrIYC9V
         7Hq+H+e4Yt5Lk6IcyAzBg1NWtSeXK3chRAkypPIluEQP2+CUvGkFGecZLi3ylyIN2qtC
         bk5A==
X-Gm-Message-State: AOAM533+dLPZBtUd2tqkhV0Ck5YszW7zysoVSkgBGX1fDG/lITobjuO1
	Jx5Zxv5Pw4DA5uOs5u9L5jxiinEUTVTCl9ih9QU=
X-Google-Smtp-Source: ABdhPJx5JCWssv01kzC/JAoQrleGKFZHuwvf3Axnfv31g5Mi93PSB+OLCwhkrVOO66iFxjykXycIAXEg7YpLGSkxfXg=
X-Received: by 2002:a05:620a:1670:: with SMTP id d16mr4759035qko.474.1601501695520;
 Wed, 30 Sep 2020 14:34:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200831224444.16097-1-pkj@axis.com> <CAJdd5GakOno5nBi4HicYQ=PFrwo6o_GD8+C2Pfn4nr-7+Y_6OQ@mail.gmail.com>
In-Reply-To: <CAJdd5GakOno5nBi4HicYQ=PFrwo6o_GD8+C2Pfn4nr-7+Y_6OQ@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 30 Sep 2020 14:34:29 -0700
Message-ID: <CAMKF1soCn187tLQbrbtGg2_gWyS=+gU8q7utwo8J0Bdu+NQrbw@mail.gmail.com>
Subject: Re: [yocto] [meta-gplv2] [PATCH] gnupg: Make it build with GCC 10 (which uses -fno-common by default)
To: Joshua Watt <JPEWhacker@gmail.com>
Cc: Peter Kjellerstedt <peter.kjellerstedt@axis.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 30, 2020 at 1:37 PM Joshua Watt <JPEWhacker@gmail.com> wrote:
>
> With this patch applied, I get the following errors when using the
> latest master branches:
>
> | ../mpi/libmpi.a(mpiutil.o): In function `mpi_alloc_limb_space':
> | mpiutil.c:(.text+0x84): undefined reference to `memory_debug_mode'
> | ../mpi/libmpi.a(mpiutil.o): In function `mpi_alloc':
> | mpiutil.c:(.text+0xda): undefined reference to `memory_debug_mode'
> | ../mpi/libmpi.a(mpiutil.o): In function `mpi_alloc_secure':
> | mpiutil.c:(.text+0x14a): undefined reference to `memory_debug_mode'
> | ../mpi/libmpi.a(mpiutil.o): In function `mpi_free_limb_space':
> | mpiutil.c:(.text+0x1c7): undefined reference to `memory_debug_mode'
> | ../mpi/libmpi.a(mpiutil.o): In function `mpi_free':
> | mpiutil.c:(.text+0x267): undefined reference to `memory_debug_mode'
> | ../util/libutil.a(iobuf.o): In function `file_filter':
> | iobuf.c:(.text+0x1c0): undefined reference to `iobuf_debug_mode'
> | iobuf.c:(.text+0x1ea): undefined reference to `iobuf_debug_mode'
> | iobuf.c:(.text+0x2e0): undefined reference to `iobuf_debug_mode'
> | iobuf.c:(.text+0x305): undefined reference to `iobuf_debug_mode'
> | ../util/libutil.a(iobuf.o): In function `underflow':
> | iobuf.c:(.text+0x4b3): undefined reference to `iobuf_debug_mode'
> | ../util/libutil.a(iobuf.o):iobuf.c:(.text+0x567): more undefined
> references to `iobuf_debug_mode' follow
> | collect2: error: ld returned 1 exit status
>
> If I revert this commit, gnupg-native will again build correctly. Any ideas?
>

does it help if you add -fno-common to native CFLAGS

> On Mon, Aug 31, 2020 at 5:44 PM Peter Kjellerstedt
> <peter.kjellerstedt@axis.com> wrote:
> >
> > Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > ---
> >  ...th-GCC-10-which-uses-fno-common-by-d.patch | 93 +++++++++++++++++++
> >  recipes-support/gnupg/gnupg_1.4.7.bb          |  3 +-
> >  2 files changed, 95 insertions(+), 1 deletion(-)
> >  create mode 100644 recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch
> >
> > diff --git a/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch b/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch
> > new file mode 100644
> > index 0000000..2f84155
> > --- /dev/null
> > +++ b/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch
> > @@ -0,0 +1,93 @@
> > +From 1d0141d77d4f81cfa3213370fb7eeddbf53fc085 Mon Sep 17 00:00:00 2001
> > +From: Peter Kjellerstedt <pkj@axis.com>
> > +Date: Tue, 1 Sep 2020 00:29:22 +0200
> > +Subject: [PATCH] Make it build with GCC 10 (which uses -fno-common by default)
> > +
> > +Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > +---
> > + g10/options.h    | 3 +--
> > + include/cipher.h | 2 +-
> > + include/iobuf.h  | 2 +-
> > + include/memory.h | 2 +-
> > + include/mpi.h    | 2 +-
> > + tools/mpicalc.c  | 1 +
> > + 6 files changed, 6 insertions(+), 6 deletions(-)
> > +
> > +diff --git a/g10/options.h b/g10/options.h
> > +index c5f0f22..33ed333 100644
> > +--- a/g10/options.h
> > ++++ b/g10/options.h
> > +@@ -28,8 +28,7 @@
> > + #include "packet.h"
> > +
> > + #ifndef EXTERN_UNLESS_MAIN_MODULE
> > +-/* Norcraft can't cope with common symbols */
> > +-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
> > ++#if !defined (INCLUDED_BY_MAIN_MODULE)
> > + #define EXTERN_UNLESS_MAIN_MODULE extern
> > + #else
> > + #define EXTERN_UNLESS_MAIN_MODULE
> > +diff --git a/include/cipher.h b/include/cipher.h
> > +index 168ab41..794c12b 100644
> > +--- a/include/cipher.h
> > ++++ b/include/cipher.h
> > +@@ -109,7 +109,7 @@ struct gcry_md_context {
> > + typedef struct gcry_md_context *MD_HANDLE;
> > +
> > + #ifndef EXTERN_UNLESS_MAIN_MODULE
> > +-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
> > ++#if !defined (INCLUDED_BY_MAIN_MODULE)
> > + #define EXTERN_UNLESS_MAIN_MODULE extern
> > + #else
> > + #define EXTERN_UNLESS_MAIN_MODULE
> > +diff --git a/include/iobuf.h b/include/iobuf.h
> > +index a1d58c9..25f682b 100644
> > +--- a/include/iobuf.h
> > ++++ b/include/iobuf.h
> > +@@ -73,7 +73,7 @@ struct iobuf_struct {
> > + };
> > +
> > + #ifndef EXTERN_UNLESS_MAIN_MODULE
> > +-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
> > ++#if !defined (INCLUDED_BY_MAIN_MODULE)
> > + #define EXTERN_UNLESS_MAIN_MODULE extern
> > + #else
> > + #define EXTERN_UNLESS_MAIN_MODULE
> > +diff --git a/include/memory.h b/include/memory.h
> > +index 895d8a7..217d316 100644
> > +--- a/include/memory.h
> > ++++ b/include/memory.h
> > +@@ -87,7 +87,7 @@ unsigned secmem_get_flags(void);
> > + #define DBG_MEMSTAT   memory_stat_debug_mode
> > +
> > + #ifndef EXTERN_UNLESS_MAIN_MODULE
> > +-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
> > ++#if !defined (INCLUDED_BY_MAIN_MODULE)
> > + #define EXTERN_UNLESS_MAIN_MODULE extern
> > + #else
> > + #define EXTERN_UNLESS_MAIN_MODULE
> > +diff --git a/include/mpi.h b/include/mpi.h
> > +index 81061d3..d529bda 100644
> > +--- a/include/mpi.h
> > ++++ b/include/mpi.h
> > +@@ -38,7 +38,7 @@
> > + #include "memory.h"
> > +
> > + #ifndef EXTERN_UNLESS_MAIN_MODULE
> > +-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
> > ++#if !defined (INCLUDED_BY_MAIN_MODULE)
> > + #define EXTERN_UNLESS_MAIN_MODULE extern
> > + #else
> > + #define EXTERN_UNLESS_MAIN_MODULE
> > +diff --git a/tools/mpicalc.c b/tools/mpicalc.c
> > +index 1df27d9..647dfbd 100644
> > +--- a/tools/mpicalc.c
> > ++++ b/tools/mpicalc.c
> > +@@ -30,6 +30,7 @@
> > + #include <stdlib.h>
> > + #include <ctype.h>
> > +
> > ++#define INCLUDED_BY_MAIN_MODULE 1
> > + #include "util.h"
> > + #include "mpi.h"
> > + #include "i18n.h"
> > diff --git a/recipes-support/gnupg/gnupg_1.4.7.bb b/recipes-support/gnupg/gnupg_1.4.7.bb
> > index 6a950fd..6258809 100644
> > --- a/recipes-support/gnupg/gnupg_1.4.7.bb
> > +++ b/recipes-support/gnupg/gnupg_1.4.7.bb
> > @@ -20,7 +20,8 @@ SRC_URI = "${GNUPG_MIRROR}/gnupg/gnupg-${PV}.tar.bz2 \
> >             file://CVE-2013-4242.patch \
> >             file://fix-ustar-check-issue.patch \
> >             file://0001-Make-it-build-with-gettext-0.20.patch \
> > -          "
> > +           file://0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch \
> > +           "
> >
> >  SRC_URI[md5sum] = "b06a141cca5cd1a55bbdd25ab833303c"
> >  SRC_URI[sha256sum] = "69d18b7d193f62ca27ed4febcb4c9044aa0c95305d3258fe902e2fae5fc6468d"
> >
>
> 
>
