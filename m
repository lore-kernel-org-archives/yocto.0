Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web10.12601.1601558827518925811
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Oct 2020 06:27:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gZbWckJ4;
 spf=pass (domain: gmail.com, ip: 209.85.221.68, mailfrom: jpewhacker@gmail.com)
Received: by mail-wr1-f68.google.com with SMTP id s12so5740743wrw.11
        for <yocto@lists.yoctoproject.org>; Thu, 01 Oct 2020 06:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=19GCTGgNGLXg9ZG5FSPwiTXzmbaA95gbjMf8egCwsMQ=;
        b=gZbWckJ4h2OMgbiqjHYMN7UbSp6UTJ1fc0gQa5j5qn15BujcFa4g3vzPjjsjWpLUdu
         2u7pSQ5O1vyK3ad2iOnIE46BNSchE7aX3iabsW9iOykOeLjUjjIQoINmk/DwzMtYosN7
         TQyac/vsQnAm9a7Gy/yu3czPU/SdabEhyyNClFkrBLh3YWYKzQyiSgnOeXSKUJ/b15cI
         nirHjWnEcwN4LV6Fu4iRAUgHT+yG1pkiswbusKPn1CAqnSQ+UAtlq0ULnCvbtqkilf/t
         F/ZsuRTQTq0nhYgu0upXKPPu4hD8mp3gtldNasDE8yD6JAyw7ODUShZ465qf2cuIeW4A
         L/OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=19GCTGgNGLXg9ZG5FSPwiTXzmbaA95gbjMf8egCwsMQ=;
        b=k0WOcTnukEmcKdhTIqw4tRcnUTdteYXuTHohr0rima+OZfrLn87iIDwDc2ifJpHrRb
         U+nf0i5gKXeEjoqSwLfp4BwAg1ma8IDt5JZU4z8d44nNa4XlzomuSQj/I8fXxxJhTplR
         oVBTHGrlW6uiGcciMR4LPOaU3MhuPWfGamUxfsBlVoF+PhMAN+KSNcHtNFqmjVWl3nVu
         7y38N6Ck8OPbIsHTvOcLPwT+EZSfZN9sowjnlBUcYN+VDz3CTljptji8M7H7D6NGZ8C/
         VHuYFe6fzFNF8oN8wtFEVc/3sd+wCPG+1ozrUK86drDVSzrZNKJUPlVv+D4hcLC/wOW6
         l/5w==
X-Gm-Message-State: AOAM531x5ejVq9yFDGh69wvOpInrnlwoDyDjMeFCw+9PpWHaCBHqO6pR
	tzupig3ugXWjxbhtSd8pADO663bkT1bEDhw8p0U=
X-Google-Smtp-Source: ABdhPJx7y77MQ4G3dnLhYxakcmJr2VzTdMFxhkYG31y4O6YVSMCW2p3zooUhdXm/RTINEuHJ9Ord25z0h9q32rByLr8=
X-Received: by 2002:a5d:568d:: with SMTP id f13mr8933850wrv.303.1601558825735;
 Thu, 01 Oct 2020 06:27:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200831224444.16097-1-pkj@axis.com> <CAJdd5GakOno5nBi4HicYQ=PFrwo6o_GD8+C2Pfn4nr-7+Y_6OQ@mail.gmail.com>
 <CAMKF1soCn187tLQbrbtGg2_gWyS=+gU8q7utwo8J0Bdu+NQrbw@mail.gmail.com>
