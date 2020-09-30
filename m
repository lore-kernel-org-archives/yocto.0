Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web12.4375.1601498234933693723
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2020 13:37:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FQ3+Ygbr;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: jpewhacker@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id e16so3243892wrm.2
        for <yocto@lists.yoctoproject.org>; Wed, 30 Sep 2020 13:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XzyRsuUJS5bFQxouIcGVZYI5htAGIGdumwvbSNfa2/Y=;
        b=FQ3+YgbruSkWx8YS+h7bdIWHOP6M7xV6GpEU6TdIbNcJ1rol4FTS6kfq+KZ1ZzI6/7
         jbzHX3KiDmQK81wwMqjME5qGFxAx40VNoJEr+xs72q5AmeJ2qSlifo/JpNnfag3uS/8A
         15VJCC6YPnLfMrO6iin+66phDjw7e5QqR8hH14pvNLP/eKlktQ+yWwD+3yEak401QO50
         +D80ejm0vEICoPG4sL+t1tHrkVAqZGHTlj3eG9mBVY8KkoosZt0UT6CJwWDq1FO9trOe
         e59rcDQi13/puyoApPJ2BfiBWRd7TRUFHpvsx1P+sN4iKk7PfX0voSk//bUtho7FagW4
         VqJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XzyRsuUJS5bFQxouIcGVZYI5htAGIGdumwvbSNfa2/Y=;
        b=WU6ic6Z3rcTMDqm0q1xNYAWzHsDdaPeLt5bc2KCzINagkfXrvJ9jiQPlsc5jNFa0I/
         ddah1wJBPG20S9cI9jCDyen1skgxhmx8A5b1ulu4PJSi0+3nuT7u1+VDZfp72+ep2Prn
         RqGXNAwTETFMyKlFNRKCqoRIm/e2uVZMNqzG9OZgKENv1Jjzt8Vl3JmlHdlfAjJlCUd/
         voHGJM3i3DEWEqtWtij5vePHcjQUtBSwSOW4Lp6RLKbFdVG0u3aFtDg0OuKfPP5rqXOI
         zbFLq0g7YVr7VoFJCLL+e5WMNJOS7FEBxG+Yrj3T9dng+FxPB5F68DV5MkeV3Ggj5Cbl
         iaVA==
X-Gm-Message-State: AOAM5314Mh1BtZyv38kYyPLPLlQ8513twxbeCbOXG/o4L2aM0gPz8+ZN
	wE2biM438JppbVZSUb9gNNzUOedigstKkPyM/TA=
X-Google-Smtp-Source: ABdhPJwfQfqCB8CaucSmx+Vv8wLl91NhaELG3G6NAoqRtcEM1/mSR+rR8BKUoTHmxf/+50ROopjNA69yA7kF495eVMY=
X-Received: by 2002:adf:a18c:: with SMTP id u12mr5210881wru.90.1601498233198;
 Wed, 30 Sep 2020 13:37:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200831224444.16097-1-pkj@axis.com>
In-Reply-To: <20200831224444.16097-1-pkj@axis.com>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Wed, 30 Sep 2020 15:36:59 -0500
Message-ID: <CAJdd5GakOno5nBi4HicYQ=PFrwo6o_GD8+C2Pfn4nr-7+Y_6OQ@mail.gmail.com>
Subject: Re: [yocto] [meta-gplv2] [PATCH] gnupg: Make it build with GCC 10 (which uses -fno-common by default)
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

With this patch applied, I get the following errors when using the
latest master branches:

| ../mpi/libmpi.a(mpiutil.o): In function `mpi_alloc_limb_space':
| mpiutil.c:(.text+0x84): undefined reference to `memory_debug_mode'
| ../mpi/libmpi.a(mpiutil.o): In function `mpi_alloc':
| mpiutil.c:(.text+0xda): undefined reference to `memory_debug_mode'
| ../mpi/libmpi.a(mpiutil.o): In function `mpi_alloc_secure':
| mpiutil.c:(.text+0x14a): undefined reference to `memory_debug_mode'
| ../mpi/libmpi.a(mpiutil.o): In function `mpi_free_limb_space':
| mpiutil.c:(.text+0x1c7): undefined reference to `memory_debug_mode'
| ../mpi/libmpi.a(mpiutil.o): In function `mpi_free':
| mpiutil.c:(.text+0x267): undefined reference to `memory_debug_mode'
| ../util/libutil.a(iobuf.o): In function `file_filter':
| iobuf.c:(.text+0x1c0): undefined reference to `iobuf_debug_mode'
| iobuf.c:(.text+0x1ea): undefined reference to `iobuf_debug_mode'
| iobuf.c:(.text+0x2e0): undefined reference to `iobuf_debug_mode'
| iobuf.c:(.text+0x305): undefined reference to `iobuf_debug_mode'
| ../util/libutil.a(iobuf.o): In function `underflow':
| iobuf.c:(.text+0x4b3): undefined reference to `iobuf_debug_mode'
| ../util/libutil.a(iobuf.o):iobuf.c:(.text+0x567): more undefined
references to `iobuf_debug_mode' follow
| collect2: error: ld returned 1 exit status

If I revert this commit, gnupg-native will again build correctly. Any ideas?

