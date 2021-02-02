Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web12.50441.1612263561216153533
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Feb 2021 02:59:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rmhrr4rq;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: idadelm@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id f14so4984524ejc.8
        for <yocto@lists.yoctoproject.org>; Tue, 02 Feb 2021 02:59:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gtgNtqhNeSKubG5LN+z0+lYXDBaYWTXjjuB/EbFOVqE=;
        b=Rmhrr4rq/dUDe5AzhN14T+8swebwSr5eCRUCZGuIrEmpmQY7pQUMqXsK4TiYhm8mxq
         ArJ6t/QKOctHQbNF0su7qrW1XJAQdMkMKAlhw6R8mKU01cxoOXTHJ5eyoyX6XXWhfFrt
         h7aPzmFEmeZo85e25g2sKb2eFtibakEXD4FAkgRBl+OddP+pHTPDF238B8d/XKT+ppf9
         MOgaN6E5LikzWCtq+10X/dxFqfhqxNfiZ8jSN+9YBK/H7K4c3P2mkNAhqkckem4U5gPf
         frzgnq8ooRDP3FPmv4RXFaIuTjl127LPMAPJfUrBHvxXt0Gqk27HYxI7fTbJbNNtY1FA
         7VjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gtgNtqhNeSKubG5LN+z0+lYXDBaYWTXjjuB/EbFOVqE=;
        b=IY5mCK/ky/AgTHJ2wh0q+CW5tuMVSAafbKfpWcTzVn5mYMou9bqbcmv9ZO9Ei15Xbw
         W9DPJYkBge17q/WVRC7ZqL7jt28wiBBARuSjCaY20kS3RWxA4FNtaNPV+wu6U+1BRegf
         1eCVsNWCwkhyfsMdRwPXCdVsKof8gdNUVv91chjdqxUAO5dywvAw/nYeUAh4AyOZsTex
         QCA25OiUH+6zn9xd6kJrxq+ImxniPCL3F24z5x9kGgUv3WRmCPnbALLXAkpGGlE7ldWu
         9z6w2KJKPeYu+DnyXCZqvIkllWcviL1PATvTfI7SrwOKVdHxEI55PX1xFOy4YI8KRKzh
         Zwgw==
X-Gm-Message-State: AOAM5320FrpN2FMTs4tp0ctANFUQbHyzpeiFVkHbcQzz357bidG/XN87
	SONCTdSQiYXRFPv7TJ3zNVSkz0NLAbqgcvgoRW4=
X-Google-Smtp-Source: ABdhPJz3IHPsRkvWEFl7ZGY7ZsgTk5BlGc0YcuuOlFVvL9Uqd4b1sPI2/8vGW4fqec5RX/HyIGyxBSzbe2Z+zs7g1u0=
X-Received: by 2002:a17:906:1719:: with SMTP id c25mr22438140eje.251.1612263558599;
 Tue, 02 Feb 2021 02:59:18 -0800 (PST)
MIME-Version: 1.0
References: <165FE8F0D05B65CB.16314@lists.yoctoproject.org>
In-Reply-To: <165FE8F0D05B65CB.16314@lists.yoctoproject.org>
From: "Meh Mbeh Ida Delphine" <idadelm@gmail.com>
Date: Tue, 2 Feb 2021 11:59:02 +0100
Message-ID: <CAN7sTguHeLiZh-4fqyLAF-woBO10HsRTkaRS7yqZx9fgAQ2Pjw@mail.gmail.com>
Subject: Re: [yocto] [prelink-cross][PATCH] Add SPDX license headers to all source files
To: Ida Delphine <idadelm@gmail.com>
Cc: yocto@lists.yoctoproject.org, Mark Hatle <mark.hatle@kernel.crashing.org>
Content-Type: multipart/alternative; boundary="000000000000b1d71105ba585ce1"

--000000000000b1d71105ba585ce1
Content-Type: text/plain; charset="UTF-8"

I sent this patch October last year and couldn't be integrated since it was
the end of the development cycle.

On Tue, 2 Feb 2021, 11:55 am Meh Mbeh Ida Delphine via
lists.yoctoproject.org, <idadelm=gmail.com@lists.yoctoproject.org> wrote:

