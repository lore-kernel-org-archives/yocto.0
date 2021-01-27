Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
 by mx.groups.io with SMTP id smtpd.web08.5447.1611738680698907351
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 01:11:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=F6+V7BIG;
 spf=pass (domain: gmail.com, ip: 209.85.219.169, mailfrom: amayajindal786@gmail.com)
Received: by mail-yb1-f169.google.com with SMTP id y128so1334779ybf.10
        for <yocto@lists.yoctoproject.org>; Wed, 27 Jan 2021 01:11:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CG1OI6e26k4ly2U9GOQgl3fWZHLFm/CxZK7spjUmPGw=;
        b=F6+V7BIGMdqor/ryo9N/UyCx7zklhKf5kZEhPw6wVvu+NLY9z9IlCA8AM3Ged721bK
         3KUcWnfUbzF/+A0ACHByTYHUeypIzHRGwPFTWo2v/4Xu76p7eSgsAqwyKE+6ZsfGAaZK
         C3o/C6lsFTqMuQj9ImH/nnypFzLG76YO9B3vbu8rM32I47LXvdcvtrhJRIJVBSyTofNk
         +yZxGUgp0FtNo0EukZCH54u1+kugrl9B+xoBZZk++A/sZw8yx9Xz3LnJDAFtnTIIRo8P
         Wt9erfSQHx1uyC/orNZMr8CIE6cPe/1uApuTiwIGlAIdGKK2XiGp6tEAQAOJo0M51+jW
         njVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CG1OI6e26k4ly2U9GOQgl3fWZHLFm/CxZK7spjUmPGw=;
        b=DsHS0hK86rusiMIe0tnsVsPUj94ZQaov03ZKRyzgaIT5gHK2Wcq0jbU8/FGznZfQnm
         0ILaiq+6AmktzNSCauP6/RR1GC28UsiLn6VIFzQZZattLf6o8W4osTlgkO6NpW3zUOZP
         fNGV7ujKaEYf39g31lTIDgEDgaflaBEkyNYqMvVFSNV59MmjXGpDVRZXwCGVnbJ82ojc
         MZXuXgOrt5SabSn0VWyTIcJB/5lajG1FJzfqm3+/1qL8O6+2C4HQF9FyHgC/GYGfQ2Xz
         OtVepgrIcrnZ5XRIxb6UgP8K4zJJILeXXTgEb1mcqULkh2aOhxNpYWaVh7v2q2uFQw4P
         vJuQ==
X-Gm-Message-State: AOAM531jJ4oFn1XDv0uyLJ92kWgi/70ux35GT36zOHV5ax75XK2fM+oC
	pKyH/xHZhGGFY4PWxD4w1DI9Uan8toJ0JUgXNMw=
X-Google-Smtp-Source: ABdhPJzIsMgTSVgowgvYIiMNsQwjLJ0SsE+gDTvVnhQttrhJAWTkuuANMQCTTOImi4GGoqm/d2a+RZIAgOKQoBxDjNo=
X-Received: by 2002:a25:3622:: with SMTP id d34mr14904673yba.384.1611738679883;
 Wed, 27 Jan 2021 01:11:19 -0800 (PST)
MIME-Version: 1.0
References: <CAHXFBWsgp+B1kt_vq2N1+pS0WMQifz-vFg9xPzNsokhiJz8Weg@mail.gmail.com>
 <dfbc9dbd-7fc9-ce3e-ac4e-261f1b6380e6@gmail.com>
In-Reply-To: <dfbc9dbd-7fc9-ce3e-ac4e-261f1b6380e6@gmail.com>
From: "amaya jindal" <amayajindal786@gmail.com>
Date: Wed, 27 Jan 2021 14:38:32 +0530
Message-ID: <CAHXFBWsZ8+peaZg1CTqdCZ-zZ+Ek16=ok9X1ropYyFnMjVRJKA@mail.gmail.com>
Subject: Re: [yocto] Points to consider while moving to new yocto versions
To: robert.berger.yocto.user@gmail.com
Cc: yocto <yocto@yoctoproject.org>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007c3dde05b9de277a"

--0000000000007c3dde05b9de277a
Content-Type: text/plain; charset="UTF-8"

Thankyou for your comments and guidance.

Currently i am trying to first move from krogoth version of yocto to rocko
version first that will suffice our requirements but i need to understand
whether any major difference is there in gcc 4.9.3 vs gcc 6.4. As krogoth
is usin gcc 4.9.3 /5.3 recipe but rocko is using 6.4/7.x as recipe for gcc
source compilation. Please guide.

