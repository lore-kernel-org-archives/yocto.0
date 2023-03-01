Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83F2CC64EC7
	for <webhook@archiver.kernel.org>; Wed,  1 Mar 2023 02:47:04 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web11.13278.1677638814459392831
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Feb 2023 18:46:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=UMF6oGwi;
 spf=pass (domain: gmail.com, ip: 209.85.128.177, mailfrom: twoerner@gmail.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-536cd8f6034so329002997b3.10
        for <yocto@lists.yoctoproject.org>; Tue, 28 Feb 2023 18:46:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sAGl6AixIIcXDFXiXrohcnlnmKjdTX4y2vgJfH0ypmA=;
        b=UMF6oGwi8DnCnXEapL8xjzt4IQuXfeRoskPITef+0K5QKb1v3aYBxzWSLTmSg/bpAB
         FL8UHkORU0xRjRW4FkIcJXTZpW+hlOrYS7czsnfx3RIYC/bs4By6Wr1wBW7A1AHvw/dy
         b0JhkzhPqwYHIZZFhkbXCVSjdBj+HsqL5fK3wN3Q/YFsoyZWWTM7Tx0JVI4mBeMIqgvt
         VSBwoR4vYRTBUILpl/St46VvFDbCAoHLhEPQ3O/TaXJrewlf+jEQPAWMGwWHLsHJAOsG
         yQA4Ml8O+0nmCTfmrgORxzfYMd3O57/uuZSHQY3Gvw3BW+1epxcM8HwM3cC2RoPuf9nA
         ZxmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sAGl6AixIIcXDFXiXrohcnlnmKjdTX4y2vgJfH0ypmA=;
        b=GRtORPiv59PTM9R0nL0QMk8ErFUj5nL/wbkshYHC+Vx92foXN9PV9C+jGBC/sUw6k6
         pAzAEmJ3i9cq0aD40ssfwW+5VQyu7W7pWirhBgJoSNIl1C0glqBMhkfXnlPu801W1eXZ
         mHRXop60qUHnf0VZXks4SQar4iOoyy9nq35dBGDGPl9YfhWKxqSvBxyRsMfEdLJJwmGC
         6nHiE07rdYwuahx+RCTGHsV5VotipLYOzG5sL4LA9U9WErAy0B1p6zkFB/UpdG9TIIl0
         s3SFvy0tvHYT/S1VmZEWWCFptaMUJ+hN2f3WVDNORuAf+h51VnfVAmR4vDLHO1n64s6t
         Oj0A==
X-Gm-Message-State: AO0yUKWmjLEWRW4DO43WBmeFKsOPvP0Zd7fMcz/WSNuzm2/0w/FYuFvN
	ZGpuPjPYgU2Xp7hVJfuLp0Ae5I80KfGqvXe0HiQ=
X-Google-Smtp-Source: AK7set86go+A+zy1xaIWyf6tdKEIpclRmE8L9UXN/o2EATTIH9TAZBGprSHksg+E/ARKNHAX6uinMIJIH59wdYADoHc=
X-Received: by 2002:a81:ac5e:0:b0:52f:3399:ed08 with SMTP id
 z30-20020a81ac5e000000b0052f3399ed08mr3002215ywj.6.1677638813587; Tue, 28 Feb
 2023 18:46:53 -0800 (PST)
MIME-Version: 1.0
References: <20230222200954.14031-1-twoerner@gmail.com> <7625d651-2b3d-2d68-2f6e-3f387a00d768@theobroma-systems.com>
In-Reply-To: <7625d651-2b3d-2d68-2f6e-3f387a00d768@theobroma-systems.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 28 Feb 2023 21:46:41 -0500
Message-ID: <CAHUNapRgDnorxDPCDFJJZUdV08sqWdd8POFg=8MRkDJ6C=-XeA@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] nanopi-r4s: add
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008b9ebb05f5cdb95b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Mar 2023 02:47:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59325

--0000000000008b9ebb05f5cdb95b
Content-Type: text/plain; charset="UTF-8"

On Tue, Feb 28, 2023 at 6:06 AM Quentin Schulz <
quentin.schulz@theobroma-systems.com> wrote:

> Hi Trevor,
>
> On 2/22/23 21:09, Trevor Woerner wrote:
> > Add a MACHINE definition for the FriendlyElec NanoPi R2S
> >
> https://urldefense.com/v3/__https://www.friendlyelec.com/index.php?route=product*product&product_id=284__;Lw!!OOPJP91ZZw!h-oSfHR_L6CGxqg2FDVatV20vOBPECbLP6rgKxl1ZfpRBpCKAywDT8kUfG-XYW_cCgvwd8DxfcDWrqwnYx8cY6nC-ubOB4w$
> >
> > My testing shows that there still seems to be some issues with the SDcard
> > voltage regulator. The kernel has a number of fix attempts for this
> issue, but
> > I've seen it a couple times. Ejecting and re-inserting the SDcard gets
> past
> > the issue. Some SDcards show the issue, others don't.
> >
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > ---
> >   README                                     |  1 +
> >   conf/machine/nanopi-r4s.conf               | 12 ++++++++++++
> >   recipes-kernel/linux/linux-yocto%.bbappend |  1 +
> >   3 files changed, 14 insertions(+)
> >   create mode 100644 conf/machine/nanopi-r4s.conf
> >
> > diff --git a/README b/README
> > index d66ed7e79bd2..286dafbe1020 100644
> > --- a/README
> > +++ b/README
> > @@ -29,6 +29,7 @@ Status of supported boards:
> >               tinker-board-s
> >               vyasa-rk3288
> >               firefly-rk3288
> > +             nanopi-r4s
> >       builds:
> >               marsboard-rk3066
> >               radxarock
> > diff --git a/conf/machine/nanopi-r4s.conf b/conf/machine/nanopi-r4s.conf
> > new file mode 100644
> > index 000000000000..e3323e03b61a
> > --- /dev/null
> > +++ b/conf/machine/nanopi-r4s.conf
> > @@ -0,0 +1,12 @@
> > +#@TYPE: Machine
> > +#@NAME: NanoPi R4S
> > +#@DESCRIPTION: NanoPi R2S is a high-end FriendlyElec mini-router based
> on the RK3399 SoC
> > +
>
> s/R2S/R4S/
>
>
Nice catch, thanks! :-)

