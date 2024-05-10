Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D3A2C25B5F
	for <webhook@archiver.kernel.org>; Fri, 10 May 2024 12:06:33 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web11.10156.1715340060103088521
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 May 2024 04:21:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FV9Tbb2Y;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-2b33d011e5dso1347159a91.0
        for <yocto@lists.yoctoproject.org>; Fri, 10 May 2024 04:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715340059; x=1715944859; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VkdW0j4gvNdVaAWWSQzzgOVoEXkspUNmDZgRINZTZoo=;
        b=FV9Tbb2YJZDn8Y3inS+007DtWhQEaGezOMgIWp0hr0qmqzBAJZ8D0x7fR+aTsqXTys
         gtk5i8CesDa4zUOptmIKe10F36KjOj6M6RZKrGf2z6lDWBxI4zCfmkwgFpmxBSr4qCyu
         L7t+uhnVyLwNs4RMVD9FYBWTJQyCwdAgZHF75n35F/OaYcGAvUm7J+UGdqnyphdLN6az
         XM0HQ31ELOZiM32vHhz+S+Pr+Rm+9IncJHw9Qn1UP6+IU1RiZrzBwsyNAJ0JDDBqUppE
         IJeIksEdebE5cqWjpUZBCpWNa0BPKS1ihwEE2ODD54UJsJfsQEjAq1RQJy+8hRG1hpg6
         77Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715340059; x=1715944859;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VkdW0j4gvNdVaAWWSQzzgOVoEXkspUNmDZgRINZTZoo=;
        b=Y0s5usz391EyBCcOx3Zpx6PCR8hZg0fhEe7zC3yYLSGup0yMZTkSxxSNM4pVSWjg2f
         px5CGFmTKktfz+czZhmr6+53h6qwBIV+C74iSP1VvxG2hoSicoxwh2OxTw0GosAht/fY
         eJEUgkpSc0Ryz1H3I1POvZukhxYEySobRvn8jL1ewuKR6TmlzENCcijkbSUz1OE8wONc
         36weOuEZH0rGwzhEmRtPMRXHWkZ56qHk9niQHWyfUFyHKSWc696PMblxsyJKSsohnzC3
         Zj9lHDKE5LK4T1lxSkrYVaMbReuqHxo7XVxnIm8tXAMOyjxhgoDvILnO/xdLXZ8EnjiJ
         0arg==
X-Gm-Message-State: AOJu0Yxj9ZUJbkdas/mceepgIR/LcjU0FRCeQ2D21D0hDwi3sKV4RDzE
	/uncH5UD+rn9YNO9HKZxfc7S1XwYdLzm8/O+oBCoyRhTUcpZnl5LIQi3IF6F7gfrLdkPDrDWb7t
	gEqRGfAKjhhrhkjAwrit2e9ZTTzqtUHxS9DFV+g==
X-Google-Smtp-Source: AGHT+IHSrOOn/RCVpmxB0SEGPcFja2cupaKKc7U8CfbPIPujQE/pwbCowSk25g0f4cKKXRIya2BD10h8dWPq/PGCyx8=
X-Received: by 2002:a17:90a:aa12:b0:2b4:1396:6d3d with SMTP id
 98e67ed59e1d1-2b6c710ff79mr3760593a91.11.1715340059163; Fri, 10 May 2024
 04:20:59 -0700 (PDT)
MIME-Version: 1.0
References: <737087f797ecd87620bc96abab014d4fac6bb1e5.camel@linuxfoundation.org>
 <DD5F76CF-3124-4673-A394-91EF62CFE5A9@arm.com>
In-Reply-To: <DD5F76CF-3124-4673-A394-91EF62CFE5A9@arm.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 10 May 2024 13:20:47 +0200
Message-ID: <CAGAf8LxoiBGwj1g93-aioAZC9mvU3vJFTtf3FN3=POuveVbPxw@mail.gmail.com>
Subject: Re: [yocto] [OE-core] Where are we at?
To: yocto@lists.yoctoproject.org, ross.burton@arm.com
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	openembedded-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 May 2024 12:06:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63072

We all here are trying to be somewhere... With Yocto!

Not an easy task. Not at all.

We believe in Fate. In Hope. In Yocto.

Hope dies last. Doesn't it?

Zoran Stojsavljevic
_______

On Thu, May 9, 2024 at 8:58=E2=80=AFPM Ross Burton via lists.yoctoproject.o=
rg
<ross.burton=3Darm.com@lists.yoctoproject.org> wrote:
>
>
>
> > On 9 May 2024, at 10:37, Richard Purdie via lists.openembedded.org <ric=
hard.purdie=3Dlinuxfoundation.org@lists.openembedded.org> wrote:
> > Intermittent do_compile failure in libportal:
> > https://autobuilder.yoctoproject.org/typhoon/#/builders/117/builds/4760=
/steps/12/logs/stdio
>
> Root caused this, fix incoming.
>
> > debuginfod keeps breaking:
> > https://autobuilder.yoctoproject.org/typhoon/#/builders/127/builds/3299=
/steps/14/logs/stdio
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14937
>
> I realised that I didn=E2=80=99t do what I thought I had previously so un=
derstand this now, hopefully fixable tomorrow.
>
> Ross
>=20
>