In-Reply-To: <CAMKF1soCn187tLQbrbtGg2_gWyS=+gU8q7utwo8J0Bdu+NQrbw@mail.gmail.com>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Thu, 1 Oct 2020 08:26:54 -0500
Message-ID: <CAJdd5GbfPOcAFk5cZfthBK=jL_yNypqFNeVtvC0snh9rBsj_5g@mail.gmail.com>
Subject: Re: [yocto] [meta-gplv2] [PATCH] gnupg: Make it build with GCC 10 (which uses -fno-common by default)
To: Khem Raj <raj.khem@gmail.com>
Cc: Peter Kjellerstedt <peter.kjellerstedt@axis.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 30, 2020 at 4:34 PM Khem Raj <raj.khem@gmail.com> wrote:
>
> On Wed, Sep 30, 2020 at 1:37 PM Joshua Watt <JPEWhacker@gmail.com> wrote:
> >
> > With this patch applied, I get the following errors when using the
> > latest master branches:
> >
> > | ../mpi/libmpi.a(mpiutil.o): In function `mpi_alloc_limb_space':
> > | mpiutil.c:(.text+0x84): undefined reference to `memory_debug_mode'
> > | ../mpi/libmpi.a(mpiutil.o): In function `mpi_alloc':
> > | mpiutil.c:(.text+0xda): undefined reference to `memory_debug_mode'
> > | ../mpi/libmpi.a(mpiutil.o): In function `mpi_alloc_secure':
> > | mpiutil.c:(.text+0x14a): undefined reference to `memory_debug_mode'
> > | ../mpi/libmpi.a(mpiutil.o): In function `mpi_free_limb_space':
> > | mpiutil.c:(.text+0x1c7): undefined reference to `memory_debug_mode'
> > | ../mpi/libmpi.a(mpiutil.o): In function `mpi_free':
> > | mpiutil.c:(.text+0x267): undefined reference to `memory_debug_mode'
> > | ../util/libutil.a(iobuf.o): In function `file_filter':
> > | iobuf.c:(.text+0x1c0): undefined reference to `iobuf_debug_mode'
> > | iobuf.c:(.text+0x1ea): undefined reference to `iobuf_debug_mode'
> > | iobuf.c:(.text+0x2e0): undefined reference to `iobuf_debug_mode'
> > | iobuf.c:(.text+0x305): undefined reference to `iobuf_debug_mode'
> > | ../util/libutil.a(iobuf.o): In function `underflow':
> > | iobuf.c:(.text+0x4b3): undefined reference to `iobuf_debug_mode'
> > | ../util/libutil.a(iobuf.o):iobuf.c:(.text+0x567): more undefined
> > references to `iobuf_debug_mode' follow
> > | collect2: error: ld returned 1 exit status
> >
> > If I revert this commit, gnupg-native will again build correctly. Any ideas?
> >
>
> does it help if you add -fno-common to native CFLAGS

No. It works in all cases if I remove the patch and use "-fcommon"
though. Oddly enough, in my build having the patch caused the target
recipe to fail one way, and not having it caused it to fail another
way.... not sure what's going on there, but I suspect for something
this old, adding "-fcommon" to restore the original behavior makes the
most sense.

