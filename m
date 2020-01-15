Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.11215.1579111658019570447
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jan 2020 10:07:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.ro header.s=google header.b=b7VjTMrZ;
 spf=none, err=SPF record not found (domain: gherzan.ro, ip: 140.211.169.56, mailfrom: andrei@gherzan.ro)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53BF0E01549; Wed, 15 Jan 2020 10:07:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com [209.85.222.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18239E01547
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2020 10:07:33 -0800 (PST)
Received: by mail-ua1-f66.google.com with SMTP id a12so6642385uan.0
        for <yocto@yoctoproject.org>; Wed, 15 Jan 2020 10:07:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.ro; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k4iA7KghiUrzpBN1qS9n/oW34WmbHcPFR4GibKSgAac=;
        b=b7VjTMrZSJCMgGhXCAfWZG7z1bzdsEfel3XHQ+TkcEk5xFZnLlzH+EbKxFYz2YlWGQ
         1GrDTCCprOjfiSuGHMUwOkB/oYLHZEEy8x0bHkUQCdqAW7tNtTWExi1J3aDORYxNmGdh
         Qd0qiLVpeCdsWeOlTJizYVvt1s7pXzveB4nGwP+aoe+Zz+D7u+v0FSbb6uhx7xPLaj53
         QkH6gLGUY49LuFWPLvs5phFHH+KHcKdsiyT0pivQhhA64LjXsaS8piizpGVH2f6+DJQE
         /NYaTWqtp6LhjT79QfEsh2theTpoQNvyTgsWzWR2D7aVkKbGRgNp8GglkEo4SJVSrkGC
         G67g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k4iA7KghiUrzpBN1qS9n/oW34WmbHcPFR4GibKSgAac=;
        b=Vyx7OlCV6sD2siF71mz+A6yO0zToM2aUYWA6mbCqMaMLMXjABvLJW1iSFrLKWWxksd
         4SMwlgyrcKCd5pJQgdr3/jQPOG8QzZt4AIvOc702VMDGoqcOHTcYZm2lyYSk0gnD1M2r
         /A/CJTSjlpCeI1RgF1yw6SnR5ptrGKDc0rU/qj8jCky5UwkW5TOuN5EoxyTlrLmjJzM1
         R43NqCqiN8a+XUinMvuxd5Yu4Q9ZpyUaZX+W/YxrDPcdYZ/nVtpRRN13dLPkulMJGoNB
         aJNAQOOMvv0X0kJk7oSiqnvQHmZBPuRruhoqGZ1UfBaAmKU4TqWHlaMca2xqttyp+KKt
         DYVg==
X-Gm-Message-State: APjAAAUsP1QDu5aEoOwrtk7eWBbyS+7BsF/Nz8YoCipKEpvVgW17Tgxx
	r0FnT4OTGsHh7KQ3I7bHpg0OFGI714QzGazktrHjF2ll
X-Google-Smtp-Source: APXvYqydainSTyauHz9wDussvuI4Svz8/f902u1Tm0Qk8n8BWi1dN/7u/92x8oAn0OJ1gjJwnub0m3SpWAvWV6LkLHE=
X-Received: by 2002:ab0:7411:: with SMTP id r17mr15546677uap.31.1579111652895;
 Wed, 15 Jan 2020 10:07:32 -0800 (PST)
MIME-Version: 1.0
References: <20191217102237.29511-1-andrei@gherzan.ro>
In-Reply-To: <20191217102237.29511-1-andrei@gherzan.ro>
From: "Andrei Gherzan" <andrei@gherzan.ro>
Date: Wed, 15 Jan 2020 18:06:56 +0000
Message-ID: <CAK18fxGTj9TdzERUanoKgRNWmDPD1gMAMkWS15RS0peQqW3qnw@mail.gmail.com>
Subject: Re: [psplash][PATCH 1/3] Support --with-font configure option to use other font headers
To: yocto@yoctoproject.org
Cc: David Steinberg <david@sonabuzz.com>
Content-Type: multipart/alternative; boundary="00000000000021caf2059c3195f4"

--00000000000021caf2059c3195f4
Content-Type: text/plain; charset="UTF-8"

Hi,

On Tue, Dec 17, 2019 at 10:22 AM <andrei@gherzan.ro> wrote:

> From: David Steinberg <david@sonabuzz.com>
>
> Signed-off-by: David Steinberg <david@sonabuzz.com>
>

Small ping for this patch set.


> ---
>  Makefile.am  | 4 ++--
>  configure.ac | 6 ++++++
>  psplash.c    | 6 +++---
>  3 files changed, 11 insertions(+), 5 deletions(-)
>
> diff --git a/Makefile.am b/Makefile.am
> index a14152a..3721a6e 100644
> --- a/Makefile.am
> +++ b/Makefile.am
> @@ -1,11 +1,11 @@
>  bin_PROGRAMS=psplash psplash-write
>
> -AM_CFLAGS = $(GCC_FLAGS) -D_GNU_SOURCE
> +AM_CFLAGS = $(GCC_FLAGS) -D_GNU_SOURCE
> -DFONT_HEADER=\"$(FONT_NAME)-font.h\" -DFONT_DEF=$(FONT_NAME)_font
>
>  psplash_SOURCES = psplash.c psplash.h psplash-fb.c psplash-fb.h \
>                    psplash-console.c psplash-console.h           \
>                   psplash-colors.h psplash-config.h             \
> -                 psplash-poky-img.h psplash-bar-img.h radeon-font.h
> +                 psplash-poky-img.h psplash-bar-img.h $(FONT_NAME)-font.h
>
>  psplash_write_SOURCES = psplash-write.c psplash.h
>
> diff --git a/configure.ac b/configure.ac
> index 1c4d919..9e78ac0 100644
> --- a/configure.ac
> +++ b/configure.ac
> @@ -14,6 +14,12 @@ fi
>
>  AC_SUBST(GCC_FLAGS)
>
> +AC_ARG_WITH([font],
> +    AS_HELP_STRING([--with-font], [Set font to use (default is
> 'radeon')]),
> +    [FONT_NAME=$withval],
> +    [FONT_NAME=radeon])
> +AC_SUBST([FONT_NAME])
> +
>  AC_OUTPUT([
>  Makefile
>  ])
> diff --git a/psplash.c b/psplash.c
> index 992e199..f6442f1 100644
> --- a/psplash.c
> +++ b/psplash.c
> @@ -23,7 +23,7 @@
>  #include "psplash-colors.h"
>  #include "psplash-poky-img.h"
>  #include "psplash-bar-img.h"
> -#include "radeon-font.h"
> +#include FONT_HEADER
>
>  #define SPLIT_LINE_POS(fb)                                  \
>         (  (fb)->height                                     \
> @@ -45,7 +45,7 @@ psplash_draw_msg (PSplashFB *fb, const char *msg)
>  {
>    int w, h;
>
> -  psplash_fb_text_size (&w, &h, &radeon_font, msg);
> +  psplash_fb_text_size (&w, &h, &FONT_DEF, msg);
>
>    DBG("displaying '%s' %ix%i\n", msg, w, h);
>
> @@ -62,7 +62,7 @@ psplash_draw_msg (PSplashFB *fb, const char *msg)
>                         (fb->width-w)/2,
>                         SPLIT_LINE_POS(fb) - h,
>                         PSPLASH_TEXT_COLOR,
> -                       &radeon_font,
> +                       &FONT_DEF,
>                         msg);
>  }
>
> --
> 2.17.1
>
>
--
Andrei Gherzan

--00000000000021caf2059c3195f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<br clear=3D"all"></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 17, 2019=
 at 10:22 AM &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">From=
: David Steinberg &lt;<a href=3D"mailto:david@sonabuzz.com" target=3D"_blan=
k">david@sonabuzz.com</a>&gt;<br>
<br>
Signed-off-by: David Steinberg &lt;<a href=3D"mailto:david@sonabuzz.com" ta=
rget=3D"_blank">david@sonabuzz.com</a>&gt;<br></blockquote><div><br></div><=
div>Small ping for this patch set.<br></div><div>=C2=A0</div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">
---<br>
=C2=A0Makefile.am=C2=A0 | 4 ++--<br>
=C2=A0<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank">=
configure.ac</a> | 6 ++++++<br>
=C2=A0psplash.c=C2=A0 =C2=A0 | 6 +++---<br>
=C2=A03 files changed, 11 insertions(+), 5 deletions(-)<br>
<br>
diff --git a/Makefile.am b/Makefile.am<br>
index a14152a..3721a6e 100644<br>
--- a/Makefile.am<br>
+++ b/Makefile.am<br>
@@ -1,11 +1,11 @@<br>
=C2=A0bin_PROGRAMS=3Dpsplash psplash-write<br>
<br>
-AM_CFLAGS =3D $(GCC_FLAGS) -D_GNU_SOURCE<br>
+AM_CFLAGS =3D $(GCC_FLAGS) -D_GNU_SOURCE -DFONT_HEADER=3D\&quot;$(FONT_NAM=
E)-font.h\&quot; -DFONT_DEF=3D$(FONT_NAME)_font<br>
<br>
=C2=A0psplash_SOURCES =3D psplash.c psplash.h psplash-fb.c psplash-fb.h \<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0psplas=
h-console.c psplash-console.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 psplash-colo=
rs.h psplash-config.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0psplash-poky=
-img.h psplash-bar-img.h radeon-font.h<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0psplash-poky=
-img.h psplash-bar-img.h $(FONT_NAME)-font.h<br>
<br>
=C2=A0psplash_write_SOURCES =3D psplash-write.c psplash.h<br>
<br>
diff --git a/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_=
blank">configure.ac</a> b/<a href=3D"http://configure.ac" rel=3D"noreferrer=
" target=3D"_blank">configure.ac</a><br>
index 1c4d919..9e78ac0 100644<br>
--- a/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank">=
configure.ac</a><br>
+++ b/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank">=
configure.ac</a><br>
@@ -14,6 +14,12 @@ fi<br>
<br>
=C2=A0AC_SUBST(GCC_FLAGS)<br>
<br>
+AC_ARG_WITH([font],<br>
+=C2=A0 =C2=A0 AS_HELP_STRING([--with-font], [Set font to use (default is &=
#39;radeon&#39;)]),<br>
+=C2=A0 =C2=A0 [FONT_NAME=3D$withval],<br>
+=C2=A0 =C2=A0 [FONT_NAME=3Dradeon])<br>
+AC_SUBST([FONT_NAME])<br>
+<br>
=C2=A0AC_OUTPUT([<br>
=C2=A0Makefile<br>
=C2=A0])<br>
diff --git a/psplash.c b/psplash.c<br>
index 992e199..f6442f1 100644<br>
--- a/psplash.c<br>
+++ b/psplash.c<br>
@@ -23,7 +23,7 @@<br>
=C2=A0#include &quot;psplash-colors.h&quot;<br>
=C2=A0#include &quot;psplash-poky-img.h&quot;<br>
=C2=A0#include &quot;psplash-bar-img.h&quot;<br>
-#include &quot;radeon-font.h&quot;<br>
+#include FONT_HEADER<br>
<br>
=C2=A0#define SPLIT_LINE_POS(fb)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 (=C2=A0 (fb)-&gt;height=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
@@ -45,7 +45,7 @@ psplash_draw_msg (PSplashFB *fb, const char *msg)<br>
=C2=A0{<br>
=C2=A0 =C2=A0int w, h;<br>
<br>
-=C2=A0 psplash_fb_text_size (&amp;w, &amp;h, &amp;radeon_font, msg);<br>
+=C2=A0 psplash_fb_text_size (&amp;w, &amp;h, &amp;FONT_DEF, msg);<br>
<br>
=C2=A0 =C2=A0DBG(&quot;displaying &#39;%s&#39; %ix%i\n&quot;, msg, w, h);<b=
r>
<br>
@@ -62,7 +62,7 @@ psplash_draw_msg (PSplashFB *fb, const char *msg)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 (fb-&gt;width-w)/2, <br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 SPLIT_LINE_POS(fb) - h,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 PSPLASH_TEXT_COLOR,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&amp;radeon_font,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&amp;FONT_DEF,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 msg);<br>
=C2=A0}<br>
<br>
-- <br>
2.17.1<br>
<br></blockquote><div><br></div><div><div>--</div>Andrei Gherzan <br></div>=
</div></div>

--00000000000021caf2059c3195f4--
