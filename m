Return-Path: <t.f.g.geelen@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F21CBC369AB
	for <webhook@archiver.kernel.org>; Thu, 24 Apr 2025 11:38:13 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web10.12801.1745494685976384963
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Apr 2025 04:38:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=E91LUwQc;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: t.f.g.geelen@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-7fd581c2bf4so706456a12.3
        for <yocto@lists.yoctoproject.org>; Thu, 24 Apr 2025 04:38:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745494685; x=1746099485; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yCYwrV5YODi9W3o7qzVB7i+m0Fd5Wj0vXC2Br9h+YJY=;
        b=E91LUwQcJnoY5lHz6umh/MlgV5qVAJAvqkNTWFzIEHwZ+sh7youTcYz/XWLqBotjIU
         bdXuu0Xy/tx62Hjb1V+FzL3KiNYsYlNAzVMfrdYf2uz18CccnIAqwfRzK/UySHalTvnI
         pPgg8mOr3T7GSneutYJZf68ZezlD2ob/hxOSiZkko7Zas1vDX+nQyQRahx1gIimDc9zi
         ub4s5DUAgQwM72W7kLLCy7fg5WUpoIneIeAqwQ62ENyjcrwGkO8j8pBs3RkBHSVVNTbw
         SFsBluxkjf/sugVMXATb7QiTEN5LdTkjNmYAn6Hgf57CSKX1Dm/0lsTHYOTHuLqIVvnV
         OxVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745494685; x=1746099485;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yCYwrV5YODi9W3o7qzVB7i+m0Fd5Wj0vXC2Br9h+YJY=;
        b=LW1Pnc3/acnH1Mw99D2wxD791xZ1l/UdzzIsFCeYupFMyH5FVkf9Ng+veNUevMJzxR
         73qgNjeITH5StUjcxnzvCCBIxwe2HIARWTDoO0ZENodSKeUox2hmMijHUARGV85BXbc5
         xJX4IyMZ0Cz7793Rw/joixiYRExTTUmgkpKPbeVkvU3KU7adJwqWmg/IRuO1L7g8aUH5
         KF/YybY10sz2Iw9Zq/C+V81FYSbHJtlXsKzYi8O1RjgqSBa4B33Yzq/3wz6Axu0KM/Cv
         lO/jbFOYMQa6SSjhHD1TUvdvs2ZMkyit5tTGfA4yo5gvIUvFSgWP5vcH753Idh48aviz
         Apvw==
X-Gm-Message-State: AOJu0YwMgf3bYiX3fEJAJvpsoP6Fta690H3HPQpc71mPZ+ocgLxYP7sa
	a/JkMrhOICHjEP0OIrbBGCX0Zc9ecYja842btBOVsbCIZP4On4cCdVeCCyZEhlZkOUCj9ijp/kO
	STw5uvU63u9DRCXfYADyNYHBLoYM=
X-Gm-Gg: ASbGnctuLEfe8mfaB0OVaws4oclb695ZYyl2KmQ1AdNzvVNPlsz1zWHUD9n9DJ+2Cy4
	oMWTshAk4gJFGtjCghgyxofmCXpfpnstcEVyDtpoXd+vpfaSoaUHE0jGam2K2Q1C5rHHiQ9XI5Q
	bLdcQ9I4PzM3DBTEqvUXtb
X-Google-Smtp-Source: AGHT+IFXjxMTnuHyMK19541Stp3YxYlf8Ovkz3jUcXzRAnUg0wSYY2XxDTEy3m7JHEEqKr1+FRZ395OLRyUq49lMkWI=
X-Received: by 2002:a17:90b:1f90:b0:2ff:5ed8:83d0 with SMTP id
 98e67ed59e1d1-309ed281cc0mr3908251a91.16.1745494684955; Thu, 24 Apr 2025
 04:38:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAJo0Az5-Wy8RyJMcNG=0XynEaJ30YUr9eRXno0ZC6yKB4bQYLg@mail.gmail.com>
 <183447646FA7BED4.31078@lists.yoctoproject.org> <183447EA8991BD5A.31078@lists.yoctoproject.org>
 <CANNYZj9ZEiVebtxiaXEsFSR_2EmYDq5Qx4M3wskpKdL0mZMvXg@mail.gmail.com>
 <CAJo0Az703ob3hXzqYGHCxVQ=L9RLpc_yYf2uOsTskkZ3g3JZ+A@mail.gmail.com>
 <18346FC88571D13F.11031@lists.yoctoproject.org> <CANNYZj_iPmqAd21sRthbPHRhJ0u27YqxuCNH1+N-t8-dzmFvpw@mail.gmail.com>
In-Reply-To: <CANNYZj_iPmqAd21sRthbPHRhJ0u27YqxuCNH1+N-t8-dzmFvpw@mail.gmail.com>
From: Tom Geelen <t.f.g.geelen@gmail.com>
Date: Thu, 24 Apr 2025 13:37:53 +0200
X-Gm-Features: ATxdqUGgR_KZP_65LGfeMmABgfjQKS9SVgPtQskTKYsqVr25aTx5NP-eT8S1BLA
Message-ID: <CAJo0Az55sVaCsYHU4esUswEcx5O12OXMUdD4h9v8MiDyyGoqKw@mail.gmail.com>
Subject: Re: [yocto] [auh] Setting up AUH for non pypi recipes
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Apr 2025 11:38:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65242

Awesome, thanks for the update! In the meantime the workaround you
proposed works wonders. Thanks for the assistance.

Tom

On Thu, Apr 24, 2025 at 1:16=E2=80=AFPM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> I have now sent a patch to address the core issue:
>
> https://lists.openembedded.org/g/openembedded-core/message/215360
>
> Alex
>
> On Tue, 8 Apr 2025 at 21:51, Alexander Kanavin via
> lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
> wrote:
> >
> > On Tue, 8 Apr 2025 at 21:16, Tom Geelen <t.f.g.geelen@gmail.com> wrote:
> > >
> > > Ah nice additional thing indeed. I will keep it as UNPACKDIR as I
> > > believe that is now the preferred place.
> > >
> > > Other than that, does anyone have a clue on why devtool (via AUH)
> > > always seems to throw a git error when it tries to upgrade a github
> > > based recipe?
> >
> > As I said, the particular error in your original message is caused by
> > S =3D "${UNPACKDIR}/git", and if you tweak it as suggested, the upgrade
> > will work. If you have other examples I can take a look, but AUH
> > handles oe-core pretty well in general, including github based
> > recipes.
> >
> > Alex
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#65128): https://lists.yoctoproject.org/g/yocto/mess=
age/65128
> > Mute This Topic: https://lists.yoctoproject.org/mt/112148749/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin=
@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

