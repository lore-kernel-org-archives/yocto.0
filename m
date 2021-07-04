Received: from relay12.mail.gandi.net (relay12.mail.gandi.net [217.70.178.232])
 by mx.groups.io with SMTP id smtpd.web12.9248.1625404783456647638
 for <yocto@lists.yoctoproject.org>;
 Sun, 04 Jul 2021 06:19:44 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.178.232, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by relay12.mail.gandi.net (Postfix) with ESMTPSA id 7B226200005;
	Sun,  4 Jul 2021 13:19:41 +0000 (UTC)
Date: Sun, 4 Jul 2021 15:19:41 +0200
From: "Alexandre Belloni" <alexandre.belloni@bootlin.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-gplv2] [PATCH] coreutils_6.9.bb: Fix build with glibc 2.34
Message-ID: <YOG1bWs0bvGZqRp+@piout.net>
References: <20210630055025.465215-1-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210630055025.465215-1-raj.khem@gmail.com>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hello Khem,

Richard applied this patch and it unfortunately fails:

https://autobuilder.yoctoproject.org/typhoon/#/builders/75/builds/3637/steps/11/logs/stdio

On 29/06/2021 22:50:25-0700, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  ...-includes-for-glibc-2.34-portability.patch | 39 +++++++++++++++++++
>  recipes-core/coreutils/coreutils_6.9.bb       |  1 +
>  2 files changed, 40 insertions(+)
>  create mode 100644 recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch
> 
> diff --git a/recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch b/recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch
> new file mode 100644
> index 0000000..0d9b5e2
> --- /dev/null
> +++ b/recipes-core/coreutils/coreutils-6.9/0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch
> @@ -0,0 +1,39 @@
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
> +diff --git a/src/sort.c b/src/sort.c
> +index 58ca66a..48b22c8 100644
> +--- a/src/sort.c
> ++++ b/src/sort.c
> +@@ -21,11 +21,11 @@
> + 
> +    Ørn E. Hansen added NLS support in 1997.  */
> + 
> ++#include <sys/types.h>
> ++#include <sys/wait.h>
> + #include <config.h>
> + 
> + #include <getopt.h>
> +-#include <sys/types.h>
> +-#include <sys/wait.h>
> + #include <signal.h>
> + #include "system.h"
> + #include "argmatch.h"
> +-- 
> +2.32.0
> +
> diff --git a/recipes-core/coreutils/coreutils_6.9.bb b/recipes-core/coreutils/coreutils_6.9.bb
> index 42b4f3c..69e5489 100644
> --- a/recipes-core/coreutils/coreutils_6.9.bb
> +++ b/recipes-core/coreutils/coreutils_6.9.bb
> @@ -27,6 +27,7 @@ SRC_URI = "${GNU_MIRROR}/coreutils/${BP}.tar.bz2 \
>             file://no-man.patch \
>             file://build-don-t-need-charset.alias-when-building-for-mus.patch \
>             file://no-su.patch \
> +           file://0001-sort.c-Reorder-includes-for-glibc-2.34-portability.patch \
>             "
>  
>  SRC_URI[md5sum] = "c9607d8495f16e98906e7ed2d9751a06"
> -- 
> 2.32.0
> 

> 
> 
> 


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
