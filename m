Return-Path: <dchvs11@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77DA2C001B0
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 17:44:11 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web10.68498.1691516646084557338
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 10:44:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=mEuYZ5DM;
 spf=pass (domain: gmail.com, ip: 209.85.160.182, mailfrom: dchvs11@gmail.com)
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-40fe3850312so45846351cf.1
        for <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 10:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691516645; x=1692121445;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jCrnkXWwxsW6PLtxancamAjEFoozbP6KquFU2YXGzn8=;
        b=mEuYZ5DMbjhNIPQJOVdRX9VtH33yI8a1jkEFB4/Uh7Ak4usO5HBGY6NOK5D9c4zK4V
         e5KOvJoSAw+D2As+hKPwgQNv3D4o9KBvuL//WrmH/lL8QfIkQb+CC6FnThEboze+obje
         L2dSCxQpGfa7A88br+Mu6XADHEefzYXXd4e8gZKwmEJmWSO1NWXlQSfp7Z3vYKOg2H7+
         BBSnkk4yVd1XUaBO3q3umhje4359v5i4YvsAraBYs/rZwBbEMlhcG2sCPDLO+0xi7C6T
         r9VY6ofK0GLtO6Y22vPDBSilN1MuKbUm+RrfzG4IiEGuw+M08drKmwMeIiOOjuupAUmp
         rDhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691516645; x=1692121445;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jCrnkXWwxsW6PLtxancamAjEFoozbP6KquFU2YXGzn8=;
        b=V3JvGGCb2YklaGnXjWWT0lNUFsAOVefTuJfbA1aoizLEpDmqXtY/tCdb6h7pb09FI3
         69IhtasqZ0fGhhlejis3OjhosBzhcWV2PfKhYYoHEWHeRF5UqjScEpH4fjnjoKQMyEX4
         tisAYM56GpDzzPt2J3EYdaM+k1f42+fVPAj2NWJQzgE97e6bGiCjUrfX1y93yyVotbgZ
         vuLaIf0coOopnh9ShlaLDJvqJeesO+fE2LjURNl1f+5pGDoQPr+tHeZ3qUoezP5UEs5z
         4vWAAHE43/xrZK/JRetSObvLLA05DiL8EWNbE1VTgM10p03zRU2CRWje2kduXftBXWP2
         IoRg==
X-Gm-Message-State: AOJu0YyI04q0nlC/pag3/HYXGqDPK6Bc2y6YD6YXU/qh+MMZTRXTIN1E
	rBpZ1rRAOL/jP3WFKEscaP4Om2mfUJjRui88UMw=
X-Google-Smtp-Source: AGHT+IF3wSpseCb7FchdWkXXqnU4Io6C8qWq3LZtBfbbpwtwKsUJWBRWCS424OwMZjzfjYv4lSU4ocPuJEmBN9VV/aQ=
X-Received: by 2002:a05:622a:1982:b0:405:438a:baef with SMTP id
 u2-20020a05622a198200b00405438abaefmr428442qtc.51.1691516644926; Tue, 08 Aug
 2023 10:44:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sqpfaR8Wx+N7oCQ4q8M2TVgaunE01ZLSi=8NTJA1465jQ@mail.gmail.com>
 <5592.1691514161056059340@lists.yoctoproject.org> <CAMKF1sr5OviPhVrJvm3t3_tk4N4hP=kkSdP7PWH_aPgvBCNsFw@mail.gmail.com>
In-Reply-To: <CAMKF1sr5OviPhVrJvm3t3_tk4N4hP=kkSdP7PWH_aPgvBCNsFw@mail.gmail.com>
From: Daniel Chaves <dchvs11@gmail.com>
Date: Tue, 8 Aug 2023 11:43:54 -0600
Message-ID: <CANDCFSyTNhLgrHD74ac2hxpF67y6KYGP1E45zA=RF91G7TaMcA@mail.gmail.com>
Subject: Re: [yocto] How to add a few lines in config.txt in Yocto project for
 Raspberry Pi
To: Khem Raj <raj.khem@gmail.com>
Cc: Crane <crane2018@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c0a66d06026ce809"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 17:44:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60741