On Mon, Aug 31, 2020 at 5:44 PM Peter Kjellerstedt
<peter.kjellerstedt@axis.com> wrote:
>
> Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> ---
>  ...th-GCC-10-which-uses-fno-common-by-d.patch | 93 +++++++++++++++++++
>  recipes-support/gnupg/gnupg_1.4.7.bb          |  3 +-
>  2 files changed, 95 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch
>
> diff --git a/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch b/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch
> new file mode 100644
> index 0000000..2f84155
> --- /dev/null
> +++ b/recipes-support/gnupg/gnupg-1.4.7/0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch
> @@ -0,0 +1,93 @@
> +From 1d0141d77d4f81cfa3213370fb7eeddbf53fc085 Mon Sep 17 00:00:00 2001
> +From: Peter Kjellerstedt <pkj@axis.com>
> +Date: Tue, 1 Sep 2020 00:29:22 +0200
> +Subject: [PATCH] Make it build with GCC 10 (which uses -fno-common by default)
> +
> +Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> +---
> + g10/options.h    | 3 +--
> + include/cipher.h | 2 +-
> + include/iobuf.h  | 2 +-
> + include/memory.h | 2 +-
> + include/mpi.h    | 2 +-
> + tools/mpicalc.c  | 1 +
> + 6 files changed, 6 insertions(+), 6 deletions(-)
> +
> +diff --git a/g10/options.h b/g10/options.h
> +index c5f0f22..33ed333 100644
> +--- a/g10/options.h
> ++++ b/g10/options.h
> +@@ -28,8 +28,7 @@
> + #include "packet.h"
> +
> + #ifndef EXTERN_UNLESS_MAIN_MODULE
> +-/* Norcraft can't cope with common symbols */
> +-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
> ++#if !defined (INCLUDED_BY_MAIN_MODULE)
> + #define EXTERN_UNLESS_MAIN_MODULE extern
> + #else
> + #define EXTERN_UNLESS_MAIN_MODULE
> +diff --git a/include/cipher.h b/include/cipher.h
> +index 168ab41..794c12b 100644
> +--- a/include/cipher.h
> ++++ b/include/cipher.h
> +@@ -109,7 +109,7 @@ struct gcry_md_context {
> + typedef struct gcry_md_context *MD_HANDLE;
> +
> + #ifndef EXTERN_UNLESS_MAIN_MODULE
> +-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
> ++#if !defined (INCLUDED_BY_MAIN_MODULE)
> + #define EXTERN_UNLESS_MAIN_MODULE extern
> + #else
> + #define EXTERN_UNLESS_MAIN_MODULE
> +diff --git a/include/iobuf.h b/include/iobuf.h
> +index a1d58c9..25f682b 100644
> +--- a/include/iobuf.h
> ++++ b/include/iobuf.h
> +@@ -73,7 +73,7 @@ struct iobuf_struct {
> + };
> +
> + #ifndef EXTERN_UNLESS_MAIN_MODULE
> +-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
> ++#if !defined (INCLUDED_BY_MAIN_MODULE)
> + #define EXTERN_UNLESS_MAIN_MODULE extern
> + #else
> + #define EXTERN_UNLESS_MAIN_MODULE
> +diff --git a/include/memory.h b/include/memory.h
> +index 895d8a7..217d316 100644
> +--- a/include/memory.h
> ++++ b/include/memory.h
> +@@ -87,7 +87,7 @@ unsigned secmem_get_flags(void);
> + #define DBG_MEMSTAT   memory_stat_debug_mode
> +
> + #ifndef EXTERN_UNLESS_MAIN_MODULE
> +-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
> ++#if !defined (INCLUDED_BY_MAIN_MODULE)
> + #define EXTERN_UNLESS_MAIN_MODULE extern
> + #else
> + #define EXTERN_UNLESS_MAIN_MODULE
> +diff --git a/include/mpi.h b/include/mpi.h
> +index 81061d3..d529bda 100644
> +--- a/include/mpi.h
> ++++ b/include/mpi.h
> +@@ -38,7 +38,7 @@
> + #include "memory.h"
> +
> + #ifndef EXTERN_UNLESS_MAIN_MODULE
> +-#if defined (__riscos__) && !defined (INCLUDED_BY_MAIN_MODULE)
> ++#if !defined (INCLUDED_BY_MAIN_MODULE)
> + #define EXTERN_UNLESS_MAIN_MODULE extern
> + #else
> + #define EXTERN_UNLESS_MAIN_MODULE
> +diff --git a/tools/mpicalc.c b/tools/mpicalc.c
> +index 1df27d9..647dfbd 100644
> +--- a/tools/mpicalc.c
> ++++ b/tools/mpicalc.c
> +@@ -30,6 +30,7 @@
> + #include <stdlib.h>
> + #include <ctype.h>
> +
> ++#define INCLUDED_BY_MAIN_MODULE 1
> + #include "util.h"
> + #include "mpi.h"
> + #include "i18n.h"
> diff --git a/recipes-support/gnupg/gnupg_1.4.7.bb b/recipes-support/gnupg/gnupg_1.4.7.bb
> index 6a950fd..6258809 100644
> --- a/recipes-support/gnupg/gnupg_1.4.7.bb
> +++ b/recipes-support/gnupg/gnupg_1.4.7.bb
> @@ -20,7 +20,8 @@ SRC_URI = "${GNUPG_MIRROR}/gnupg/gnupg-${PV}.tar.bz2 \
>             file://CVE-2013-4242.patch \
>             file://fix-ustar-check-issue.patch \
>             file://0001-Make-it-build-with-gettext-0.20.patch \
> -          "
> +           file://0001-Make-it-build-with-GCC-10-which-uses-fno-common-by-d.patch \
> +           "
>
>  SRC_URI[md5sum] = "b06a141cca5cd1a55bbdd25ab833303c"
>  SRC_URI[sha256sum] = "69d18b7d193f62ca27ed4febcb4c9044aa0c95305d3258fe902e2fae5fc6468d"
> 
