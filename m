Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.28972.1605021247354567798
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 07:14:07 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@fastree3d-com.20150623.gappssmtp.com header.s=20150623 header.b=XaDftO63;
 spf=none, err=SPF record not found (domain: fastree3d.com, ip: 198.145.29.25, mailfrom: adrian.fiergolski@fastree3d.com)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 0C57638C0682
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2020 07:14:07 -0800 (PST)
Received: by mail-wm1-f50.google.com with SMTP id h62so3336345wme.3
        for <yocto@yoctoproject.org>; Tue, 10 Nov 2020 07:14:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastree3d-com.20150623.gappssmtp.com; s=20150623;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=g3JEk+gkmutpmb8yYelGAcFwsfyIwp40nysZNN3/k1M=;
        b=XaDftO63RTjDEOydTt/6MVGgWWT3XSA3qxqL4OANAnF2HvPLT8240awjJcR6ohtPJc
         O622WKZrIh+B79iTv0yqfJuVVmhGh7be1GAmc/oGXBMwE+/PMcIM/QJy46TwxwRsPcIk
         oxJ81FZiWcBpIFFuHIcJOF208HQimf30n0ezMxJJ8Eg59AwDJpEJaYE7ci2mXtZFhbtX
         GGNCaMXeZpaEsu2GAvnNJMiJy9A/jw8c0i8gziwY3V/CnoG6tUHuBsdNqq5zIkcsPxju
         a+0KNBpY5iPCzTpbIB4ptEPR/UaX58scqtruJllkVL3A3f7zk0/es4HTxDf9v/zNk13f
         J0hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=g3JEk+gkmutpmb8yYelGAcFwsfyIwp40nysZNN3/k1M=;
        b=KOW5haQn1Qmq8MBL/oj0J+ZcMXrEAPKGNaREuN0EOxcqab5jYAjWbkR3HTNkeX54Z+
         xfcM6pQtwQJKsUjzvri2N9PZAYO7UIhxE0dqGLHI5zma4JX9XKkXhletMn8O8GePsgLH
         GcZAOOQDuTXtiZIUOnIDByUNal4mVJTiOEV1w38uM9pEfK3ncyqcV7sTFHTRkNL7ABua
         HB0PHQXNrg5WxKNeYba+n6AYq5acDhxWMXel1sn8SzW8xbs24yJ20uqvl7zsU47y0HMv
         M6t+SPUi6ppzyVpj4xRsXsKyna2Az2Tz8QM1gVo+joC9/CIBU7+B5DQX9sCRrKWS0b0z
         tLVw==
X-Gm-Message-State: AOAM530+EFzRfHRu4sWPEymynjAHchK1U8YMIKTCmScb2KrOMghHLhDp
	cRPovVV6bHbsylSRstkz0MqfK/WOO2mp
X-Google-Smtp-Source: ABdhPJz/Pe294Kazllf0rNdCaUZAzBrPSkQtb9nE5bm/A19fFNzjjD30aqy3/URsj8xeRDBZwPA9aQ==
X-Received: by 2002:a05:600c:2119:: with SMTP id u25mr129240wml.53.1605021245079;
        Tue, 10 Nov 2020 07:14:05 -0800 (PST)
Received: from [192.168.2.144] (74.233.197.178.dynamic.wless.lssmb00p-cgnat.res.cust.swisscom.ch. [178.197.233.74])
        by smtp.gmail.com with ESMTPSA id j71sm3453071wmj.10.2020.11.10.07.14.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 07:14:04 -0800 (PST)
From: "Adrian" <adrian.fiergolski@fastree3d.com>
X-Google-Original-From: Adrian Fiergolski <Adrian.Fiergolski@fastree3d.com>
Subject: Re: [yocto] [gtk+3][zeus] building only with wayland backend, no x11
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
References: <793ad916-3155-32cb-7143-1c329bf45a57@fastree3d.com>
 <CANNYZj_Bw-7NT+gEDJXS+je+uTjxWYq9hanNg0A=P=zw+ALGPQ@mail.gmail.com>
Message-ID: <f3cc1e17-33ab-ac5a-6f5f-c78aa69f437d@fastree3d.com>
Date: Tue, 10 Nov 2020 16:14:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <CANNYZj_Bw-7NT+gEDJXS+je+uTjxWYq9hanNg0A=P=zw+ALGPQ@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------082588B87A2F670DE10B0124"
Content-Language: en-GB

--------------082588B87A2F670DE10B0124
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Thank you for the hint. It led me to the source of the problem, which
was libepoxy.