>
> > On Mon, Aug 31, 2020 at 5:44 PM Peter Kjellerstedt
> > <peter.kjellerstedt@axis.com> wrote:
> > >
> > > Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > > ---
> > >  ...th-GCC-10-which-uses-fno-common-by-d.patch | 93 +++++++++++++++++++
> > >  recipes-support/gnupg/gnupg_1.4.7.bb          |  3 +-
> > >  2 files changed, 95 insertions(+), 1 deletion(-)
> > >  create mode 100644 recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch
> > >
> > > diff --git a/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch b/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch
> > > new file mode 100644
> > > index 0000000..2f84155
> > > --- /dev/null
> > > +++ b/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch
> > > @@ -0,0 +1,93 @@
> > > +From 1d0141d77d4f81cfa3213370fb7eeddbf53fc085 Mon Sep 17 00:00:00 2001
> > > +From: Peter Kjellerstedt <pkj@axis.com>
> > > +Date: Tue, 1 Sep 2020 00:29:22 +0200
> > > +Subject: [PATCH] Make it build with GCC 10 (which uses -fno-common by default)
> > > +
> > > +Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > > +---
> > > + g10/options.h    | 3 +--
> > > + include/cipher.h | 2 +-
> > > + include/iobuf.h  | 2 +-
> > > + include/memory.h | 2 +-
> > > + include/mpi.h    | 2 +-
> > > + tools/mpicalc.c  | 1 +
> > > + 6 files changed, 6 insertions(+), 6 deletions(-)
> > > +
> > > +diff --git a/g10/options.h b/g10/options.h
> > > +index c5f0f22..33ed333 100644
> > > +--- a/g10/options.h
> > > ++++ b/g10/options.h
> > > +@@ -28,8 +28,7 @@
> > > + #include "packet.h"
> > > +
> > > + #ifndef EXTERN_UNLESS_MAIN_MODULE
> > > +-/* Norcraft can't cope with common symbols */
> > > +-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
> > > ++#if !defined (INCLUDED_BY_MAIN_MODULE)
> > > + #define EXTERN_UNLESS_MAIN_MODULE extern
> > > + #else
> > > + #define EXTERN_UNLESS_MAIN_MODULE
> > > +diff --git a/include/cipher.h b/include/cipher.h
> > > +index 168ab41..794c12b 100644
> > > +--- a/include/cipher.h
> > > ++++ b/include/cipher.h
> > > +@@ -109,7 +109,7 @@ struct gcry_md_context {
> > > + typedef struct gcry_md_context *MD_HANDLE;
> > > +
> > > + #ifndef EXTERN_UNLESS_MAIN_MODULE
> > > +-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
> > > ++#if !defined (INCLUDED_BY_MAIN_MODULE)
> > > + #define EXTERN_UNLESS_MAIN_MODULE extern
> > > + #else
> > > + #define EXTERN_UNLESS_MAIN_MODULE
> > > +diff --git a/include/iobuf.h b/include/iobuf.h
> > > +index a1d58c9..25f682b 100644
> > > +--- a/include/iobuf.h
> > > ++++ b/include/iobuf.h
> > > +@@ -73,7 +73,7 @@ struct iobuf_struct {
> > > + };
> > > +
> > > + #ifndef EXTERN_UNLESS_MAIN_MODULE
> > > +-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
> > > ++#if !defined (INCLUDED_BY_MAIN_MODULE)
> > > + #define EXTERN_UNLESS_MAIN_MODULE extern
> > > + #else
> > > + #define EXTERN_UNLESS_MAIN_MODULE
> > > +diff --git a/include/memory.h b/include/memory.h
> > > +index 895d8a7..217d316 100644
> > > +--- a/include/memory.h
> > > ++++ b/include/memory.h
> > > +@@ -87,7 +87,7 @@ unsigned secmem_get_flags(void);
> > > + #define DBG_MEMSTAT   memory_stat_debug_mode
> > > +
> > > + #ifndef EXTERN_UNLESS_MAIN_MODULE
> > > +-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
> > > ++#if !defined (INCLUDED_BY_MAIN_MODULE)
> > > + #define EXTERN_UNLESS_MAIN_MODULE extern
> > > + #else
> > > + #define EXTERN_UNLESS_MAIN_MODULE
> > > +diff --git a/include/mpi.h b/include/mpi.h
> > > +index 81061d3..d529bda 100644
> > > +--- a/include/mpi.h
> > > ++++ b/include/mpi.h
> > > +@@ -38,7 +38,7 @@
> > > + #include "memory.h"
> > > +
> > > + #ifndef EXTERN_UNLESS_MAIN_MODULE
> > > +-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
> > > ++#if !defined (INCLUDED_BY_MAIN_MODULE)
> > > + #define EXTERN_UNLESS_MAIN_MODULE extern
> > > + #else
> > > + #define EXTERN_UNLESS_MAIN_MODULE
> > > +diff --git a/tools/mpicalc.c b/tools/mpicalc.c
> > > +index 1df27d9..647dfbd 100644
> > > +--- a/tools/mpicalc.c
> > > ++++ b/tools/mpicalc.c
> > > +@@ -30,6 +30,7 @@
> > > + #include <stdlib.h>
> > > + #include <ctype.h>
> > > +
> > > ++#define INCLUDED_BY_MAIN_MODULE 1
> > > + #include "util.h"
> > > + #include "mpi.h"
> > > + #include "i18n.h"
> > > diff --git a/recipes-support/gnupg/gnupg_1.4.7.bb b/recipes-support/gnupg/gnupg_1.4.7.bb
> > > index 6a950fd..6258809 100644
> > > --- a/recipes-support/gnupg/gnupg_1.4.7.bb
> > > +++ b/recipes-support/gnupg/gnupg_1.4.7.bb
> > > @@ -20,7 +20,8 @@ SRC_URI = "${GNUPG_MIRROR}/gnupg/gnupg-${PV}.tar.bz2 \
> > >             file://CVE-2013-4242.patch \
> > >             file://fix-ustar-check-issue.patch \
> > >             file://0001-Make-it-build-with-gettext-0.20.patch \
> > > -          "
> > > +           file://0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch \
> > > +           "
> > >
> > >  SRC_URI[md5sum] = "b06a141cca5cd1a55bbdd25ab833303c"
> > >  SRC_URI[sha256sum] = "69d18b7d193f62ca27ed4febcb4c9044aa0c95305d3258fe902e2fae5fc6468d"
> > >
> >
> > 
> >
