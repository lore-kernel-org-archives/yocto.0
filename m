Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9DDBC433F5
	for <webhook@archiver.kernel.org>; Sat, 26 Feb 2022 17:29:27 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
 [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web08.893.1645896566938592419
 for <yocto@lists.yoctoproject.org>;
 Sat, 26 Feb 2022 09:29:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YfPqPHfP;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id h13so9164270qvk.12
        for <yocto@lists.yoctoproject.org>;
 Sat, 26 Feb 2022 09:29:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dmGQVpWDSY28IzSB/62CrelwlH9HFeVdy6hDSull1k8=;
        b=YfPqPHfPGz5b2JAXOPLU01YZGwTLJohx1Si8nSdLoj0656ic9ZHclVpPa4j69gSVqe
         EseQHocSJCVMmA9167+5FbGUFp/MeLt35SnB/+JQ8L8o17If3UIElZ9n92Q7mvU3fY/9
         v8P39OidQQzOxu0rT0fb4kw49Pa0GOgsqB1TdG4A0ZIQt8qxD+WVAeZCIJtwEEAWX5Qh
         Uc5T293xS/wSeF3z8vatF6HYbGklEJp7ktcJrkVAAbF4cDW6ZbjEy2pDhIgL2Hc30gef
         mrh0oBQ3or4YwTT+hpv2FJYLQNtafgq/Qy4taiOZsxWdnb7JiqFmtliZXK+rfB4o8Xzr
         J0cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dmGQVpWDSY28IzSB/62CrelwlH9HFeVdy6hDSull1k8=;
        b=AH2fqzpKifuICd349Ym4Ns2W7xyq+bgXvAU6aNPQLESrksaQ6dMR1DBIU+VWp2k2xo
         aXLymihtwOEwI8zhnePtQPbeyQSxPXj3GtLNoCRRKWq8g0OaTqs0pOus6JYCxwtVxsDa
         DQ/aPikccNIKeaI/6QUmzXeTqc9uRAxtV2tFhxe8dznlD7kErrfW/zQ6bQUraA3KZGaG
         Xcw85qJdmBgRQvkPNQxiESjHgzmLoxdt/KhEfulFugFWj45fF8xWjKdoR92Fl7EmiUEy
         JiGB8aRQMTfWbfpj4hV9cAX5mJNm0TIMOb2GOmmzcrA+BC1smTpK7B5ifWm2bXKYwWjH
         JBEA==
X-Gm-Message-State: AOAM533c4cT4o6QtWk3hrkqOcjQiYtZ8McJ2M6t1qzMYjfNobTKiUKah
	1azf1nf0wp7d3M8MIkmGQgJSVJGDpRrhaJQSLpvJ69p7i74=
X-Google-Smtp-Source: 
 ABdhPJyMezLeUBVRHMP0sXX6LfIcZHSILGJBpqphfSvdYePEii1GhRCe5L1tLsqqtSWckKdNK7FS0QndMLr3TTfV6NQ=
X-Received: by 2002:a0c:cb0a:0:b0:432:6f02:e2d6 with SMTP id
 o10-20020a0ccb0a000000b004326f02e2d6mr9408215qvk.110.1645896565735; Sat, 26
 Feb 2022 09:29:25 -0800 (PST)
MIME-Version: 1.0
References: <7bac38ca-d9fd-b019-8d47-4a1a4f2d6a8@crashcourse.ca>
 <CAMKF1sqs1GKQJtMhJcFx6iRmODtDOd5AWMQNOJ7sLkouz4XpKw@mail.gmail.com>
 <d4b6cb6c-77bf-52d-bdc5-6d3a9dfc2785@crashcourse.ca>
In-Reply-To: <d4b6cb6c-77bf-52d-bdc5-6d3a9dfc2785@crashcourse.ca>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 26 Feb 2022 09:29:15 -0800
Message-ID: 
 <CAMKF1so1GJgisSLZPh6j+4s5fT6UT-4Hx8mNg-6yKFNobJOGnA@mail.gmail.com>
Subject: Re: [yocto] looking to boot core-image-minimal on meta-riscv board
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002347fb05d8ef28aa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 26 Feb 2022 17:29:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56293

--0000000000002347fb05d8ef28aa
Content-Type: text/plain; charset="UTF-8"

On Sat, Feb 26, 2022 at 3:46 AM Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

> On Fri, 25 Feb 2022, Khem Raj wrote:
>
> > On Fri, Feb 25, 2022 at 8:36 AM Robert P. J. Day <rpjday@crashcourse.ca>
> wrote:
> > >
> > >
> > >   a friend of mine is diving into trying to boot linux on a meta-riscv
> > > linux starter kit -- he's not using YP, and this is what he's
> > > targeting:
> > >
> > >   https://www.aliexpress.com/item/1005003751298305.html
> > >
> > >   since i've wanted to jump into meta-riscv for a while, i figured i'd
> > > play along and ordered something more substantial:
> > >
> > >   https://www.aliexpress.com/item/1005002796061251.html
> > >
> > > in any event, here's the story so far.
> > >
> > >   as a first pass, i just fired up YP and built for qemuriscv64 to
> > > establish a baseline, and that seems to work just fine, booting with
> > > "runqemu nographic." and that at least gives me a bunch of config info
> > > i can look at later.
> > >
> > >   as for my actual target board, i know that the meta-riscv layer
> > > defines support for two boards, neither of which is the one i will be
> > > getting, but while i'm waiting for it, i can at least start
> > > documenting all of the relevant settings and config values i'll want
> > > to try.
> > >
> > >   i know precious little about meta-riscv, so is there a sane way to
> > > prepare for the eventual arrival of my board? my plan is to get
> > > familiar with how the meta-riscv layer builds for the two supported
> > > boards, so i'll have a handle on what i'll need to configure.
> > >
> > >   any further advice would be most appreciated.
> >
> > We should add them to meta-riscv as reference BSPs. I have port of
> > unmatched locally and have been trying to get the needed changes
> > into meta-sifive which is still pending.
>
>   so you have working BSPs for both of those? very cool. warning that
> i know effectively nothing about RISC-V but this is apparently my
> weekend project to dig into it. i don't see a meta-riscv-specific
> mailing list, so i assume if i want to start sending simple patches
> for meta-riscv, they would go here?



Usually we use GitHub issues and pulls

>
>
>   already built and tested qemuriscv64, so i guess i'll work backwards
> from there and examine the configuration and construction of the
> components. opensbi, here we come ...
>
> rday
>

--0000000000002347fb05d8ef28aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Feb 26, 2022 at 3:46 AM Robert P. J. Day &lt;<a hre=
f=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">On Fri, 25 Feb 2022, Khem Raj wrote:<b=
r>
<br>
&gt; On Fri, Feb 25, 2022 at 8:36 AM Robert P. J. Day &lt;<a href=3D"mailto=
:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt; wro=
te:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0a friend of mine is diving into trying to boot linux =
on a meta-riscv<br>
&gt; &gt; linux starter kit -- he&#39;s not using YP, and this is what he&#=
39;s<br>
&gt; &gt; targeting:<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0<a href=3D"https://www.aliexpress.com/item/1005003751=
298305.html" rel=3D"noreferrer" target=3D"_blank">https://www.aliexpress.co=
m/item/1005003751298305.html</a><br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0since i&#39;ve wanted to jump into meta-riscv for a w=
hile, i figured i&#39;d<br>
&gt; &gt; play along and ordered something more substantial:<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0<a href=3D"https://www.aliexpress.com/item/1005002796=
061251.html" rel=3D"noreferrer" target=3D"_blank">https://www.aliexpress.co=
m/item/1005002796061251.html</a><br>
&gt; &gt;<br>
&gt; &gt; in any event, here&#39;s the story so far.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0as a first pass, i just fired up YP and built for qem=
uriscv64 to<br>
&gt; &gt; establish a baseline, and that seems to work just fine, booting w=
ith<br>
&gt; &gt; &quot;runqemu nographic.&quot; and that at least gives me a bunch=
 of config info<br>
&gt; &gt; i can look at later.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0as for my actual target board, i know that the meta-r=
iscv layer<br>
&gt; &gt; defines support for two boards, neither of which is the one i wil=
l be<br>
&gt; &gt; getting, but while i&#39;m waiting for it, i can at least start<b=
r>
&gt; &gt; documenting all of the relevant settings and config values i&#39;=
ll want<br>
&gt; &gt; to try.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0i know precious little about meta-riscv, so is there =
a sane way to<br>
&gt; &gt; prepare for the eventual arrival of my board? my plan is to get<b=
r>
&gt; &gt; familiar with how the meta-riscv layer builds for the two support=
ed<br>
&gt; &gt; boards, so i&#39;ll have a handle on what i&#39;ll need to config=
ure.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0any further advice would be most appreciated.<br>
&gt;<br>
&gt; We should add them to meta-riscv as reference BSPs. I have port of<br>
&gt; unmatched locally and have been trying to get the needed changes<br>
&gt; into meta-sifive which is still pending.<br>
<br>
=C2=A0 so you have working BSPs for both of those? very cool. warning that<=
br>
i know effectively nothing about RISC-V but this is apparently my<br>
weekend project to dig into it. i don&#39;t see a meta-riscv-specific<br>
mailing list, so i assume if i want to start sending simple patches<br>
for meta-riscv, they would go here?</blockquote><div dir=3D"auto"><br></div=
><div dir=3D"auto"><br></div><div dir=3D"auto">Usually we use GitHub issues=
 and pulls=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex" dir=3D"auto"><br>
<br>
=C2=A0 already built and tested qemuriscv64, so i guess i&#39;ll work backw=
ards<br>
from there and examine the configuration and construction of the<br>
components. opensbi, here we come ...<br>
<br>
rday<br>
</blockquote></div></div>

--0000000000002347fb05d8ef28aa--

