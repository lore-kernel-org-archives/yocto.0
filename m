Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
 by mx.groups.io with SMTP id smtpd.web10.13903.1622233805914724501
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 May 2021 13:30:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZIfkZ1yg;
 spf=pass (domain: gmail.com, ip: 209.85.217.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f46.google.com with SMTP id i29so2791943vsr.11
        for <yocto@lists.yoctoproject.org>; Fri, 28 May 2021 13:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ci9QPcpA72cMb3hiKkwzx2WSWMqPA1YJ7IVqS4A8x3w=;
        b=ZIfkZ1ygYyKrlxPw7uzN7I3lxoKI57Au5zG9+ANYqnVNM306PAMFIOxFY1lBY9sM7c
         9FFsRT1u0rcgKFeVMrfgS+G07TFCiAXgJMGOPEek8NsZpo1dBBCBSX5bH7plIbVFoeyc
         tvJOVTurjn8GyYOk7jRvZhCFHW0j9l5+w18nAPCB5PjCZ4gAh1zCdQ/5voLMvxd3W8ca
         TSgFbQIKnH+V5PkP8ZaxGC1flmxCki+YP2Q3rel/e9tirERwu3czlexD9YK1K7JPdClu
         GiSgx1m7VdmmG349zV4r9U8AibnW5qUAmN83+qyYSuPzZrRCS+3APxPdBgYne09PaHeu
         Q16Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ci9QPcpA72cMb3hiKkwzx2WSWMqPA1YJ7IVqS4A8x3w=;
        b=Ak3kw8+YeHUkh7meeeOJV0SDTRwd2KXfHX0Aet5r1l7AiOGUJ0tCF8bCCm6tjK2glP
         D9Vxla5gPiiNR8Dwx0en5WVyGYLpMQgiz928uUcwIhMaIHP3TSrIciaItgiy7nABGXrC
         ySva+UzZauLV5yKZgD+QR+WTfQIR4CyimbHEldL7LHW8VuyTlc6EAlL9/t2zRTLiOi3m
         Fi9JXQRfNrvne7HZRncpOi3hgAImIrc0a7p86j27udBg+BJkSD/kebXYXzo4wrMGW5Ln
         4Vaqa14lne4f3U1iHQdA15QGkFWj/FdJh/oqLKr595gM6goE90vgyXqkBW3keUMg3thc
         DDsw==
X-Gm-Message-State: AOAM533VC4ojNV4tAXa5YHBrc5FuH/bm9wi6pIlc8/dLNxnpyr25HmoL
	i6+zkY1D+rT1iqsAniRTa9dyGdb/8eboISgqOsg=
X-Google-Smtp-Source: ABdhPJzixb3kAUoMxkclLabB6CcyckEMmVppR3Wzb32XuWtQcOXcThdP0V83nLhasvqkmOdklj8YoppdLC4O2Sz90Ts=
X-Received: by 2002:a67:fa01:: with SMTP id i1mr9203062vsq.20.1622233804905;
 Fri, 28 May 2021 13:30:04 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkPLP2Yf-2tqugYsxzHyMizP_hTK9CbzNg0iKD3qMTURxvA@mail.gmail.com>
In-Reply-To: <CABKMkPLP2Yf-2tqugYsxzHyMizP_hTK9CbzNg0iKD3qMTURxvA@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 28 May 2021 22:29:53 +0200
Message-ID: <CANNYZj8SyM9i5+iBk3G2ngojp4pjmrFU6VqEvL5EoZtAEMbVMQ@mail.gmail.com>
Subject: Re: [yocto][poky][master][PATCH} VirGL: depends on virtual/gbm
To: Joel Winarske <joel.winarske@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000af1e5705c369bd11"

--000000000000af1e5705c369bd11
Content-Type: text/plain; charset="UTF-8"

Thanks, it took me a moment to understand that this still does not mean
that nvidia supports gbm somehow, somewhere, but rather that virgl needs to
be explicit about needing gbm.

The patch should be going to the oe-core list.

Alex

On Fri, 28 May 2021 at 21:16, Joel Winarske <joel.winarske@gmail.com> wrote:

>
> This addresses cases where the platform doesn't depend on Mesa.  Tegra is
> one example.
>
> From 427d6248379bf37f5522d4bb1013b8c0b7a26b5b Mon Sep 17 00:00:00 2001
> From: Joel Winarske <joel.winarske@gmail.com>
> Date: Fri, 28 May 2021 12:10:46 -0700
> Subject: [PATCH] VirGL depends on gbm.h
>
> Signed-off-by: Joel Winarske <joel.winarske@gmail.com>
> ---
>  meta/recipes-graphics/virglrenderer/virglrenderer_0.9.1.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta/recipes-graphics/virglrenderer/virglrenderer_0.9.1.bb
> b/meta/recipes-graphics/virglrenderer/virglrenderer_0.9.1.bb
> index 3991895823..65bd1af942 100644
> --- a/meta/recipes-graphics/virglrenderer/virglrenderer_0.9.1.bb
> +++ b/meta/recipes-graphics/virglrenderer/virglrenderer_0.9.1.bb
> @@ -8,7 +8,7 @@ HOMEPAGE = "https://virgil3d.github.io/"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = "file://COPYING;md5=c81c08eeefd9418fca8f88309a76db10"
>
> -DEPENDS = "libdrm virtual/libgl libepoxy"
> +DEPENDS = "libdrm virtual/libgl virtual/libgbm libepoxy"
>  SRCREV = "363915595e05fb252e70d6514be2f0c0b5ca312b"
>  SRC_URI = "git://
> anongit.freedesktop.org/virglrenderer;branch=branch-0.9.1 \
>             file://0001-meson.build-use-python3-directly-for-python.patch \
> --
> 2.30.2
>
>
>
> 
>
>

--000000000000af1e5705c369bd11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks, it took me a moment to understand that this s=
till does not mean that nvidia supports gbm somehow, somewhere, but rather =
that virgl needs to be explicit about needing gbm.<br></div><div><br></div>=
<div>The patch should be going to the oe-core list.<br></div><div></div><di=
v><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, 28 May 2021 at 21:16, Joel Winarske =
&lt;<a href=3D"mailto:joel.winarske@gmail.com">joel.winarske@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><br><div>This addresses cases where the platform doesn&#39;t de=
pend on Mesa.=C2=A0 Tegra is one example.</div><br>From 427d6248379bf37f552=
2d4bb1013b8c0b7a26b5b Mon Sep 17 00:00:00 2001<br>From: Joel Winarske &lt;<=
a href=3D"mailto:joel.winarske@gmail.com" target=3D"_blank">joel.winarske@g=
mail.com</a>&gt;<br>Date: Fri, 28 May 2021 12:10:46 -0700<br>Subject: [PATC=
H] VirGL depends on gbm.h<br><br>Signed-off-by: Joel Winarske &lt;<a href=
=3D"mailto:joel.winarske@gmail.com" target=3D"_blank">joel.winarske@gmail.=
com</a>&gt;<br>---<br>=C2=A0meta/recipes-graphics/virglrenderer/<a href=3D"=
http://virglrenderer_0.9.1.bb" target=3D"_blank">virglrenderer_0.9.1.bb</a>=
 | 2 +-<br>=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br><br>diff =
--git a/meta/recipes-graphics/virglrenderer/<a href=3D"http://virglrenderer=
_0.9.1.bb" target=3D"_blank">virglrenderer_0.9.1.bb</a> b/meta/recipes-grap=
hics/virglrenderer/<a href=3D"http://virglrenderer_0.9.1.bb" target=3D"_bla=
nk">virglrenderer_0.9.1.bb</a><br>index 3991895823..65bd1af942 100644<br>--=
- a/meta/recipes-graphics/virglrenderer/<a href=3D"http://virglrenderer_0.9=
.1.bb" target=3D"_blank">virglrenderer_0.9.1.bb</a><br>+++ b/meta/recipes-g=
raphics/virglrenderer/<a href=3D"http://virglrenderer_0.9.1.bb" target=3D"_=
blank">virglrenderer_0.9.1.bb</a><br>@@ -8,7 +8,7 @@ HOMEPAGE =3D &quot;<a =
href=3D"https://virgil3d.github.io/" target=3D"_blank">https://virgil3d.git=
hub.io/</a>&quot;<br>=C2=A0LICENSE =3D &quot;MIT&quot;<br>=C2=A0LIC_FILES_C=
HKSUM =3D &quot;file://COPYING;md5=3Dc81c08eeefd9418fca8f88309a76db10&quot;=
<br>=C2=A0<br>-DEPENDS =3D &quot;libdrm virtual/libgl libepoxy&quot;<br>+DE=
PENDS =3D &quot;libdrm virtual/libgl virtual/libgbm libepoxy&quot;<br>=C2=
=A0SRCREV =3D &quot;363915595e05fb252e70d6514be2f0c0b5ca312b&quot;<br>=C2=
=A0SRC_URI =3D &quot;git://<a href=3D"http://anongit.freedesktop.org/virgl=
renderer;branch=3Dbranch-0.9.1" target=3D"_blank">anongit.freedesktop.org/v=
irglrenderer;branch=3Dbranch-0.9.1</a> \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 file://0001-meson.build-use-python3-directly-for-python.patch \=
<br>-- <br>2.30.2<br><br><br></div>
<br>
<br>
<br>
</blockquote></div>

--000000000000af1e5705c369bd11--