It looks that after changing configuration (DISTRO_FEATURES_remove =3D "
x11"), SSTATE was still populating sysroot of gtk+3 with the older
version of libepoxy configuration file (*.pc) creating dependency to
'gl' and 'x11'. In my case I had to call:

    bitbake -c cleanall libepoxy

    bitbake -c cleanall gtk+3

    bitbake gtk+3

In order to avoid such issues in the future, is there any way to force
bitbake (after such considerable configuration change like modification
of DISTRO_FEATURES) to rebuild sysroot for each recipe if necessary
instead of grabbing them from the cache ? I know, one could delete
sstate-cache directory, but obviously it will enormously increase
rebuild time. I have been wondering whether there is an intermediate
solution.

Regards,

Adrian

On 09.11.2020=C2=A015:28, Alexander Kanavin wrote:
> Do you actually need gtk+3 in your image?
>
> There is a poky configuration that builds core-image-weston without
> x11, and core-image-weston does pull in gtk+3, and all that happens
> without errors:
> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/=
config.json?h=3Dzeus#n638
> <http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree=
/config.json?h=3Dzeus#n638>
> so I'd suggest you reproduce that, get it to build, then investigate
> where your build diverges.
>
> Alex
>
> On Mon, 9 Nov 2020 at 14:10, Adrian <adrian.fiergolski@fastree3d.com
> <mailto:adrian.fiergolski@fastree3d.com>> wrote:
>
>     Hi,
>
>     I am building an image based on core-image-weston.
>
>     I would like to use only wayland backend, thus I defined in my
>     machine's configuration:
>
>         DISTRO_FEATURES_append =3D " wayland"
>         DISTRO_FEATURES_remove =3D " x11"
>
>     I have a problem with build of gtk+3:
>
>         | checking for pango pangocairo gdk-pixbuf-2.0 >=3D 2.30.0 cairo
>         >=3D 1.14.0 cairo-gobject >=3D 1.14.0 gio-unix-2.0 >=3D 2.53.4=
=C2=A0
>         wayland-client >=3D 1.9.91 wayland-protocols >=3D 1.12 xkbcommon
>         >=3D 0.2.0 wayland-cursor >=3D 1.9.91 wayland-egl=C2=A0=C2=A0 ca=
iro epoxy >=3D
>         1.4=C2=A0 fribidi >=3D 0.19.7... no
>         | configure: error: Package requirements (pango pangocairo
>         gdk-pixbuf-2.0 >=3D 2.30.0 cairo >=3D 1.14.0 cairo-gobject >=3D
>         1.14.0 gio-unix-2.0 >=3D 2.53.4=C2=A0 wayland-client >=3D 1.9.91
>         wayland-protocols >=3D 1.12 xkbcommon >=3D 0.2.0 wayland-cursor =
>=3D
>         1.9.91 wayland-egl=C2=A0=C2=A0 cairo epoxy >=3D 1.4=C2=A0 fribid=
i >=3D 0.19.7)
>         were not met:
>         |
>         | Package 'x11', required by 'gl', not found
>
>     The configuration flags in config.log seems to be ok:
>
>     =C2=A0 $ ../gtk+-3.24.8/configure --build=3Dx86_64-linux
>     --host=3Daarch64-poky-linux --target=3Daarch64-poky-linux
>     --prefix=3D/usr --exec_prefix=3D/usr --bindir=3D/usr/bin
>     --sbindir=3D/usr/sbin --libexecdir=3D/usr/libexec --datadir=3D/usr/s=
hare
>     --sysconfdir=3D/etc --sharedstatedir=3D/com --localstatedir=3D/var
>     --libdir=3D/usr/lib --includedir=3D/usr/include
>     --oldincludedir=3D/usr/include --infodir=3D/usr/share/info
>     --mandir=3D/usr/share/man --disable-silent-rules
>     --disable-dependency-tracking
>     --with-libtool-sysroot=3D/home/afiergol/fastree/falcon/poky/build/tm=
p/work/aarch64-poky-linux/gtk+3/3.24.8-r0/recipe-sysroot
>     --enable-introspection --disable-gtk-doc --disable-glibtest
>     --disable-xinerama --enable-modules --disable-colord
>     --disable-gtk-doc --disable-static --disable-cups --disable-glx
>     --enable-opengl --enable-wayland-backend --disable-x11-backend
>     --enable-nls
>
>     Has anybody else experience similar issue? Do you know a fix? I
>     work with the latest zeus
>     (d88d62c20d7d8da85f02edb170dae0280624ad7e) version.
>
>     Regards,
>
>     Adrian
>
>
>
>    =20
>

--------------082588B87A2F670DE10B0124
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p>Hi Alex,</p>
    <p>Thank you for the hint. It led me to the source of the problem,
      which was libepoxy.</p>
    <p>It looks that after changing configuration
      (DISTRO_FEATURES_remove =3D " x11"), SSTATE was still populating
      sysroot of gtk+3 with the older version of libepoxy configuration
      file (*.pc) creating dependency to 'gl' and 'x11'. In my case I
      had to call:</p>
    <blockquote>
      <p>bitbake -c cleanall libepoxy</p>
      <p>bitbake -c cleanall gtk+3</p>
      <p>bitbake gtk+3</p>
    </blockquote>
    <p>In order to avoid such issues in the future, is there any way to
      force bitbake (after such considerable configuration change like
      modification of DISTRO_FEATURES) to rebuild sysroot for each
      recipe if necessary instead of grabbing them from the cache ? I
      know, one could delete sstate-cache directory, but obviously it
      will enormously increase rebuild time. I have been wondering
      whether there is an intermediate solution.<br>
    </p>
    <p>Regards,</p>
    <p>Adrian</p>
    On 09.11.2020=C2=A015:28, Alexander Kanavin wrote:<br>
    <blockquote type=3D"cite"
cite=3D"mid:CANNYZj_Bw-7NT+gEDJXS+je+uTjxWYq9hanNg0A=3DP=3Dzw+ALGPQ@mail.g=
mail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      <div dir=3D"ltr">
        <div>Do you actually need gtk+3 in your image?</div>
        <div><br>
        </div>
        <div>There is a poky configuration that builds core-image-weston
          without x11, and core-image-weston does pull in gtk+3, and all
          that happens without errors:</div>
        <div><a
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper=
/tree/config.json?h=3Dzeus#n638"
            moz-do-not-send=3D"true">http://git.yoctoproject.org/cgit/cgit=
.cgi/yocto-autobuilder-helper/tree/config.json?h=3Dzeus#n638</a></div>
        <div>so I'd suggest you reproduce that, get it to build, then
          investigate where your build diverges.<br>
        </div>
        <div><br>
        </div>
        <div>Alex<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, 9 Nov 2020 at 14:10,
          Adrian &lt;<a href=3D"mailto:adrian.fiergolski@fastree3d.com"
            moz-do-not-send=3D"true">adrian.fiergolski@fastree3d.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p>Hi,</p>
            <p>I am building an image based on core-image-weston.</p>
            <p>I would like to use only wayland backend, thus I defined
              in my machine's configuration:</p>
            <blockquote>
              <p>DISTRO_FEATURES_append =3D " wayland"<br>
                DISTRO_FEATURES_remove =3D " x11"</p>
            </blockquote>
            <p>I have a problem with build of gtk+3:</p>
            <blockquote>
              <p>| checking for pango pangocairo gdk-pixbuf-2.0 &gt;=3D
                2.30.0 cairo &gt;=3D 1.14.0 cairo-gobject &gt;=3D 1.14.0
                gio-unix-2.0 &gt;=3D 2.53.4=C2=A0 wayland-client &gt;=3D 1=
.9.91
                wayland-protocols &gt;=3D 1.12 xkbcommon &gt;=3D 0.2.0
                wayland-cursor &gt;=3D 1.9.91 wayland-egl=C2=A0=C2=A0 cair=
o epoxy
                &gt;=3D 1.4=C2=A0 fribidi &gt;=3D 0.19.7... no<br>
                | configure: error: Package requirements (pango
                pangocairo gdk-pixbuf-2.0 &gt;=3D 2.30.0 cairo &gt;=3D
                1.14.0 cairo-gobject &gt;=3D 1.14.0 gio-unix-2.0 &gt;=3D
                2.53.4=C2=A0 wayland-client &gt;=3D 1.9.91 wayland-protoco=
ls
                &gt;=3D 1.12 xkbcommon &gt;=3D 0.2.0 wayland-cursor &gt;=
=3D
                1.9.91 wayland-egl=C2=A0=C2=A0 cairo epoxy &gt;=3D 1.4=C2=
=A0 fribidi
                &gt;=3D 0.19.7) were not met:<br>
                | <br>
                | Package 'x11', required by 'gl', not found</p>
            </blockquote>
            <p>The configuration flags in config.log seems to be ok:</p>
            <p>=C2=A0 $ ../gtk+-3.24.8/configure --build=3Dx86_64-linux
              --host=3Daarch64-poky-linux --target=3Daarch64-poky-linux
              --prefix=3D/usr --exec_prefix=3D/usr --bindir=3D/usr/bin
              --sbindir=3D/usr/sbin --libexecdir=3D/usr/libexec
              --datadir=3D/usr/share --sysconfdir=3D/etc
              --sharedstatedir=3D/com --localstatedir=3D/var
              --libdir=3D/usr/lib --includedir=3D/usr/include
              --oldincludedir=3D/usr/include --infodir=3D/usr/share/info
              --mandir=3D/usr/share/man --disable-silent-rules
              --disable-dependency-tracking
--with-libtool-sysroot=3D/home/afiergol/fastree/falcon/poky/build/tmp/work=
/aarch64-poky-linux/gtk+3/3.24.8-r0/recipe-sysroot
              --enable-introspection --disable-gtk-doc
              --disable-glibtest --disable-xinerama --enable-modules
              --disable-colord --disable-gtk-doc --disable-static
              --disable-cups --disable-glx --enable-opengl
              --enable-wayland-backend --disable-x11-backend
              --enable-nls<br>
            </p>
            <p>Has anybody else experience similar issue? Do you know a
              fix? I work with the latest zeus
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
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------082588B87A2F670DE10B0124--
