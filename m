Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2848EE00B63; Mon, 12 Jun 2017 12:04:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB006E00888
	for <yocto@lists.yoctoproject.org>;
	Mon, 12 Jun 2017 12:04:16 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id g76so24101410wrd.2
	for <yocto@lists.yoctoproject.org>;
	Mon, 12 Jun 2017 12:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CIIIjlGXGZeEeOEoxzsqJ2LviNqJu+gACTIpb3RfsZk=;
	b=fYPgEaozNd7oXP9eGaN5ZnU0tNiGleKVUEFY9DXCTHNX6930c5t8iYq4UxK09DVPOi
	PKOWmj0jLuLPayy0GHb3/xLBXwv7K8eFmYtNzD1wbDnLGkr16k+TUzVqhCjFx5511wcn
	XjDotpokTU05YKQcHhREWY+0wmPjn4vA6jKQffRitfpu39GxXNfSOlH8o7GHQoFKlBP3
	rG1pPu1QeHsg4cQVcF+mInd+csfnvi/BdC5PY0lnS7UARceWKX5E/NB6POuK7yg76fuj
	wn3tXMI45Dx3gulydM8a1cHVJVPdPIaoJ4ae9C5lPnaM9EGDBh//kuseHWGxi0QJQycB
	eUhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CIIIjlGXGZeEeOEoxzsqJ2LviNqJu+gACTIpb3RfsZk=;
	b=Ez2QWmOsmkjS76ToZ10uRt1YukXKxiT1XBq1VDuWjJDagu7XrFS4ffEkpaGI5GrNub
	ISNMR0UV7/EOCDCW5xY5vhCz1trkRwVJ5JkJOdWt/7cjXoQIprXet+GEMVDIl7XqNQAp
	SId+XwEMa/3w5Fj5+Ce/G9zQnLphU6T9jVDvulc1/kZX5+wr1yDEhu0pbxsfQc21hn65
	ou488fRL9o2y6Rc56saVCceNtWW4XCijlFOqh42L8wwdit/KPg7UfJZe2Iqwk2ssRJ7B
	UF2i5M/BPSPCsTfdjAUEhKclc7EpxujkBIFx60283aG8CPIluf05vy1ecy9gBnK9TiFJ
	qZfQ==
X-Gm-Message-State: AKS2vOxfKhJf02RWDuaYyosTf/1w6/M5zv5qNuQyHftsXJulVByzaIfq
	Bql1elg1j48HyXQQycr0ZpaWYnbJvg==
X-Received: by 10.223.139.210 with SMTP id w18mr286173wra.19.1497294255583;
	Mon, 12 Jun 2017 12:04:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.176.148 with HTTP; Mon, 12 Jun 2017 12:04:15 -0700 (PDT)
In-Reply-To: <20170612162218.11449-1-Martin.Jansa@gmail.com>
References: <20170612162218.11449-1-Martin.Jansa@gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 12 Jun 2017 12:04:15 -0700
Message-ID: <CAJ86T=ULdJSPwcCzRGpLPAR0rzEPsFcx8YxFmBHqGO-XB4130g@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [PATCH][meta-gplv2] gnutls: add use-pkg-config-to-locate-zlib.patch
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 12 Jun 2017 19:04:20 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jun 12, 2017 at 9:22 AM, Martin Jansa <martin.jansa@gmail.com> wrote:
> * it was modified in oe-core/master in this commit:
> commit ba7e5f51327d9833776aa066f30c5e46606be374
> Author: Fan Xin <fan.xin@jp.fujitsu.com>
> Date:   Fri Jun 9 15:49:18 2017 +0900
>
>     gnutls: Upgrade to 3.5.13
>
>     1. Upgrade gnutls from 3.5.9 to 3.5.13
>
>     2. Rebase the following patch file.
>        use-pkg-config-to-locate-zlib.patch
>
>     Signed-off-by: Fan Xin <fan.xin@jp.fujitsu.com>
>     Signed-off-by: Ross Burton <ross.burton@intel.com>
>
> and no longer applies for this version.

Would it be better to just make the meta-gplv2 gnutls recipe self
contained and stop trying to share a .inc file and patches with
oe-core?

> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  .../gnutls/use-pkg-config-to-locate-zlib.patch     | 67 ++++++++++++++++++++++
>  recipes-support/gnutls/gnutls_3.3.27.bb            |  2 +-
>  2 files changed, 68 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-support/gnutls/gnutls/use-pkg-config-to-locate-zlib.patch
>
> diff --git a/recipes-support/gnutls/gnutls/use-pkg-config-to-locate-zlib.patch b/recipes-support/gnutls/gnutls/use-pkg-config-to-locate-zlib.patch
> new file mode 100644
> index 0000000..0e1b7c8
> --- /dev/null
> +++ b/recipes-support/gnutls/gnutls/use-pkg-config-to-locate-zlib.patch
> @@ -0,0 +1,67 @@
> +From cee80af1fe93f5b76765afeebfcc3b902768f5d6 Mon Sep 17 00:00:00 2001
> +From: Andre McCurdy <armccurdy@gmail.com>
> +Date: Tue, 26 May 2015 21:41:24 -0700
> +Subject: [PATCH] use pkg-config to locate zlib
> +
> +AC_LIB_HAVE_LINKFLAGS can sometimes find host libs and is therefore not
> +robust when cross-compiling. Remove it for zlib and use PKG_CHECK_MODULES
> +instead.
> +
> +Removing AC_LIB_HAVE_LINKFLAGS for zlib also removes the --with-libz-prefix
> +configure option. If zlib support is enabled, then failure to find zlib via
> +pkg-config is now treated as a fatal error.
> +
> +Change based on ChromeOS gnutls 2.12.23 cross-compile fixes patch:
> +
> +  https://chromium-review.googlesource.com/#/c/271661/
> +
> +Upstream-Status: Inappropriate [configuration]
> +
> +Signed-off-by: Andre McCurdy <armccurdy@gmail.com>
> +---
> + configure.ac | 24 ++++++++++--------------
> + 1 file changed, 10 insertions(+), 14 deletions(-)
> +
> +diff --git a/configure.ac b/configure.ac
> +index 1b561d5..0c787dc 100644
> +--- a/configure.ac
> ++++ b/configure.ac
> +@@ -508,25 +508,21 @@ AC_ARG_WITH(zlib, AS_HELP_STRING([--without-zlib],
> + AC_MSG_CHECKING([whether to include zlib compression support])
> + if test x$ac_zlib != xno; then
> +  AC_MSG_RESULT(yes)
> +- AC_LIB_HAVE_LINKFLAGS(z,, [#include <zlib.h>], [compress (0, 0, 0, 0);])
> +- if test x$ac_cv_libz != xyes; then
> +-   AC_MSG_WARN(
> +-***
> +-*** ZLIB was not found. You will not be able to use ZLIB compression.)
> +- fi
> + else
> +  AC_MSG_RESULT(no)
> + fi
> +
> +-PKG_CHECK_EXISTS(zlib, ZLIB_HAS_PKGCONFIG=y, ZLIB_HAS_PKGCONFIG=n)
> +-
> + if test x$ac_zlib != xno; then
> +-  if test "$ZLIB_HAS_PKGCONFIG" = "y" ; then
> +-    if test "x$GNUTLS_REQUIRES_PRIVATE" = x; then
> +-      GNUTLS_REQUIRES_PRIVATE="Requires.private: zlib"
> +-    else
> +-      GNUTLS_REQUIRES_PRIVATE="$GNUTLS_REQUIRES_PRIVATE, zlib"
> +-    fi
> ++  PKG_CHECK_MODULES(ZLIB, zlib)
> ++  HAVE_LIBZ=yes
> ++  AC_DEFINE([HAVE_LIBZ], [1], [zlib is enabled])
> ++  AC_SUBST(HAVE_LIBZ)
> ++  LTLIBZ=$ZLIB_LIBS
> ++  AC_SUBST(LTLIBZ)
> ++  if test "x$GNUTLS_REQUIRES_PRIVATE" = x; then
> ++    GNUTLS_REQUIRES_PRIVATE="Requires.private: zlib"
> ++  else
> ++    GNUTLS_REQUIRES_PRIVATE="$GNUTLS_REQUIRES_PRIVATE, zlib"
> +   fi
> + fi
> + AC_SUBST(GNUTLS_REQUIRES_PRIVATE)
> +--
> +1.9.1
> +
> diff --git a/recipes-support/gnutls/gnutls_3.3.27.bb b/recipes-support/gnutls/gnutls_3.3.27.bb
> index c98da34..9a8cd40 100644
> --- a/recipes-support/gnutls/gnutls_3.3.27.bb
> +++ b/recipes-support/gnutls/gnutls_3.3.27.bb
> @@ -3,7 +3,7 @@ require recipes-support/gnutls/gnutls.inc
>  LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
>                      file://COPYING.LESSER;md5=a6f89e2100d9b6cdffcea4f398e37343"
>
> -FILESEXTRAPATHS_prepend = "${COREBASE}/meta/recipes-support/${BPN}/${BPN}:"
> +FILESEXTRAPATHS_prepend = "${THISDIR}/${BPN}:${COREBASE}/meta/recipes-support/${BPN}/${BPN}:"
>
>  SRC_URI += " \
>      file://correct_rpl_gettimeofday_signature.patch \
> --
> 2.13.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

