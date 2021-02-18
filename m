Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
 by mx.groups.io with SMTP id smtpd.web11.5676.1613648837267147667
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 03:47:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UEpeAc/m;
 spf=pass (domain: gmail.com, ip: 209.85.166.170, mailfrom: maaloulsafouane@gmail.com)
Received: by mail-il1-f170.google.com with SMTP id p15so1177675ilq.8
        for <yocto@lists.yoctoproject.org>; Thu, 18 Feb 2021 03:47:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=pR1J1dEwLkK8nG25le+Md54954v4cgdHA4s2nFAt6+s=;
        b=UEpeAc/mt9eRIyG0NKTw9ZokqMGEs4guF74G4WyjpWingBmopGjp63TUFb53eTPqbN
         LcJxZ/FLDzE9eSgFNBv0CyN3LUrN8gdCPKCkAATy7aI+4l36zANdtLBFlWsgLF+Y2CLm
         EAxXhEwzrsGGbP1IwbRazEQVckIDYLFndEy4IaWPwp0NHOfy4OkJ5ZOJGdHAwRXWuTaA
         xFuLykvuz8r0QOoU8bceHGa3S+cNOZz+yvPpBVgh4UOnGA6d+ZwqUGv6l0zefbzUdn6Y
         38B8s0mdNbcWNDXwFZcKDfFIlaOM/l/36kBNIQL+Qizec0NjtRObJ87PW20Pe2ovQe7b
         IEqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=pR1J1dEwLkK8nG25le+Md54954v4cgdHA4s2nFAt6+s=;
        b=UOjs6Gv3suVjRTkV14GlXjQX/Uyp3Yr4K0A78RWZ0UF1GaLbiiDrwIGr4yJQRib89Z
         wzekCaeQN9e/gg4sYsEZ123zIwMWqQiS0H57K8SESM0sbORZzqShzkhTVkG1vMw6NWRk
         BF55xSxPRgQhyB/lQy3sQDDq/pAeTASXWvp5nfQkoQiI/XDzl6ArM9A2Bl57PSOKBoxN
         R40YNgyKkyUyg6lWyf/vq/jgiXdHcQTqAGcWH6i1jyLuW2P9zAtaMSS1RtlWKGDd9jaS
         Wl7gwPEevSLca8xTa/SlLtNnayv4oDGQ6gSUAtqOcl29rGXSEAHdhjkGL3mQw692QhMQ
         HUSw==
X-Gm-Message-State: AOAM533fUZjTDF6+oYaXVyHxvUjjKtKU7JDSVhdRWc1rNLEQIuo4R6N2
	sozOpQhWbHPyl8/SU+nHbtZqhHiHsr1n7pbRgi2MC9UrBmY=
X-Google-Smtp-Source: ABdhPJzrvNCZFPOtOLtwDdhofEUNUQ/mzfr+JCkK4xrotLQg3s8uGhs5nZ61KjyiKUuIbqsLAiiY66ot8r8Kq6Ku/pg=
X-Received: by 2002:a92:d11:: with SMTP id 17mr3576443iln.57.1613648836129;
 Thu, 18 Feb 2021 03:47:16 -0800 (PST)
MIME-Version: 1.0
References: <OHWd.1613555997180740145.8Ytp@lists.yoctoproject.org>
 <CAGAf8LxoGwaocSUq04jqar4hQH2NiZ2DdumN5dpnQm4dr2wkew@mail.gmail.com> <CAEj=YVJ6z6etLaMrFUXREfeyFhaS-UvnnDh19zUor37eAPGnvQ@mail.gmail.com>
In-Reply-To: <CAEj=YVJ6z6etLaMrFUXREfeyFhaS-UvnnDh19zUor37eAPGnvQ@mail.gmail.com>
From: "safouane maaloul" <maaloulsafouane@gmail.com>
Date: Thu, 18 Feb 2021 12:47:05 +0100
Message-ID: <CAEj=YVKgVkhB0UMuRqb2=b5A2qsfWqEFfkhMnpTt+Vjf5FZUyw@mail.gmail.com>
Subject: Re: [yocto] #av1 #armv6 #raspberrypi #neon
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ab765d05bb9ae5a8"

--000000000000ab765d05bb9ae5a8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mer. 17 f=C3=A9vr. 2021 =C3=A0 13:18, safouane maaloul <maaloulsafouane@=
gmail.com>
a =C3=A9crit :

