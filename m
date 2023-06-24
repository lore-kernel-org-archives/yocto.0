Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47E55EB64DA
	for <webhook@archiver.kernel.org>; Sat, 24 Jun 2023 15:26:10 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
 by mx.groups.io with SMTP id smtpd.web11.18820.1687620368396611609
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Jun 2023 08:26:08 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=g3cruA5D;
 spf=pass (domain: gmail.com, ip: 209.85.160.51, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1acf5ccf3baso1631330fac.3
        for <yocto@lists.yoctoproject.org>; Sat, 24 Jun 2023 08:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687620367; x=1690212367;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mbI8VoZBqGrGat4bDJxumdcA8GG47LRgRViMc/h5RkA=;
        b=g3cruA5DrZNQdi+sZ9o6bv7iyvebsxtj1XRRkIm/+E6K9S99zzVaMFScSw7UvaAu3M
         CDa5ZKspz7cf7k/1gWZd85EfY1m+ALSO5T6lXnSO+6qu1fOJuyetJuwifpqnqSwSa67l
         epLA4o6lFxzIPuJzoFyaAW2fMMpMXp73E/Boo6HtIm0RvhqNvE6ZfMWBgz9PbXIyaFSA
         GPwV4HdNCR98prnnSYrozBcvPlgLSXXDPtk3qSdU6dYj5FNkadzfdfP/YuTZ3YBqWak5
         cU20sjgxHRSM3QSq2WPjJYjDeGT6WWhK49hbUnpZVvrLg2GKVjATu3FXfSmOvbOSfsAS
         ZrMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687620367; x=1690212367;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mbI8VoZBqGrGat4bDJxumdcA8GG47LRgRViMc/h5RkA=;
        b=ElFlD2hA2txCXLocyqJTawtkm0U/68K/byzKPaCzBeVU5gNv4AO+NFk4u+wGCJqzPJ
         2oIXgcppjCnQ6svQnXFTvLwF+MHr436mPmh7yubnBSSRPOAQhlxat4sfEPSA117bpHry
         xvnYSyoRRcMSFIwSFxsWYY3wS3DNbaiysUGCzTgG1Te3BL4XY7cIvohuCbqhEXOFbjbw
         NlFhTspv6GtSi5oHe228PoEnuFUOA6kGUgK7ZqVTTHxdUwxhQPs91l5wKBvYqfuYUZj3
         nOQ7MPfX0a5HGvoL4PrD9OvIT31kIZIcHzo5nICuqcv2QjIF6BuwfGHDvOgXIUhgJVuG
         Pm2w==
X-Gm-Message-State: AC+VfDxXnYr8pH5KS7pVNRYXdO05VaMSOsjv2rFKTqt9NeITnyk3mcEP
	xcfAwaietqV4mam1XceSiooL+wgPCTvzrCZ7AfE=
X-Google-Smtp-Source: ACHHUZ6BBa2qswnVhbbuJojaQYPDXXhrBTKIpXMWaIEUcrc6iWREigeFvLnYhNxfh67xW4Ex4g+uDR8gEbcRSl119l4=
X-Received: by 2002:a05:6870:d112:b0:1a6:478b:1add with SMTP id
 e18-20020a056870d11200b001a6478b1addmr20677987oac.42.1687620367239; Sat, 24
 Jun 2023 08:26:07 -0700 (PDT)
MIME-Version: 1.0
References: <d80d7dc4-d01e-49c1-b5b6-91140087fc7f@app.fastmail.com>
 <CAMKF1srAV6j9DU=-6y_Qtv+bJY8Mqt1cbfX0v+EDzMvEGBGfpA@mail.gmail.com> <4ea51f16-6c49-47c8-8750-1db4a4b3733c@app.fastmail.com>
In-Reply-To: <4ea51f16-6c49-47c8-8750-1db4a4b3733c@app.fastmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 24 Jun 2023 08:25:56 -0700
Message-ID: <CAMKF1sonBWEduzrC5MmVD8_FcOEuekDLpBqJ0=47ED9W9dEReQ@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] vc4-fkms-v3d vs. vc4-kms-v3d
To: Manuel Wagesreither <ManWag@fastmail.fm>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000814eec05fee1bc52"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 Jun 2023 15:26:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60424

--000000000000814eec05fee1bc52
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jun 24, 2023 at 7:47 AM Manuel Wagesreither <ManWag@fastmail.fm>
wrote:

