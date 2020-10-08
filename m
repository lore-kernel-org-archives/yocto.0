Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.10645.1602159371505463823
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Oct 2020 05:16:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=TuQx/Y7F;
 spf=softfail (domain: konsulko.com, ip: 198.145.29.25, mailfrom: paul.barker@konsulko.com)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 44D8F38C1164
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2020 05:16:11 -0700 (PDT)
Received: by mail-ot1-f43.google.com with SMTP id o8so5277712otl.4
        for <yocto@yoctoproject.org>; Thu, 08 Oct 2020 05:16:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fJnZxsbTztcv+c9APc2SGLdVhHiOV552ZK/oRg+1XC0=;
        b=TuQx/Y7F+qGl4nPsTnsK71ieLZVy+TnjP7fwTuS3UHj1F0V93lFcP+cZ8S30O6VKgB
         h+YAxzr0vvYmQ8uzzfKV9BaDe+bpoAAwv5PsAoAyJ/UR9IyqBYw36FztiijyWbnoxO5Z
         tKN0wOW5ALt6zCQuwgwjm0g8w8kwcqtHes9mk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fJnZxsbTztcv+c9APc2SGLdVhHiOV552ZK/oRg+1XC0=;
        b=fchXRFlTc6MDg9yE+riKxm/Yf3tY4taBDmMwj+KrYxk+R/iKINBG96Im9Q5n/0EwR8
         K0cUf5vCLv9Gnb9SX2UAq/MTzXwhOOMWBalcYpZkIbg3r/pg7hLw04A/4bp2oTlEkZ/t
         IV2IDWSXAwnuev2t/X7QxicH4ooWnoJOrlmV902dnM7BFyNexgw5nZ/dQx5mQQS/W+ME
         bwHZ0Au1YYE0cx4ll9FYBzpWkLnYR0ud+1eZ+6SVTCVCb7NDFe7vpdUZacsF6CzbiFFP
         8bJqYUt3cK44B4vSBdLjJO1LwNmxOJO3pk8rcVfsLFQG40ObJDQVZSRFdk5xO2xZm+Wg
         CDag==
X-Gm-Message-State: AOAM532ZdyK2E+R3jgyhE5eUivLf2yL3r2ViQA0rHOXkY7F8PaLOFhrO
	7Xiwj91/kUGMMrV56KiZO4N7ogR4T7rkwXfQ3uvW7Q==
X-Google-Smtp-Source: ABdhPJwJ3p2y/Ki3ixdTM0JM6t3aBCvGdVMv75rEecvmk+YQGSNivjvf7C1PVPWEwNyQ57AnupZzkW5Ft8+sUbumwnU=
X-Received: by 2002:a05:6830:214c:: with SMTP id r12mr5082343otd.258.1602159370242;
 Thu, 08 Oct 2020 05:16:10 -0700 (PDT)
