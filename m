Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.30861.1605029198107143465
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 09:26:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=W/FvZsB2;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: alex.kanavin@gmail.com)
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1E53038C0883
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2020 09:26:37 -0800 (PST)
Received: by mail-vk1-f174.google.com with SMTP id s135so2908023vkh.6
        for <yocto@yoctoproject.org>; Tue, 10 Nov 2020 09:26:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ftYBpUFMgGpJX3rWLIZ3YyLeVdZ5uFJX/2sHoV54hxQ=;
        b=W/FvZsB2EDV9QCjMfOOTiAnGk1xsFvrDSwaeFmWx7yZB2KSU4Z5yYyUAULquiK21VV
         jxMMbwo8KYpWZyg9O1ErCrT2xiuk33ZxVXgfsskmrjBe81aKXFeKQKhoW49FA01nl6eQ
         +02ddKt8KevBpvUjYIj4ealYlXtcxXLgjvRwSMpoor/6XBQ0tBkUsrUi4gEY+yuuYQVY
         xM6bLIJAa2eX8bDA/8vj14Kc1n4U2u0cx/9vZ4FsXLPj1CIlDus8BG4//Yxe4ztyTdFP
         ZNjdvFELiWJIwLx7g63oE4lG1FMHt81+oBLGDarDQQF9M8OEg32lUmLBwe3bohO+M2SK
         aPZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ftYBpUFMgGpJX3rWLIZ3YyLeVdZ5uFJX/2sHoV54hxQ=;
        b=UORU2LZjbAUnajvZRoWDzWPjuVsr26I489AeU290Or93D1CdeS3/LjcsThvr2hkVVn
         7dMf/Y7seCiVhmzIqyxw+xtXAOqMlV7Cy2cdQvMHkJ3QoLsTLF+95Ei3cgNqVWOnLSTa
         IKNjtDGIiACe5dzM4XfjxRVx0l5T0b3zBt/dNRqxJ75vxMFEs+suZT0NRCX6Hj357egw
         wBEJIMY/822MBFtt3EH6+Xf9lD/3DgWp6sf30P8f4vwxNrlmTc0kwwLLGyFdRzfkRyHp
         1/dSZDe3f4lyzMVo5X0H+CTbqEp//t/y84iyH3fYdA2lnMxqyvob+5b1EpEkdUTrDHxG
         vLrA==
X-Gm-Message-State: AOAM530S+qPpK/Sbw8DvZBceAsbP6aiM5i9yQoLnx8ZEoKe0SRgaDM6g
	2ltQwGSUQjEhHMyRmrNlx+CmUzIiXiC93XQsg5c=
X-Google-Smtp-Source: ABdhPJwmXtq/qFZ+rYhlOCZmB6lvrY6iQtNZ+0g3P/2qKRcHfXhK1NDCFwY1+DHLTe1dVP4KzTouT/9NeY4W3dJLHJs=
X-Received: by 2002:a05:6122:10eb:: with SMTP id m11mr11512649vko.8.1605029196030;
 Tue, 10 Nov 2020 09:26:36 -0800 (PST)
MIME-Version: 1.0
References: <793ad916-3155-32cb-7143-1c329bf45a57@fastree3d.com>
 <CANNYZj_Bw-7NT+gEDJXS+je+uTjxWYq9hanNg0A=P=zw+ALGPQ@mail.gmail.com> <f3cc1e17-33ab-ac5a-6f5f-c78aa69f437d@fastree3d.com>
In-Reply-To: <f3cc1e17-33ab-ac5a-6f5f-c78aa69f437d@fastree3d.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 10 Nov 2020 18:26:24 +0100
Message-ID: <CANNYZj8vnx2Sy7L1pHE7kn6u9F82GVTQnT_y5sBnavSPWVyoJQ@mail.gmail.com>
Subject: Re: [yocto] [gtk+3][zeus] building only with wayland backend, no x11
To: Adrian Fiergolski <adrian.fiergolski@fastree3d.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000015663e05b3c3fb45"

--00000000000015663e05b3c3fb45
Content-Type: text/plain; charset="UTF-8"

This seems like libepoxy was not properly rebuilt when you changed
DISTRO_FEATURS, even though it should have been. Can you try to reproduce
the issue on master please?

Alex

On Tue, 10 Nov 2020 at 16:14, Adrian Fiergolski <
adrian.fiergolski@fastree3d.com> wrote:

> Hi Alex,
>
> Thank you for the hint. It led me to the source of the problem, which was
> libepoxy.
>
> It looks that after changing configuration (DISTRO_FEATURES_remove = "
> x11"), SSTATE was still populating sysroot of gtk+3 with the older version
> of libepoxy configuration file (*.pc) creating dependency to 'gl' and
> 'x11'. In my case I had to call:
>
> bitbake -c cleanall libepoxy
>
> bitbake -c cleanall gtk+3
>
> bitbake gtk+3
>
> In order to avoid such issues in the future, is there any way to force
> bitbake (after such considerable configuration change like modification of
> DISTRO_FEATURES) to rebuild sysroot for each recipe if necessary instead of
> grabbing them from the cache ? I know, one could delete sstate-cache
> directory, but obviously it will enormously increase rebuild time. I have
> been wondering whether there is an intermediate solution.
>
> Regards,
>
> Adrian
> On 09.11.2020 15:28, Alexander Kanavin wrote:
>
> Do you actually need gtk+3 in your image?
>
> There is a poky configuration that builds core-image-weston without x11,
> and core-image-weston does pull in gtk+3, and all that happens without
> errors:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/config.json?h=zeus#n638
> so I'd suggest you reproduce that, get it to build, then investigate where
> your build diverges.
>
> Alex
>
> On Mon, 9 Nov 2020 at 14:10, Adrian <adrian.fiergolski@fastree3d.com>
> wrote:
>
>> Hi,
>>
>> I am building an image based on core-image-weston.
>>
>> I would like to use only wayland backend, thus I defined in my machine's
>> configuration:
>>
>> DISTRO_FEATURES_append = " wayland"
>> DISTRO_FEATURES_remove = " x11"
>>
>> I have a problem with build of gtk+3:
>>
>> | checking for pango pangocairo gdk-pixbuf-2.0 >= 2.30.0 cairo >= 1.14.0
>> cairo-gobject >= 1.14.0 gio-unix-2.0 >= 2.53.4  wayland-client >= 1.9.91
>> wayland-protocols >= 1.12 xkbcommon >= 0.2.0 wayland-cursor >= 1.9.91
>> wayland-egl   cairo epoxy >= 1.4  fribidi >= 0.19.7... no
>> | configure: error: Package requirements (pango pangocairo gdk-pixbuf-2.0
>> >= 2.30.0 cairo >= 1.14.0 cairo-gobject >= 1.14.0 gio-unix-2.0 >= 2.53.4
>> wayland-client >= 1.9.91 wayland-protocols >= 1.12 xkbcommon >= 0.2.0
>> wayland-cursor >= 1.9.91 wayland-egl   cairo epoxy >= 1.4  fribidi >=
>> 0.19.7) were not met:
>> |
>> | Package 'x11', required by 'gl', not found
>>
>> The configuration flags in config.log seems to be ok:
>>
>>   $ ../gtk+-3.24.8/configure --build=x86_64-linux
>> --host=aarch64-poky-linux --target=aarch64-poky-linux --prefix=/usr
>> --exec_prefix=/usr --bindir=/usr/bin --sbindir=/usr/sbin
>> --libexecdir=/usr/libexec --datadir=/usr/share --sysconfdir=/etc
>> --sharedstatedir=/com --localstatedir=/var --libdir=/usr/lib
>> --includedir=/usr/include --oldincludedir=/usr/include
>> --infodir=/usr/share/info --mandir=/usr/share/man --disable-silent-rules
>> --disable-dependency-tracking
>> --with-libtool-sysroot=/home/afiergol/fastree/falcon/poky/build/tmp/work/aarch64-poky-linux/gtk+3/3.24.8-r0/recipe-sysroot
>> --enable-introspection --disable-gtk-doc --disable-glibtest
>> --disable-xinerama --enable-modules --disable-colord --disable-gtk-doc
>> --disable-static --disable-cups --disable-glx --enable-opengl
>> --enable-wayland-backend --disable-x11-backend --enable-nls
>>
>> Has anybody else experience similar issue? Do you know a fix? I work with
>> the latest zeus (d88d62c20d7d8da85f02edb170dae0280624ad7e) version.
>>
>> Regards,
>>
>> Adrian
>>
>>
>>
>> 
>>
>>

--00000000000015663e05b3c3fb45
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This seems like libepoxy was not properly rebuilt whe=
n you changed DISTRO_FEATURS, even though it should have been. Can you try =
to reproduce the issue on master please?</div><div><br></div><div>Alex<br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Tue, 10 Nov 2020 at 16:14, Adrian Fiergolski &lt;<a href=3D"mailto:=
adrian.fiergolski@fastree3d.com">adrian.fiergolski@fastree3d.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
  
    
  
  <div>
    <p>Hi Alex,</p>
    <p>Thank you for the hint. It led me to the source of the problem,
      which was libepoxy.</p>
    <p>It looks that after changing configuration
      (DISTRO_FEATURES_remove =3D &quot; x11&quot;), SSTATE was still popu=
lating
      sysroot of gtk+3 with the older version of libepoxy configuration
      file (*.pc) creating dependency to &#39;gl&#39; and &#39;x11&#39;. I=
n my case I
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
    <blockquote type=3D"cite">
      
      <div dir=3D"ltr">
        <div>Do you actually need gtk+3 in your image?</div>
        <div><br>
        </div>
        <div>There is a poky configuration that builds core-image-weston
          without x11, and core-image-weston does pull in gtk+3, and all
          that happens without errors:</div>
        <div><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/yocto-au=
tobuilder-helper/tree/config.json?h=3Dzeus#n638" target=3D"_blank">http://g=
it.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/config.json=
?h=3Dzeus#n638</a></div>
        <div>so I&#39;d suggest you reproduce that, get it to build, then
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
          Adrian &lt;<a href=3D"mailto:adrian.fiergolski@fastree3d.com" ta=
rget=3D"_blank">adrian.fiergolski@fastree3d.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p>Hi,</p>
            <p>I am building an image based on core-image-weston.</p>
            <p>I would like to use only wayland backend, thus I defined
              in my machine&#39;s configuration:</p>
            <blockquote>
              <p>DISTRO_FEATURES_append =3D &quot; wayland&quot;<br>
                DISTRO_FEATURES_remove =3D &quot; x11&quot;</p>
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
                | Package &#39;x11&#39;, required by &#39;gl&#39;, not fou=
nd</p>
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
  </div>

</blockquote></div>

--00000000000015663e05b3c3fb45--
