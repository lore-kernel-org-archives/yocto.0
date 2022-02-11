Return-Path: <marc.ferland@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA43DC433EF
	for <webhook@archiver.kernel.org>; Fri, 11 Feb 2022 16:41:17 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com
 [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web09.9778.1644597676731939836
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Feb 2022 08:41:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LLScruuk;
 spf=pass (domain: gmail.com, ip: 209.85.218.41,
 mailfrom: marc.ferland@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id qk11so3736122ejb.2
        for <yocto@lists.yoctoproject.org>;
 Fri, 11 Feb 2022 08:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=234lSVvTOrcyTu/PNYtzaYp3BH4Uxff4nOw9/DwoPIY=;
        b=LLScruukmDZr/XYfRpICeUsl8gxY5Aib5otdxafJK7otPwMgLge9Ej1wBxQ8s7BXXu
         E5AejJPCvIsA8RFPTCOlkVj2+q1eWNeB4F1RISo/4EC/NziHSEZwi7Wx1AqMU6lifZJp
         Ms2oWXN8b8z1QIUngYuii+XKClk71me3mtNgfLyVNcM+dbjEH8bJFq/a6ELF5zHzQqw3
         jZOsdggyqXcSY8eEyjqocHboFdAMgXWH4G8PiG70m0Rz4AXQVObSv2rHSyD62ppXEVM+
         pr9xrIndQAz2GvQ85ntz8g5Emv5PBP9ytaoqx1QqEgq9mxL7njm5V9GF+cw+Rhh+QCQb
         AVSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=234lSVvTOrcyTu/PNYtzaYp3BH4Uxff4nOw9/DwoPIY=;
        b=tjb+0/zV1iR5oFV/uk7BBleXexvM0l7rO73ADCSS/LJJpVegYD1Hd59rp0XXpxVOnz
         pkgT/tG9M1md112WpHW93xvc9Ly34fJkAO544tmxJCSB4CrY/yWd890U+p4n1Ib3q3lr
         fXapDJiRoW/sks0ItwkMHo0pKKGZ9qp+/cK0bdcl9wpb5iUbUSBUews+54sm3TUpoTnS
         DC7+0usdBKASzJldPzihi/klNJLh1Dgej+FmStzVSqX53q8h0Iiqy9X8ayutL6o4XToZ
         6iuQqA4LtdbE0fgzZhNu9gIv+UeG+4G9/2WrSC7OC8wHQZxsmaP7HJ7IWWQ99QQEkoMf
         YKDw==
X-Gm-Message-State: AOAM533W7bUL7yBYnV9IvTR91F5u6arjgt/yFXExeRMMNOtT2bpPmXVT
	M/Ye6GxdmDuyz4/DolXoIUdWYmQTJSaaFqt7m5w=
X-Google-Smtp-Source: 
 ABdhPJwIRBRoyag8fQdcmb2h1PM0CHKDma7c/KGc+nhznrm6t3qeHsIHty+cYN+8Fkew84FcRADOTvmWbgp17EtyDfA=
X-Received: by 2002:a17:907:3e90:: with SMTP id
 hs16mr2131163ejc.731.1644597675056;
 Fri, 11 Feb 2022 08:41:15 -0800 (PST)
MIME-Version: 1.0
References: 
 <CADjezmaWK+MRzqRyHwvegFoNQRwwdaCXCT_KU=70i270z79zOg@mail.gmail.com>
 <CANNYZj-b-41OiiEGmtEd5ZpLCHZWBBPPKpu8o95GD-rpKRnP2w@mail.gmail.com>
In-Reply-To: 
 <CANNYZj-b-41OiiEGmtEd5ZpLCHZWBBPPKpu8o95GD-rpKRnP2w@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
Date: Fri, 11 Feb 2022 11:41:03 -0500
Message-ID: 
 <CAMRMzCAuCLcB=RbmVXRm4uEkUiey9d50w0NFE=w-NM7PNJ0Zkg@mail.gmail.com>
Subject: Re: [yocto] gpsd recipe not installing clients
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: mattwood2000@gmail.com, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003862a005d7c0bccb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Feb 2022 16:41:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56160

--0000000000003862a005d7c0bccb
Content-Type: text/plain; charset="UTF-8"

gps-utils is the package you are looking for.
Marc

On Fri, Feb 11, 2022 at 11:32 AM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:
>
> Check tmp/work/cortexa53-poky-linux/gpsd/3.23.1-r0/packages-split to
> see what package the needed binaries go into.
>
> Alex
>
> On Fri, 11 Feb 2022 at 17:23, <mattwood2000@gmail.com> wrote:
> >
> > Hi,
> >
> > I am trying to include gpsd in a poky build.  The core components are
> > included, i.e gpsd gpsctl and gpsdctl, but the clients like gpspipe
> > and gpsmon do not make it to the final image.
> >
> > For context, I'm building for the raspberry pi 3b+ using
> > core-image-full-cmdline.
> >
> > I see all of the clients in
> > tmp/work/cortexa53-poky-linux/gpsd/3.23.1-r0/image/usr/bin however.
> >
> > What am I missing?  I didn't see anything in the recipe that would
> > indicate a conditional install flag.
> >
> > Thanks, Matt.
> >
> >
> >
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56159):
https://lists.yoctoproject.org/g/yocto/message/56159
> Mute This Topic: https://lists.yoctoproject.org/mt/89075159/3617461
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
marc.ferland@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

--0000000000003862a005d7c0bccb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>gps-utils is the package you are looking for.<br></di=
v>Marc<br><div><br>On Fri, Feb 11, 2022 at 11:32 AM Alexander Kanavin &lt;<=
a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wro=
te:<br>&gt;<br>&gt; Check tmp/work/cortexa53-poky-linux/gpsd/3.23.1-r0/pack=
ages-split to<br>&gt; see what package the needed binaries go into.<br>&gt;=
<br>&gt; Alex<br>&gt;<br>&gt; On Fri, 11 Feb 2022 at 17:23, &lt;<a href=3D"=
mailto:mattwood2000@gmail.com">mattwood2000@gmail.com</a>&gt; wrote:<br>&gt=
; &gt;<br>&gt; &gt; Hi,<br>&gt; &gt;<br>&gt; &gt; I am trying to include gp=
sd in a poky build.=C2=A0 The core components are<br>&gt; &gt; included, i.=
e gpsd gpsctl and gpsdctl, but the clients like gpspipe<br>&gt; &gt; and gp=
smon do not make it to the final image.<br>&gt; &gt;<br>&gt; &gt; For conte=
xt, I&#39;m building for the raspberry pi 3b+ using<br>&gt; &gt; core-image=
-full-cmdline.<br>&gt; &gt;<br>&gt; &gt; I see all of the clients in<br>&gt=
; &gt; tmp/work/cortexa53-poky-linux/gpsd/3.23.1-r0/image/usr/bin however.<=
br>&gt; &gt;<br>&gt; &gt; What am I missing?=C2=A0 I didn&#39;t see anythin=
g in the recipe that would<br>&gt; &gt; indicate a conditional install flag=
.<br>&gt; &gt;<br>&gt; &gt; Thanks, Matt.<br>&gt; &gt;<br>&gt; &gt;<br>&gt;=
 &gt;<br>&gt;<br>&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>&gt;=
 Links: You receive all messages sent to this group.<br>&gt; View/Reply Onl=
ine (#56159): <a href=3D"https://lists.yoctoproject.org/g/yocto/message/561=
59">https://lists.yoctoproject.org/g/yocto/message/56159</a><br>&gt; Mute T=
his Topic: <a href=3D"https://lists.yoctoproject.org/mt/89075159/3617461">h=
ttps://lists.yoctoproject.org/mt/89075159/3617461</a><br>&gt; Group Owner: =
<a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org">yocto+owner@lists.y=
octoproject.org</a><br>&gt; Unsubscribe: <a href=3D"https://lists.yoctoproj=
ect.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a=
 href=3D"mailto:marc.ferland@gmail.com">marc.ferland@gmail.com</a>]<br>&gt;=
 -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>&gt;<br></div></div>

--0000000000003862a005d7c0bccb--