MIME-Version: 1.0
References: <20201008120423.27548-1-idadelm@gmail.com> <CAM9ZRVvQjC+Uz1rieNa4x55J4oSrMsh=zd_vKPkxKCcfy1zxsA@mail.gmail.com>
In-Reply-To: <CAM9ZRVvQjC+Uz1rieNa4x55J4oSrMsh=zd_vKPkxKCcfy1zxsA@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Thu, 8 Oct 2020 13:15:59 +0100
Message-ID: <CAM9ZRVu-uivwVL=ekd4rFaToOVcmS_QRV_Hk-UVxM0az2SQ6=w@mail.gmail.com>
Subject: Re: [yocto] [prelink-cross] Added SPDX license headers to all .c and .h source files
To: Meh Mbeh Ida Delphine <idadelm@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, Mark Hatle <mark.hatle@kernel.crashing.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 8 Oct 2020 at 13:12, Paul Barker <pbarker@konsulko.com> wrote:
>
> On Thu, 8 Oct 2020 at 13:04, Meh Mbeh Ida Delphine <idadelm@gmail.com> wrote:
> >
> > Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
> > ---
> >  src/arch-alpha.c   | 15 ++-------
> >  src/arch-arm.c     | 15 ++-------
> >  src/arch-cris.c    | 15 ++-------
> >  src/arch-i386.c    | 15 ++-------
> >  src/arch-ia64.c    | 15 ++-------
> >  src/arch-mips.c    | 77 ++--------------------------------------------
> >  src/arch-ppc.c     | 15 ++-------
> >  src/arch-ppc64.c   | 15 ++-------
> >  src/arch-s390.c    | 15 ++-------
> >  src/arch-s390x.c   | 15 ++-------
> >  src/arch-sh.c      | 15 ++-------
> >  src/arch-sparc.c   | 15 ++-------
> >  src/arch-sparc64.c | 15 ++-------
> >  src/arch-x86_64.c  | 15 ++-------
> >  src/cache.c        | 15 ++-------
> >  src/canonicalize.c | 16 ++--------
> >  src/checksum.c     | 15 ++-------
> >  src/conflict.c     | 15 ++-------
> >  src/crc32.c        | 15 ++-------
> >  src/cxx.c          | 15 ++-------
> >  src/data.c         | 15 ++-------
> >  src/doit.c         | 15 ++-------
> >  src/dso.c          | 15 ++-------
> >  src/dwarf2.c       | 15 ++-------
> >  src/dwarf2.h       | 15 ++-------
> >  src/exec.c         | 15 ++-------
> >  src/execle_open.c  | 15 ++-------
> >  src/execstack.c    | 15 ++-------
> >  src/fptr.c         | 15 ++-------
> >  src/fptr.h         | 15 ++-------
> >  src/gather.c       | 15 ++-------
> >  src/get.c          | 15 ++-------
> >  src/hashtab.c      | 30 ++----------------
> >  src/hashtab.h      | 28 ++---------------
> >  src/layout.c       | 15 ++-------
> >  src/layout.h       | 15 ++-------
> >  src/main.c         | 15 ++-------
> >  src/md5.c          | 15 ++-------
> >  src/md5.h          | 15 ++-------
> >  src/mdebug.c       | 15 ++-------
> >  src/prelink.c      | 15 ++-------
> >  src/prelink.h      | 15 ++-------
> >  src/prelinktab.h   | 15 ++-------
> >  src/reloc-info.c   | 15 ++-------
> >  src/reloc-info.h   | 15 ++-------
> >  src/reloc.c        | 15 ++-------
> >  src/reloc.h        | 15 ++-------
> >  src/sha.c          |  2 ++
> >  src/sha.h          |  2 ++
> >  src/space.c        | 15 ++-------
> >  src/space.h        | 15 ++-------
> >  src/stabs.c        | 15 ++-------
> >  src/undo.c         | 15 ++-------
> >  src/undoall.c      | 15 ++-------
> >  src/verify.c       | 15 ++-------
> >  55 files changed, 110 insertions(+), 780 deletions(-)
> >
> > diff --git a/src/arch-alpha.c b/src/arch-alpha.c
> > index 7802a3e..bc5c192 100644
> > --- a/src/arch-alpha.c
> > +++ b/src/arch-alpha.c
> > @@ -1,19 +1,8 @@
> >  /* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.
> >     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
> >
> > -   This program is free software; you can redistribute it and/or modify
> > -   it under the terms of the GNU General Public License as published by
> > -   the Free Software Foundation; either version 2, or (at your option)
> > -   any later version.
> > -
> > -   This program is distributed in the hope that it will be useful,
> > -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> > -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > -   GNU General Public License for more details.
> > -
> > -   You should have received a copy of the GNU General Public License
> > -   along with this program; if not, write to the Free Software Foundation,
> > -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> > +* SPDX-License-Identifier: GPL-2.0-or-later
> > +*/
> >
> >  #include <config.h>
> >  #include <assert.h>
> > diff --git a/src/arch-arm.c b/src/arch-arm.c
> > index eec7c57..b5ea886 100644
> > --- a/src/arch-arm.c
> > +++ b/src/arch-arm.c
> > @@ -1,19 +1,8 @@
> >  /* Copyright (C) 2001, 2002, 2004, 2009, 2011, 2013 Red Hat, Inc.
> >     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
> >
> > -   This program is free software; you can redistribute it and/or modify
> > -   it under the terms of the GNU General Public License as published by
> > -   the Free Software Foundation; either version 2, or (at your option)
> > -   any later version.
> > -
> > -   This program is distributed in the hope that it will be useful,
> > -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> > -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > -   GNU General Public License for more details.
> > -
> > -   You should have received a copy of the GNU General Public License
> > -   along with this program; if not, write to the Free Software Foundation,
> > -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> > +* SPDX-License-Identifier: GPL-2.0-or-later
> > +*/
> >
> >  #include <config.h>
> >  #include <assert.h>
> > diff --git a/src/arch-cris.c b/src/arch-cris.c
> > index 3272779..634bf9f 100644
> > --- a/src/arch-cris.c
> > +++ b/src/arch-cris.c
> > @@ -1,19 +1,8 @@
> >  /* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.
> >     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
> >
> > -   This program is free software; you can redistribute it and/or modify
> > -   it under the terms of the GNU General Public License as published by
> > -   the Free Software Foundation; either version 2, or (at your option)
> > -   any later version.
> > -
> > -   This program is distributed in the hope that it will be useful,
> > -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> > -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > -   GNU General Public License for more details.
> > -
> > -   You should have received a copy of the GNU General Public License
> > -   along with this program; if not, write to the Free Software Foundation,
> > -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> > +* SPDX-License-Identifier: GPL-2.0-or-later
> > +*/
> >
> >  #include <config.h>
> >  #include <assert.h>
> > diff --git a/src/arch-i386.c b/src/arch-i386.c
> > index a1e0fcc..5a0b2ca 100644
> > --- a/src/arch-i386.c
> > +++ b/src/arch-i386.c
> > @@ -1,19 +1,8 @@
> >  /* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2011 Red Hat, Inc.
> >     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
> >
> > -   This program is free software; you can redistribute it and/or modify
> > -   it under the terms of the GNU General Public License as published by
> > -   the Free Software Foundation; either version 2, or (at your option)
> > -   any later version.
> > -
> > -   This program is distributed in the hope that it will be useful,
> > -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> > -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > -   GNU General Public License for more details.
> > -
> > -   You should have received a copy of the GNU General Public License
> > -   along with this program; if not, write to the Free Software Foundation,
> > -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> > +* SPDX-License-Identifier: GPL-2.0-or-later
> > +*/
> >
> >  #include <config.h>
> >  #include <assert.h>
> > diff --git a/src/arch-ia64.c b/src/arch-ia64.c
> > index 6039115..56196de 100644
> > --- a/src/arch-ia64.c
> > +++ b/src/arch-ia64.c
> > @@ -1,19 +1,8 @@
> >  /* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.
> >     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
> >
> > -   This program is free software; you can redistribute it and/or modify
> > -   it under the terms of the GNU General Public License as published by
> > -   the Free Software Foundation; either version 2, or (at your option)
> > -   any later version.
> > -
> > -   This program is distributed in the hope that it will be useful,
> > -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> > -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > -   GNU General Public License for more details.
> > -
> > -   You should have received a copy of the GNU General Public License
> > -   along with this program; if not, write to the Free Software Foundation,
> > -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> > +* SPDX-License-Identifier: GPL-2.0-or-later
> > +*/
> >
> >  #include <config.h>
> >  #include <assert.h>
> > diff --git a/src/arch-mips.c b/src/arch-mips.c
> > index 02c608f..d0e69d4 100644
> > --- a/src/arch-mips.c
> > +++ b/src/arch-mips.c
> > @@ -2,81 +2,8 @@
> >     Written by Richard Sandiford <richard@codesourcery.com>, 2006
> >     Updated by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
> >
> > -   This program is free software; you can redistribute it and/or modify
> > -   it under the terms of the GNU General Public License as published by
> > -   the Free Software Foundation; either version 2, or (at your option)
> > -   any later version.
> > -
> > -   This program is distributed in the hope that it will be useful,
> > -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> > -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > -   GNU General Public License for more details.
> > -
> > -   You should have received a copy of the GNU General Public License
> > -   along with this program; if not, write to the Free Software Foundation,
> > -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> > -
> > -/* GENERAL NOTES
> > -
> > -   The psABI defines R_MIPS_REL32 as A - EA + S, where the value of EA
> > -   depends on the symbol index.  If the index is less than DT_MIPS_GOTSYM,
> > -   EA is the symbol's st_value "plus displacement".  If the index is greater
> > -   than or equal to DT_MIPS_GOTSYM, EA is the original value of the
> > -   associated GOT entry.
> > -
> > -   However, glibc's dynamic linker implements a different definition.
> > -   If the index is less than DT_MIPS_GOTSYM, the dynamic linker adds the
> > -   symbol's st_value and the base address to the addend.  If the index
> > -   is greater than or equal to DT_MIPS_GOTSYM, the dynamic linker adds
> > -   the final symbol value to the addend.
> > -
> > -   MIPS GOTs are divided into three parts:
> > -
> > -     - Reserved entries (of which GNU objects have 2)
> > -     - Local entries
> > -     - Global entries
> > -
> > -   DT_MIPS_LOCAL_GOTNO gives the total number of reserved and local
> > -   entries.  The local entries all hold virtual addresses and the
> > -   dynamic linker will add the base address to each one.
> > -
> > -   Unlike most other architectures, the MIPS ABI does not use
> > -   relocations to initialize the global GOT entries.  Instead, global
> > -   GOT entry X is mapped to dynamic symbol DT_MIPS_GOTSYM + X, and there
> > -   are a total of DT_MIPS_SYMTABNO - DT_MIPS_GOTSYM global GOT entries.
> > -
> > -   The interpretation of a global GOT entry depends on the symbol entry
> > -   and the initial GOT contents.  The psABI lists the following cases:
> > -
> > -      st_shndx    st_type     st_value      initial GOT value
> > -      --------    -------     --------      -----------------
> > -   A: SHN_UNDEF   STT_FUNC    0             st_value (== 0) / QS
> > -   B: SHN_UNDEF   STT_FUNC    stub address  st_value / QS
> > -   C: SHN_UNDEF   all others  0             st_value (== 0) / QS
> > -   D: SHN_COMMON  any         alignment     0 / QS
> > -   E: all others  STT_FUNC    value         st_value / stub address
> > -   F: all others  all others  value         st_value
> > -
> > -   (wording slightly modified from the psABI table).  Here, QS denotes
> > -   Quickstart values.
> > -
> > -   The dynamic linker treats each case as follows:
> > -
> > -   - [A, B when not binding lazily, C, D, E when not binding lazily, F]
> > -     Resolve the symbol and store its value in the GOT.
> > -
> > -   - [B when binding lazily] Set the GOT entry to the st_value plus
> > -     the base address.
> > -
> > -   - [E when binding lazily] If the GOT entry is different from the st_value,
> > -     add the base addreess to the GOT entry.  Otherwise resolve the symbol
> > -     and store its value in the GOT (as for A, C, etc).
> > -
> > -   As the table shows, we can install Quickstart values for types A-D.
> > -   Installing Quickstart values for type F should be a no-op, because the
> > -   GOT should already hold the desired value.  Installing Quickstart values
> > -   for type E would either be a no-op (if the GOT entry already contains
> > -   st_value) or would lose the address of the lazy binding stub.  */
> > +* SPDX-License-Identifier: GPL-2.0-or-later
> > +*/
>
> It looks like you've removed an important comment there along with the
> old license header. I think there are a few other instances of this as
> well. Could you re-check this?
>

Also, I think Mark's email address needs updating in the README as I
got a bounce sending this reply. Mark, could you confirm?

-- 
Paul Barker
Konsulko Group
