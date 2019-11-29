Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
 by mx.groups.io with SMTP id smtpd.web11.9218.1575041074933396962
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Nov 2019 07:24:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SrQaUhVW;
 spf=pass (domain: gmail.com, ip: 209.85.221.66, mailfrom: jpewhacker@gmail.com)
Received: by mail-wr1-f66.google.com with SMTP id i12so35564709wrn.11
        for <yocto@lists.yoctoproject.org>; Fri, 29 Nov 2019 07:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OPtnlPweY9DRZcai89bLa4nZHaXxBzxSNNmXBPRPuyQ=;
        b=SrQaUhVWa8qZm8m8iC6aYOBZl+XvE1QB15IfI+oPtjj75kBzHaFtH4bJkHnekrOnEh
         LzHznpUsgI6b/Ig5y7UhGyHBlpHsrKkBhcWgKHup7LxHOaSeTIcov9CTtbdIxAGvdWve
         t0jheZlxd0Av5lOi7D0VtbRH6XfX7NGo/B2TgkKLJxR9tuqvtFQU3mbMOSkS2rDuqh6j
         WJrNCNDe9VGmIOCWC/8u4PtbfxcE5PZSNvC9Nnz/A9ybKnqBddlsy+0iTD8HV4Fe5hbE
         nyBK347I/QXEjkDthHg13VosDRZCZ9uLj7XVQIRWGxzfqLe/Z93z0LnRY8asConOwtJK
         fJ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OPtnlPweY9DRZcai89bLa4nZHaXxBzxSNNmXBPRPuyQ=;
        b=n+nFN8axN396EcQvoW/7HoH92pbhR8lA605HXiXDp4e9HnRDZwJK0t6T9Ae50dJUVS
         xWvVvZvn0A5JF8C/HzroLS8y60gH58LEqy8QdT0qb+I6GHHxQxm3Uk2DLwNv9nKjImHq
         OpmmqLNk0f3W9aIqZ4RtLas9o8rUZ0m7ornJH9mLHz/Nhfebf+gWyVRDawxEtfMG7EVa
         jNnoqB6DovqhK3jO5zMFqGynHP87pEWancpJuCjHqn5c1MTen7iCWCtow5VQX2PlRgdZ
         j9qlYidIvZPQe9HLJmgx6Z/LmK6DlV8sr+wZpKIS/7iXPamA8dteCoRlxUKcBoHjZdAF
         8GYw==
X-Gm-Message-State: APjAAAV9wCyeJvURoqwC/glJotgxqCK/ecuEvLxNYqASYCDHNBaC3Ys1
	3LTV0vlHdGZWvgefi4Nckh95Ta5jzx32RmruvQ0=
X-Google-Smtp-Source: APXvYqzMryAkvK8QGrsYR0ILb68ueZjkYxGJft1T+fYy+CuQkhiYLXGyD37mgK9+RkeyGCg6/2CKZleY5S2VV3lULvg=
X-Received: by 2002:a5d:6b45:: with SMTP id x5mr41022222wrw.16.1575041073203;
 Fri, 29 Nov 2019 07:24:33 -0800 (PST)
MIME-Version: 1.0
References: <20191128174739.101631-1-alex.kanavin@gmail.com>
In-Reply-To: <20191128174739.101631-1-alex.kanavin@gmail.com>
From: "Joshua Watt" <JPEWhacker@gmail.com>
Date: Fri, 29 Nov 2019 09:24:21 -0600
Message-ID: <CAJdd5Ga-11TNZxHnBmmRg3wnn273myiEHjJYXxdXuC0MfeWAAA@mail.gmail.com>
Subject: Re: [yocto] [meta-mingw][PATCH] gettext: adapt for version 0.20
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 28, 2019 at 11:47 AM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> Drop backported patch (new gettext includes the updates).
>
> Drop version from the .bbappend (hopefully no version-specific
> tweaks will be needed going forward).

I've applied this to master-next, we can pull up master once the
oe-core patch lands. I'm assuming this will break the current master
AB builds if it's applied to master without the oe-core patch?

