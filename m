Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.11059.1604927447655851092
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 05:10:47 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@fastree3d-com.20150623.gappssmtp.com header.s=20150623 header.b=vvfsDziK;
 spf=none, err=SPF record not found (domain: fastree3d.com, ip: 198.145.29.25, mailfrom: adrian.fiergolski@fastree3d.com)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E8DD938C112C
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2020 05:10:46 -0800 (PST)
Received: by mail-ej1-f48.google.com with SMTP id dk16so12107326ejb.12
        for <yocto@yoctoproject.org>; Mon, 09 Nov 2020 05:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastree3d-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:message-id:date:user-agent:mime-version
         :content-language;
        bh=NeuIup0bd6gWeeH0xZFcPaYRvl2/nSZwczfjit/68QE=;
        b=vvfsDziKcyT/zMVolXBeg/vRuTORLENJYnGvQRZTOj/Bzjyk74Np9JJdQl6XyFzGer
         W64n4/Xt6gqeo6inLzc1z8XNpLJYyV+FCA/hY0NcEFbg37NO1BvTgOcOdW4v1RgM8W5l
         NSPtjxul7vCwgwz06BNEL4UB+WwHLn5+dW64w+q0zkFAJ5jqJQgn63raSt7TlyiJd4nl
         Fh7v70CUXJskKkQ3f4NuAUWtia6sOEoEJmZijPuLGrnF1MpEIirbcBVt0l0LF8uWEPFY
         R7+twxMmtiFT/P9d792AL6+bgcx9zBYCdSm/ZrpCIc7tTwLKsLkT4jinYo9s1y6FfHvH
         y+vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:message-id:date:user-agent
         :mime-version:content-language;
        bh=NeuIup0bd6gWeeH0xZFcPaYRvl2/nSZwczfjit/68QE=;
        b=k3icNMNu3DIKY1+MPaJSP1IHMIHEXJzUZVoYYadDl3ioyXWyEx2XgbTGLUIujD18pI
         trbP8oR5++kL6uKTKKPXSO+CehaJskPU5Q0qyjaTJ+fPsGmhvdNftUy4fuUHCQm9Kv3S
         Jvmi8Mhv2gO3PzsJ+XFBZR8dclvUWTSUplvDaQiPVxvIPpL3hADKSkZ4a9WYQR1jD39T
         F1+zlBPLWeb3MOuxNQRvsjovahes6zH+kJRdwwnzxfn6eAQZn/oFY7BP0bXXB3HLTA8B
         wBq4hm1qgswSqEL8m2B4iq8T8/6uKKUmoKcguEFjo2QTUXepin2MSpWvy0cHzSXej2VR
         IqWQ==
X-Gm-Message-State: AOAM532IUwOrKfp9f1VlcF9K0cs/ejSyUCqoCBGmqAimREM6lyXDXZ7+
	jPIbhm9VEBycEYeGymatilm9PIeXTq2P
X-Google-Smtp-Source: ABdhPJwnq0eQpKntFxVU9S+Qck+7eRb67dhjWxgsk6lFWJckltBl4/eFPdTWxgX3eKrySpn3/AYYBQ==
X-Received: by 2002:a17:906:8496:: with SMTP id m22mr14150636ejx.298.1604927444811;
        Mon, 09 Nov 2020 05:10:44 -0800 (PST)
Received: from [192.168.2.144] (137.233.197.178.dynamic.wless.lssmb00p-cgnat.res.cust.swisscom.ch. [178.197.233.137])
        by smtp.gmail.com with ESMTPSA id qx6sm5533698ejb.10.2020.11.09.05.10.43
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 05:10:43 -0800 (PST)
From: "Adrian" <adrian.fiergolski@fastree3d.com>
X-Google-Original-From: Adrian Fiergolski <Adrian.Fiergolski@fastree3d.com>
To: yocto@yoctoproject.org
Subject: [gtk+3][zeus] building only with wayland backend, no x11
Message-ID: <793ad916-3155-32cb-7143-1c329bf45a57@fastree3d.com>
Date: Mon, 9 Nov 2020 14:10:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.3.2
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------415B0D4369865815D654F979"
Content-Language: en-GB

--------------415B0D4369865815D654F979
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

I am building an image based on core-image-weston.

I would like to use only wayland backend, thus I defined in my machine's
configuration:

    DISTRO_FEATURES_append =3D " wayland"
    DISTRO_FEATURES_remove =3D " x11"

I have a problem with build of gtk+3:

    | checking for pango pangocairo gdk-pixbuf-2.0 >=3D 2.30.0 cairo >=3D
    1.14.0 cairo-gobject >=3D 1.14.0 gio-unix-2.0 >=3D 2.53.4=C2=A0
    wayland-client >=3D 1.9.91 wayland-protocols >=3D 1.12 xkbcommon >=3D
    0.2.0 wayland-cursor >=3D 1.9.91 wayland-egl=C2=A0=C2=A0 cairo epoxy =
