Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D6DEC433F5
	for <webhook@archiver.kernel.org>; Tue,  2 Nov 2021 16:26:09 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web09.201.1635870367468945565
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Nov 2021 09:26:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=T4grk4bU;
 spf=pass (domain: gmail.com, ip: 209.85.208.51,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id z20so78400347edc.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 02 Nov 2021 09:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=A8mvxw9Lg/KzLJkU+d2DM559ZK+rgs4ATQigDvnZPEk=;
        b=T4grk4bUo3GQ2JQxpJSu0JN1cKQg6G03HqJ/iHSwJzWs4/EcydnjGCYTM5vNMJfs5S
         qjyh+hui5oWFvx0/VVagZzgAqJ+3+j86P/ajh9lZSfdfO5puFT6eqrFBS/rl+L7ajSGm
         knAjdArJRDYYRhV3d9x3wgQCImaQieZ0SUdJs13t+evlio41broZGVOqK1XP5kZRPAsu
         q30LYEqqlmGsC0pDVvzBcQ03Z99Xajwkg8c+yuv8KQNGD27VB1P4Qwm+htUiBn7oVmPw
         uQvgehwt2ax5tuJ+divU7FCdEEB20n90Uhk4nAh9bc+q0SuRbgwFvzm021CDS/BJjhO8
         swYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=A8mvxw9Lg/KzLJkU+d2DM559ZK+rgs4ATQigDvnZPEk=;
        b=5LyiRJadgVNRmSiG2v0hBhapXNPBrQ2mW9zaxxL3iLVv5MedA1slp2sPktiXrlLEAr
         pijz4JNsbLLN69Lw3LvhORVIJKTvqnmoM0jg6d3vS7XsEwig/BnEh/7leZapxlnBKocl
         Td4pV46RwOifNf/ZCldbcaU+ogDXcdlHTkwXOkAwnaZT29951qd+oNRod5eUad/qh2nJ
         jgkn+9jCTCImwHeoSrnbalUyOM5ws93a+k4GJ2jian8caoj/2Zfr361ZjhzkWPb3289s
         7zdpM4yZtVoD/io//Sv1JHerN3Mmc5i+geG4Pdv/PrJgjVrKgsFPuzOGuzbXiPRaoBlo
         aLcQ==
X-Gm-Message-State: AOAM531SYZxar3qvTyBZIkow/por1p9Ud9mWM+wm+5R1HNd6G7zPWBIe
	auSND+QRHAeYtK459mD4jERvyxcAi9tELaXoed8=
X-Google-Smtp-Source: 
 ABdhPJxXfIWGHvQxyvzDWgJjWGGRCksVyMt5TWv5HvpuKzQLH5FnBZ4AyBvlT0PidHIhfmkVCQl+czNC9JBHvYZtIqc=
X-Received: by 2002:a05:6402:3554:: with SMTP id
 f20mr52875026edd.354.1635870364878;
 Tue, 02 Nov 2021 09:26:04 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.16B3C74F343D36F7.18236@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16B3C74F343D36F7.18236@lists.yoctoproject.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 2 Nov 2021 12:25:53 -0400
Message-ID: 
 <CADkTA4MK42-jw8yWWaHM8uDM=ayhJRqcdjEHq6zZDya+JswkQw@mail.gmail.com>
Subject: Re: [yocto] yocto preempt-rt
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ff4cc905cfd0bf6f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Nov 2021 16:26:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55216

--000000000000ff4cc905cfd0bf6f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Correct.

The rt patches are already integrated on the branches that that recipe will
build out of the linux-yocto repository.

Bruce

On Tue, Nov 2, 2021 at 12:23 PM Monsees, Steven C (US) via
lists.yoctoproject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject.=
org>
wrote:

>
>
> Is it true that no patch work is required if out under
>
> =E2=80=A6/poky/meta/recipes-kernel, there exists  a yocto-linux-rt_##.##.=
bb recipe
> that matches your kernel release?, and that it will build the full
> preemptive RT Kernel ?
>
>
>
> Thanks,
>
> Steve
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55215):
> https://lists.yoctoproject.org/g/yocto/message/55215
> Mute This Topic: https://lists.yoctoproject.org/mt/86770123/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> bruce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000ff4cc905cfd0bf6f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small">Correct.</div><div class=3D"gmail_default" style=3D"font-size=
:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">Th=
e rt patches are already integrated on the branches that that recipe will b=
uild out of the linux-yocto repository.</div><div class=3D"gmail_default" s=
tyle=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-size:small">Bruce</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Tue, Nov 2, 2021 at 12:23 PM Monsees, Steven C=
 (US) via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org<=
/a> &lt;steven.monsees=3D<a href=3D"mailto:baesystems.com@lists.yoctoprojec=
t.org">baesystems.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_3136401887904943306WordSection1">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is it true that no patch work is required if out und=
er <u></u>
<u></u></p>
<p class=3D"MsoNormal">=E2=80=A6/poky/meta/recipes-kernel, there exists =C2=
=A0a yocto-linux-rt_##.##.bb recipe that matches your kernel release?, and =
that it will build the full preemptive RT Kernel ?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">Steve<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55215): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55215" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55215</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86770123/1050=
810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86770123/1050810</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruc=
e.ashfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--000000000000ff4cc905cfd0bf6f--