> Yeah i know the problem is i am using armv6 (raspberry pi zero w) and
> there isn=E2=80=99t that option so i need a workaround ?
>
> Best regards,
>
> Safouane.Maaloul
>
> Le mer. 17 f=C3=A9vr. 2021 =C3=A0 13:13, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> a =C3=A9crit :
>
>> > ...compile  error "compiling simd-neon.h requires -mfpu=3D
>> > neon or equivalent"...
>>
>> IIRC, this has to do with the platform chosen.
>>
>> I know that for armv7 there are two types of machine:
>> MACHINE ?=3D "armv7" (FP library in SW)
>> MACHINE ?=3D "armv7hf" (hard FP =3D neon)
>>
>> I guess you did set up the MACHINE variable with postfix fp, most
>> probably.
>>
>> My 2 cent worth answer,
>> Zee
>> _______
>>
>>
>> On Wed, Feb 17, 2021 at 11:00 AM safouane maaloul
>> <maaloulsafouane@gmail.com> wrote:
>> >
>> > Hello folks,
>> >
>> > I have an issue integrating av1  in yocto. I get the  compile  error
>> "compiling simd-neon.h requires -mfpu=3Dneon or equivalent". The proble=
m is
>> that i use armv6 (raspberrypi zero w) so i can't exactly do that. Anyon=
e
>> have a workaround this problem ?
>> >
>> > Best regards,
>> >
>> > Safouane.Maaloul
>> >=20
>> >
>>
> --
> *SAFOUANE MAALOUL*
>
> *maaloulsafouane@gmail.com <maaloulsafouane@gmail.com>*
>
>

--=20
*SAFOUANE MAALOUL*

*maaloulsafouane@gmail.com <maaloulsafouane@gmail.com>*

--000000000000ab765d05bb9ae5a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">Le=C2=A0mer. 17 f=C3=A9vr. 2021 =C3=A0=C2=A013:18, saf=
ouane maaloul &lt;<a href=3D"mailto:maaloulsafouane@gmail.com">maaloulsafou=
ane@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"auto">Yeah i know the problem is i am=
 using armv6 (raspberry pi zero w) and there isn=E2=80=99t that option so i=
 need a workaround ?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Bes=
t regards,</div><div dir=3D"auto"><br></div><div dir=3D"auto">Safouane.Maal=
oul =C2=A0</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">Le=C2=A0mer. 17 f=C3=A9vr. 2021 =C3=A0 13:13, Zoran Stojsa=
vljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_bla=
nk">zoran.stojsavljevic@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">&gt; ...compile=C2=A0 error &=
quot;compiling simd-neon.h requires -mfpu=3D<br>
&gt; neon or equivalent&quot;...<br>
<br>
IIRC, this has to do with the platform chosen.<br>
<br>
I know that for armv7 there are two types of machine:<br>
MACHINE ?=3D &quot;armv7&quot; (FP library in SW)<br>
MACHINE ?=3D &quot;armv7hf&quot; (hard FP =3D neon)<br>
<br>
I guess you did set up the MACHINE variable with postfix fp, most probably=
.<br>
<br>
My 2 cent worth answer,<br>
Zee<br>
_______<br>
<br>
<br>
On Wed, Feb 17, 2021 at 11:00 AM safouane maaloul<br>
&lt;<a href=3D"mailto:maaloulsafouane@gmail.com" target=3D"_blank">maaloul=
safouane@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello folks,<br>
&gt;<br>
&gt; I have an issue integrating av1=C2=A0 in yocto. I get the=C2=A0 compi=
le=C2=A0 error &quot;compiling simd-neon.h requires -mfpu=3Dneon or equival=
ent&quot;. The problem is that i use armv6 (raspberrypi zero w) so i can&#3=
9;t exactly do that. Anyone have a workaround this problem ?<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Safouane.Maaloul<br>
&gt; <br>
&gt;<br>
</blockquote></div></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><font co=
lor=3D"#000000"><span><b>SAFOUANE MAALOUL</b></span></font><div><span><b><u=
 style=3D"background-color:rgb(255,255,255)"><font color=3D"#0b5394"><a hre=
f=3D"mailto:maaloulsafouane@gmail.com" target=3D"_blank">maaloulsafouane@gm=
ail.com</a></font></u><span style=3D"color:rgb(0,0,0);background-color:rgb(=
255,255,255)"><br></span></b></span><div><span style=3D"background-color:rg=
b(255,255,255)"><font color=3D"#000000"><b><br></b></font></span></div></di=
v></div></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr"><font color=3D"#000000"><span>=
<b>SAFOUANE MAALOUL</b></span></font><div><span><b><u style=3D"background-c=
olor:rgb(255,255,255)"><font color=3D"#0b5394"><a href=3D"mailto:maaloulsaf=
ouane@gmail.com" target=3D"_blank">maaloulsafouane@gmail.com</a></font></u>=
<span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"><br></sp=
an></b></span><div><span style=3D"background-color:rgb(255,255,255)"><font =
color=3D"#000000"><b><br></b></font></span></div></div></div></div>

--000000000000ab765d05bb9ae5a8--
