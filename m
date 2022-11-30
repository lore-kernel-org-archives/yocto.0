Return-Path: <smooge@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49FCFC352A1
	for <webhook@archiver.kernel.org>; Wed, 30 Nov 2022 10:52:23 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.8127.1669805534932874994
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Nov 2022 02:52:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LbhdWl4N;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: smooge@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id o12so7508329pjo.4
        for <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 02:52:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nwA7Atp9Tn7yjq+rCrbokZWbzctCjS1T44NpuZE8pyA=;
        b=LbhdWl4NFtyq569u9ltzaWWR5/ihC4/Hb+Ne1yJaTTd/XhJfC7EI5zJM9TRtskydwu
         g6NLGSblfg1BhPG3b7grFU0cScprgR2Nd3fI11CETZe+J1vwntIQ/L3FF2Ht3oA1Y8TY
         lVY5LxUJpfVxlDAm2PKwmhgCwQ2bgkieuWY0/NOYKzrUaG2aF7ABaqs/3f0oLki7PAhp
         hdvHm9X92C8vqcyjH9e4rFD3h9sCfFLfU8TNRd/UspMUcbiSE9Su84jlkUoXm+OrFdzj
         E13nH4HsRYqlyVNKjhUGTG96G8eYhfi/59v3mgr7zJudbZts99gMvslistPopK2OrdnA
         EXkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nwA7Atp9Tn7yjq+rCrbokZWbzctCjS1T44NpuZE8pyA=;
        b=joGU7GEVl99G2B+jQbDgjjttNES6JsGVmbS8Y4hiXqokleruDfJ9BehC5LboHpuyO0
         USqVXES/fMpbCnME1Iv7s3mpv8L5tilDepS3ZMfzi26K8d8HBPsu32+sx1DgTLzDTuZG
         t2HkhOdIPsfHa84C/Hp/5VkA8lfMO2Bj8In5KXH/WJetnJAMDmMR0SsfGBq4bzDIu9s8
         M5WvUJLl1OwtJZ4+r33mYyruBSHM2gEgTzsCMfmqZ6htfVS89ve2k5hlDWCXb4SDQ2jW
         zpfm1MDESdOTUnJo+UAe2lUQABkGIqFW3yxCW/hKzMZHn7Q4NUUM2x4cKmeoNU1N49v5
         RDIQ==
X-Gm-Message-State: ANoB5plss1+y4yuhNpcQzo7QOraVEkmhagdLdnEluk2acDW9MZtzM89o
	Drt3xhrl4UIRNmLxTUOgAKSd+e33pAggE5Susjc=
X-Google-Smtp-Source: AA0mqf58x86EHhD85fBtgpxFSpz14vBELpZTSgjjkNaPZh3YCs3pNJus28IjV8hMbcqLoWDL3TD2rv2xQGcSiU0suO0=
X-Received: by 2002:a17:902:848d:b0:185:378d:7c18 with SMTP id
 c13-20020a170902848d00b00185378d7c18mr51959517plo.21.1669805534326; Wed, 30
 Nov 2022 02:52:14 -0800 (PST)
MIME-Version: 1.0
References: <0b6801d90409$885d6860$99183920$@gmail.com> <CANNYZj8Y37+s6Jzo1XvX0uCYNFc=NqOH8PWrFSL9_=TOS2ja7Q@mail.gmail.com>
In-Reply-To: <CANNYZj8Y37+s6Jzo1XvX0uCYNFc=NqOH8PWrFSL9_=TOS2ja7Q@mail.gmail.com>
From: Stephen John Smoogen <smooge@gmail.com>
Date: Wed, 30 Nov 2022 05:52:03 -0500
Message-ID: <CANnLRdi+naMb9Ga+7AtZaQrTh-FjapUa_0qTdDYHUbHKvakbag@mail.gmail.com>
Subject: Re: [yocto] Y2038 proposal
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b7b2bd05eeade5bc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 10:52:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58668

--000000000000b7b2bd05eeade5bc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 30 Nov 2022 at 03:08, Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> On Tue, 29 Nov 2022 at 16:45, Stephen Jolley <sjolley.yp.pm@gmail.com>
> wrote:
> > We=E2=80=99d welcome a proposal/series on how to move forward with the =
Y2038
> work for 32 bit platforms.
>
> I have the following proposal:
>
> 1. A branch is made where:
> a. "-D_TIME_BITS=3D64 -D_FILE_OFFSET_BITS=3D64" is enabled globally.
> b. qemu is always started with "-rtc base=3D2040-01-01", simulating
> Y2038 actually occurring.
> c. an additional runtime test verifies that both RTC clock and system
> clock report 2040.
>
>
Going from various problems I saw with systems with smaller time wraps,
setting a time after wrap occurs misses most of the problems which wall
occur. Many systems will work fine with either 'negative' or 'smaller
dates' but crash, burn, etc when running when the counter wraps around. I
would suggest setting the test date to -N minutes before wrap over to run a
first set of tests, and then N minutes after the wrap to run a second set
of tests. This would hopefully catch programs which are worse off.

--=20
Stephen J Smoogen.
Let us be kind to one another, for most of us are fighting a hard battle.
-- Ian MacClaren

--000000000000b7b2bd05eeade5bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, 30 Nov 2022 at 03:08, Alexand=
er Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">On Tue, 29 Nov 2022 at 16:45, Stephen Jolley &lt;<a href=3D"mailto:sjol=
ley.yp.pm@gmail.com" target=3D"_blank">sjolley.yp.pm@gmail.com</a>&gt; wrot=
e:<br>
&gt; We=E2=80=99d welcome a proposal/series on how to move forward with the=
 Y2038 work for 32 bit platforms.<br>
<br>
I have the following proposal:<br>
<br>
1. A branch is made where:<br>
a. &quot;-D_TIME_BITS=3D64 -D_FILE_OFFSET_BITS=3D64&quot; is enabled global=
ly.<br>
b. qemu is always started with &quot;-rtc base=3D2040-01-01&quot;, simulati=
ng<br>
Y2038 actually occurring.<br>
c. an additional runtime test verifies that both RTC clock and system<br>
clock report 2040.<br clear=3D"all"><br></blockquote></div><div><br></div><=
div>Going from various problems I saw with systems with smaller time wraps,=
 setting a time after wrap occurs misses most of the problems which wall oc=
cur. Many systems will work fine with either &#39;negative&#39; or &#39;sma=
ller dates&#39; but crash, burn, etc when running when the counter wraps ar=
ound. I would suggest setting the test date to -N minutes before wrap over =
to run a first set of tests, and then N minutes after the wrap to run a sec=
ond set of tests. This would hopefully catch programs which are worse off.<=
br></div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature"><=
div dir=3D"ltr">Stephen J Smoogen.<br><span style=3D"color:rgb(32,33,36);fo=
nt-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,25=
5,255);display:inline;float:none">Let us be kind to one another, for most o=
f us are fighting a hard battle. -- Ian MacClaren</span></div></div></div>

--000000000000b7b2bd05eeade5bc--

