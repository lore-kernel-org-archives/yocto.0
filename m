Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com [209.85.222.67])
 by mx.groups.io with SMTP id smtpd.web10.10.1597267941460603057
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Aug 2020 14:32:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=E2ez3gI0;
 spf=pass (domain: gmail.com, ip: 209.85.222.67, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f67.google.com with SMTP id g20so1034965uap.8
        for <yocto@lists.yoctoproject.org>; Wed, 12 Aug 2020 14:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2IxM+gaEmWYJwBD9+CS6jBYeUwxOTQ0vFhv1R9YTYWA=;
        b=E2ez3gI0+60wFkDacDf+C6SD6rB7v1vX2Aa8dMuIFZzS7nExAdT4pj1XvJqr4FE0pE
         WEZsH+RLmC5Cm/PrRTCvmG8nEdH7Bh6IItWZW//cLGO7V6R5XHD12w+bNIHl+NxiydM8
         +5YP5xWupz2CTwpQfA0m8o/6YGg4MdxxYhkiwnbcoFgfC2dOb4PY4b4ZdUBts0ZAthm3
         jNgZKqtMg3LbXsoCOY+Sn557bKUx6bJ9K/oSy8c9qiGsO8GyXoJRSiOlkR8qlnrdA+tJ
         cSyJl7a8IQN8Nt1/pTaa8DsfoTF+iHSyVrI9wKFGn7PGPfwNd/+ux5mw9QTZswTm/WHd
         /a4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2IxM+gaEmWYJwBD9+CS6jBYeUwxOTQ0vFhv1R9YTYWA=;
        b=ls+K/4vMeRsFHRKCuLm1gNrP11p0oCM3K4cpDtLqxwWq0Hf20CEZV34qzEy+CduWAG
         Zf/9wtbpWCFppM1JvzRmQ06aY1JKeoVYDIJjV2WqWXQqTX28+K4ydOmquGuCe3jnVVRh
         ZGvHVHQqrsyLTH4UzASvTqvmgm6nL6ZxbsGsdAgYS9+dHDkC11kCK5zwlkzhO5dYnDQO
         zZclT+EpA2yyxY9kkKqb+25opHY2ckdEbO+pCkBFfvN39MZoToIejdl6Vo0jerL8mGOJ
         2uBnwpHZ1rmrZ1jIO8/rI2YIvlMbo+4Yc4evYkziwsaDL5iV2udnr5sD6ya57Ylw6TI0
         ZTmQ==
X-Gm-Message-State: AOAM532EHV/LOAvvSGLHYClCSmL9jQwFBbhg4iZFpJakQoxvPq7Ti0E6
	rkh3otX+6NJEstKE40tSY6YMem3uwxwuOmOrfkI=
X-Google-Smtp-Source: ABdhPJx0O3KP7FG1hrFyner1kx6RvktMvceW0Sa6J5Ztr9sLqVldEqgUeevOr79aMX6+ORr9dkacDC6oXudIV5bE6Sw=
X-Received: by 2002:ab0:6950:: with SMTP id c16mr1027464uas.71.1597267940644;
 Wed, 12 Aug 2020 14:32:20 -0700 (PDT)
MIME-Version: 1.0
References: <1597266150-3500-1-git-send-email-chandana.kalluri@xilinx.com>
In-Reply-To: <1597266150-3500-1-git-send-email-chandana.kalluri@xilinx.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 12 Aug 2020 23:32:08 +0200
Message-ID: <CANNYZj-4r-CnZyh383ARSTxaQYWKfw7qhRP3LZG5xhk7gunqOQ@mail.gmail.com>
Subject: Re: [yocto] [poky][master][PATCH] qemu.inc: Use virtual/libgl instead of mesa
To: Chandana kalluri <ckalluri@xilinx.com>
Cc: yocto@lists.yoctoproject.org, 
	Sai Hari Chandana Kalluri <chandana.kalluri@xilinx.com>
Content-Type: multipart/alternative; boundary="000000000000369a3f05acb4ecef"

--000000000000369a3f05acb4ecef
Content-Type: text/plain; charset="UTF-8"

Virgl is not verified with anything else than mesa, and will almost
certainly fail. And so does qemu.

I think you should rather remove glx and virglrenderer from qemu
PACKAGECONFIG, so that mesa is not pulled in at all.

Alex

On Wed, 12 Aug 2020 at 23:02, Chandana kalluri <ckalluri@xilinx.com> wrote:

> If there are multiple providers of virtual/libgl and mesa is not the
> default
> provider, the recipe compilation fails.  Use virtual/libgl to pick the
> default
> provider.
>
> Signed-off-by: Sai Hari Chandana Kalluri <chandana.kalluri@xilinx.com>
> ---
>  meta/recipes-devtools/qemu/qemu.inc                        | 2 +-
>  meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta/recipes-devtools/qemu/qemu.inc
> b/meta/recipes-devtools/qemu/qemu.inc
> index b1c822b..dada4b8 100644
> --- a/meta/recipes-devtools/qemu/qemu.inc
> +++ b/meta/recipes-devtools/qemu/qemu.inc
> @@ -163,7 +163,7 @@ PACKAGECONFIG[nettle] =
> "--enable-nettle,--disable-nettle,nettle"
>  PACKAGECONFIG[libusb] = "--enable-libusb,--disable-libusb,libusb1"
>  PACKAGECONFIG[fdt] = "--enable-fdt,--disable-fdt,dtc"
>  PACKAGECONFIG[alsa] = "--audio-drv-list='oss alsa',,alsa-lib"
> -PACKAGECONFIG[glx] = "--enable-opengl,--disable-opengl,mesa"
> +PACKAGECONFIG[glx] = "--enable-opengl,--disable-opengl,virtual/libgl"
>  PACKAGECONFIG[lzo] = "--enable-lzo,--disable-lzo,lzo"
>  PACKAGECONFIG[numa] = "--enable-numa,--disable-numa,numactl"
>  PACKAGECONFIG[gnutls] = "--enable-gnutls,--disable-gnutls,gnutls"
> diff --git a/meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb
> b/meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb
> index 29b1262..5282119 100644
> --- a/meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb
> +++ b/meta/recipes-graphics/virglrenderer/virglrenderer_0.8.2.bb
> @@ -8,7 +8,7 @@ HOMEPAGE = "https://virgil3d.github.io/"
>  LICENSE = "MIT"
>  LIC_FILES_CHKSUM = "file://COPYING;md5=c81c08eeefd9418fca8f88309a76db10"
>
> -DEPENDS = "libdrm mesa libepoxy"
> +DEPENDS = "libdrm virtual/libgl libepoxy"
>  SRCREV = "7d204f3927be65fb3365dce01dbcd04d447a4985"
>  SRC_URI = "git://anongit.freedesktop.org/virglrenderer \
>
> file://0001-gallium-Expand-libc-check-to-be-platform-OS-check.patch \
> --
> 2.7.4
>
> 
>

--000000000000369a3f05acb4ecef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Virgl is not verified with anything else than mesa, a=
nd will almost certainly fail. And so does qemu.</div><div><br></div><div>I=
 think you should rather remove glx and virglrenderer from qemu PACKAGECONF=
IG, so that mesa is not pulled in at all.</div><div><br></div><div>Alex<br>=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, 12 Aug 2020 at 23:02, Chandana kalluri &lt;<a href=3D"mailto:=
ckalluri@xilinx.com">ckalluri@xilinx.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">If there are multiple providers of =
virtual/libgl and mesa is not the default<br>
provider, the recipe compilation fails.=C2=A0 Use virtual/libgl to pick th=
e default<br>
provider.<br>
<br>
Signed-off-by: Sai Hari Chandana Kalluri &lt;<a href=3D"mailto:chandana.ka=
lluri@xilinx.com" target=3D"_blank">chandana.kalluri@xilinx.com</a>&gt;<br>
---<br>
=C2=A0meta/recipes-devtools/qemu/qemu.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A0meta/recipes-graphics/virglrenderer/<a href=3D"http://virglrenderer_=
0.8.2.bb" rel=3D"noreferrer" target=3D"_blank">virglrenderer_0.8.2.bb</a> |=
 2 +-<br>
=C2=A02 files changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/meta/recipes-devtools/qemu/qemu.inc b/meta/recipes-devtools/q=
emu/qemu.inc<br>
index b1c822b..dada4b8 100644<br>
--- a/meta/recipes-devtools/qemu/qemu.inc<br>
+++ b/meta/recipes-devtools/qemu/qemu.inc<br>
@@ -163,7 +163,7 @@ PACKAGECONFIG[nettle] =3D &quot;--enable-nettle,--disa=
ble-nettle,nettle&quot;<br>
=C2=A0PACKAGECONFIG[libusb] =3D &quot;--enable-libusb,--disable-libusb,lib=
usb1&quot;<br>
=C2=A0PACKAGECONFIG[fdt] =3D &quot;--enable-fdt,--disable-fdt,dtc&quot;<br=
>
=C2=A0PACKAGECONFIG[alsa] =3D &quot;--audio-drv-list=3D&#39;oss alsa&#39;,=
,alsa-lib&quot;<br>
-PACKAGECONFIG[glx] =3D &quot;--enable-opengl,--disable-opengl,mesa&quot;<=
br>
+PACKAGECONFIG[glx] =3D &quot;--enable-opengl,--disable-opengl,virtual/lib=
gl&quot;<br>
=C2=A0PACKAGECONFIG[lzo] =3D &quot;--enable-lzo,--disable-lzo,lzo&quot;<br=
>
=C2=A0PACKAGECONFIG[numa] =3D &quot;--enable-numa,--disable-numa,numactl&q=
uot;<br>
=C2=A0PACKAGECONFIG[gnutls] =3D &quot;--enable-gnutls,--disable-gnutls,gnu=
tls&quot;<br>
diff --git a/meta/recipes-graphics/virglrenderer/<a href=3D"http://virglre=
nderer_0.8.2.bb" rel=3D"noreferrer" target=3D"_blank">virglrenderer_0.8.2.b=
b</a> b/meta/recipes-graphics/virglrenderer/<a href=3D"http://virglrenderer=
_0.8.2.bb" rel=3D"noreferrer" target=3D"_blank">virglrenderer_0.8.2.bb</a><=
br>
index 29b1262..5282119 100644<br>
--- a/meta/recipes-graphics/virglrenderer/<a href=3D"http://virglrenderer_=
0.8.2.bb" rel=3D"noreferrer" target=3D"_blank">virglrenderer_0.8.2.bb</a><b=
r>
+++ b/meta/recipes-graphics/virglrenderer/<a href=3D"http://virglrenderer_=
0.8.2.bb" rel=3D"noreferrer" target=3D"_blank">virglrenderer_0.8.2.bb</a><b=
r>
@@ -8,7 +8,7 @@ HOMEPAGE =3D &quot;<a href=3D"https://virgil3d.github.io/"=
 rel=3D"noreferrer" target=3D"_blank">https://virgil3d.github.io/</a>&quot;=
<br>
=C2=A0LICENSE =3D &quot;MIT&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dc81c08eeefd9418fca8f=
88309a76db10&quot;<br>
<br>
-DEPENDS =3D &quot;libdrm mesa libepoxy&quot;<br>
+DEPENDS =3D &quot;libdrm virtual/libgl libepoxy&quot;<br>
=C2=A0SRCREV =3D &quot;7d204f3927be65fb3365dce01dbcd04d447a4985&quot;<br>
=C2=A0SRC_URI =3D &quot;git://<a href=3D"http://anongit.freedesktop.org/vi=
rglrenderer" rel=3D"noreferrer" target=3D"_blank">anongit.freedesktop.org/v=
irglrenderer</a> \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-gallium-Expand-libc-=
check-to-be-platform-OS-check.patch \<br>
-- <br>
2.7.4<br>
<br>
<br>
</blockquote></div>

--000000000000369a3f05acb4ecef--