Regards,
Rohit Jindal

On Mon, Jan 25, 2021 at 6:16 PM Robert Berger@yocto.user <
robert.berger.yocto.user@gmail.com> wrote:

> Hi,
>
> My comments are in-line
>
> On 25/01/2021 10:07, amaya jindal wrote:
> > Hi All,
> >
> > We are planning to move to New yocto from current one that is krogoth
> > yocto to some updated one.
>
> I would consider it "best practice" to somewhat try to stay up to date
> with recent yocto versions and plan for this from the beginning of your
> project.
>
> What I mean is to have a "stable release" and a "next release" which is
> being used in your nightly builds and tests.
>
> This will make it significantly easier to make version upgrades.
>
> > We are not thinking to move to gates-garth or
> > some other major release but the releases than can have easily support
> > for arm.
>
> I am not sure what you mean by that?
>
> Which versions make it easier/more difficult to support arm?
>
> It's more a question of which chip/kernel/boot loader,...
>
> >
> > Please support and help.
> >
> > Points need to take care to port to new yocto version.
>
> Ssince you use a completely outdated and end of life version[1] it might
> require quite some effort to update, but through pain we learn ;)
>
> [1] https://wiki.yoctoproject.org/wiki/Releases
>
> Which chip do you use?
>
> Is it supported by an upstream kernel/boot loader?
>
> Which (additional) layers do you use?
>
> Are these layers supported by the same version as the Yocto version you
> want to move to?
>
> How about your own recipes?
>
> Are they compatible with upstream yocto?
>
> >
> > Regards,
> > Rohit
>
> Regards,
>
> Robert
>
> >
> >
> > 
> >
>
>

--0000000000007c3dde05b9de277a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thankyou for your comments and guidance.=C2=A0<div><br></d=
iv><div>Currently i am trying to first move from krogoth version of yocto t=
o rocko version first that will suffice our requirements but i need to unde=
rstand whether any major difference is there in gcc 4.9.3 vs gcc 6.4. As kr=
ogoth is usin=C2=A0gcc 4.9.3 /5.3 recipe but rocko is using=C2=A06.4/7.x as=
 recipe for gcc source compilation. Please guide.</div><div><br></div><div>=
Regards,</div><div>Rohit Jindal</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 25, 2021 at 6:16 PM Robert=
 Berger@yocto.user &lt;<a href=3D"mailto:robert.berger.yocto.user@gmail.com=
">robert.berger.yocto.user@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
My comments are in-line<br>
<br>
On 25/01/2021 10:07, amaya jindal wrote:<br>
&gt; Hi All,<br>
&gt; <br>
&gt; We are planning to move to New yocto from current one that is krogoth=
 <br>
&gt; yocto to some updated one. <br>
<br>
I would consider it &quot;best practice&quot; to somewhat try to stay up t=
o date <br>
with recent yocto versions and plan for this from the beginning of your <b=
r>
project.<br>
<br>
What I mean is to have a &quot;stable release&quot; and a &quot;next relea=
se&quot; which is <br>
being used in your nightly builds and tests.<br>
<br>
This will make it significantly easier to make version upgrades.<br>
<br>
&gt; We are not thinking to move to gates-garth or <br>
&gt; some other major release but the releases than can have easily suppor=
t <br>
&gt; for arm.<br>
<br>
I am not sure what you mean by that?<br>
<br>
Which versions make it easier/more difficult to support arm?<br>
<br>
It&#39;s more a question of which chip/kernel/boot loader,...<br>
<br>
&gt; <br>
&gt; Please support and help.<br>
&gt; <br>
&gt; Points need to take care to port to new yocto version.<br>
<br>
Ssince you use a completely outdated and end of life version[1] it might <=
br>
require quite some effort to update, but through pain we learn ;)<br>
<br>
[1] <a href=3D"https://wiki.yoctoproject.org/wiki/Releases" rel=3D"norefer=
rer" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Releases</a><br>
<br>
Which chip do you use?<br>
<br>
Is it supported by an upstream kernel/boot loader?<br>
<br>
Which (additional) layers do you use?<br>
<br>
Are these layers supported by the same version as the Yocto version you <b=
r>
want to move to?<br>
<br>
How about your own recipes?<br>
<br>
Are they compatible with upstream yocto?<br>
<br>
&gt; <br>
&gt; Regards,<br>
&gt; Rohit<br>
<br>
Regards,<br>
<br>
Robert<br>
<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div>

--0000000000007c3dde05b9de277a--
