Return-Path: <ashujoshi35@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEE7C54E58
	for <webhook@archiver.kernel.org>; Fri, 15 Mar 2024 13:52:00 +0000 (UTC)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
 by mx.groups.io with SMTP id smtpd.web11.22729.1710510715324723604
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Mar 2024 06:51:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=X3fnZtTh;
 spf=pass (domain: gmail.com, ip: 209.85.222.47, mailfrom: ashujoshi35@gmail.com)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-7dade974b0bso908921241.0
        for <yocto@lists.yoctoproject.org>; Fri, 15 Mar 2024 06:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710510714; x=1711115514; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VgwK6fky8X86MK8nM7wByFOtRFqoUABHTAex9uWM96c=;
        b=X3fnZtThbfHULGGc8YYETABdSERt+OpslYfIcMmimgVMXSHhd50zIzHpv1E80G4PtX
         jOaG6O+dUtU0CWIw8eM1DmrpDpXCpNo3RD5nB9CWUf1xrkloyd0YcTAh4v4QwF2LbT0u
         yZQ0AGmlyufuC/MfDUizQHKMeK4qSKDE2sh2J5HvTUBHOHnzBAiakNRrV2IvPozkVQ4i
         ie0Q1oyzopzkd4Zd9S6cwom2p38SddbUlnY9stcY5UJnndAJvK6/XjCTv6WNEJPJZj7C
         mZ8KM71xP3OdaDuRzXX4JI+gJjyD3KXBq7fjGJtX0CkVp1jKAqg89RcQUAtvTJsRsfra
         GdBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710510714; x=1711115514;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VgwK6fky8X86MK8nM7wByFOtRFqoUABHTAex9uWM96c=;
        b=s9DGV5lUUDIylZaiZGbq4Hz6d8Z+ocetreJnoitEXVGkOr9HjD4xbK/VZe9d65qdX1
         5/p23VrSQFgKJxeWoN1jLysWSHRa3LdeAPbHiWxvPmuM9qVBjzrUi5Ykcet43i6Fq5pL
         NV4H4nWXzfi4y5MeRk8vjXIh1dFEEHMlH0iau5wgkF8hf9xt1Vpju6Q9cNOFoQK1Aewc
         PJUqqFTNr5575CeJ98CTaeTrvc+6dAH34L/WHLsrwe0LCA4DuX3sdYEB+vrCVvCSxMfo
         2hoFpRjKY0T0hITM1PeffzSI3i/GpOFTs7xLPK04xerDZ9c/OveyWukB1kJgEOlWx5nQ
         5atQ==
X-Gm-Message-State: AOJu0YxjGh+hM2L2CzYwpqVG+uaMpfNkDjzl5/EOKrlLGpXiIcFnMS5F
	k8RtTXRdR2AJV9kQlmmKZ7MjJqFpoaN8+W78wK4jTaj257+VKfnHBSttcyWFkTM2lTl5QWNgMK0
	tYkwzvb23oecF3vkWMTK84p0d1O0=
X-Google-Smtp-Source: AGHT+IGYoQy3N2uRH0PTAHuskuKtupE5UafTWgfCIEkupuJoRC4wub8XQ6ll/Up8aiyE5nhVeK1vIx6/RAEndVs6Efg=
X-Received: by 2002:a67:ff95:0:b0:474:c573:6ce5 with SMTP id
 v21-20020a67ff95000000b00474c5736ce5mr3622122vsq.1.1710510714203; Fri, 15 Mar
 2024 06:51:54 -0700 (PDT)
MIME-Version: 1.0
References: <Iba3.1710427257769217823.m2lU@lists.yoctoproject.org>
 <1AFA0CDE-F51C-4A2A-BD90-3E186C243D4C@arm.com> <CANx9H-AQ3i-AHzzyGGOoTqbJPCmRpCSF8a8CzqsT=fti_kpxfw@mail.gmail.com>
 <CAKjBKDOAkciZQkVV9eBEOBHSDbzbHzT2Hey_45KSnHknRVVgDw@mail.gmail.com> <8E11ED0E-B678-4D7D-9619-0C303C99BFEB@arm.com>
