Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.12198.1604932132792735448
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 06:28:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qEsjHbIg;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: alex.kanavin@gmail.com)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1A42638C06E3
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2020 06:28:52 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id q68so2826189uaq.3
        for <yocto@yoctoproject.org>; Mon, 09 Nov 2020 06:28:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7pYVJhIkWhSA3JQSfmgdLbHdR1JCom5W3wl9XluKsoQ=;
        b=qEsjHbIgcAUfZaPhrHavj5g+jnwqloQVn3PQUrfXCHun7zwBlljDtVrXm4+pq3tu48
         AlI4isugPLogx3uehSi4Ctq4Xhz4oEyTHngJhMnLMwl89+DcPS3nV3Op1MLVRN8crwbu
         obR/PEpddxq9ArA+kfXNtm3BiCvB4+HResJvwGNHpkFqqUW5xMWkP+SdfGYqAInMZeb6
         ffxbZ89Ad02N6f2tIVP8dnoPXsqtKvGCZrFnuAAjjyCmXK44qVxEpnjNMQzADC132gNm
         TeOrxlVbDsB1+BJ5ilFqphajwOd3wm4nlPhLkblwa8c4iQJO1IHbvoHr+shFMOGvE7L8
         0uTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7pYVJhIkWhSA3JQSfmgdLbHdR1JCom5W3wl9XluKsoQ=;
        b=rynQL4SQ9T22KOEe+yuFW4NPhH10vKegpVWfeOrKi8kTU4zfBiL6hGI0XPEvQ7P+h3
         UWyIF1sqUhKY0I6SsCpMnOOPNWpmVuxCphxAQ43h4oxlbs82PBycPGMFQE/Iurry1L0H
         Jqnkm7MlGd692qMtZq89nba8jXYgHui1D8eqdf75XCEEVm+hiEDsDSx0kv5cUh877+uj
         32+l/08fkNWXNQE0jY+oQbMexCNJq32rTmsxpKuSE27pSqRGac3cadowIP/i5LI7f305
         G3kAUbWQ8l/H7hPLlaWHMFWLSXvYNhhSONRJPNmHeDHvz9T0Z/Jm8NfKxXrSBov1O39P
         R7fQ==
X-Gm-Message-State: AOAM530xoqEJ9pX+zDuigvRwOSXcbxRRsSEtSg2lTimTQ9dcSoLZ16W8
	V4Qe+7oxN1FEoiDTTbxlrQnOzRT/sPy+AfVKl4IP8QDuQkvvyg==
X-Google-Smtp-Source: ABdhPJxr1cg/Dvh6zf3VuaDZpWl+n46iicBZI7osH7bJAZvKDOaU4HqPpxaV8HFMuSTw4ZK9Bg2xAs3AlDm8yreR5m8=
X-Received: by 2002:ab0:7103:: with SMTP id x3mr1323451uan.100.1604932130997;
 Mon, 09 Nov 2020 06:28:50 -0800 (PST)
MIME-Version: 1.0
References: <793ad916-3155-32cb-7143-1c329bf45a57@fastree3d.com>
In-Reply-To: <793ad916-3155-32cb-7143-1c329bf45a57@fastree3d.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 9 Nov 2020 15:28:39 +0100
Message-ID: <CANNYZj_Bw-7NT+gEDJXS+je+uTjxWYq9hanNg0A=P=zw+ALGPQ@mail.gmail.com>
Subject: Re: [yocto] [gtk+3][zeus] building only with wayland backend, no x11
To: Adrian <adrian.fiergolski@fastree3d.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008e8b8705b3ad61d7"

--0000000000008e8b8705b3ad61d7
Content-Type: text/plain; charset="UTF-8"

Do you actually need gtk+3 in your image?

There is a poky configuration that builds core-image-weston without x11,
and core-image-weston does pull in gtk+3, and all that happens without
errors:
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/config.json?h=zeus#n638
so I'd suggest you reproduce that, get it to build, then investigate where
your build diverges.

Alex

On Mon, 9 Nov 2020 at 14:10, Adrian <adrian.fiergolski@fastree3d.com> wrote:

> Hi,
>
> I am building an image based on core-image-weston.
>
> I would like to use only wayland backend, thus I defined in my machine's
> configuration:
>
> DISTRO_FEATURES_append = " wayland"
> DISTRO_FEATURES_remove = " x11"
>
> I have a problem with build of gtk+3:
>
> | checking for pango pangocairo gdk-pixbuf-2.0 >= 2.30.0 cairo >= 1.14.0
> cairo-gobject >= 1.14.0 gio-unix-2.0 >= 2.53.4  wayland-client >= 1.9.91
> wayland-protocols >= 1.12 xkbcommon >= 0.2.0 wayland-cursor >= 1.9.91
> wayland-egl   cairo epoxy >= 1.4  fribidi >= 0.19.7... no
> | configure: error: Package requirements (pango pangocairo gdk-pixbuf-2.0
> >= 2.30.0 cairo >= 1.14.0 cairo-gobject >= 1.14.0 gio-unix-2.0 >= 2.53.4
> wayland-client >= 1.9.91 wayland-protocols >= 1.12 xkbcommon >= 0.2.0
> wayland-cursor >= 1.9.91 wayland-egl   cairo epoxy >= 1.4  fribidi >=
> 0.19.7) were not met:
> |
> | Package 'x11', required by 'gl', not found
>
> The configuration flags in config.log seems to be ok:
>
>   $ ../gtk+-3.24.8/configure --build=x86_64-linux
> --host=aarch64-poky-linux --target=aarch64-poky-linux --prefix=/usr
> --exec_prefix=/usr --bindir=/usr/bin --sbindir=/usr/sbin
> --libexecdir=/usr/libexec --datadir=/usr/share --sysconfdir=/etc
> --sharedstatedir=/com --localstatedir=/var --libdir=/usr/lib
> --includedir=/usr/include --oldincludedir=/usr/include
> --infodir=/usr/share/info --mandir=/usr/share/man --disable-silent-rules
> --disable-dependency-tracking
> --with-libtool-sysroot=/home/afiergol/fastree/falcon/poky/build/tmp/work/aarch64-poky-linux/gtk+3/3.24.8-r0/recipe-sysroot
> --enable-introspection --disable-gtk-doc --disable-glibtest
> --disable-xinerama --enable-modules --disable-colord --disable-gtk-doc
> --disable-static --disable-cups --disable-glx --enable-opengl
> --enable-wayland-backend --disable-x11-backend --enable-nls
>
> Has anybody else experience similar issue? Do you know a fix? I work with
> the latest zeus (d88d62c20d7d8da85f02edb170dae0280624ad7e) version.
>
> Regards,
>
> Adrian
>
>
>
> 
>
>

