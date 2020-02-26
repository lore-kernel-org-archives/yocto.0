Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web10.3551.1582691776667248286
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2020 20:36:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z0oR8a5f;
 spf=pass (domain: gmail.com, ip: 209.85.160.169, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id d9so1332668qte.12
        for <yocto@lists.yoctoproject.org>; Tue, 25 Feb 2020 20:36:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ydY6VUbw0F5OKC6Mf7EMHYrCII53Cxay/gZnEecMJuA=;
        b=Z0oR8a5fGGn4TaT2IISG6IEEGg4AfXI+K8mw7yPyFVnhY/W05p9IvQRQGNou/5tprH
         Caahu32b+PLHrWx8BV7z6YQ7kcZUoIexrfkj4m9VSw6nb5DOrUcsmnRv5qT8aYxQBvqP
         CeEtsbWev5AOGz4vm30F0d0dZp0H232VRXAjNId2wYLFCHzbvrcqVGVqTTxv42DPy7Nd
         JI9GydBFeFO495MvcxWEnIab34JDS+4LLNTB9ghQC38D8BvUkGCYsl+qntqfOfQ3bate
         UjQVjyaVcN1EDmnYAJtEZzzHOiJH5pd3O0APLxFRE+gu/TpMXn6JArbmYyltHq9a1MjU
         dlGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ydY6VUbw0F5OKC6Mf7EMHYrCII53Cxay/gZnEecMJuA=;
        b=GObhCPnDdvLQV4ICXqhQhRLaUjLut+V6/82FX3YGX/yut4g4QDcsd6Mi13WTMQSAHi
         Up8qfrfmP8hQub+T0dGfbWoqN/YpsROvH3uUQGFmW9BL0zrqsrSOhwby20+9EkPNSOwp
         ADIIybr/0Aqh0ix3Frcwpk55U3tS6xdrx6viGaw1EPe/r7SE7lO0zYHWcDHedyfrN/7Y
         wpSlEX8npGS/ZR+/cn6v12jqqljC/lvjGyIE61RfNXn6Leg/dbZJDKGcMf0cboeiEXwZ
         tEPvK+rPxbrjfGjiul7nn/kNZI3rxCPc50+v2P3I8un6l7tVdTwHfWlztSHL4wHygm20
         eN2A==
X-Gm-Message-State: APjAAAWlXxGH9Vr3MPv86TajQVx6dtAJD7hnMlGDnoidngtvJBWBUDPT
	W7ESurW1Dn5O31V5bUOu2Ysh2ZtLUK2FMYXCzh4=
X-Google-Smtp-Source: APXvYqwK8A+n1uGj8M0y754jKkXFct2vziIwJgzoXrK/B1mGTlSfUBkoQB5pqW2RUuIMimMsULC9NFa4dxVrcjsCF+Q=
X-Received: by 2002:ac8:7b29:: with SMTP id l9mr2590138qtu.141.1582691775545;
 Tue, 25 Feb 2020 20:36:15 -0800 (PST)
MIME-Version: 1.0
References: <CA+ABUwitOho6JLm+u4Rb+mxsMvqhH32Xr3yHHW=p4yo5Rbr1Lw@mail.gmail.com>
 <CAGAf8LwaJtR1OH6EKL0x=0q5KZZWwDxEb0VxSd_EucJ+S=MPMA@mail.gmail.com> <CA+ABUwgivxKteOcfqDs62qPPRM6kwSdBoMXECR3BGhvRgcF3oQ@mail.gmail.com>
In-Reply-To: <CA+ABUwgivxKteOcfqDs62qPPRM6kwSdBoMXECR3BGhvRgcF3oQ@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Wed, 26 Feb 2020 05:36:04 +0100
Message-ID: <CAGAf8LxwML4ZqTCRQXtzPUQUqu8oxDxTvDYimLqOuwOKU036aA@mail.gmail.com>
Subject: Re: [yocto] Bitbake error
To: =?UTF-8?Q?I=C3=B1igo_Vicente_Wali=C3=B1o?= <inigovicentewalino@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001205ae059f732556"

--0000000000001205ae059f732556
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

U R not the only one experiencing this problem.
https://stackoverflow.com/questions/60336978/yocto-error-perf-1-0-r9-do-co=
mpile-oe-runmake-failed-from-bitbake-image

Does this setup you have compile with core-image-minimal?

Zoran

On Mon, Feb 24, 2020 at 11:58 AM I=C3=B1igo Vicente Wali=C3=B1o <
inigovicentewalino@gmail.com> wrote:

> That patch is already applied and the error remains the same.
> Any other idea? Can the error be due to python?
>
> Thanks,
> I=C3=B1igo
>
> El vie., 21 feb. 2020 a las 15:04, Zoran (<zoran.stojsavljevic@gmail.com=
>)
> escribi=C3=B3:
>
>> Hope this can fix the issue:
>>
>> http://lists.openembedded.org/pipermail/openembedded-core/2016-October/=
127246.html
>>
>> Best Regards,
>> Zoran
>>
>> On Fri, Feb 21, 2020 at 10:16 AM I=C3=B1igo Vicente Wali=C3=B1o
>> <inigovicentewalino@gmail.com> wrote:
>> >
>> > Hi,
>> >
>> > I'm trying to build yocto project ZEUS for imx8m mini.
>> >
>> > I have this configuration EXTRA_IMAGE_FEATURES=3D =E2=80=9C ssh-serve=
r-openssh
>> tools-sdk tools-debug dbg-pkgs dev-pkgs doc-pkgs package-management
>> tools-profile=E2=80=9D in my build/conf/local.con file.
>> >
>> > But it reports error when executing bitbake core-image-base.
>> > Host environment: Ubuntu 18.04.3 LTS
>> >
>> > Can any one explain how to resolve this?
>> >
>> > The error log is below.
>> >
>> >
>> > Thanks, best regards
>> >
>> > I=C3=B1igo.
>> >
>> >
>>=20
>>
>

--0000000000001205ae059f732556
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>U R not the only one experiencing this problem.<br></=
div><div><a href=3D"https://stackoverflow.com/questions/60336978/yocto-erro=
r-perf-1-0-r9-do-compile-oe-runmake-failed-from-bitbake-image">https://stac=
koverflow.com/questions/60336978/yocto-error-perf-1-0-r9-do-compile-oe-runm=
ake-failed-from-bitbake-image</a></div><div><br></div><div>Does this setup =
you have compile with core-image-minimal?</div><div><br></div><div>Zoran<br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, Feb 24, 2020 at 11:58 AM I=C3=B1igo Vicente Wali=C3=B1o &lt;=
<a href=3D"mailto:inigovicentewalino@gmail.com">inigovicentewalino@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">That patch is already applied and the error remains the s=
ame.<br><div>Any other idea?=C2=A0Can the error be due to python?</div><div=
><br></div><div>Thanks,</div><div>I=C3=B1igo</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El vie., 21 feb. 2020 a l=
as 15:04, Zoran (&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" targe=
t=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt;) escribi=C3=B3:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">Hope this can fix the is=
sue:<br>
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
</blockquote></div>

--0000000000001205ae059f732556--
