Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2123C46CD2
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 23:16:20 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web11.2475.1706138176813371380
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jan 2024 15:16:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=M2A7qhze;
 spf=pass (domain: gmail.com, ip: 209.85.128.177, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-60036bfdbfeso27597597b3.3
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 15:16:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706138176; x=1706742976; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dBItk4bpbsyB7eTe4xoJ70LISqY97NKd7FByHWKVN/E=;
        b=M2A7qhze279/4OLrEl0Zz0FArmvJJlIO6fkwRqiV36N2L8E68h1rKWveBrL2EgHJDG
         pgXPbrolnNpCUrtqvMAmZWunLmz+JCrOhFj0eXxcCQi5XjmOVs1osj7blp+IzT2dhWwb
         vkgwy9jEs3+KKDFWiZ2p4fVEyMYHYBHauduOULdYwzHlknTlrEkguAnxvVHNyt2Z/zFz
         Rsh+5Xrz4TnuJgppMiWIPaJ88Jk48MVSQ3Gi7q3TjyIxcF7Fmez4kGR/CLLJm8Y175iT
         7zPvmzjiREKL+00C0Itc+X2Rds0q9cJIMr1fdgnKcJ/GU4QEBKQJRicTtyQ+kzkjH5LM
         9o5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706138176; x=1706742976;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dBItk4bpbsyB7eTe4xoJ70LISqY97NKd7FByHWKVN/E=;
        b=G6wFHnksf4AOG0f6hJnw1Qr0pyMbHIgKnwCq/ncuRFrhNU0k1cq+1X8jhlfmFaFYYk
         UpOnoXnSyLXNd09Dd6Vk4r9BS75t6GkOOMunNlxbUWT7yrpo9MOM6YlGzTi5x28FdAAe
         MDNKlcrv/EQ1a36E66+aYINyCDN7kjOOa7q3P9ThvjjRMONpANtgazeIV3V95OWSNMIE
         7aAuJ1TQnGqk055j6GAQfAjuvJjSoq0apsfc5AClLuv1A6F5xihO3xxA5l1HJ1au0E7X
         o5Di2G7EvmWaL+KB3VSpkkIvOPynFtadyziYD3o1FzFn1VD2eD4oZBRD/wad7YnlJSAc
         A6mA==
X-Gm-Message-State: AOJu0YxARA3ase4zSCyKD/4FdGRl5F81MpVswcwYIx5XUEOwUB/vjYSh
	lmvgeTLBeK9SCKmEtoFsQ+Ip9j6EcmcmS4YR5MAu2GtSMTVaQVeyjW2MvH/7tOZvv+tuUhUZdXl
	QyrdElALkuwcNoellmI49c7mfjKE=
X-Google-Smtp-Source: AGHT+IG4WEdDSrdU9zVKzL5f1b8yl+7vX3k5NiwvXIJdgqwzLJ3h5VKdIBjeidRQ9jmFqgwzkn1pj6p5b1mL4XNnOas=
X-Received: by 2002:a25:86ce:0:b0:dbd:9a3e:50d8 with SMTP id
 y14-20020a2586ce000000b00dbd9a3e50d8mr110644ybm.111.1706138175857; Wed, 24
 Jan 2024 15:16:15 -0800 (PST)
MIME-Version: 1.0
References: <5e58c6719d797be31ece8149535531036ae18a47.camel@gmail.com>
 <20240124175901.GA22635@localhost> <CAJdd5GaMEKDF=T-udE9K4pdoQTs-WV4EXPL0QUUNwkdCAGxkgA@mail.gmail.com>
In-Reply-To: <CAJdd5GaMEKDF=T-udE9K4pdoQTs-WV4EXPL0QUUNwkdCAGxkgA@mail.gmail.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Wed, 24 Jan 2024 15:16:04 -0800
Message-ID: <CANx9H-BPNxygNezUyDeHf3GseETi0N9n8D=cwdDrZWWK1W0jBw@mail.gmail.com>
Subject: Re: [yocto] bmap-tools repository closes
To: JPEWhacker@gmail.com, yocto@lists.yoctoproject.org
Cc: dedekind1@gmail.com, twoerner@gmail.com
Content-Type: multipart/alternative; boundary="000000000000e8e9b7060fb93fc8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 23:16:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62276

--000000000000e8e9b7060fb93fc8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 24, 2024 at 2:02=E2=80=AFPM Joshua Watt <JPEWhacker@gmail.com> =
wrote:

> On Wed, Jan 24, 2024 at 10:59=E2=80=AFAM Trevor Woerner <twoerner@gmail.c=
om>
> wrote:
> >
> > Hi Artem,
> >
> > On Wed 2024-01-24 @ 02:01:08 PM, Artem Bityutskiy wrote:
> > > Hello Yocto community,
> > >
> > > some parts of Yocto software (MIC?) use the 'bmap-tools' project to
> speed up
> > > image flashing.
> > >
> > > https://github.com/intel/bmap-tools
> > >
> > > I am the original author of the software, and I created it many years
> ago to
> > > speed up Tizen image flashing, and it helped a lot back at the time.
> It was also
> > > my first python project, so it was a lot of fun learning python while
> also
> > > creating something useful.
> >
> > Thank you for your contribution, this tool has been quite useful for me
> over
> > the years.
> >
> > > But after that, I stopped working on it and it was mostly Yocto folks
> who
> > > contributed changes here and there. I never had time and enough
> motivation to
> > > maintain the project further, but other folks helped.
> > >
> > > Simon McVitte was active maintainer, but he said he does not have tim=
e
> for it
> > > now as well.
> > >
> > > The project is in "github.com/intel" space, and Intel is going to
> archive the
> > > git repository soon. This basically means the repository becomes
> read-only soon.
> >
> > Thank you for this update and letting us know ahead of time.
> >
> > > Would Yocto community have enthusiasts to fork it and maintain the
> fork?
> >
> > Yes, I'll volunteer to maintain it going forward. My non-stackoverflow
> python
> > knowledge is minimal, but I recently dug deeply into bmaptools to solve
> an
> > issue I had noticed. So I'm confident enough to take it over if nobody
> else is
> > interested.
>
> Ya, it's an awesome tool and a huge time saver for us, so can also
> help maintain it
>

We can probably move it under the https://github.com/yoctoproject umbrella?
I can also help maintain this tremendous time saver.

=E2=80=94Tim

>
> >
> > Best regards,
> >         Trevor
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62273):
> https://lists.yoctoproject.org/g/yocto/message/62273
> Mute This Topic: https://lists.yoctoproject.org/mt/103930262/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000e8e9b7060fb93fc8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Jan 24, 2024 at 2:02=E2=80=AFPM Joshua Watt &lt;<a =
href=3D"mailto:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-=
color:rgb(204,204,204)">On Wed, Jan 24, 2024 at 10:59=E2=80=AFAM Trevor Woe=
rner &lt;<a href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@g=
mail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Artem,<br>
&gt;<br>
&gt; On Wed 2024-01-24 @ 02:01:08 PM, Artem Bityutskiy wrote:<br>
&gt; &gt; Hello Yocto community,<br>
&gt; &gt;<br>
&gt; &gt; some parts of Yocto software (MIC?) use the &#39;bmap-tools&#39; =
project to speed up<br>
&gt; &gt; image flashing.<br>
&gt; &gt;<br>
&gt; &gt; <a href=3D"https://github.com/intel/bmap-tools" rel=3D"noreferrer=
" target=3D"_blank">https://github.com/intel/bmap-tools</a><br>
&gt; &gt;<br>
&gt; &gt; I am the original author of the software, and I created it many y=
ears ago to<br>
&gt; &gt; speed up Tizen image flashing, and it helped a lot back at the ti=
me. It was also<br>
&gt; &gt; my first python project, so it was a lot of fun learning python w=
hile also<br>
&gt; &gt; creating something useful.<br>
&gt;<br>
&gt; Thank you for your contribution, this tool has been quite useful for m=
e over<br>
&gt; the years.<br>
&gt;<br>
&gt; &gt; But after that, I stopped working on it and it was mostly Yocto f=
olks who<br>
&gt; &gt; contributed changes here and there. I never had time and enough m=
otivation to<br>
&gt; &gt; maintain the project further, but other folks helped.<br>
&gt; &gt;<br>
&gt; &gt; Simon McVitte was active maintainer, but he said he does not have=
 time for it<br>