--000000000000c0a66d06026ce809
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, it might be a syntax issue with THISDIR variable expansion: it should
be in curly braces for Yocto.

FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
SRC_URI:append =3D  " file://rpi-config.patch"

Have a look to this Variable Expansion documentation for more details:
https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-manual/bitbake-user-=
manual-metadata.html#variable-expansion

Regards,
Daniel


On Tue, Aug 8, 2023 at 11:28=E2=80=AFAM Khem Raj <raj.khem@gmail.com> wrote=
:

> where does 0001-disable-bluetooth-and-enable-uart0.patch exist in your
> layer? can you show the path ?
>
> On Tue, Aug 8, 2023 at 10:02=E2=80=AFAM Crane <crane2018@gmail.com> wrote=
:
> >
> > The error is this when bitbaking only the recipe for rpi-config:
> > "WARNING: rpi-config-git-r5 do_fetch: Failed to fetch URL
> file://0001-disable-bluetooth-and-enable-uart0.patch, attempting MIRRORS =
if
> available
> > ERROR: rpi-config-git-r5 do_fetch: Fetcher failure: Unable to find file
> file://0001-disable-bluetooth-and-enable-uart0.patch anywhere. The paths
> that were searched were:
> > ....
> > "
> > The listed searching paths don't include the custom layer where the
> patch is placed.
> > The complete error info is in the attached file "bitbake rpi-config.txt=
".
> >
> > When bitbaking the recipe for the image, the error is the same.
> > The complete error info is in attached file "bitbake image.txt".
> >
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60740):
> https://lists.yoctoproject.org/g/yocto/message/60740
> Mute This Topic: https://lists.yoctoproject.org/mt/100614184/7043332
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> dchvs11@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000c0a66d06026ce809
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi, it might be a syntax issue with THISD=
IR variable expansion: it should be in curly braces for Yocto.<br><br><div>=
FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/files:&quot;</div>
<div>SRC_URI:append =3D=C2=A0 &quot; file://rpi-config.patch&quot;<br><br><=
/div><div>Have a look to this Variable Expansion documentation for more det=
ails: <a href=3D"https://docs.yoctoproject.org/bitbake/2.2/bitbake-user-man=
ual/bitbake-user-manual-metadata.html#variable-expansion">https://docs.yoct=
oproject.org/bitbake/2.2/bitbake-user-manual/bitbake-user-manual-metadata.h=
tml#variable-expansion</a><br></div><div><br></div><div>Regards,<br></div><=
div>Daniel<br></div><div><br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 8, 2023 at 11:28=E2=80=AFAM =
Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">where =
does 0001-disable-bluetooth-and-enable-uart0.patch exist in your<br>
layer? can you show the path ?<br>
<br>
On Tue, Aug 8, 2023 at 10:02=E2=80=AFAM Crane &lt;<a href=3D"mailto:crane20=
18@gmail.com" target=3D"_blank">crane2018@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; The error is this when bitbaking only the recipe for rpi-config:<br>
&gt; &quot;WARNING: rpi-config-git-r5 do_fetch: Failed to fetch URL file://=
0001-disable-bluetooth-and-enable-uart0.patch, attempting MIRRORS if availa=
ble<br>
&gt; ERROR: rpi-config-git-r5 do_fetch: Fetcher failure: Unable to find fil=
e file://0001-disable-bluetooth-and-enable-uart0.patch anywhere. The paths =
that were searched were:<br>
&gt; ....<br>
&gt; &quot;<br>
&gt; The listed searching paths don&#39;t include the custom layer where th=
e patch is placed.<br>
&gt; The complete error info is in the attached file &quot;bitbake rpi-conf=
ig.txt&quot;.<br>
&gt;<br>
&gt; When bitbaking the recipe for the image, the error is the same.<br>
&gt; The complete error info is in attached file &quot;bitbake image.txt&qu=
ot;.<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60740): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60740" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60740</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/100614184/704=
3332" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/100614184/7043332</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:dchvs11@gmail.com" target=3D"_blank">dchvs11@gma=
il.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000c0a66d06026ce809--

