Return-Path: <smooge@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952D0C25B75
	for <webhook@archiver.kernel.org>; Wed, 29 May 2024 11:58:39 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web11.12038.1716983914313824050
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 May 2024 04:58:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=aOKk6RKw;
 spf=pass (domain: gmail.com, ip: 209.85.210.178, mailfrom: smooge@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-6f966840af7so1654814b3a.2
        for <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 04:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716983914; x=1717588714; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vKDpqhv5BAXVI0O4TATSb4Nn3NpDIhfVA0A4H8fBDts=;
        b=aOKk6RKwFnCZUTldgkQ71RXzkdLvJtImXqD3BhhSFX1mytmKyJ0L8MrZwjaBc52TwQ
         v5aswduyXFWjZ59V7KErh78Zi2+ujciKLqtja80BOMHeix6+QjhvnPbGeN3+n+PCvf/o
         QbpHoJKkP3BbM5QgblFzWsdVMuuzzEBbkLnHjdCNFGlDQ5zsL3dlypYUZLCy+gV7moUC
         zslKzrC7XxNOIztBrxQwe5R/DIkeVASiuGGI0IOu1LxOiFPz3Jzf3gEmfzVO7Lme91lZ
         /KCPjjSOX6H+vDJyDH6BMXlM3sCMVdeuqNIHNJMnlM6iWS/PSu3OJ4/WthApMwFTKWPs
         1a/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716983914; x=1717588714;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vKDpqhv5BAXVI0O4TATSb4Nn3NpDIhfVA0A4H8fBDts=;
        b=Ylcz7kmqY02birPegv584u3M2QOFDoNITS2HjByhQtH5pAxMJwy2Gr8NNO/LeUNu+F
         amvV0E9W4PfBgI5xdvGCTAXiavIoHZrHZKOtUrYXtf71KHxDqIDHMCMEH4YRq9Er3Hw3
         NZLk3MPV+YpZh+1FtT/6WS4UEQKowhSbCoqDh/zz5EKqLasBQJSve02nBfx6nmUlr+S5
         FTqB2eGQh6sg9mSiVA1H+36S8DQolhrmd6tr2EtxQ53zl+ucO9aWuNHlObo9Riv1/ABF
         +RziFEugwdSGq98offY3+euetFW/NddsRMRkhq1XfOUfW1eeBS6sS36FjL4PExcn6vLI
         Uqzw==
X-Gm-Message-State: AOJu0YzehXZ6S0oEG39uqMBUNfDZAg4XgX9HBtyjyDg6E9wrKDFE5pW/
	3bowh6PYc41hsRDdFjNjYqmhnP6mweEfxrpShu5VikmmJ9X4Iy5jtvIcNhhFv7TXtpKoriUSHXV
	6knF5HJrbtmJMPXx3C+xJiDaFpi4=
X-Google-Smtp-Source: AGHT+IEAIHeC1VmhapkJ8cQNbu/Q+TLfLV+lqwUTojImSEgruZlowGI4ZrewHjlbsDuo+Tg69XTNOoYsCN/4aRfnTvA=
X-Received: by 2002:a05:6a20:5b03:b0:1af:fbab:cfaf with SMTP id
 adf61e73a8af0-1b212e91e87mr12464699637.62.1716983913499; Wed, 29 May 2024
 04:58:33 -0700 (PDT)
MIME-Version: 1.0
References: <sU3Q.1716973567621792975.HgRu@lists.yoctoproject.org>
 <CANnLRdjaNT=gyMtw0T4M+HhwPxxxZJR9Dj4ZLWGXZDQc8x3yfg@mail.gmail.com> <CANNYZj9J2dNCpAVBez-eCZ+MiKP5ZGVvGfD3rMWoX9AO10_XgQ@mail.gmail.com>
In-Reply-To: <CANNYZj9J2dNCpAVBez-eCZ+MiKP5ZGVvGfD3rMWoX9AO10_XgQ@mail.gmail.com>
From: Stephen John Smoogen <smooge@gmail.com>
Date: Wed, 29 May 2024 07:58:20 -0400
Message-ID: <CANnLRdjfHasvmJYjHM8VtZUQBZv8GS6FC4xaJn6wQdCS4qb8Uw@mail.gmail.com>
Subject: Re: [yocto] GPL License Compliance - Automatically detect linking
 against GPL libraries
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org, fabian.hanke@bosch.com
Content-Type: multipart/alternative; boundary="0000000000003fdf090619967844"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 11:58:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63226

--0000000000003fdf090619967844
Content-Type: text/plain; charset="UTF-8"

On Wed, 29 May 2024 at 07:34, Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> On Wed, 29 May 2024 at 13:18, Stephen John Smoogen via
> lists.yoctoproject.org <smooge=gmail.com@lists.yoctoproject.org>
> wrote:
> > I wanted to bring up a nuance because you are saying 'GPL based
> library'. There are several different GPL licenses which need to be
> evaluated when linking to. The lawyers at Bosch can give the best advice,
> but this following rule of thumb may be useful:
> > Linking to licenses with AGPL -> must be a compatible source license
> (aka source must be available and modifiable by user) and must meet
> additional requirements for delivery
> > Linking to licenses with GPL -> must be a compatible source license (aka
> source must be available and modifiable by user)
> > Linking to licenses with LGPL -> can be a closed source library in many
> cases. [again get a lawyer's review]
> >
> > Then there are the GPL and LGPL with exception licenses. Those
> exceptions might be something 'slight' so that licenses incompatibilities
> between the OpenSSL or Apache can be still 'excepted' for use. And then
> there are the exceptions which basically allow any closed source to link
> against it. Those need a lawyer's review. There are also differences
> between version 2 and version 3 of the licenses that again need lawyer's
> advice.
> >
> > On many Linux operating systems the libc is based off of glibc which is
> LGPL2+ with exceptions and GPL2+ with exceptions for various binaries.
> Other libraries that are in common use may also be. There are also example
> layer's like the one that Etienne Cordonnier brought up which can help cut
> down potential conflicts.
> >
> > And my apologies for bringing up 'lawyers review' so much. Various parts
> of Bosch have worked in this space for a long time so I figured there was a
> dedicated counsel who can help guide engineering projects through GPL and
> other license linking and compliance.
> >
>
> The question was how to figure out programmatically what actually
> links with gpl pieces without doing a laborious manual review of every
> component in the product. And doing it at the yocto integration point
>

Yes, I misread the intent of the original question and went on a tangent. I
have had several times had to explain the differentiation because people
try to remove all GPL without understanding that LGPL can be used for most
things. I should have reread and engaged only after that.


> where the problem is introduced, and not after the fact in legal
> review where the cost of correcting that mistake is going to be 10x or
> 100x.
>
> Sounds like this could be a test in package_qa task? I'm not aware of
> anything in oe-core that does it, but experiments in that direction
> welcome.
>
> Alex
>


-- 
Stephen J Smoogen.
Let us be kind to one another, for most of us are fighting a hard battle.
-- Ian MacClaren

--0000000000003fdf090619967844
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, 29 May 2024 at 07:34, Alexand=
er Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">On Wed, 29 May 2024 at 13:18, Stephen John Smoogen via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> &lt;smooge=3D<a href=3D"mailto:gmail.com@lis=
ts.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>=
&gt;<br>
wrote:<br>
&gt; I wanted to bring up a nuance because you are saying &#39;GPL based li=
brary&#39;. There are several different GPL licenses which need to be evalu=
ated when linking to. The lawyers at Bosch can give the best advice, but th=
is following rule of thumb may be useful:<br>
&gt; Linking to licenses with AGPL -&gt; must be a compatible source licens=
e (aka source must be available and modifiable by user) and must meet addit=
ional requirements for delivery<br>
&gt; Linking to licenses with GPL -&gt; must be a compatible source license=
 (aka source must be available and modifiable by user)<br>
&gt; Linking to licenses with LGPL -&gt; can be a closed source library in =
many cases. [again get a lawyer&#39;s review]<br>
&gt;<br>
&gt; Then there are the GPL and LGPL with exception licenses. Those excepti=
ons might be something &#39;slight&#39; so that licenses incompatibilities =
between the OpenSSL or Apache can be still &#39;excepted&#39; for use. And =
then there are the exceptions which basically allow any closed source to li=
nk against it. Those need a lawyer&#39;s review. There are also differences=
 between version 2 and version 3 of the licenses that again need lawyer&#39=
;s advice.<br>
&gt;<br>
&gt; On many Linux operating systems the libc is based off of glibc which i=
s LGPL2+ with exceptions and GPL2+ with exceptions for various binaries. Ot=
her libraries that are in common use may also be. There are also example la=
yer&#39;s like the one that Etienne Cordonnier brought up which can help cu=
t down potential conflicts.<br>
&gt;<br>
&gt; And my apologies for bringing up &#39;lawyers review&#39; so much. Var=
ious parts of Bosch have worked in this space for a long time so I figured =
there was a dedicated counsel who can help guide engineering projects throu=
gh GPL and other license linking and compliance.<br>
&gt;<br>
<br>
The question was how to figure out programmatically what actually<br>
links with gpl pieces without doing a laborious manual review of every<br>
component in the product. And doing it at the yocto integration point<br></=
blockquote><div><br></div><div>Yes, I misread the intent of the original qu=
estion and went on a tangent. I have had several times had to explain the d=
ifferentiation because people try to remove all GPL without understanding t=
hat LGPL can be used for most things. I should have reread and engaged only=
 after that.<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
where the problem is introduced, and not after the fact in legal<br>
review where the cost of correcting that mistake is going to be 10x or<br>
100x.<br>
<br>
Sounds like this could be a test in package_qa task? I&#39;m not aware of<b=
r>
anything in oe-core that does it, but experiments in that direction<br>
welcome.<br>
<br>
Alex<br>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr">Stephen J Smoogen.<br><span style=3D"color:rgb(32,33,36);font-family:Ar=
ial,Helvetica,sans-serif;font-size:small;font-style:normal;font-weight:400;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;=
white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);displ=
ay:inline;float:none">Let us be kind to one another, for most of us are fig=
hting a hard battle. -- Ian MacClaren</span></div></div></div>

--0000000000003fdf090619967844--