--0000000000008e8b8705b3ad61d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Do you actually need gtk+3 in your image?</div><div><=
br></div><div>There is a poky configuration that builds core-image-weston w=
ithout x11, and core-image-weston does pull in gtk+3, and all that happens =
without errors:</div><div><a href=3D"http://git.yoctoproject.org/cgit/cgit.=
cgi/yocto-autobuilder-helper/tree/config.json?h=3Dzeus#n638">http://git.yoc=
toproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/config.json?h=3Dz=
eus#n638</a></div><div>so I&#39;d suggest you reproduce that, get it to bui=
ld, then investigate where your build diverges.<br></div><div><br></div><di=
v>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=
=3D"gmail_attr">On Mon, 9 Nov 2020 at 14:10, Adrian &lt;<a href=3D"mailto:=
adrian.fiergolski@fastree3d.com">adrian.fiergolski@fastree3d.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
  

    
  
  <div>
    <p>Hi,</p>
    <p>I am building an image based on core-image-weston.</p>
    <p>I would like to use only wayland backend, thus I defined in my
      machine&#39;s configuration:</p>
    <blockquote>
      <p>DISTRO_FEATURES_append =3D &quot; wayland&quot;<br>
        DISTRO_FEATURES_remove =3D &quot; x11&quot;</p>
    </blockquote>
    <p>I have a problem with build of gtk+3:</p>
    <blockquote>
      <p>| checking for pango pangocairo gdk-pixbuf-2.0 &gt;=3D 2.30.0
        cairo &gt;=3D 1.14.0 cairo-gobject &gt;=3D 1.14.0 gio-unix-2.0 &gt=
;=3D
        2.53.4=C2=A0 wayland-client &gt;=3D 1.9.91 wayland-protocols &gt;=
=3D 1.12
        xkbcommon &gt;=3D 0.2.0 wayland-cursor &gt;=3D 1.9.91 wayland-egl=
=C2=A0=C2=A0
        cairo epoxy &gt;=3D 1.4=C2=A0 fribidi &gt;=3D 0.19.7... no<br>
        | configure: error: Package requirements (pango pangocairo
        gdk-pixbuf-2.0 &gt;=3D 2.30.0 cairo &gt;=3D 1.14.0 cairo-gobject
        &gt;=3D 1.14.0 gio-unix-2.0 &gt;=3D 2.53.4=C2=A0 wayland-client &g=
t;=3D
        1.9.91 wayland-protocols &gt;=3D 1.12 xkbcommon &gt;=3D 0.2.0
        wayland-cursor &gt;=3D 1.9.91 wayland-egl=C2=A0=C2=A0 cairo epoxy =
&gt;=3D 1.4=C2=A0
        fribidi &gt;=3D 0.19.7) were not met:<br>
        | <br>
        | Package &#39;x11&#39;, required by &#39;gl&#39;, not found</p>
    </blockquote>
    <p>The configuration flags in config.log seems to be ok:</p>
    <p>=C2=A0 $ ../gtk+-3.24.8/configure --build=3Dx86_64-linux
      --host=3Daarch64-poky-linux --target=3Daarch64-poky-linux
      --prefix=3D/usr --exec_prefix=3D/usr --bindir=3D/usr/bin
      --sbindir=3D/usr/sbin --libexecdir=3D/usr/libexec --datadir=3D/usr/s=
hare
      --sysconfdir=3D/etc --sharedstatedir=3D/com --localstatedir=3D/var
      --libdir=3D/usr/lib --includedir=3D/usr/include
      --oldincludedir=3D/usr/include --infodir=3D/usr/share/info
      --mandir=3D/usr/share/man --disable-silent-rules
      --disable-dependency-tracking
--with-libtool-sysroot=3D/home/afiergol/fastree/falcon/poky/build/tmp/work=
/aarch64-poky-linux/gtk+3/3.24.8-r0/recipe-sysroot
      --enable-introspection --disable-gtk-doc --disable-glibtest
      --disable-xinerama --enable-modules --disable-colord
      --disable-gtk-doc --disable-static --disable-cups --disable-glx
      --enable-opengl --enable-wayland-backend --disable-x11-backend
      --enable-nls<br>
    </p>
    <p>Has anybody else experience similar issue? Do you know a fix? I
      work with the latest zeus
      (d88d62c20d7d8da85f02edb170dae0280624ad7e) version.</p>
    <p>Regards,</p>
    <p>Adrian<br>
    </p>
    <p><br>
    </p>
  </div>

<br>
<br>
<br>
</blockquote></div>

--0000000000008e8b8705b3ad61d7--