> From: Meh Mbeh Ida Delphine <idadelm@gmail.com>
>
> Added SPDX headers in all source files except src/makecrc.c since it is
> not copyrighted.
> Skipped Makefile.am as well.
> Also cleared redundant license text.
> Updated README file with correct email addresses.
>
> Fixes: [YOCTO #13529]
>
> Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
> ---
>  README             |  4 ++--
>  src/arch-alpha.c   | 15 ++-------------
>  src/arch-arm.c     | 15 ++-------------
>  src/arch-cris.c    | 15 ++-------------
>  src/arch-i386.c    | 15 ++-------------
>  src/arch-ia64.c    | 15 ++-------------
>  src/arch-mips.c    | 16 ++--------------
>  src/arch-ppc.c     | 15 ++-------------
>  src/arch-ppc64.c   | 15 ++-------------
>  src/arch-s390.c    | 15 ++-------------
>  src/arch-s390x.c   | 15 ++-------------
>  src/arch-sh.c      | 15 ++-------------
>  src/arch-sparc.c   | 16 +++-------------
>  src/arch-sparc64.c | 15 ++-------------
>  src/arch-x86_64.c  | 15 ++-------------
>  src/cache.c        | 15 ++-------------
>  src/canonicalize.c | 16 ++--------------
>  src/checksum.c     | 15 ++-------------
>  src/conflict.c     | 15 ++-------------
>  src/crc32.c        | 15 ++-------------
>  src/cxx.c          | 15 ++-------------
>  src/data.c         | 15 ++-------------
>  src/doit.c         | 15 ++-------------
>  src/dso.c          | 15 ++-------------
>  src/dwarf2.c       | 15 ++-------------
>  src/dwarf2.h       | 15 ++-------------
>  src/exec.c         | 15 ++-------------
>  src/execle_open.c  | 15 ++-------------
>  src/execstack.c    | 15 ++-------------
>  src/fptr.c         | 15 ++-------------
>  src/fptr.h         | 15 ++-------------
>  src/gather.c       | 15 ++-------------
>  src/get.c          | 15 ++-------------
>  src/hashtab.c      | 17 ++---------------
>  src/hashtab.h      | 16 +++-------------
>  src/layout.c       | 15 ++-------------
>  src/layout.h       | 15 ++-------------
>  src/main.c         | 15 ++-------------
>  src/md5.c          | 16 ++--------------
>  src/md5.h          | 15 ++-------------
>  src/mdebug.c       | 15 ++-------------
>  src/prelink.c      | 15 ++-------------
>  src/prelink.h      | 15 ++-------------
>  src/prelinktab.h   | 15 ++-------------
>  src/reloc-info.c   | 15 ++-------------
>  src/reloc-info.h   | 15 ++-------------
>  src/reloc.c        | 15 ++-------------
>  src/reloc.h        | 15 ++-------------
>  src/sha.c          |  4 ++++
>  src/sha.h          |  4 ++++
>  src/space.c        | 15 ++-------------
>  src/space.h        | 15 ++-------------
>  src/stabs.c        | 15 ++-------------
>  src/undo.c         | 15 ++-------------
>  src/undoall.c      | 15 ++-------------
>  src/verify.c       | 15 ++-------------
>  56 files changed, 118 insertions(+), 696 deletions(-)
>
> diff --git a/README b/README
> index 2d8893b..5f91fab 100644
> --- a/README
> +++ b/README
> @@ -13,8 +13,8 @@ Patch submission
>  When submitting patches to the cross-prelink project, please do the
>  following:
>
> -To: mark.hatle@windriver.com
> -Cc: yocto@yoctoproject.org
> +To: mark.hatle@kernel.crashing.org
> +Cc: yocto@lists.yoctoproject.org
>
>  Subject: [prelink-cross] ....
>
> diff --git a/src/arch-alpha.c b/src/arch-alpha.c
> index 7802a3e..bc5c192 100644
> --- a/src/arch-alpha.c
> +++ b/src/arch-alpha.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/arch-arm.c b/src/arch-arm.c
> index eec7c57..b5ea886 100644
> --- a/src/arch-arm.c
> +++ b/src/arch-arm.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2004, 2009, 2011, 2013 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/arch-cris.c b/src/arch-cris.c
> index 3272779..634bf9f 100644
> --- a/src/arch-cris.c
> +++ b/src/arch-cris.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/arch-i386.c b/src/arch-i386.c
> index a1e0fcc..5a0b2ca 100644
> --- a/src/arch-i386.c
> +++ b/src/arch-i386.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2011 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/arch-ia64.c b/src/arch-ia64.c
> index 6039115..56196de 100644
> --- a/src/arch-ia64.c
> +++ b/src/arch-ia64.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/arch-mips.c b/src/arch-mips.c
> index 02c608f..2875ec3 100644
> --- a/src/arch-mips.c
> +++ b/src/arch-mips.c
> @@ -2,20 +2,8 @@
>     Written by Richard Sandiford <richard@codesourcery.com>, 2006
>     Updated by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> -
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>  /* GENERAL NOTES
>
>     The psABI defines R_MIPS_REL32 as A - EA + S, where the value of EA
> diff --git a/src/arch-ppc.c b/src/arch-ppc.c
> index e22e5d5..e296d79 100644
> --- a/src/arch-ppc.c
> +++ b/src/arch-ppc.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2009, 2011 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/arch-ppc64.c b/src/arch-ppc64.c
> index a764b99..3f2c375 100644
> --- a/src/arch-ppc64.c
> +++ b/src/arch-ppc64.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2002, 2003, 2004, 2009 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2002.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/arch-s390.c b/src/arch-s390.c
> index e5fe130..1a65f5c 100644
> --- a/src/arch-s390.c
> +++ b/src/arch-s390.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2010, 2013 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/arch-s390x.c b/src/arch-s390x.c
> index e4d82f7..926cfa2 100644
> --- a/src/arch-s390x.c
> +++ b/src/arch-s390x.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2013 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/arch-sh.c b/src/arch-sh.c
> index 1b11312..a852266 100644
> --- a/src/arch-sh.c
> +++ b/src/arch-sh.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/arch-sparc.c b/src/arch-sparc.c
> index e016a79..41b297d 100644
> --- a/src/arch-sparc.c
> +++ b/src/arch-sparc.c
> @@ -1,19 +1,9 @@
>  /* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +/*
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/arch-sparc64.c b/src/arch-sparc64.c
> index aee4601..c6a1027 100644
> --- a/src/arch-sparc64.c
> +++ b/src/arch-sparc64.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/arch-x86_64.c b/src/arch-x86_64.c
> index 2f6c551..249661a 100644
> --- a/src/arch-x86_64.c
> +++ b/src/arch-x86_64.c
> @@ -3,19 +3,8 @@
>     Copyright (C) 2011 Wind River Systems, Inc.
>     x32 support by Mark Hatle <mark.hatle@windriver.com>
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/cache.c b/src/cache.c
> index 1cc3217..b476581 100644
> --- a/src/cache.c
> +++ b/src/cache.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2013 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/canonicalize.c b/src/canonicalize.c
> index 79df44e..e94ec06 100644
> --- a/src/canonicalize.c
> +++ b/src/canonicalize.c
> @@ -2,20 +2,8 @@
>     Copyright (C) 1996-2002, 2004, 2005, 2006 Free Software Foundation,
> Inc.
>     This file is part of the GNU C Library.
>
> -   The GNU C Library is free software; you can redistribute it and/or
> -   modify it under the terms of the GNU Lesser General Public
> -   License as published by the Free Software Foundation; either
> -   version 2.1 of the License, or (at your option) any later version.
> -
> -   The GNU C Library is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> -   Lesser General Public License for more details.
> -
> -   You should have received a copy of the GNU Lesser General Public
> -   License along with the GNU C Library; if not, write to the Free
> -   Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
> -   02111-1307 USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <assert.h>
>  #include <stdlib.h>
> diff --git a/src/checksum.c b/src/checksum.c
> index 20a23a0..5c80fc5 100644
> --- a/src/checksum.c
> +++ b/src/checksum.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/conflict.c b/src/conflict.c
> index 5613ace..83713c5 100644
> --- a/src/conflict.c
> +++ b/src/conflict.c
> @@ -3,19 +3,8 @@
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>     Updated by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/crc32.c b/src/crc32.c
> index f36abb5..81e990b 100644
> --- a/src/crc32.c
> +++ b/src/crc32.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <stdint.h>
> diff --git a/src/cxx.c b/src/cxx.c
> index 4391ebe..4b911a9 100644
> --- a/src/cxx.c
> +++ b/src/cxx.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2007, 2009 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <alloca.h>
> diff --git a/src/data.c b/src/data.c
> index 751f96f..d648744 100644
> --- a/src/data.c
> +++ b/src/data.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include "prelink.h"
> diff --git a/src/doit.c b/src/doit.c
> index 3784866..42e6819 100644
> --- a/src/doit.c
> +++ b/src/doit.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2003, 2004, 2005, 2007 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <alloca.h>
> diff --git a/src/dso.c b/src/dso.c
> index 949abf9..9cce846 100644
> --- a/src/dso.c
> +++ b/src/dso.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2010 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/dwarf2.c b/src/dwarf2.c
> index b9588b1..d230bb7 100644
> --- a/src/dwarf2.c
> +++ b/src/dwarf2.c
> @@ -2,19 +2,8 @@
>     Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/dwarf2.h b/src/dwarf2.h
> index b0c80b6..888f2c7 100644
> --- a/src/dwarf2.h
> +++ b/src/dwarf2.h
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2009, 2010, 2011, 2012 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #define DW_TAG_padding                 0x00
>  #define DW_TAG_array_type              0x01
> diff --git a/src/exec.c b/src/exec.c
> index ca7fd14..431690e 100644
> --- a/src/exec.c
> +++ b/src/exec.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/execle_open.c b/src/execle_open.c
> index 2ee5cbc..0d4bef5 100644
> --- a/src/execle_open.c
> +++ b/src/execle_open.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <errno.h>
> diff --git a/src/execstack.c b/src/execstack.c
> index 97fb453..fe044c5 100644
> --- a/src/execstack.c
> +++ b/src/execstack.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2003, 2005, 2010 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2003.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <errno.h>
> diff --git a/src/fptr.c b/src/fptr.c
> index cfe3aed..65a2804 100644
> --- a/src/fptr.c
> +++ b/src/fptr.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2007 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/fptr.h b/src/fptr.h
> index 36ef7c6..c4ce3f7 100644
> --- a/src/fptr.h
> +++ b/src/fptr.h
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #ifndef FPTR_H
>  #define FPTR_H
> diff --git a/src/gather.c b/src/gather.c
> index 277f1b5..0d1e7c4 100644
> --- a/src/gather.c
> +++ b/src/gather.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/get.c b/src/get.c
> index 0659962..bb58b1e 100644
> --- a/src/get.c
> +++ b/src/get.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2007, 2009 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/hashtab.c b/src/hashtab.c
> index fa27446..7dc389d 100644
> --- a/src/hashtab.c
> +++ b/src/hashtab.c
> @@ -2,21 +2,8 @@
>     Copyright (C) 1999, 2000, 2001 Free Software Foundation, Inc.
>     Contributed by Vladimir Makarov (vmakarov@cygnus.com).
>
> -This file is part of the libiberty library.
> -Libiberty is free software; you can redistribute it and/or
> -modify it under the terms of the GNU Library General Public
> -License as published by the Free Software Foundation; either
> -version 2 of the License, or (at your option) any later version.
> -
> -Libiberty is distributed in the hope that it will be useful,
> -but WITHOUT ANY WARRANTY; without even the implied warranty of
> -MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> -Library General Public License for more details.
> -
> -You should have received a copy of the GNU Library General Public
> -License along with libiberty; see the file COPYING.LIB.  If
> -not, write to the Free Software Foundation, Inc., 59 Temple Place - Suite
> 330,
> -Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  /* This package implements basic hash table functionality.  It is possible
>     to search for an entry, create an entry and destroy an entry.
> diff --git a/src/hashtab.h b/src/hashtab.h
> index 31e63e0..d3f297f 100644
> --- a/src/hashtab.h
> +++ b/src/hashtab.h
> @@ -2,19 +2,8 @@
>     Copyright (C) 1999, 2000 Free Software Foundation, Inc.
>     Contributed by Vladimir Makarov (vmakarov@cygnus.com).
>
> -This program is free software; you can redistribute it and/or modify
> -it under the terms of the GNU General Public License as published by
> -the Free Software Foundation; either version 2 of the License, or
> -(at your option) any later version.
> -
> -This program is distributed in the hope that it will be useful,
> -but WITHOUT ANY WARRANTY; without even the implied warranty of
> -MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -GNU General Public License for more details.
> -
> -You should have received a copy of the GNU General Public License
> -along with this program; if not, write to the Free Software
> -Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307,
> USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  /* This package implements basic hash table functionality.  It is possible
>     to search for an entry, create an entry and destroy an entry.
> @@ -29,6 +18,7 @@ Foundation, Inc., 59 Temple Place - Suite 330, Boston,
> MA 02111-1307, USA.  */
>     expanded by creation of new hash table and transferring elements from
>     the old table to the new table.  */
>
> +
>  #ifndef __HASHTAB_H__
>  #define __HASHTAB_H__
>
> diff --git a/src/layout.c b/src/layout.c
> index 859ab66..29be7a3 100644
> --- a/src/layout.c
> +++ b/src/layout.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2011 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <alloca.h>
> diff --git a/src/layout.h b/src/layout.h
> index f481d22..1b10bc0 100644
> --- a/src/layout.h
> +++ b/src/layout.h
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2004, 2006 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #ifndef LAYOUT_H
>  #define LAYOUT_H
> diff --git a/src/main.c b/src/main.c
> index 6ba89d5..39e44ad 100644
> --- a/src/main.c
> +++ b/src/main.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2007, 2010, 2011 Red Hat,
> Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <errno.h>
> diff --git a/src/md5.c b/src/md5.c
> index 0d2fdef..19a8e0b 100644
> --- a/src/md5.c
> +++ b/src/md5.c
> @@ -4,21 +4,9 @@
>     NOTE: The canonical source of this file is maintained with the GNU C
>     Library.  Bugs can be reported to bug-glibc@prep.ai.mit.edu.
>
> -   This program is free software; you can redistribute it and/or modify it
> -   under the terms of the GNU General Public License as published by the
> -   Free Software Foundation; either version 2, or (at your option) any
> -   later version.
>
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> -
> -/* Written by Ulrich Drepper <drepper@gnu.ai.mit.edu>, 1995.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <sys/types.h>
>  #include <stdlib.h>
> diff --git a/src/md5.h b/src/md5.h
> index 55f6195..eb0b85e 100644
> --- a/src/md5.h
> +++ b/src/md5.h
> @@ -4,19 +4,8 @@
>     NOTE: The canonical source of this file is maintained with the GNU C
>     Library.  Bugs can be reported to bug-glibc@prep.ai.mit.edu.
>
> -   This program is free software; you can redistribute it and/or modify it
> -   under the terms of the GNU General Public License as published by the
> -   Free Software Foundation; either version 2, or (at your option) any
> -   later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #ifndef _MD5_H
>  #define _MD5_H 1
> diff --git a/src/mdebug.c b/src/mdebug.c
> index 4c22d2f..eb6d1b5 100644
> --- a/src/mdebug.c
> +++ b/src/mdebug.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/prelink.c b/src/prelink.c
> index 64c4fea..bf774c9 100644
> --- a/src/prelink.c
> +++ b/src/prelink.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/prelink.h b/src/prelink.h
> index 39c4390..4c4c243 100644
> --- a/src/prelink.h
> +++ b/src/prelink.h
> @@ -4,19 +4,8 @@
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>     Updated by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #ifndef PRELINK_H
>  #define PRELINK_H
> diff --git a/src/prelinktab.h b/src/prelinktab.h
> index f41c79c..a404292 100644
> --- a/src/prelinktab.h
> +++ b/src/prelinktab.h
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #ifndef PRELINKTAB_H
>  #define PRELINKTAB_H
> diff --git a/src/reloc-info.c b/src/reloc-info.c
> index 4ce333c..d51cfc1 100644
> --- a/src/reloc-info.c
> +++ b/src/reloc-info.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2008 CodeSourcery
>     Written by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>
> diff --git a/src/reloc-info.h b/src/reloc-info.h
> index a8f8b7c..592a92c 100644
> --- a/src/reloc-info.h
> +++ b/src/reloc-info.h
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2008 CodeSourcery
>     Written by Maciej W. Rozycki <macro@codesourcery.com>, 2008.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #ifndef RELOC_INFO_H
>  #define RELOC_INFO_H
> diff --git a/src/reloc.c b/src/reloc.c
> index deb0abe..9883dc7 100644
> --- a/src/reloc.c
> +++ b/src/reloc.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2005 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/reloc.h b/src/reloc.h
> index a2ceff9..ee91f7e 100644
> --- a/src/reloc.h
> +++ b/src/reloc.h
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #ifndef RELOC_H
>  #define RELOC_H
> diff --git a/src/sha.c b/src/sha.c
> index cfbc956..f979bc4 100644
> --- a/src/sha.c
> +++ b/src/sha.c
> @@ -1,3 +1,7 @@
> +/*
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
> +
>  /* sha.c - Functions to compute the SHA1 hash (message-digest) of files
>     or blocks of memory.  Complies to the NIST specification FIPS-180-1.
>
> diff --git a/src/sha.h b/src/sha.h
> index 13583e3..810072b 100644
> --- a/src/sha.h
> +++ b/src/sha.h
> @@ -1,3 +1,7 @@
> +/*
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
> +
>  /* sha.h - Declaration of functions and datatypes for SHA1 sum computing
>     library functions.
>
> diff --git a/src/space.c b/src/space.c
> index 4bd4760..8223daf 100644
> --- a/src/space.c
> +++ b/src/space.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2007 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/space.h b/src/space.h
> index 5c9f725..59d087c 100644
> --- a/src/space.h
> +++ b/src/space.h
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2004 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #ifndef SPACE_H
>  #define SPACE_H
> diff --git a/src/stabs.c b/src/stabs.c
> index c0a5a6a..fd0ca28 100644
> --- a/src/stabs.c
> +++ b/src/stabs.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2005, 2006 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/undo.c b/src/undo.c
> index 4c38dab..e6cfae3 100644
> --- a/src/undo.c
> +++ b/src/undo.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2001, 2002, 2003, 2005, 2010 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2001.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> diff --git a/src/undoall.c b/src/undoall.c
> index 55d2a0b..44a0b4e 100644
> --- a/src/undoall.c
> +++ b/src/undoall.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2002, 2005 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2002.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <alloca.h>
> diff --git a/src/verify.c b/src/verify.c
> index 7f530c0..991794a 100644
> --- a/src/verify.c
> +++ b/src/verify.c
> @@ -1,19 +1,8 @@
>  /* Copyright (C) 2002, 2003, 2006, 2007, 2010 Red Hat, Inc.
>     Written by Jakub Jelinek <jakub@redhat.com>, 2002.
>
> -   This program is free software; you can redistribute it and/or modify
> -   it under the terms of the GNU General Public License as published by
> -   the Free Software Foundation; either version 2, or (at your option)
> -   any later version.
> -
> -   This program is distributed in the hope that it will be useful,
> -   but WITHOUT ANY WARRANTY; without even the implied warranty of
> -   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -   GNU General Public License for more details.
> -
> -   You should have received a copy of the GNU General Public License
> -   along with this program; if not, write to the Free Software Foundation,
> -   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
> +* SPDX-License-Identifier: GPL-2.0-or-later
> +*/
>
>  #include <config.h>
>  #include <assert.h>
> --
> 2.25.1
>
>
> 
>
>

--000000000000b1d71105ba585ce1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I sent this patch October last year and couldn&#39;t be i=
ntegrated since it was the end of the development cycle.</div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 2 Feb 2021,=
 11:55 am Meh Mbeh Ida Delphine via <a href=3D"http://lists.yoctoproject.or=
g" target=3D"_blank" rel=3D"noreferrer">lists.yoctoproject.org</a>, &lt;ida=
delm=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=3D"_blank=
" rel=3D"noreferrer">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">From: Meh Mbeh Ida Delphine &lt;<a href=
=3D"mailto:idadelm@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_bla=
nk">idadelm@gmail.com</a>&gt;<br>
<br>
Added SPDX headers in all source files except src/makecrc.c since it is no=
t copyrighted.<br>
Skipped Makefile.am as well.<br>
Also cleared redundant license text.<br>
Updated README file with correct email addresses.<br>
<br>
Fixes: [YOCTO #13529]<br>
<br>
Signed-off-by: Meh Mbeh Ida Delphine &lt;<a href=3D"mailto:idadelm@gmail.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">idadelm@gmail.com</a>&g=
t;<br>
---<br>
=C2=A0README=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 4 ++--=
<br>
=C2=A0src/arch-alpha.c=C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/arch-arm.c=C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/arch-cris.c=C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/arch-i386.c=C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/arch-ia64.c=C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/arch-mips.c=C2=A0 =C2=A0 | 16 ++--------------<br>
=C2=A0src/arch-ppc.c=C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/arch-ppc64.c=C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/arch-s390.c=C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/arch-s390x.c=C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/arch-sh.c=C2=A0 =C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/arch-sparc.c=C2=A0 =C2=A0| 16 +++-------------<br>
=C2=A0src/arch-sparc64.c | 15 ++-------------<br>
=C2=A0src/arch-x86_64.c=C2=A0 | 15 ++-------------<br>
=C2=A0src/cache.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/canonicalize.c | 16 ++--------------<br>
=C2=A0src/checksum.c=C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/conflict.c=C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/crc32.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/cxx.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/data.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/doit.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/dso.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/dwarf2.c=C2=A0 =C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/dwarf2.h=C2=A0 =C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/exec.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/execle_open.c=C2=A0 | 15 ++-------------<br>
=C2=A0src/execstack.c=C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/fptr.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/fptr.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/gather.c=C2=A0 =C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/get.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/hashtab.c=C2=A0 =C2=A0 =C2=A0 | 17 ++---------------<br>
=C2=A0src/hashtab.h=C2=A0 =C2=A0 =C2=A0 | 16 +++-------------<br>
=C2=A0src/layout.c=C2=A0 =C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/layout.h=C2=A0 =C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/main.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/md5.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 16 ++--------------<br=
>
=C2=A0src/md5.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/mdebug.c=C2=A0 =C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/prelink.c=C2=A0 =C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/prelink.h=C2=A0 =C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/prelinktab.h=C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/reloc-info.c=C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/reloc-info.h=C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/reloc.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/reloc.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/sha.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 4 ++++<br>
=C2=A0src/sha.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 4 ++++<br>
=C2=A0src/space.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/space.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/stabs.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/undo.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A0src/undoall.c=C2=A0 =C2=A0 =C2=A0 | 15 ++-------------<br>
=C2=A0src/verify.c=C2=A0 =C2=A0 =C2=A0 =C2=A0| 15 ++-------------<br>
=C2=A056 files changed, 118 insertions(+), 696 deletions(-)<br>
<br>
diff --git a/README b/README<br>
index 2d8893b..5f91fab 100644<br>
--- a/README<br>
+++ b/README<br>
@@ -13,8 +13,8 @@ Patch submission<br>
=C2=A0When submitting patches to the cross-prelink project, please do the<=
br>
=C2=A0following:<br>
<br>
-To: <a href=3D"mailto:mark.hatle@windriver.com" rel=3D"noreferrer norefer=
rer" target=3D"_blank">mark.hatle@windriver.com</a><br>
-Cc: <a href=3D"mailto:yocto@yoctoproject.org" rel=3D"noreferrer noreferre=
r" target=3D"_blank">yocto@yoctoproject.org</a><br>
+To: <a href=3D"mailto:mark.hatle@kernel.crashing.org" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">mark.hatle@kernel.crashing.org</a><br>
+Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" rel=3D"noreferrer nor=
eferrer" target=3D"_blank">yocto@lists.yoctoproject.org</a><br>
<br>
=C2=A0Subject: [prelink-cross] ....<br>
<br>
diff --git a/src/arch-alpha.c b/src/arch-alpha.c<br>
index 7802a3e..bc5c192 100644<br>
--- a/src/arch-alpha.c<br>
+++ b/src/arch-alpha.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/arch-arm.c b/src/arch-arm.c<br>
index eec7c57..b5ea886 100644<br>
--- a/src/arch-arm.c<br>
+++ b/src/arch-arm.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2004, 2009, 2011, 2013 Red Hat, Inc.<br=
>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/arch-cris.c b/src/arch-cris.c<br>
index 3272779..634bf9f 100644<br>
--- a/src/arch-cris.c<br>
+++ b/src/arch-cris.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/arch-i386.c b/src/arch-i386.c<br>
index a1e0fcc..5a0b2ca 100644<br>
--- a/src/arch-i386.c<br>
+++ b/src/arch-i386.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2011 Red Hat, Inc.<br=
>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/arch-ia64.c b/src/arch-ia64.c<br>
index 6039115..56196de 100644<br>
--- a/src/arch-ia64.c<br>
+++ b/src/arch-ia64.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/arch-mips.c b/src/arch-mips.c<br>
index 02c608f..2875ec3 100644<br>
--- a/src/arch-mips.c<br>
+++ b/src/arch-mips.c<br>
@@ -2,20 +2,8 @@<br>
=C2=A0 =C2=A0 Written by Richard Sandiford &lt;<a href=3D"mailto:richard@c=
odesourcery.com" rel=3D"noreferrer noreferrer" target=3D"_blank">richard@co=
desourcery.com</a>&gt;, 2006<br>
=C2=A0 =C2=A0 Updated by Maciej W. Rozycki &lt;<a href=3D"mailto:macro@cod=
esourcery.com" rel=3D"noreferrer noreferrer" target=3D"_blank">macro@codeso=
urcery.com</a>&gt;, 2008.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
-<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
=C2=A0/* GENERAL NOTES<br>
<br>
=C2=A0 =C2=A0 The psABI defines R_MIPS_REL32 as A - EA + S, where the valu=
e of EA<br>
diff --git a/src/arch-ppc.c b/src/arch-ppc.c<br>
index e22e5d5..e296d79 100644<br>
--- a/src/arch-ppc.c<br>
+++ b/src/arch-ppc.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2009, 2011 Red Hat, I=
nc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/arch-ppc64.c b/src/arch-ppc64.c<br>
index a764b99..3f2c375 100644<br>
--- a/src/arch-ppc64.c<br>
+++ b/src/arch-ppc64.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2002, 2003, 2004, 2009 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2002.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/arch-s390.c b/src/arch-s390.c<br>
index e5fe130..1a65f5c 100644<br>
--- a/src/arch-s390.c<br>
+++ b/src/arch-s390.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2010, 2013 Red Hat, I=
nc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/arch-s390x.c b/src/arch-s390x.c<br>
index e4d82f7..926cfa2 100644<br>
--- a/src/arch-s390x.c<br>
+++ b/src/arch-s390x.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2004, 2009, 2013 Red Hat, Inc.<br=
>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/arch-sh.c b/src/arch-sh.c<br>
index 1b11312..a852266 100644<br>
--- a/src/arch-sh.c<br>
+++ b/src/arch-sh.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2004, 2009 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/arch-sparc.c b/src/arch-sparc.c<br>
index e016a79..41b297d 100644<br>
--- a/src/arch-sparc.c<br>
+++ b/src/arch-sparc.c<br>
@@ -1,19 +1,9 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+/*<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/arch-sparc64.c b/src/arch-sparc64.c<br>
index aee4601..c6a1027 100644<br>
--- a/src/arch-sparc64.c<br>
+++ b/src/arch-sparc64.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2004, 2009 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/arch-x86_64.c b/src/arch-x86_64.c<br>
index 2f6c551..249661a 100644<br>
--- a/src/arch-x86_64.c<br>
+++ b/src/arch-x86_64.c<br>
@@ -3,19 +3,8 @@<br>
=C2=A0 =C2=A0 Copyright (C) 2011 Wind River Systems, Inc.<br>
=C2=A0 =C2=A0 x32 support by Mark Hatle &lt;<a href=3D"mailto:mark.hatle@w=
indriver.com" rel=3D"noreferrer noreferrer" target=3D"_blank">mark.hatle@wi=
ndriver.com</a>&gt;<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/cache.c b/src/cache.c<br>
index 1cc3217..b476581 100644<br>
--- a/src/cache.c<br>
+++ b/src/cache.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2013 Red Hat, Inc.<br=
>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/canonicalize.c b/src/canonicalize.c<br>
index 79df44e..e94ec06 100644<br>
--- a/src/canonicalize.c<br>
+++ b/src/canonicalize.c<br>
@@ -2,20 +2,8 @@<br>
=C2=A0 =C2=A0 Copyright (C) 1996-2002, 2004, 2005, 2006 Free Software Foun=
dation, Inc.<br>
=C2=A0 =C2=A0 This file is part of the GNU C Library.<br>
<br>
-=C2=A0 =C2=A0The GNU C Library is free software; you can redistribute it =
and/or<br>
-=C2=A0 =C2=A0modify it under the terms of the GNU Lesser General Public<b=
r>
-=C2=A0 =C2=A0License as published by the Free Software Foundation; either=
<br>
-=C2=A0 =C2=A0version 2.1 of the License, or (at your option) any later ve=
rsion.<br>
-<br>
-=C2=A0 =C2=A0The GNU C Library is distributed in the hope that it will be=
 useful,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the GNU<br>
-=C2=A0 =C2=A0Lesser General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU Lesser General Pu=
blic<br>
-=C2=A0 =C2=A0License along with the GNU C Library; if not, write to the F=
ree<br>
-=C2=A0 =C2=A0Software Foundation, Inc., 59 Temple Place, Suite 330, Bosto=
n, MA<br>
-=C2=A0 =C2=A002111-1307 USA.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;assert.h&gt;<br>
=C2=A0#include &lt;stdlib.h&gt;<br>
diff --git a/src/checksum.c b/src/checksum.c<br>
index 20a23a0..5c80fc5 100644<br>
--- a/src/checksum.c<br>
+++ b/src/checksum.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/conflict.c b/src/conflict.c<br>
index 5613ace..83713c5 100644<br>
--- a/src/conflict.c<br>
+++ b/src/conflict.c<br>
@@ -3,19 +3,8 @@<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
=C2=A0 =C2=A0 Updated by Maciej W. Rozycki &lt;<a href=3D"mailto:macro@cod=
esourcery.com" rel=3D"noreferrer noreferrer" target=3D"_blank">macro@codeso=
urcery.com</a>&gt;, 2008.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/crc32.c b/src/crc32.c<br>
index f36abb5..81e990b 100644<br>
--- a/src/crc32.c<br>
+++ b/src/crc32.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;stdint.h&gt;<br>
diff --git a/src/cxx.c b/src/cxx.c<br>
index 4391ebe..4b911a9 100644<br>
--- a/src/cxx.c<br>
+++ b/src/cxx.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2007, 2009 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;alloca.h&gt;<br>
diff --git a/src/data.c b/src/data.c<br>
index 751f96f..d648744 100644<br>
--- a/src/data.c<br>
+++ b/src/data.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &quot;prelink.h&quot;<br>
diff --git a/src/doit.c b/src/doit.c<br>
index 3784866..42e6819 100644<br>
--- a/src/doit.c<br>
+++ b/src/doit.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2003, 2004, 2005, 2007 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;alloca.h&gt;<br>
diff --git a/src/dso.c b/src/dso.c<br>
index 949abf9..9cce846 100644<br>
--- a/src/dso.c<br>
+++ b/src/dso.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2010 Red Hat, I=
nc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/dwarf2.c b/src/dwarf2.c<br>
index b9588b1..d230bb7 100644<br>
--- a/src/dwarf2.c<br>
+++ b/src/dwarf2.c<br>
@@ -2,19 +2,8 @@<br>
=C2=A0 =C2=A0 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/dwarf2.h b/src/dwarf2.h<br>
index b0c80b6..888f2c7 100644<br>
--- a/src/dwarf2.h<br>
+++ b/src/dwarf2.h<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2009, 2010, 2011, 2012 Red Hat, Inc.<br=
>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#define DW_TAG_padding=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00x00<br>
=C2=A0#define DW_TAG_array_type=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 0x01<br>
diff --git a/src/exec.c b/src/exec.c<br>
index ca7fd14..431690e 100644<br>
--- a/src/exec.c<br>
+++ b/src/exec.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006 Red Hat, Inc.<br=
>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/execle_open.c b/src/execle_open.c<br>
index 2ee5cbc..0d4bef5 100644<br>
--- a/src/execle_open.c<br>
+++ b/src/execle_open.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;errno.h&gt;<br>
diff --git a/src/execstack.c b/src/execstack.c<br>
index 97fb453..fe044c5 100644<br>
--- a/src/execstack.c<br>
+++ b/src/execstack.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2003, 2005, 2010 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2003.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;errno.h&gt;<br>
diff --git a/src/fptr.c b/src/fptr.c<br>
index cfe3aed..65a2804 100644<br>
--- a/src/fptr.c<br>
+++ b/src/fptr.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2007 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/fptr.h b/src/fptr.h<br>
index 36ef7c6..c4ce3f7 100644<br>
--- a/src/fptr.h<br>
+++ b/src/fptr.h<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#ifndef FPTR_H<br>
=C2=A0#define FPTR_H<br>
diff --git a/src/gather.c b/src/gather.c<br>
index 277f1b5..0d1e7c4 100644<br>
--- a/src/gather.c<br>
+++ b/src/gather.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007 Red Hat, I=
nc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/get.c b/src/get.c<br>
index 0659962..bb58b1e 100644<br>
--- a/src/get.c<br>
+++ b/src/get.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2007, 2009 Red Hat, I=
nc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/hashtab.c b/src/hashtab.c<br>
index fa27446..7dc389d 100644<br>
--- a/src/hashtab.c<br>
+++ b/src/hashtab.c<br>
@@ -2,21 +2,8 @@<br>
=C2=A0 =C2=A0 Copyright (C) 1999, 2000, 2001 Free Software Foundation, Inc=
.<br>
=C2=A0 =C2=A0 Contributed by Vladimir Makarov (<a href=3D"mailto:vmakarov@=
cygnus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">vmakarov@cygnus=
.com</a>).<br>
<br>
-This file is part of the libiberty library.<br>
-Libiberty is free software; you can redistribute it and/or<br>
-modify it under the terms of the GNU Library General Public<br>
-License as published by the Free Software Foundation; either<br>
-version 2 of the License, or (at your option) any later version.<br>
-<br>
-Libiberty is distributed in the hope that it will be useful,<br>
-but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
-MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the GNU<br=
>
-Library General Public License for more details.<br>
-<br>
-You should have received a copy of the GNU Library General Public<br>
-License along with libiberty; see the file COPYING.LIB.=C2=A0 If<br>
-not, write to the Free Software Foundation, Inc., 59 Temple Place - Suite=
 330,<br>
-Boston, MA 02111-1307, USA.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0/* This package implements basic hash table functionality.=C2=A0 It =
is possible<br>
=C2=A0 =C2=A0 to search for an entry, create an entry and destroy an entry=
.<br>
diff --git a/src/hashtab.h b/src/hashtab.h<br>
index 31e63e0..d3f297f 100644<br>
--- a/src/hashtab.h<br>
+++ b/src/hashtab.h<br>
@@ -2,19 +2,8 @@<br>
=C2=A0 =C2=A0 Copyright (C) 1999, 2000 Free Software Foundation, Inc.<br>
=C2=A0 =C2=A0 Contributed by Vladimir Makarov (<a href=3D"mailto:vmakarov@=
cygnus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">vmakarov@cygnus=
.com</a>).<br>
<br>
-This program is free software; you can redistribute it and/or modify<br>
-it under the terms of the GNU General Public License as published by<br>
-the Free Software Foundation; either version 2 of the License, or<br>
-(at your option) any later version.<br>
-<br>
-This program is distributed in the hope that it will be useful,<br>
-but WITHOUT ANY WARRANTY; without even the implied warranty of<br>
-MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 See the<br>
-GNU General Public License for more details.<br>
-<br>
-You should have received a copy of the GNU General Public License<br>
-along with this program; if not, write to the Free Software<br>
-Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA=
.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0/* This package implements basic hash table functionality.=C2=A0 It =
is possible<br>
=C2=A0 =C2=A0 to search for an entry, create an entry and destroy an entry=
.<br>
@@ -29,6 +18,7 @@ Foundation, Inc., 59 Temple Place - Suite 330, Boston, M=
A 02111-1307, USA.=C2=A0 */<br>
=C2=A0 =C2=A0 expanded by creation of new hash table and transferring elem=
ents from<br>
=C2=A0 =C2=A0 the old table to the new table.=C2=A0 */<br>
<br>
+<br>
=C2=A0#ifndef __HASHTAB_H__<br>
=C2=A0#define __HASHTAB_H__<br>
<br>
diff --git a/src/layout.c b/src/layout.c<br>
index 859ab66..29be7a3 100644<br>
--- a/src/layout.c<br>
+++ b/src/layout.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2011 Red Hat, Inc.<br=
>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;alloca.h&gt;<br>
diff --git a/src/layout.h b/src/layout.h<br>
index f481d22..1b10bc0 100644<br>
--- a/src/layout.h<br>
+++ b/src/layout.h<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2004, 2006 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#ifndef LAYOUT_H<br>
=C2=A0#define LAYOUT_H<br>
diff --git a/src/main.c b/src/main.c<br>
index 6ba89d5..39e44ad 100644<br>
--- a/src/main.c<br>
+++ b/src/main.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2007, 2010, 2011 Red =
Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;errno.h&gt;<br>
diff --git a/src/md5.c b/src/md5.c<br>
index 0d2fdef..19a8e0b 100644<br>
--- a/src/md5.c<br>
+++ b/src/md5.c<br>
@@ -4,21 +4,9 @@<br>
=C2=A0 =C2=A0 NOTE: The canonical source of this file is maintained with t=
he GNU C<br>
=C2=A0 =C2=A0 Library.=C2=A0 Bugs can be reported to <a href=3D"mailto:bug=
-glibc@prep.ai.mit.edu" rel=3D"noreferrer noreferrer" target=3D"_blank">bug=
-glibc@prep.ai.mit.edu</a>.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify it<br>
-=C2=A0 =C2=A0under the terms of the GNU General Public License as publish=
ed by the<br>
-=C2=A0 =C2=A0Free Software Foundation; either version 2, or (at your opti=
on) any<br>
-=C2=A0 =C2=A0later version.<br>
<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
-<br>
-/* Written by Ulrich Drepper &lt;<a href=3D"mailto:drepper@gnu.ai.mit.edu=
" rel=3D"noreferrer noreferrer" target=3D"_blank">drepper@gnu.ai.mit.edu</a=
>&gt;, 1995.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;sys/types.h&gt;<br>
=C2=A0#include &lt;stdlib.h&gt;<br>
diff --git a/src/md5.h b/src/md5.h<br>
index 55f6195..eb0b85e 100644<br>
--- a/src/md5.h<br>
+++ b/src/md5.h<br>
@@ -4,19 +4,8 @@<br>
=C2=A0 =C2=A0 NOTE: The canonical source of this file is maintained with t=
he GNU C<br>
=C2=A0 =C2=A0 Library.=C2=A0 Bugs can be reported to <a href=3D"mailto:bug=
-glibc@prep.ai.mit.edu" rel=3D"noreferrer noreferrer" target=3D"_blank">bug=
-glibc@prep.ai.mit.edu</a>.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify it<br>
-=C2=A0 =C2=A0under the terms of the GNU General Public License as publish=
ed by the<br>
-=C2=A0 =C2=A0Free Software Foundation; either version 2, or (at your opti=
on) any<br>
-=C2=A0 =C2=A0later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#ifndef _MD5_H<br>
=C2=A0#define _MD5_H 1<br>
diff --git a/src/mdebug.c b/src/mdebug.c<br>
index 4c22d2f..eb6d1b5 100644<br>
--- a/src/mdebug.c<br>
+++ b/src/mdebug.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/prelink.c b/src/prelink.c<br>
index 64c4fea..bf774c9 100644<br>
--- a/src/prelink.c<br>
+++ b/src/prelink.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007 Red Hat, I=
nc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/prelink.h b/src/prelink.h<br>
index 39c4390..4c4c243 100644<br>
--- a/src/prelink.h<br>
+++ b/src/prelink.h<br>
@@ -4,19 +4,8 @@<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
=C2=A0 =C2=A0 Updated by Maciej W. Rozycki &lt;<a href=3D"mailto:macro@cod=
esourcery.com" rel=3D"noreferrer noreferrer" target=3D"_blank">macro@codeso=
urcery.com</a>&gt;, 2008.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#ifndef PRELINK_H<br>
=C2=A0#define PRELINK_H<br>
diff --git a/src/prelinktab.h b/src/prelinktab.h<br>
index f41c79c..a404292 100644<br>
--- a/src/prelinktab.h<br>
+++ b/src/prelinktab.h<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#ifndef PRELINKTAB_H<br>
=C2=A0#define PRELINKTAB_H<br>
diff --git a/src/reloc-info.c b/src/reloc-info.c<br>
index 4ce333c..d51cfc1 100644<br>
--- a/src/reloc-info.c<br>
+++ b/src/reloc-info.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2008 CodeSourcery<br>
=C2=A0 =C2=A0 Written by Maciej W. Rozycki &lt;<a href=3D"mailto:macro@cod=
esourcery.com" rel=3D"noreferrer noreferrer" target=3D"_blank">macro@codeso=
urcery.com</a>&gt;, 2008.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
<br>
diff --git a/src/reloc-info.h b/src/reloc-info.h<br>
index a8f8b7c..592a92c 100644<br>
--- a/src/reloc-info.h<br>
+++ b/src/reloc-info.h<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2008 CodeSourcery<br>
=C2=A0 =C2=A0 Written by Maciej W. Rozycki &lt;<a href=3D"mailto:macro@cod=
esourcery.com" rel=3D"noreferrer noreferrer" target=3D"_blank">macro@codeso=
urcery.com</a>&gt;, 2008.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#ifndef RELOC_INFO_H<br>
=C2=A0#define RELOC_INFO_H<br>
diff --git a/src/reloc.c b/src/reloc.c<br>
index deb0abe..9883dc7 100644<br>
--- a/src/reloc.c<br>
+++ b/src/reloc.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2005 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/reloc.h b/src/reloc.h<br>
index a2ceff9..ee91f7e 100644<br>
--- a/src/reloc.h<br>
+++ b/src/reloc.h<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#ifndef RELOC_H<br>
=C2=A0#define RELOC_H<br>
diff --git a/src/sha.c b/src/sha.c<br>
index cfbc956..f979bc4 100644<br>
--- a/src/sha.c<br>
+++ b/src/sha.c<br>
@@ -1,3 +1,7 @@<br>
+/*<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
+<br>
=C2=A0/* sha.c - Functions to compute the SHA1 hash (message-digest) of fi=
les<br>
=C2=A0 =C2=A0 or blocks of memory.=C2=A0 Complies to the NIST specificatio=
n FIPS-180-1.<br>
<br>
diff --git a/src/sha.h b/src/sha.h<br>
index 13583e3..810072b 100644<br>
--- a/src/sha.h<br>
+++ b/src/sha.h<br>
@@ -1,3 +1,7 @@<br>
+/*<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
+<br>
=C2=A0/* sha.h - Declaration of functions and datatypes for SHA1 sum compu=
ting<br>
=C2=A0 =C2=A0 library functions.<br>
<br>
diff --git a/src/space.c b/src/space.c<br>
index 4bd4760..8223daf 100644<br>
--- a/src/space.c<br>
+++ b/src/space.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2004, 2006, 2007 Red Hat, Inc.<br=
>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/space.h b/src/space.h<br>
index 5c9f725..59d087c 100644<br>
--- a/src/space.h<br>
+++ b/src/space.h<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2004 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#ifndef SPACE_H<br>
=C2=A0#define SPACE_H<br>
diff --git a/src/stabs.c b/src/stabs.c<br>
index c0a5a6a..fd0ca28 100644<br>
--- a/src/stabs.c<br>
+++ b/src/stabs.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2005, 2006 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/undo.c b/src/undo.c<br>
index 4c38dab..e6cfae3 100644<br>
--- a/src/undo.c<br>
+++ b/src/undo.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2001, 2002, 2003, 2005, 2010 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2001.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
diff --git a/src/undoall.c b/src/undoall.c<br>
index 55d2a0b..44a0b4e 100644<br>
--- a/src/undoall.c<br>
+++ b/src/undoall.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2002, 2005 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2002.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;alloca.h&gt;<br>
diff --git a/src/verify.c b/src/verify.c<br>
index 7f530c0..991794a 100644<br>
--- a/src/verify.c<br>
+++ b/src/verify.c<br>
@@ -1,19 +1,8 @@<br>
=C2=A0/* Copyright (C) 2002, 2003, 2006, 2007, 2010 Red Hat, Inc.<br>
=C2=A0 =C2=A0 Written by Jakub Jelinek &lt;<a href=3D"mailto:jakub@redhat.=
com" rel=3D"noreferrer noreferrer" target=3D"_blank">jakub@redhat.com</a>&g=
t;, 2002.<br>
<br>
-=C2=A0 =C2=A0This program is free software; you can redistribute it and/o=
r modify<br>
-=C2=A0 =C2=A0it under the terms of the GNU General Public License as publ=
ished by<br>
-=C2=A0 =C2=A0the Free Software Foundation; either version 2, or (at your =
option)<br>
-=C2=A0 =C2=A0any later version.<br>
-<br>
-=C2=A0 =C2=A0This program is distributed in the hope that it will be usef=
ul,<br>
-=C2=A0 =C2=A0but WITHOUT ANY WARRANTY; without even the implied warranty =
of<br>
-=C2=A0 =C2=A0MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.=C2=A0 S=
ee the<br>
-=C2=A0 =C2=A0GNU General Public License for more details.<br>
-<br>
-=C2=A0 =C2=A0You should have received a copy of the GNU General Public Li=
cense<br>
-=C2=A0 =C2=A0along with this program; if not, write to the Free Software =
Foundation,<br>
-=C2=A0 =C2=A0Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, US=
A.=C2=A0 */<br>
+* SPDX-License-Identifier: GPL-2.0-or-later<br>
+*/<br>
<br>
=C2=A0#include &lt;config.h&gt;<br>
=C2=A0#include &lt;assert.h&gt;<br>
-- <br>
2.25.1<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000b1d71105ba585ce1--
