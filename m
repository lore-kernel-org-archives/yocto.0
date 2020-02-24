Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web09.18993.1582541890390753514
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Feb 2020 02:58:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MUW0fHgJ;
 spf=pass (domain: gmail.com, ip: 209.85.208.43, mailfrom: inigovicentewalino@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id j17so11400630edp.3
        for <yocto@lists.yoctoproject.org>; Mon, 24 Feb 2020 02:58:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RyaOQfGGEXMLKE/chohZ54tCR8Z3tsVARbERpoWKGyo=;
        b=MUW0fHgJLkGFkcpDvIciYl+Hp1S2q0igUjr/sklBnw4lPgHNIlJz4aBWBmrpoir96Q
         Uq3Xfrp/D6S+LF3qSu0qOTdPMy8zEeuVpIPY2mN9o1ZX9o8v/Jcd6RXm2As6GwR8QSp2
         eNreVvdzoZQlZHEd9qLRYuVilnjAqtRUT2/TmRHdxRE9nggBp2DN6v1/glBXdwcxaODB
         buAVAOnZBTShSO3T0KGmcRfkTWAdV+Oeu0GWLPfFeLbGdj7mii6fRTM+j2961RXqAyd/
         9sQUrHIt5Xu7UCSX9jeE500a5rqp5XrS+cakgY49K4rrVRST8hXpk79hTBOYfyWyW2FJ
         aODg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RyaOQfGGEXMLKE/chohZ54tCR8Z3tsVARbERpoWKGyo=;
        b=i0o8p7uue27FqZtGbSMTAP5dM6AbogWADuFb/5mccknRaCcALQzpi5ofeSbHi9s4DM
         KJb/qtQlfeDawmGWweueIX2cm5NIJuuWDfUa6NJbdpHLOwUiZy51rSC79HXdo0WNfqJS
         J2McYnZoBbsO1Wg8byJnDx/YkUKM1hxew6X/ZxBHqaGH7ttllvDOWlsw3as+V9Jsp+2X
         RVJFEu5l7Ue9A/WD6ce8Xbea1aWkS7sRLOaCSU4q2ZCQDaK8JvktY+eSRwODi0r5rSiP
         sCCewNtI5HbyXt5sIddC88b17h2X3daUgOpVoTPmqrOJi/ck+4cmf4YllVw0ILiNqgxu
         HtqA==
X-Gm-Message-State: APjAAAUexLN0RDlUo27H0TCFX/ttd/z1E1jFd4rat4FzXDqeK4x7KjGE
	emwmlVvlVWg7f1VIo6O6RUlx7iNxqAoPTMNKZ3w=
X-Google-Smtp-Source: APXvYqx+jDJIvJcLNKPecT5HYe0Ut8APYvAsgoTVthDGzGu+ASeLHT6CtnT3N0U3aQ/+W+ioZbDujuJJfV4tQP7RE8M=
X-Received: by 2002:aa7:c994:: with SMTP id c20mr45891450edt.113.1582541888870;
 Mon, 24 Feb 2020 02:58:08 -0800 (PST)
MIME-Version: 1.0
References: <CA+ABUwitOho6JLm+u4Rb+mxsMvqhH32Xr3yHHW=p4yo5Rbr1Lw@mail.gmail.com>
 <CAGAf8LwaJtR1OH6EKL0x=0q5KZZWwDxEb0VxSd_EucJ+S=MPMA@mail.gmail.com>
In-Reply-To: <CAGAf8LwaJtR1OH6EKL0x=0q5KZZWwDxEb0VxSd_EucJ+S=MPMA@mail.gmail.com>
From: =?UTF-8?B?ScOxaWdvIFZpY2VudGUgV2FsacOxbw==?= <inigovicentewalino@gmail.com>
Date: Mon, 24 Feb 2020 11:58:03 +0100
Message-ID: <CA+ABUwgivxKteOcfqDs62qPPRM6kwSdBoMXECR3BGhvRgcF3oQ@mail.gmail.com>
Subject: Re: [yocto] Bitbake error
To: Zoran <zoran.stojsavljevic@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000020de3f059f503f32"

--00000000000020de3f059f503f32
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That patch is already applied and the error remains the same.
Any other idea? Can the error be due to python?

Thanks,
I=C3=B1igo

El vie., 21 feb. 2020 a las 15:04, Zoran (<zoran.stojsavljevic@gmail.com>)
escribi=C3=B3:

> Hope this can fix the issue:
>
> http://lists.openembedded.org/pipermail/openembedded-core/2016-October/1=
27246.html
>
> Best Regards,
> Zoran
>
> On Fri, Feb 21, 2020 at 10:16 AM I=C3=B1igo Vicente Wali=C3=B1o
> <inigovicentewalino@gmail.com> wrote:
> >
> > Hi,
> >
> > I'm trying to build yocto project ZEUS for imx8m mini.
> >
> > I have this configuration EXTRA_IMAGE_FEATURES=3D =E2=80=9C ssh-server=
-openssh
> tools-sdk tools-debug dbg-pkgs dev-pkgs doc-pkgs package-management
> tools-profile=E2=80=9D in my build/conf/local.con file.
> >
> > But it reports error when executing bitbake core-image-base.
> > Host environment: Ubuntu 18.04.3 LTS
> >
> > Can any one explain how to resolve this?
> >
> > The error log is below.
> >
> >
> > Thanks, best regards
> >
> > I=C3=B1igo.
> >
> >
>=20
>

--00000000000020de3f059f503f32
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That patch is already applied and the error remains the sa=
me.<br><div>Any other idea?=C2=A0Can the error be due to python?</div><div>=
<br></div><div>Thanks,</div><div>I=C3=B1igo</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El vie., 21 feb. 2020 a la=
s 15:04, Zoran (&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com">zoran.=
stojsavljevic@gmail.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Hope this can fix the issue:<br>
<a href=3D"http://lists.openembedded.org/pipermail/openembedded-core/2016-=
October/127246.html" rel=3D"noreferrer" target=3D"_blank">http://lists.open=
embedded.org/pipermail/openembedded-core/2016-October/127246.html</a><br>
<br>
Best Regards,<br>
Zoran<br>
<br>
On Fri, Feb 21, 2020 at 10:16 AM I=C3=B1igo Vicente Wali=C3=B1o<br>
&lt;<a href=3D"mailto:inigovicentewalino@gmail.com" target=3D"_blank">inig=
ovicentewalino@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m trying to build yocto project ZEUS for imx8m mini.<br>
&gt;<br>
&gt; I have this configuration EXTRA_IMAGE_FEATURES=3D =E2=80=9C ssh-serve=
r-openssh tools-sdk tools-debug dbg-pkgs dev-pkgs doc-pkgs package-manageme=
nt tools-profile=E2=80=9D in my build/conf/local.con file.<br>
&gt;<br>
&gt; But it reports error when executing bitbake core-image-base.<br>
&gt; Host environment: Ubuntu 18.04.3 LTS<br>
&gt;<br>
&gt; Can any one explain how to resolve this?<br>
&gt;<br>
&gt; The error log is below.<br>
&gt;<br>
&gt;<br>
&gt; Thanks, best regards<br>
&gt;<br>
&gt; I=C3=B1igo.<br>
&gt;<br>
&gt; <br>
<br>
</blockquote></div>

--00000000000020de3f059f503f32--
