Return-Path: <mattwood2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 738F2C05027
	for <webhook@archiver.kernel.org>; Fri, 20 Jan 2023 13:24:08 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web10.73751.1674221040005058884
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Jan 2023 05:24:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FTx2va0p;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: mattwood2000@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-4fda31c3351so42603447b3.11
        for <yocto@lists.yoctoproject.org>; Fri, 20 Jan 2023 05:23:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PmV4Md5ZGFVr8UqCjDOeGCH1Wvh5LYrHcrNymuzAUK0=;
        b=FTx2va0pjkTbdA16puxMiEpRf2mdz8Mv2L3nw4h6P5T5Cb6Nb95cUMwbDCc1enJ3I9
         B/AmRNOiHouSbltom+U4rzatlnBnM0SCEmNwO7zq7cZBxX8QzSkk9dZ2adD+vBqe/3fi
         odrv9IrsNyAuVbxuCX+TKQRioOXCe0tSH2yDm0HDUqBKTuZKzkw/o21kpHI+qwAZamdP
         dPZA3/gcSWY9NDlDlGDJKOekniXnkjQaOPDyQwqMGFUZhxeeTBegAvtw9DrD/Q4kFn/I
         MNqXrK0YamsIKhX80NRGbOpzHaLRUUPalBMP0btVSOhvK7gcwK6+djyKTMZfQnH8OvCb
         ExtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PmV4Md5ZGFVr8UqCjDOeGCH1Wvh5LYrHcrNymuzAUK0=;
        b=u07pmuczmLvowcTOb4KwqYK3LrCoh4mGqJTM7wbGvFekNCw/CIkF14Pbavajttxt17
         PyrRqVgldPrt5XlSZS/N2I48HjGpOPWZRFeJUVRDzFP4LvMqhuFp4ikI1zf5Ng6P7TJK
         5Ue7AV/Zf/WXQ0fD7SFvtwTyWjjtpejYY1sMbqsNDijQ4Hoq6Q3PeZ0DQvBRz+XhGqOV
         v+i2dtnDZltoS9vH3hngO7wbPqHreVDV7IAkrhN0a1jpxZpIX/cMz8NNuUZONW17i5NJ
         CXCyXBTPkRXs8IP1eq304EZ5rUgu8wynFVdfPhTcKKTaRYLsajHydnTvQYDLrtDbeTbI
         EqVw==
X-Gm-Message-State: AFqh2kqzMnqMy6TTD7bSLHPoCFKaVMuBV2xU83y1tEIkv4mVq6f055dk
	IBPiT1GVUSAd6tfo7dLleSQS3hUdgu7Q8FxX9gY=
X-Google-Smtp-Source: AMrXdXtEEMS5yvT8bOQ4+JMnl6OmAHdK8iScQFpFurk6wXi8WSCLMDchY6YDazRFhD0tmhemwpbbjbx+OUhIhQpvWoA=
X-Received: by 2002:a81:710a:0:b0:4ee:9387:eb1d with SMTP id
 m10-20020a81710a000000b004ee9387eb1dmr1813721ywc.437.1674221039135; Fri, 20
 Jan 2023 05:23:59 -0800 (PST)
MIME-Version: 1.0
References: <CADjezmbVGxzeob6BGbsOUW2VMfUMjVogH85nL16zcSdncc7QqQ@mail.gmail.com>
 <8c58b088-391e-f150-9def-ec996c2a2f3a@theobroma-systems.com>
In-Reply-To: <8c58b088-391e-f150-9def-ec996c2a2f3a@theobroma-systems.com>
From: mattwood2000@gmail.com
Date: Fri, 20 Jan 2023 08:23:49 -0500
Message-ID: <CADjezmb8JMq10_buR67F2y=Qpzfk91Nk1ankYH_9mJJ2-9WSqg@mail.gmail.com>
Subject: Re: [yocto] SSTATE_DIR by MACHINE target?
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000050311505f2b1f679"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Jan 2023 13:24:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59026

--00000000000050311505f2b1f679
Content-Type: text/plain; charset="UTF-8"

Hi Quentin,

I work with many different hardware platforms and architectures.  I keep my
SSTATE cache on a NAS drive and I was hoping to set up a site.conf that
would organize the full build  SSTATE cache by architecture.  It sounds
like this isn't exactly possible.

I tried it and the SSTATE directory is still created in the default
location in the build directory instead of on my mount point.  I guess this
is the native SSTATE you are referring to.

Thanks, Matt.


On Fri, Jan 20, 2023, 7:08 AM Quentin Schulz <
quentin.schulz@theobroma-systems.com> wrote:

> Hi Matt,
>
> On 1/19/23 17:37, mattwood2000@gmail.com wrote:
> > Hi,
> >
> > is it possible to have SSTATE_DIR overrides based on the MACHINE
> > target or SOC family?
> >
>
> What are you trying to do? Which problem are you trying to solve that
> would require this?
>
> > For example, is this valid:
> >
> > SSTATE_DIR:sama5 = "/path/to/sstate_a5"
> > SSTATE_DIR:rpi = "/path/to/sstate_rpi"
> > ...
> >
>
> It depends what exactly you want to do, because this would apply only to
> SSTATE cache for the recipes to build for the target. A Yocto build
> however is made of native and target recipes. The native recipes are
> compiled and run on the host, while target recipes are compiled on the
> host with native binaries from native recipes and run on the target. So
> native recipes would have their SSTATE cache in a common directory,
> whether you pick rpi or sama5 as your MACHINE.
>
> Cheers,
> Quentin
>

--00000000000050311505f2b1f679
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Quentin,<div dir=3D"auto"><br></div><div dir=3D"a=
uto">I work with many different hardware platforms and architectures.=C2=A0=
 I keep my SSTATE cache on a NAS drive and I was hoping to set up a site.co=
nf that would organize the full build=C2=A0 SSTATE cache by architecture.=
=C2=A0 It sounds like this isn&#39;t exactly possible.</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">I tried it and the SSTATE directory is still=
 created in the default location in the build directory instead of on my mo=
unt point.=C2=A0 I guess this is the native SSTATE you are referring to.</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks, Matt.</div><br><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, J=
an 20, 2023, 7:08 AM Quentin Schulz &lt;<a href=3D"mailto:quentin.schulz@th=
eobroma-systems.com">quentin.schulz@theobroma-systems.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">Hi Matt,<br>
<br>
On 1/19/23 17:37, <a href=3D"mailto:mattwood2000@gmail.com" target=3D"_blan=
k" rel=3D"noreferrer">mattwood2000@gmail.com</a> wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; is it possible to have SSTATE_DIR overrides based on the MACHINE<br>
&gt; target or SOC family?<br>
&gt; <br>
<br>
What are you trying to do? Which problem are you trying to solve that <br>
would require this?<br>
<br>
&gt; For example, is this valid:<br>
&gt; <br>
&gt; SSTATE_DIR:sama5 =3D &quot;/path/to/sstate_a5&quot;<br>
&gt; SSTATE_DIR:rpi =3D &quot;/path/to/sstate_rpi&quot;<br>
&gt; ...<br>
&gt; <br>
<br>
It depends what exactly you want to do, because this would apply only to <b=
r>
SSTATE cache for the recipes to build for the target. A Yocto build <br>
however is made of native and target recipes. The native recipes are <br>
compiled and run on the host, while target recipes are compiled on the <br>
host with native binaries from native recipes and run on the target. So <br=
>
native recipes would have their SSTATE cache in a common directory, <br>
whether you pick rpi or sama5 as your MACHINE.<br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div></div></div>

--00000000000050311505f2b1f679--

