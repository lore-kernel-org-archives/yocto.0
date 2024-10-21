Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E683FD0E6FA
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 11:41:57 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web10.43994.1729509698655638681
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Oct 2024 04:21:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Og+Q5THc;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2fb5a9c7420so41631751fa.3
        for <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 04:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729509696; x=1730114496; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uIHv4Hjbk+Ocdrw4WfLCMCYvfjeeltcjElHFp3U5bqE=;
        b=Og+Q5THcB6h4AV+Yo5nRUphvk5iMlGg2DExHJuU+HLf3zmXALe1n5mW7+BPCcT9tcr
         zAzwg7bWzMLbYUueTLl2zrROJV1rDF6mNmzx7rxXIbdHSlAK/nu7a2N75BWJix9Vw8+J
         yyirYiC/pwHuoWUYc0/Umr4YhmcXJlhiEd2IT0pVk3q5McVxpgMU3ghgeL7HJgrGgACR
         sZ896DPjPUMzPIeY8PchA+573314qBPhnxOlAnKKK1m0Rp0xwJ0L/GwvBi5OCKlG4FQ/
         2DQHFvN+bxdXa8fSKnfXZyPvo3A6hyw/G27XaUUj+q3EM4VVc6lDcDqIbgRTpaxCG/nu
         /vcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729509696; x=1730114496;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uIHv4Hjbk+Ocdrw4WfLCMCYvfjeeltcjElHFp3U5bqE=;
        b=TqoXG/gko08n0S5ctm0YhPPRwgTw4MCZa9S6teHweI2eWmY8TPPd4c/zhocITYNyP4
         T6CsUxOt2mxntdOvzgfO99kigDnJxtFw+Ajyj3bkPwU+6PIech7NqVr5+ORQEBnMtxib
         yRBj3v23SHKngfXu9JYU33vnZQmOgJrsVeAIeeiWK/5vleLm2DYpxCXXkKO+iCHoWGvi
         x+GW3RT9R0tCqZVEVgLNdLQrTevKsFRNYS1cPNn8eV0oRyfOYV9dZdLojnDJ2Nk6a4Dc
         YBd9kfCjpQiHHTwdlpeI83UoGStxCHl4F4psJEilXJYpwFwKDx4i5vlK0B4Qxc+khMeD
         AJZw==
X-Gm-Message-State: AOJu0YwH7GE+YYN06kDh2zfxUuuyaRRXzxAWlRDc7MseJi5MNtjbR5v5
	duKRJTghwz1CO1s8+hi6+S0C3tatMSL689t7ZKNRXBh8ZDfEehqOO1uMsoPBpt2bWl2M5jjpFIL
	qT5QGTwApSTFvX0Bzzhunqv2myOQ=
X-Google-Smtp-Source: AGHT+IGGqUIGBqza63du7ghmGJsxf6gEpZ7blFIyl8XlDVWS0stYQx9KE/lsajvt4mYB/C7F7PQU0Qi5LovRRnJnZU8=
X-Received: by 2002:a2e:a990:0:b0:2fb:5138:a615 with SMTP id
 38308e7fff4ca-2fb82da7b49mr52387251fa.0.1729509696093; Mon, 21 Oct 2024
 04:21:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8Lya5tRX6CabEYHyMumvahpmd5AUBNERVz2sUyFaLcLUPg@mail.gmail.com>
 <24D459CD-39FE-4164-AEA5-A2FB14C047EE@arm.com>
In-Reply-To: <24D459CD-39FE-4164-AEA5-A2FB14C047EE@arm.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 21 Oct 2024 13:21:22 +0200
Message-ID: <CAGAf8LwdxBuDfEjX7uB4bq-gCJrtDqTkrdKe5ogvxLdQuCmP1w@mail.gmail.com>
Subject: Re: [yocto] ERROR: Nothing PROVIDES 'virtual/kernel'
To: Ross Burton <Ross.Burton@arm.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 11:41:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64068

Hello people,

I think something changed recently, as usual, as you all, support
people change some stuff from release to release.

As an example:
S =3D "${WORKDIR}" is no longer supported
Replace the line that sets S to "${WORKDIR}" with the appropriate path
to your source files.

For example:
S =3D "${WORKDIR}/path/to/source"
_______

I think I need to use mainline and stable as ONLY sources for the
kernel (defined in POKY). meta-bbb as kernel provider does NOT apply
anymore.

I need to check this theory! I know that for the mainline it does work.

Thank you,
Zee
_______






On Mon, Oct 21, 2024 at 12:29=E2=80=AFPM Ross Burton <Ross.Burton@arm.com> =
wrote:
>
>
>
> > On 21 Oct 2024, at 08:25, Zoran via lists.yoctoproject.org <zoran.stojs=
avljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hello Yocto Community Support Team,
> >
> > I have an interesting problem to report.
> >
> > Parsing recipes: 100%
> > |######################################################################=
##|
> > Time: 0:02:30
> > Parsing of 2829 .bb files complete (0 cached, 2829 parsed). 4811
> > targets, 1885 skipped, 0 masked, 0 errors.
> > NOTE: Resolving any missing task queue dependencies
> > ERROR: Nothing PROVIDES 'quilt-native'
> > quilt-native was skipped: incompatible with machine beaglebone-yocto
> > (not in COMPATIBLE_MACHINE)
>
> The kernel problems are not the source of your problem: this is.
>
> For some reason you=E2=80=99ve managed to break the native/target separat=
ion: a native recipe shouldn=E2=80=99t care about the target machine.
>
> Glancing at the layer there=E2=80=99s quite a lot of cruft from older rel=
eases still, so I suspect you=E2=80=99ve a bit of confusion in there somewh=
ere.
>
> FWIW, meta-ti has a beaglebone BSP that is supported by TI, and linux-yoc=
to is pretty much mainline, and if you want _exactly_ mainline then you can=
 just SRCREV it to the right branch: the linux-yocto git tree contains the =
mainline tags too.
>
> Ross