>
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  .../fix-gl_cv_prog_as_underscore-test.patch   | 67 -------------------
>  ...ext_0.19.%.bbappend => gettext_%.bbappend} |  1 -
>  2 files changed, 68 deletions(-)
>  delete mode 100644 recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch
>  rename recipes-core/gettext/{gettext_0.19.%.bbappend => gettext_%.bbappend} (87%)
>
> diff --git a/recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch b/recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch
> deleted file mode 100644
> index 636789f..0000000
> --- a/recipes-core/gettext/gettext/fix-gl_cv_prog_as_underscore-test.patch
> +++ /dev/null
> @@ -1,67 +0,0 @@
> -Backport gnulib fix for mingw into gettext's included version of gnulib
> -
> -http://git.savannah.gnu.org/cgit/gnulib.git/commit/?id=68b6adebef05670a312fb92b05e7bd089d2ed43a
> -
> -Upstream-Status: Backport
> -Signed-off-by: Nathan Rossi <nathan@nathanrossi.com>
> -
> ---- a/gettext-runtime/gnulib-m4/asm-underscore.m4
> -+++ b/gettext-runtime/gnulib-m4/asm-underscore.m4
> -@@ -27,11 +27,11 @@
> - #endif
> - int foo(void) { return 0; }
> - EOF
> -      # Look for the assembly language name in the .s file.
> -      AC_TRY_COMMAND(${CC-cc} $CFLAGS $CPPFLAGS $gl_c_asm_opt conftest.c) >/dev/null 2>&1
> --     if LC_ALL=C grep -E '(^|[^a-zA-Z0-9_])_foo([^a-zA-Z0-9_]|$)' conftest.$gl_asmext >/dev/null; then
> -+     if LC_ALL=C grep -E '(^|[[^a-zA-Z0-9_]])_foo([[^a-zA-Z0-9_]]|$)' conftest.$gl_asmext >/dev/null; then
> -        gl_cv_prog_as_underscore=yes
> -      else
> -        gl_cv_prog_as_underscore=no
> -      fi
> -      rm -f conftest*
> ---- a/gettext-runtime/configure
> -+++ b/gettext-runtime/configure
> -@@ -24601,11 +24601,11 @@
> -   { { eval echo "\"\$as_me\":${as_lineno-$LINENO}: \"$ac_try\""; } >&5
> -   (eval $ac_try) 2>&5
> -   ac_status=$?
> -   $as_echo "$as_me:${as_lineno-$LINENO}: \$? = $ac_status" >&5
> -   test $ac_status = 0; }; } >/dev/null 2>&1
> --     if LC_ALL=C grep -E '(^|^a-zA-Z0-9_)_foo(^a-zA-Z0-9_|$)' conftest.$gl_asmext >/dev/null; then
> -+     if LC_ALL=C grep -E '(^|[^a-zA-Z0-9_])_foo([^a-zA-Z0-9_]|$)' conftest.$gl_asmext >/dev/null; then
> -        gl_cv_prog_as_underscore=yes
> -      else
> -        gl_cv_prog_as_underscore=no
> -      fi
> -      rm -f conftest*
> ---- a/gettext-tools/gnulib-m4/asm-underscore.m4
> -+++ b/gettext-tools/gnulib-m4/asm-underscore.m4
> -@@ -27,11 +27,11 @@
> - #endif
> - int foo(void) { return 0; }
> - EOF
> -      # Look for the assembly language name in the .s file.
> -      AC_TRY_COMMAND(${CC-cc} $CFLAGS $CPPFLAGS $gl_c_asm_opt conftest.c) >/dev/null 2>&1
> --     if LC_ALL=C grep -E '(^|[^a-zA-Z0-9_])_foo([^a-zA-Z0-9_]|$)' conftest.$gl_asmext >/dev/null; then
> -+     if LC_ALL=C grep -E '(^|[[^a-zA-Z0-9_]])_foo([[^a-zA-Z0-9_]]|$)' conftest.$gl_asmext >/dev/null; then
> -        gl_cv_prog_as_underscore=yes
> -      else
> -        gl_cv_prog_as_underscore=no
> -      fi
> -      rm -f conftest*
> ---- a/gettext-tools/configure
> -+++ b/gettext-tools/configure
> -@@ -32284,11 +32284,11 @@
> -   { { eval echo "\"\$as_me\":${as_lineno-$LINENO}: \"$ac_try\""; } >&5
> -   (eval $ac_try) 2>&5
> -   ac_status=$?
> -   $as_echo "$as_me:${as_lineno-$LINENO}: \$? = $ac_status" >&5
> -   test $ac_status = 0; }; } >/dev/null 2>&1
> --     if LC_ALL=C grep -E '(^|^a-zA-Z0-9_)_foo(^a-zA-Z0-9_|$)' conftest.$gl_asmext >/dev/null; then
> -+     if LC_ALL=C grep -E '(^|[^a-zA-Z0-9_])_foo([^a-zA-Z0-9_]|$)' conftest.$gl_asmext >/dev/null; then
> -        gl_cv_prog_as_underscore=yes
> -      else
> -        gl_cv_prog_as_underscore=no
> -      fi
> -      rm -f conftest*
> diff --git a/recipes-core/gettext/gettext_0.19.%.bbappend b/recipes-core/gettext/gettext_%.bbappend
> similarity index 87%
> rename from recipes-core/gettext/gettext_0.19.%.bbappend
> rename to recipes-core/gettext/gettext_%.bbappend
> index 21749f3..d518698 100644
> --- a/recipes-core/gettext/gettext_0.19.%.bbappend
> +++ b/recipes-core/gettext/gettext_%.bbappend
> @@ -2,7 +2,6 @@ EXTRA_OECONF_append_mingw32 = " --enable-static"
>
>  FILESEXTRAPATHS_prepend_mingw32 := "${THISDIR}/${BPN}:"
>  SRC_URI_append_mingw32 = " \
> -               file://fix-gl_cv_prog_as_underscore-test.patch \
>                 "
>
>  FILES_libgettextlib_mingw32 = "${bindir}/libgettextlib-*.dll"
> --
> 2.17.1
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47462): https://lists.yoctoproject.org/g/yocto/message/47462
> Mute This Topic: https://lists.yoctoproject.org/mt/64260047/3616693
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [JPEWhacker@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
