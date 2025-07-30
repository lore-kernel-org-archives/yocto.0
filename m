Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35B91C87FCE
	for <webhook@archiver.kernel.org>; Wed, 30 Jul 2025 20:15:54 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.45430.1753906547769985750
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jul 2025 13:15:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EvZxGqOf;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: jpewhacker@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-3322aba45ebso1885021fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 30 Jul 2025 13:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753906545; x=1754511345; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rBoWvBRmcldtTS4mKFVfUUErzCigp3YTRpPqGCmdM+w=;
        b=EvZxGqOf5bSypMZHVENrnJwrH9JcAZ9y0j8QE4mLXZpVrnO6aJVvOVZiwT77sGvrMC
         161nGMcJvktWNguxl4HitUz5vXEQ3f0G4IO5ZszCDHQ2NnM4HluV/8mrRcLgVmLWJNEE
         zZLKSmdg1olSgZaqRybf5VlN1QmBa6WJhbnXfb6Z5MhNX95nBj4NJHFFZmHP0PDWXZf0
         feRbPTyWea4Eldz5Au4/8lJemif3A796ygAnPkop1DDXgYesviL6TN1WiInchshQaDJk
         z4DPPKTCik366XQFeNPw0UKs1i/7CxY9Sy2Ccon2iPTfpaYxGAHyKfA3NjSQi6yFp6uS
         lcOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753906545; x=1754511345;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rBoWvBRmcldtTS4mKFVfUUErzCigp3YTRpPqGCmdM+w=;
        b=eVOOC97P6ufgzO/1OXbxkMV8UXfXwZDfHKnyocuxtUvrywepSAIbJLducJQGzL95oq
         4DAoD/ghHhdxjKxLX1HW3HZfHOvXlg236Gaoe5L1pEVW5mhgqoXv1Pbtx/xEMoiUp5/F
         EU8A55o+ec7L+HkAc8L78+c7mC6sU+FmEEeomhRGu1I9H2nCJgaweWc8gi3u4WERmueB
         9/H0NCgRfIbu5nC5dyTKxmtjn5YiIiZ+H6TBfPgWvLfVyKIyxl7zzi334jepl0SD/+x9
         92lNps4m2jAorFB3Rcb0eliwOIEByvoMqRi8maoB6Z9AjugLf8IpNWdkQA2Rafj2yPoD
         vRKw==
X-Gm-Message-State: AOJu0Yy/yZTcLAjT0m9rZt2rsNhY04tDQNYCyPLpzQdF0bSwVyjDOszc
	vt0/cipRsT3wgEBhBG73p3IIuByLbs9cT5Z9LBz3zi8fyS1xFcCVWPLRku4WZQgcoYFxquXkuGc
	2W/FyM3yOaSUQYsWfHaHM8dkBTNYKm8q0iQ==
X-Gm-Gg: ASbGnctxFG0L+uj0phcGOsgqAj/kKhaYSi11MMzgQjL9UOL57zWJNM+NieYSvUVTmcQ
	Ybz6kf1kAqzPfo2mpVvo4FsvhCJn9RA/lGfWJudOkM6zn/nFGSt6z16Xw928Cx+K8I2Z13Rk+rg
	O6QsQ4OxHX4suB2AJdLT1eV0Kmpi+xUqLqzp+qglN+EK8QsW7rf4xm6nPWdOjiNL85wxh+H5skc
	zcYXISvJsohgpPKDKt7bcLqg65YzsJp
X-Google-Smtp-Source: AGHT+IF5oqnqX0zyz004flodEFVjFNTcSLqS3JrUVt4raMz27bL40lYq91HkD+BqcIgjk6IaN/xvCAgrPpmFeVQD4DY=
X-Received: by 2002:a05:651c:f11:b0:32a:8916:55af with SMTP id
 38308e7fff4ca-33224a8862cmr15820591fa.2.1753906544718; Wed, 30 Jul 2025
 13:15:44 -0700 (PDT)
