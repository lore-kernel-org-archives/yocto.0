Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
 by mx.groups.io with SMTP id smtpd.web12.10343.1596731737178698849
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 09:35:37 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.1.11, mailfrom: matthew.zeng@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 076GZaYO015775
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Thu, 6 Aug 2020 09:35:36 -0700 (PDT)
Received: from mt-manjaro (128.224.72.77) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Thu, 6 Aug
 2020 09:35:35 -0700
References: <1628B7FC7F65E005.7529@lists.yoctoproject.org>
User-agent: mu4e 1.4.12; emacs 27.0.91
From: "Matthew" <matthew.zeng@windriver.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [matchbox-desktop][PATCH] Add SPDX-License-Identifier: GPL-2.0-or-later
In-Reply-To: <1628B7FC7F65E005.7529@lists.yoctoproject.org>
Date: Thu, 6 Aug 2020 12:35:33 -0400
Message-ID: <87lfir4tre.fsf@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.72.77]
Content-Type: text/plain


Ouch, whitespaces also got removed from the patch file. 
Will submit another patch, with the file COPYING as well.

Matthew <matthew.zeng@windriver.com> writes:

> Signed-off-by: Mingde (Matthew) Zeng <matthew.zeng@windriver.com>
> ---
>  modules/dotdesktop.c        |  2 ++
>  modules/simplefilebrowser.c |  2 ++
>  modules/tasks.c             |  2 ++
>  src/mbdesktop.c             | 12 ++----------
>  src/mbdesktop.h             |  2 ++
>  src/mbdesktop_item.c        |  2 ++
>  src/mbdesktop_item.h        |  2 ++
>  src/mbdesktop_module.c      |  2 ++
>  src/mbdesktop_module.h      |  2 ++
>  src/mbdesktop_view.c        |  2 ++
>  src/mbdesktop_view.h        |  2 ++
>  src/mbdesktop_win_plugin.c  |  2 ++
>  src/mbdesktop_win_plugin.h  |  2 ++
>  13 files changed, 26 insertions(+), 10 deletions(-)
>
> diff --git a/modules/dotdesktop.c b/modules/dotdesktop.c
> index 22dde99..372f969 100644
> --- a/modules/dotdesktop.c
> +++ b/modules/dotdesktop.c
> @@ -1,3 +1,5 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
>  #include "mbdesktop_module.h"
>
>  #ifdef USE_LIBSN
> diff --git a/modules/simplefilebrowser.c b/modules/simplefilebrowser.c
> index e68c481..1118df1 100644
> --- a/modules/simplefilebrowser.c
> +++ b/modules/simplefilebrowser.c
> @@ -1,3 +1,5 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
>  #include "mbdesktop_module.h"
>  #include <sys/types.h>
>  #include <sys/stat.h>
> diff --git a/modules/tasks.c b/modules/tasks.c
> index 5437c13..ed8d1a7 100644
> --- a/modules/tasks.c
> +++ b/modules/tasks.c
> @@ -1,3 +1,5 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
>  #include "mbdesktop_module.h"
>
>  static int trapped_error_code = 0;
> diff --git a/src/mbdesktop.c b/src/mbdesktop.c
> index 90dc364..309d84f 100644
> --- a/src/mbdesktop.c
> +++ b/src/mbdesktop.c
> @@ -1,17 +1,9 @@
>  /*
> -  mbdesktop - a desktop for handhelds etc.
> +  mbdesktop - a desktop for handhelds etc.
>
>     Copyright 2002 Matthew Allum
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
> +   SPDX-License-Identifier: GPL-2.0-or-later
>  */
>
>
> diff --git a/src/mbdesktop.h b/src/mbdesktop.h
> index cbb4aff..4231e58 100644
> --- a/src/mbdesktop.h
> +++ b/src/mbdesktop.h
> @@ -1,3 +1,5 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
>  #ifndef _HAVE_MBDESKTOP_H
>  #define _HAVE_MBDESKTOP_H
>
> diff --git a/src/mbdesktop_item.c b/src/mbdesktop_item.c
> index 4bd7dd7..e7e7fcf 100644
> --- a/src/mbdesktop_item.c
> +++ b/src/mbdesktop_item.c
> @@ -1,3 +1,5 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
>  #include "mbdesktop_item.h"
>  #include "mbdesktop_module.h"
>  #include "md5.h"
> diff --git a/src/mbdesktop_item.h b/src/mbdesktop_item.h
> index 6eb7770..073f659 100644
> --- a/src/mbdesktop_item.h
> +++ b/src/mbdesktop_item.h
> @@ -1,3 +1,5 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
>  #ifndef _HAVE_MBDESKTOP_ITEM_H
>  #define _HAVE_MBDESKTOP_ITEM_H
>
> diff --git a/src/mbdesktop_module.c b/src/mbdesktop_module.c
> index 7c961b2..4c18b48 100644
> --- a/src/mbdesktop_module.c
> +++ b/src/mbdesktop_module.c
> @@ -1,3 +1,5 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
>  #include "mbdesktop_module.h"
>
>  MBDesktopItem *
> diff --git a/src/mbdesktop_module.h b/src/mbdesktop_module.h
> index c31e091..dde93bc 100644
> --- a/src/mbdesktop_module.h
> +++ b/src/mbdesktop_module.h
> @@ -1,3 +1,5 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
>  #ifndef _HAVE_MBDESKTOP_MODULE_H
>  #define _HAVE_MBDESKTOP_MODULE_H
>
> diff --git a/src/mbdesktop_view.c b/src/mbdesktop_view.c
> index 8ee20f6..0b552c0 100644
> --- a/src/mbdesktop_view.c
> +++ b/src/mbdesktop_view.c
> @@ -1,3 +1,5 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
>  #include "mbdesktop_view.h"
>
>  static void
> diff --git a/src/mbdesktop_view.h b/src/mbdesktop_view.h
> index 44fcffc..659ea35 100644
> --- a/src/mbdesktop_view.h
> +++ b/src/mbdesktop_view.h
> @@ -1,3 +1,5 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
>  #ifndef _HAVE_MBDESKTOP_VIEW_H
>  #define _HAVE_MBDESKTOP_VIEW_H
>
> diff --git a/src/mbdesktop_win_plugin.c b/src/mbdesktop_win_plugin.c
> index e302f9e..a2f5fb1 100644
> --- a/src/mbdesktop_win_plugin.c
> +++ b/src/mbdesktop_win_plugin.c
> @@ -1,3 +1,5 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
>  #include "mbdesktop.h"
>  #include "mbdesktop_win_plugin.h"
>
> diff --git a/src/mbdesktop_win_plugin.h b/src/mbdesktop_win_plugin.h
> index 2211b23..8a78233 100644
> --- a/src/mbdesktop_win_plugin.h
> +++ b/src/mbdesktop_win_plugin.h
> @@ -1,3 +1,5 @@
> +/* SPDX-License-Identifier: GPL-2.0-or-later */
> +
>  #ifndef _HAVE_MBDESKTOP_WIN_PLUGIN_H
>  #define _HAVE_MBDESKTOP_WIN_PLUGIN_H


-- 
Mingde (Matthew) Zeng