Turns out the SDcard issue I was seeing was bizarre too, I have many cards
lying around, out of pure luck the 2 I tried were bad, all the rest are
fine.

However, I did find a patch for a soft-reboot SDcard issue that seems to
help.

I'll be sending a v2 when I cycle back around to it.


> Cheers,
> Quentin
>

--0000000000008b9ebb05f5cdb95b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 28, 2023 at 6:06 AM Quent=
in Schulz &lt;<a href=3D"mailto:quentin.schulz@theobroma-systems.com">quent=
in.schulz@theobroma-systems.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Hi Trevor,<br>
<br>
On 2/22/23 21:09, Trevor Woerner wrote:<br>
&gt; Add a MACHINE definition for the FriendlyElec NanoPi R2S<br>
&gt; <a href=3D"https://urldefense.com/v3/__https://www.friendlyelec.com/in=
dex.php?route=3Dproduct*product&amp;product_id=3D284__;Lw!!OOPJP91ZZw!h-oSf=
HR_L6CGxqg2FDVatV20vOBPECbLP6rgKxl1ZfpRBpCKAywDT8kUfG-XYW_cCgvwd8DxfcDWrqwn=
Yx8cY6nC-ubOB4w$" rel=3D"noreferrer" target=3D"_blank">https://urldefense.c=
om/v3/__https://www.friendlyelec.com/index.php?route=3Dproduct*product&amp;=
product_id=3D284__;Lw!!OOPJP91ZZw!h-oSfHR_L6CGxqg2FDVatV20vOBPECbLP6rgKxl1Z=
fpRBpCKAywDT8kUfG-XYW_cCgvwd8DxfcDWrqwnYx8cY6nC-ubOB4w$</a><br>
&gt; <br>
&gt; My testing shows that there still seems to be some issues with the SDc=
ard<br>
&gt; voltage regulator. The kernel has a number of fix attempts for this is=
sue, but<br>
&gt; I&#39;ve seen it a couple times. Ejecting and re-inserting the SDcard =
gets past<br>
&gt; the issue. Some SDcards show the issue, others don&#39;t.<br>
&gt; <br>
&gt; Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com=
" target=3D"_blank">twoerner@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0README=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0|=C2=A0 1 +<br>
&gt;=C2=A0 =C2=A0conf/machine/nanopi-r4s.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| 12 ++++++++++++<br>
&gt;=C2=A0 =C2=A0recipes-kernel/linux/linux-yocto%.bbappend |=C2=A0 1 +<br>
&gt;=C2=A0 =C2=A03 files changed, 14 insertions(+)<br>
&gt;=C2=A0 =C2=A0create mode 100644 conf/machine/nanopi-r4s.conf<br>
&gt; <br>
&gt; diff --git a/README b/README<br>
&gt; index d66ed7e79bd2..286dafbe1020 100644<br>
&gt; --- a/README<br>
&gt; +++ b/README<br>
&gt; @@ -29,6 +29,7 @@ Status of supported boards:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tinker-board-s<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vyasa-rk3288<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0firefly-rk3288<b=
r>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0nanopi-r4s<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0builds:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0marsboard-rk3066=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0radxarock<br>
&gt; diff --git a/conf/machine/nanopi-r4s.conf b/conf/machine/nanopi-r4s.co=
nf<br>
&gt; new file mode 100644<br>
&gt; index 000000000000..e3323e03b61a<br>
&gt; --- /dev/null<br>
&gt; +++ b/conf/machine/nanopi-r4s.conf<br>
&gt; @@ -0,0 +1,12 @@<br>
&gt; +#@TYPE: Machine<br>
&gt; +#@NAME: NanoPi R4S<br>
&gt; +#@DESCRIPTION: NanoPi R2S is a high-end FriendlyElec mini-router base=
d on the RK3399 SoC<br>
&gt; +<br>
<br>
s/R2S/R4S/<br>
<br></blockquote><div><br></div><div>Nice catch, thanks! :-)</div><div><br>=
</div><div>Turns out the SDcard issue I was seeing was bizarre too, I have =
many cards lying around, out of pure luck the 2 I tried were bad, all the r=
est are fine.</div><div><br></div><div>However, I did find a patch for a so=
ft-reboot SDcard issue that seems to help.</div><div><br></div><div>I&#39;l=
l be sending a v2 when I cycle back around to it.<br></div><div>=C2=A0</div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">
Cheers,<br>
Quentin<br>
</blockquote></div></div>

--0000000000008b9ebb05f5cdb95b--