In-Reply-To: <8E11ED0E-B678-4D7D-9619-0C303C99BFEB@arm.com>
From: Ashu Joshi <ashujoshi35@gmail.com>
Date: Fri, 15 Mar 2024 19:21:43 +0530
Message-ID: <CAKjBKDPmeqy7mjiSRcFHP6wDmd=oHLUoDgkTCa+J0uv0yeQeqQ@mail.gmail.com>
Subject: Re: [yocto] No module named pkgconfig
To: Ross Burton <Ross.Burton@arm.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000081398e0613b34fda"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Mar 2024 13:52:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62767

--00000000000081398e0613b34fda
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Ross. I am able to resolve the error after using pkg-config-native.
For my understanding, can you please explain the difference between
pkgconfig and pkgconfig-native. When are we supposed to use pkgconfig.?
I am relatively new to this, so I want to understand this better.

On Fri, Mar 15, 2024 at 5:38=E2=80=AFPM Ross Burton <Ross.Burton@arm.com> w=
rote:

> On 15 Mar 2024, at 06:20, Ashu Joshi via lists.yoctoproject.org
> <ashujoshi35=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Added DEPENDS +=3D "python3-pkgconfig python3 python3-pip"
> >
> > but still face the same error. I can see its recipe in meta-python.
> Also, in the work directory recipe-sysroot/usr/lib pkgconfig directory is
> there with multiple .pc files. I can also see pkgconfig in
> recipe-syysroot/usr/lib/python3.8/site-packages/pkgconfig. pkgconfig here
> has _pycache_  directory, __init__.py and pkgconfig.py
> > Still setup.py is not able to find pkgconfig
>
> It=E2=80=99s built-time Python trying to find code, so you want
> python3-pkgconfig-native.  Built-time Python won=E2=80=99t run code in th=
e _target_
> sysroot.
>
> Ross

--00000000000081398e0613b34fda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Ross. I am able to resolve the error after using pk=
g-config-native. For my understanding, can you please explain the differenc=
e between pkgconfig and pkgconfig-native. When are we supposed to use pkgco=
nfig.?=C2=A0<div>I am relatively new to this, so I want to understand this =
better.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, Mar 15, 2024 at 5:38=E2=80=AFPM Ross Burton &lt;<a hre=
f=3D"mailto:Ross.Burton@arm.com">Ross.Burton@arm.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">On 15 Mar 2024, at 06:2=
0, Ashu Joshi via <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferr=
er" target=3D"_blank">lists.yoctoproject.org</a> &lt;ashujoshi35=3D<a href=
=3D"mailto:gmail.com@lists.yoctoproject.org" target=3D"_blank">gmail.com@li=
sts.yoctoproject.org</a>&gt; wrote:<br>
&gt; <br>
&gt; Added DEPENDS +=3D &quot;python3-pkgconfig python3 python3-pip&quot;<b=
r>
&gt; <br>
&gt; but still face the same error. I can see its recipe in meta-python. Al=
so, in the work directory recipe-sysroot/usr/lib pkgconfig directory is the=
re with multiple .pc files. I can also see pkgconfig in recipe-syysroot/usr=
/lib/python3.8/site-packages/pkgconfig. pkgconfig here has _pycache_=C2=A0 =
directory, __init__.py and pkgconfig.py<br>
&gt; Still setup.py is not able to find pkgconfig<br>
<br>
It=E2=80=99s built-time Python trying to find code, so you want python3-pkg=
config-native.=C2=A0 Built-time Python won=E2=80=99t run code in the _targe=
t_ sysroot.<br>
<br>
Ross</blockquote></div>

--00000000000081398e0613b34fda--