> Am Sa, 24. Jun 2023, um 00:04, schrieb Khem Raj:
> > On Fri, Jun 23, 2023 at 2:39=E2=80=AFPM Manuel Wagesreither <ManWag@fas=
tmail.fm>
> wrote:
> >>
> >> Hi users of meta-raspberrypi,
> >>
> >> I'd like to ask around if for you people vc4-kms-v3d (opposed to
> vc4-fkms-v3d) *really* is the working way to get vc4 support on a Raspber=
ry
> Pi 4 Model B.
> >>
> >> Both on master and kirkstone, vc4-kms-v3d is the default. It's defined
> in /conf/machine/raspberrypi4-64.conf:
> >>
> >> VC4DTBO ?=3D "vc4-kms-v3d"
> >>
> >> I was mildly surprised to find this, because on my system (running
> Kirkstone) I can get the screen to work only if I specify vc4-fkms-v3d.
> >>
> >> Commit a6fa6b3aec36b92c3750852dd6788af9d2ce08f6 [1] broke my build. Th=
e
> commit message further suggests that vc4-Fkms-v3d is broken, while
> vc4-kms-v3d is not. So I'm wondering:hy is it exactly the other way round
> on my machine?
> >>
> >>     raspberrypi4: Use full kms (vc4-kms-v3d) DT overlay
> >>
> >>     With latest 5.10 kernel fkms version fails to bring up VC4 and we
> do not
> >>     get dri device initialized ( /dev/dri ) is empty, which means we
> can not
> >>     launch wayland componsitors.
> >>
> >
> > We have moved away from 5.10 kernel to 5.15 and then 6.1, so its
> > possible that fkms is working fine again.
> > If you test it with both vc4graphics and userland graphics do both work=
 ?
>
> The meta-raspberrypi commit I'm on
> (a6fa6b3aec36b92c3750852dd6788af9d2ce08f6) has recipes for Linux 5.10.110
> and 5.15.34 and on both of them vc4-fkms-v3d works while vc4-kms-v3d does
> not.
>
> * When using vc4-kms-v3d, the screen goes dark very early in the boot
> process.
> * When using vc4-kms-v3d, kmscube and weston-wayland both work.


Which release branch are you using for
Your project

>
>
>

--000000000000814eec05fee1bc52
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Jun 24, 2023 at 7:47 AM Manuel Wagesreither &lt;<a =
href=3D"mailto:ManWag@fastmail.fm">ManWag@fastmail.fm</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">Am Sa, 24. Jun 2023, um 00:04, schrieb Kh=
em Raj:<br>
&gt; On Fri, Jun 23, 2023 at 2:39=E2=80=AFPM Manuel Wagesreither &lt;<a hre=
f=3D"mailto:ManWag@fastmail.fm" target=3D"_blank">ManWag@fastmail.fm</a>&gt=
; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi users of meta-raspberrypi,<br>
&gt;&gt;<br>
&gt;&gt; I&#39;d like to ask around if for you people vc4-kms-v3d (opposed =
to vc4-fkms-v3d) *really* is the working way to get vc4 support on a Raspbe=
rry Pi 4 Model B.<br>
&gt;&gt;<br>
&gt;&gt; Both on master and kirkstone, vc4-kms-v3d is the default. It&#39;s=
 defined in /conf/machine/raspberrypi4-64.conf:<br>
&gt;&gt;<br>
&gt;&gt; VC4DTBO ?=3D &quot;vc4-kms-v3d&quot;<br>
&gt;&gt;<br>
&gt;&gt; I was mildly surprised to find this, because on my system (running=
 Kirkstone) I can get the screen to work only if I specify vc4-fkms-v3d.<br=
>
&gt;&gt;<br>
&gt;&gt; Commit a6fa6b3aec36b92c3750852dd6788af9d2ce08f6 [1] broke my build=
. The commit message further suggests that vc4-Fkms-v3d is broken, while vc=
4-kms-v3d is not. So I&#39;m wondering:hy is it exactly the other way round=
 on my machine?<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0raspberrypi4: Use full kms (vc4-kms-v3d) DT ove=
rlay<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0With latest 5.10 kernel fkms version fails to b=
ring up VC4 and we do not<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0get dri device initialized ( /dev/dri ) is empt=
y, which means we can not<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0launch wayland componsitors.<br>
&gt;&gt;<br>
&gt;<br>
&gt; We have moved away from 5.10 kernel to 5.15 and then 6.1, so its<br>
&gt; possible that fkms is working fine again.<br>
&gt; If you test it with both vc4graphics and userland graphics do both wor=
k ?<br>
<br>
The meta-raspberrypi commit I&#39;m on (a6fa6b3aec36b92c3750852dd6788af9d2c=
e08f6) has recipes for Linux 5.10.110 and 5.15.34 and on both of them vc4-f=
kms-v3d works while vc4-kms-v3d does not.<br>
<br>
* When using vc4-kms-v3d, the screen goes dark very early in the boot proce=
ss.<br>
* When using vc4-kms-v3d, kmscube and weston-wayland both work.</blockquote=
><div dir=3D"auto"><br></div><div dir=3D"auto">Which release branch are you=
 using for</div><div dir=3D"auto">Your project=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex" dir=3D"auto"><br>
<br>
</blockquote></div></div>

--000000000000814eec05fee1bc52--