MIME-Version: 1.0
References: <zeaV.1753906228022619680.6Ow7@lists.yoctoproject.org>
In-Reply-To: <zeaV.1753906228022619680.6Ow7@lists.yoctoproject.org>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Wed, 30 Jul 2025 14:15:31 -0600
X-Gm-Features: Ac12FXxMvyZEBxaV1G_h2imtBRT2jhFDxu4sAG-SU5TYV9bYicYyQ-l12ytkTZs
Message-ID: <CAJdd5GbHtzseJJo6KYLDjxV=_mGua6ymvVeMY=EymWvzBH-uOQ@mail.gmail.com>
Subject: Re: [yocto] SPDX 3.0 output for image builds
To: yocto@lists.yoctoproject.org, kateryna.kostiuk@savoirfairelinux.com
Content-Type: multipart/alternative; boundary="000000000000913610063b2b306e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Jul 2025 20:15:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65726

--000000000000913610063b2b306e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 30, 2025 at 2:10=E2=80=AFPM kateryna.kostiuk via lists.yoctopro=
ject.org
<kateryna.kostiuk=3Dsavoirfairelinux.com@lists.yoctoproject.org> wrote:

> Hi,
>
>
>
> I=E2=80=99m using Yocto 5.2 with INHERIT +=3D "create-spdx" to generate S=
PDX 3.0
> files.
>
> In earlier versions (SPDX 2), I used to get a .spdx.tar.zst archive in
> tmp/deploy/images/, but now I only see a .spdx.json file.
>
> Is that the expected behavior for SPDX 3.0?
>

Yes. For SPDX 3 we combine all of the SPDX output into a single document.


>
>
> Thanks,
>
> Kateryna
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65725):
> https://lists.yoctoproject.org/g/yocto/message/65725
> Mute This Topic: https://lists.yoctoproject.org/mt/114455825/3616693
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> JPEWhacker@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000913610063b2b306e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 30,=
 2025 at 2:10=E2=80=AFPM kateryna.kostiuk via <a href=3D"http://lists.yocto=
project.org">lists.yoctoproject.org</a> &lt;kateryna.kostiuk=3D<a href=3D"m=
ailto:savoirfairelinux.com@lists.yoctoproject.org">savoirfairelinux.com@lis=
ts.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div>
<p style=3D"color:rgb(0,0,0);font-style:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;text-decoration:none">Hi,<=
/p>
<p style=3D"color:rgb(0,0,0);font-style:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;text-decoration:none">=C2=
=A0</p>
<p style=3D"color:rgb(0,0,0);font-style:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;text-decoration:none">I=E2=
=80=99m using Yocto 5.2 with <span>INHERIT +=3D &quot;create-spdx&quot;</sp=
an> to generate SPDX 3.0 files.</p>
<p style=3D"color:rgb(0,0,0);font-style:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;text-decoration:none">In e=
arlier versions (SPDX 2), I used to get a <span>.spdx.tar.zst</span> archiv=
e in <span>tmp/deploy/images/</span>, but now I only see a <span>.spdx.json=
 file.</span></p>
<p style=3D"color:rgb(0,0,0);font-style:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;text-decoration:none">Is t=
hat the expected behavior for SPDX 3.0?</p></div></blockquote><div><br></di=
v><div>Yes. For SPDX 3 we combine all of the SPDX output into a single docu=
ment.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div>
<p style=3D"color:rgb(0,0,0);font-style:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;text-decoration:none">=C2=
=A0</p>
<p style=3D"color:rgb(0,0,0);font-style:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;text-decoration:none">Than=
ks,</p>
<p style=3D"color:rgb(0,0,0);font-style:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;text-decoration:none">Kate=
ryna</p>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#65725): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65725" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65725</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/114455825/361=
6693" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/114455825/3616693</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:JPEWhacker@gmail.com" target=3D"_blank">JPEWhack=
er@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000913610063b2b306e--

