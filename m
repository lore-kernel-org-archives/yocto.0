Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
 by mx.groups.io with SMTP id smtpd.web09.35422.1628854707158393511
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Aug 2021 04:38:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NYHUcvYX;
 spf=pass (domain: gmail.com, ip: 209.85.217.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f41.google.com with SMTP id d16so4119418vsf.12
        for <yocto@lists.yoctoproject.org>; Fri, 13 Aug 2021 04:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8oloI9CaXkOPW87Nj0WbOlBW7qRlRHfXZVxE2D2FX0M=;
        b=NYHUcvYXYZZbz5kS+y0EZJ8RWbAIXwqw2luXXJ8kzgDf4yidCdEntIYUMLX/NKFCKM
         8oA0T5vZa0LAqnxBL4c1TukjMFU0YQlwHpYKAAeixs/0Sw67pcEkiIW/1rjij3SujjCx
         Y+yC0hyhL8NNNN8jXT3CGcM0MLzLD6HefNB/NJuCK6JICodpZQjDb/TLD5lJBEHOq33F
         mcI3cEsfLwRKlj90i3UFmoVPc4uUsRs78Y2cU5O84Zou5NT/R5VX2ohwEqJEA5LGRrrX
         OWP9QXGbzUKFXLLs1pJSo+o8p3uMQsgSbOrcyarwiE/NNcXrYg+zt/zAGB4V5yyO1Klv
         EPLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8oloI9CaXkOPW87Nj0WbOlBW7qRlRHfXZVxE2D2FX0M=;
        b=IjxytyJKLb0VzmK/JF92NijpzwzqfhAMGBjr5F67DcUyF9TiGgvpG6BgfJ7bgt62xL
         vC78tyHCMetIGk/sUREhab4H2r35HGMea3h2Mw9/v/Bn4jNkXbszjoX6Dl2roZR9O1b2
         mJD3eeMplov10a+Zeb9YQ0+HmYtfXymmSfXYJ4vgM3nOCt5H47V8KJdwdRKEGLPNT6bB
         Zpiav15n5vqlVeZ0QSREcXhT4zN/jmgv+yJcHUJYSofJdDv0pmbfWeB9Z6DgiInuaqnQ
         Cf5uy+01YdXb/9BZWuLGSU6yYZzPPLQYsgq8RCMKdgh6IbwV/tRPprJtDQwB8ZiItQnn
         NXMQ==
X-Gm-Message-State: AOAM53385ghqterf2G/0YPf34Ru4h41UFGMI/8oqbzkV0KOByvD9SXH/
	cazxr4ycPIks5RThRluzCDh9vkGv19AmJ/Hr/EI=
X-Google-Smtp-Source: ABdhPJwq1R29r3om9AR/yY1+8HQk0gBj17lh/l1n67m5gt2+IK164+DpWa92xsCr+INO9Xv3vTGADF4B3fpA1Su/fQ8=
X-Received: by 2002:a67:e981:: with SMTP id b1mr1011555vso.41.1628854706246;
 Fri, 13 Aug 2021 04:38:26 -0700 (PDT)
MIME-Version: 1.0
References: <nFHq.1628778490742042939.wQz0@lists.yoctoproject.org>
 <6a92b219-c311-7690-e2e8-e02be225e4ec@gmail.com> <CAAJeOA9U0mPaHOpwZSuDwqiHbHXYWf-zuteTZBD46ys-s+Vc3A@mail.gmail.com>
In-Reply-To: <CAAJeOA9U0mPaHOpwZSuDwqiHbHXYWf-zuteTZBD46ys-s+Vc3A@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 13 Aug 2021 13:38:15 +0200
Message-ID: <CANNYZj8Z2MgyV+2u+Ds=1GNWcR8O8aD_WGnUkhLgXHqS92-CTg@mail.gmail.com>
Subject: Re: [yocto] Unable to add gdbserver to the Yocto build #yocto
To: Ashutosh Naik <ashutosh.naik@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000281a4005c96f4aa6"

--000000000000281a4005c96f4aa6
Content-Type: text/plain; charset="UTF-8"

Thud has not been supported for a very long time actually. To really find
out what is happening, it would help if you make an archive of
tmp/work/../gdb/ and put it somewhere for inspection.

Alex

On Fri, 13 Aug 2021 at 13:32, Ashutosh Naik <ashutosh.naik@gmail.com> wrote:

>
>
> On Fri, Aug 13, 2021 at 2:16 AM Khem Raj <raj.khem@gmail.com> wrote:
>
>>
>>
>> whats your target architecture ? sometimes gdbserver port may not be
>> available for a given arch.
>>
>>
>> Hi Alexander and KhemRaj,
>
> I am using the Yocto "thud" version which has long term support.
>
> The architecture used is aarch64-oe-linux
>
> The gdb directory or executables were not created in
> tmp/work/.../gdb/deploy-*/ (the gdb WORKDIR), nor in tmp/deploy/...
> (packages deploy dir), and neither in tmp/work/..../machine-image/
> (image-specific package repo), although the compilation went through
> successfully.
>
> Could it be that the architecture "aarch64-oe-linux" is not supported for
> gdbserver in Yocto "thud" ?
>
> Regards
> Ash
>
>
>
> 
>
>

--000000000000281a4005c96f4aa6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thud has not been supported for a very long time actu=
ally. To really find out what is happening, it would help if you make an ar=
chive of tmp/work/../gdb/ and put it somewhere for inspection.</div><div><b=
r></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Fri, 13 Aug 2021 at 13:32, Ashutosh Naik &lt;=
<a href=3D"mailto:ashutosh.naik@gmail.com">ashutosh.naik@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Aug 13, 2021 at 2:16 AM Khem Raj &lt;=
<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
br><br>
whats your target architecture ? sometimes gdbserver port may not be <br>
available for a given arch.<br>
<br><br></blockquote>Hi Alexander and KhemRaj,<br><br>I am using the Yocto =
&quot;thud&quot; version which has long term support.<br><br>The architectu=
re used is aarch64-oe-linux<br><br>The gdb directory or executables were no=
t created in tmp/work/.../gdb/deploy-*/ (the gdb WORKDIR), nor in tmp/deplo=
y/... (packages deploy dir), and neither in tmp/work/..../machine-image/ (i=
mage-specific package repo), although the compilation went through successf=
ully.<br><br>Could it be that the architecture &quot;aarch64-oe-linux&quot;=
 is not supported for gdbserver in Yocto &quot;thud&quot; ?<br><br>Regards<=
br>Ash<br><br><div>=C2=A0</div></div></div>
<br>
<br>
<br>
</blockquote></div>

--000000000000281a4005c96f4aa6--