&gt; &gt; now as well.<br>
&gt; &gt;<br>
&gt; &gt; The project is in &quot;<a href=3D"http://github.com/intel" rel=
=3D"noreferrer" target=3D"_blank">github.com/intel</a>&quot; space, and Int=
el is going to archive the<br>
&gt; &gt; git repository soon. This basically means the repository becomes =
read-only soon.<br>
&gt;<br>
&gt; Thank you for this update and letting us know ahead of time.<br>
&gt;<br>
&gt; &gt; Would Yocto community have enthusiasts to fork it and maintain th=
e fork?<br>
&gt;<br>
&gt; Yes, I&#39;ll volunteer to maintain it going forward. My non-stackover=
flow python<br>
&gt; knowledge is minimal, but I recently dug deeply into bmaptools to solv=
e an<br>
&gt; issue I had noticed. So I&#39;m confident enough to take it over if no=
body else is<br>
&gt; interested.<br>
<br>
Ya, it&#39;s an awesome tool and a huge time saver for us, so can also<br>
help maintain it<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">We can probably =
move it under the <a href=3D"https://github.com/yoctoproject">https://githu=
b.com/yoctoproject</a> umbrella? I can also help maintain this tremendous t=
ime saver.</div><div dir=3D"auto"><br></div><div dir=3D"auto">=E2=80=94Tim<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-co=
lor:rgb(204,204,204)"><br>
&gt;<br>
&gt; Best regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Trevor<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62273): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62273" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62273</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103930262/924=
729" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/103930262/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000e8e9b7060fb93fc8--

