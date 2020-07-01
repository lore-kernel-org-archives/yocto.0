Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
 by mx.groups.io with SMTP id smtpd.web10.5160.1593631801856291966
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 12:30:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q2xJfJCK;
 spf=pass (domain: gmail.com, ip: 209.85.166.182, mailfrom: ticotimo@gmail.com)
Received: by mail-il1-f182.google.com with SMTP id e18so11386595ilr.7
        for <yocto@lists.yoctoproject.org>; Wed, 01 Jul 2020 12:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=t151QfAxm3lnTnXcBhKsM7A3pbb4zT1XKVVszRTzkNI=;
        b=Q2xJfJCKXkXbQd7sV1/F0FywQtW8BZiIf/L9Fx/f2C3xqmv7Euy4UrVhjW943l5j9H
         aNqbrcg8Y+13OeIovVzhNDkm5EJw0lSi1xm4bq0Bkhs/x4//Z6vLY3aQX7vv8sShImax
         aQ+0klby0TTAJhPFWrnJx3SrVTyLfqvwC33KJDKqHntSK2OrApmj/+c3fEuYeJXLnumS
         pviLbU2IRZiwRztLatJSwt6+mBdF6emCpGAy313tl2TcvHpYp2Doz5QP1WfB+3VpPP72
         G2GiCYbrU4ZIG9WmOGq2M+akoKlORcO25AZb7FG0YFLHTqWLwQy9KQ2940S2xnYc2q+M
         3xDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=t151QfAxm3lnTnXcBhKsM7A3pbb4zT1XKVVszRTzkNI=;
        b=LmgkiovYdSGXEy30GpgzbrEWcuv1WAjahISciTn+DmWC9Xvcqf/CgUZu1Uk1s3kdCA
         JP4c1MsgkIlbjJMPDHtTx5bZoRZ2Z9LsZKw7E0yFCWJjczT5XfIjmh4S+Z9u3sdA7dEx
         7/pY6Kk12xNV9uDz/b7E1qtUjqsUyewVgPHAFHSJyHvRGdog4hfUKISf9MyCN3T7lY+2
         VjQEqF1XUL7wDfo6qjZDCdHGBJ71dk7loLuXI9TKrBlC7YqtHhkc/y4phGfJz7ibBr5s
         dsILLc6ifXtVqoL77y0lsycbz/0VLPYkgX4lhSiLZJwMH1XiAGRuDrZd/qqPI4NZNnhE
         J17g==
X-Gm-Message-State: AOAM530HSOtSJDKqHEU9wc54+XFtBvGqeMBjFb8KtrqqA6FChfO+9gvH
	51cPrIuV3YfBW+l97GdvJKspZSlPkHSsH6EZjsw=
X-Google-Smtp-Source: ABdhPJxdPeBviC+2hGOEow4Bawe+mMtDjDHVNBephHabwc0SHMA6CBGGKK8mwYRixKr7HG6xqhHX50iZ3Pv/1jmmX98=
X-Received: by 2002:a92:9108:: with SMTP id t8mr2842961ild.170.1593631801105;
 Wed, 01 Jul 2020 12:30:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200701154113.jfyk4t6wrsvf5fme@qschulz> <300.1593619499092825565@lists.yoctoproject.org>
In-Reply-To: <300.1593619499092825565@lists.yoctoproject.org>
From: "Tim Orling" <ticotimo@gmail.com>
Date: Wed, 1 Jul 2020 12:29:50 -0700
Message-ID: <CANx9H-CLcaknAutPetZTSOSEurEhJsv0AaVF2QRQcChZh=9bKQ@mail.gmail.com>
Subject: Re: [yocto] #yocto
To: Pankaj Vinadrao Joshi <pankaj.vj@exaleapsemi.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000068831705a9665153"

--00000000000068831705a9665153
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The key error is this:
=E2=80=9C
ERROR: Nothing PROVIDES 'core-image-sato'
core-image-sato was skipped: 'package-managementtools-debug' in
IMAGE_FEATURES is not a valid image feature.
=E2=80=9C
So you need to figure out what is happening there.


On Wed, Jul 1, 2020 at 9:05 AM Pankaj Vinadrao Joshi <
pankaj.vj@exaleapsemi.com> wrote:

> Hi Quentin,
> Thanks for response
> I didnt got solution yet as previously u suggested to remove
> hwcodecstools-debug but i after i faced one more issue with other
> features from core-image-sato.bb file but simply removing from there is
> ok,i did not got like why i am getting like so error which i didnt got
> earlier with the same image.Also kindly suggest why after logging trough
> ssh its asking for password though i have not set any password,where cou=
ld
> be the problem??
>=20
>

--00000000000068831705a9665153
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">The key error is this:</div></div><div dir=3D"auto">=
=
=E2=80=9C</div><div dir=3D"auto"><div style=3D"font-size:1rem;color:rgb(49=
,49,49);word-spacing:1px;line-height:1.42857" dir=3D"auto"><span style=3D"f=
ont-size:1rem">ERROR: Nothing PROVIDES &#39;core-image-sato&#39;</span><br>=
</div><div style=3D"font-size:1rem;color:rgb(49,49,49);word-spacing:1px;lin=
e-height:1.42857" dir=3D"auto">core-image-sato was skipped: &#39;package-ma=
nagementtools-debug&#39; in IMAGE_FEATURES is not a valid image feature.=C2=
=
=A0</div><div style=3D"font-size:1rem;color:rgb(49,49,49);word-spacing:1px=
;line-height:1.42857" dir=3D"auto">=E2=80=9C</div></div><div><div dir=3D"au=
to">So you need to figure out what is happening there.</div><div dir=3D"aut=
o"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Jul 1, 2020 at 9:05 AM Pankaj  Vinadrao Joshi &lt;<a href=3D=
"mailto:pankaj.vj@exaleapsemi.com">pankaj.vj@exaleapsemi.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">Hi=C2=A0<span style=3D"white-space=
:pre-wrap">Quentin,<br>Thanks for response<br>I didnt got solution yet as p=
reviously u suggested to remove </span><span style=3D"font-weight:bold">hwc=
odecstools-debug</span><span style=3D"white-space:pre-wrap"> but i after i =
faced one more issue with other features from <a href=3D"http://core-image-=
sato.bb" target=3D"_blank">core-image-sato.bb</a> file but simply removing =
from there is ok,i did not got like why i am getting like so error which i =
didnt got earlier with the same image.Also kindly suggest why after logging=
 trough ssh its asking for password though i have not set any password,wher=
e could be the problem?? <br></span>
<br>
</blockquote></div></div>

--00000000000068831705a9665153--