>=3D 1.4=C2=A0
    fribidi >=3D 0.19.7... no
    | configure: error: Package requirements (pango pangocairo
    gdk-pixbuf-2.0 >=3D 2.30.0 cairo >=3D 1.14.0 cairo-gobject >=3D 1.14.=
0
    gio-unix-2.0 >=3D 2.53.4=C2=A0 wayland-client >=3D 1.9.91 wayland-pro=
tocols
    >=3D 1.12 xkbcommon >=3D 0.2.0 wayland-cursor >=3D 1.9.91 wayland-egl=
=C2=A0=C2=A0
    cairo epoxy >=3D 1.4=C2=A0 fribidi >=3D 0.19.7) were not met:
    |
    | Package 'x11', required by 'gl', not found

The configuration flags in config.log seems to be ok:

=C2=A0 $ ../gtk+-3.24.8/configure --build=3Dx86_64-linux
--host=3Daarch64-poky-linux --target=3Daarch64-poky-linux --prefix=3D/usr
--exec_prefix=3D/usr --bindir=3D/usr/bin --sbindir=3D/usr/sbin
--libexecdir=3D/usr/libexec --datadir=3D/usr/share --sysconfdir=3D/etc
--sharedstatedir=3D/com --localstatedir=3D/var --libdir=3D/usr/lib
--includedir=3D/usr/include --oldincludedir=3D/usr/include
--infodir=3D/usr/share/info --mandir=3D/usr/share/man --disable-silent-ru=
les
--disable-dependency-tracking
--with-libtool-sysroot=3D/home/afiergol/fastree/falcon/poky/build/tmp/wor=
k/aarch64-poky-linux/gtk+3/3.24.8-r0/recipe-sysroot
--enable-introspection --disable-gtk-doc --disable-glibtest
--disable-xinerama --enable-modules --disable-colord --disable-gtk-doc
--disable-static --disable-cups --disable-glx --enable-opengl
--enable-wayland-backend --disable-x11-backend --enable-nls

Has anybody else experience similar issue? Do you know a fix? I work
with the latest zeus (d88d62c20d7d8da85f02edb170dae0280624ad7e) version.

Regards,

Adrian



--------------415B0D4369865815D654F979
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi,</p>
    <p>I am building an image based on core-image-weston.</p>
    <p>I would like to use only wayland backend, thus I defined in my
      machine's configuration:</p>
    <blockquote>
      <p>DISTRO_FEATURES_append =3D " wayland"<br>
        DISTRO_FEATURES_remove =3D " x11"</p>
    </blockquote>
    <p>I have a problem with build of gtk+3:</p>
    <blockquote>
      <p>| checking for pango pangocairo gdk-pixbuf-2.0 &gt;=3D 2.30.0
        cairo &gt;=3D 1.14.0 cairo-gobject &gt;=3D 1.14.0 gio-unix-2.0 &g=
t;=3D
        2.53.4=C2=A0 wayland-client &gt;=3D 1.9.91 wayland-protocols &gt;=
=3D 1.12
        xkbcommon &gt;=3D 0.2.0 wayland-cursor &gt;=3D 1.9.91 wayland-egl=
=C2=A0=C2=A0
        cairo epoxy &gt;=3D 1.4=C2=A0 fribidi &gt;=3D 0.19.7... no<br>
        | configure: error: Package requirements (pango pangocairo
        gdk-pixbuf-2.0 &gt;=3D 2.30.0 cairo &gt;=3D 1.14.0 cairo-gobject
        &gt;=3D 1.14.0 gio-unix-2.0 &gt;=3D 2.53.4=C2=A0 wayland-client &=
gt;=3D
        1.9.91 wayland-protocols &gt;=3D 1.12 xkbcommon &gt;=3D 0.2.0
        wayland-cursor &gt;=3D 1.9.91 wayland-egl=C2=A0=C2=A0 cairo epoxy=
 &gt;=3D 1.4=C2=A0
        fribidi &gt;=3D 0.19.7) were not met:<br>
        | <br>
        | Package 'x11', required by 'gl', not found</p>
    </blockquote>
    <p>The configuration flags in config.log seems to be ok:</p>
    <p>=C2=A0 $ ../gtk+-3.24.8/configure --build=3Dx86_64-linux
      --host=3Daarch64-poky-linux --target=3Daarch64-poky-linux
      --prefix=3D/usr --exec_prefix=3D/usr --bindir=3D/usr/bin
      --sbindir=3D/usr/sbin --libexecdir=3D/usr/libexec --datadir=3D/usr/=
share
      --sysconfdir=3D/etc --sharedstatedir=3D/com --localstatedir=3D/var
      --libdir=3D/usr/lib --includedir=3D/usr/include
      --oldincludedir=3D/usr/include --infodir=3D/usr/share/info
      --mandir=3D/usr/share/man --disable-silent-rules
      --disable-dependency-tracking
--with-libtool-sysroot=3D/home/afiergol/fastree/falcon/poky/build/tmp/wor=
k/aarch64-poky-linux/gtk+3/3.24.8-r0/recipe-sysroot
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
  </body>
</html>

--------------415B0D4369865815D654F979--
