Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF457C02198
	for <webhook@archiver.kernel.org>; Fri, 14 Feb 2025 11:23:38 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.web11.18735.1739532217185883680
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Feb 2025 03:23:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mNoHL0/8;
 spf=pass (domain: gmail.com, ip: 209.85.219.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6e4565be0e0so21855396d6.3
        for <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2025 03:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739532216; x=1740137016; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kw78mmtJ1ScY1qQJZg4yqePlWDMCGeeg7P402ZVmZE8=;
        b=mNoHL0/8lU58LtV2Gqp4/fTgR5bxlVWBYMBhA7HLBmoceQUy8w9TWtKnFgKc4Li0l7
         o6rt6VB/K6t4Jo1qUCf3ycAGfMEcSiaunex9YWpMSV4jYzhxZj+ecEz0I8OswkiafQ93
         DCt0d1QavBnyq9WOeO83ZcEdyM74q3mnm2Ak91SwmMtjrw2tDO/CKfFMWYJpxGWmsQR9
         cL98SZu/py7jvJBuPleTECYMx+m+Rl0i2xuDVJk2Clfyx9lisIj0ZAuJV+tl/dTLagpH
         bG9Wn211yXKRRu9PGnENbWj+5b6ThV+0vSz7Fpu/UB44Kc97qJPmSzOSLIUnJlijM6dU
         dt/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739532216; x=1740137016;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kw78mmtJ1ScY1qQJZg4yqePlWDMCGeeg7P402ZVmZE8=;
        b=YspsgfsPr6jbO35dnZWKDXH5mU4yH5r8If0Bs2GEe00NWlw+FROHU4t1/ASeC2dkBh
         4APdbMGo9U0O13Z3NcOurzGTc00qRcSvmwuu/g7mKtYz2LGXweAQ3WCXfFM1bFkh2mM+
         xecf7G92VBJD9IP0TCkcAJX2IwXS7jIR+vgstLiYRmZT2CICoCcUgBdaa9k1pKhZWtbP
         fRTXzGVY+ldek/dZ+uR562NFp3eLjKDisxgYwmmAre4h6eDdJB/cSapN/TNbhSbkWD8I
         79t1J2/RW+J9DxPtw6iR45nVHBas+1p+JNjXVwzgaDOigGA57IPS6if1ZwtqE2Y6rJrn
         ea1w==
X-Gm-Message-State: AOJu0YzKWjzanuLTdaU9b0BjnvIOJ14OFTqsJwcdk9EbBlDYP6PHf/Tr
	bY7AMtf4IWPb6qNHiryTv2h0RyfPqVrm9Pwh+twMzNiEMC3DfYcdBZ612Qvbq100af68Yav78bf
	RYriWVSxIckFT3urBYV0BKMNjS6g=
X-Gm-Gg: ASbGncvEWRZsII8l5D04v3CtioVUoUJUDDc/FneQMiVmUHFT8lqjdQelQn3aT3VMZpZ
	clIOcweSbI1BSh6CkS83W4vQOrcAb2ZyAbJa1EsJ/MltLMA3hPDDRPnHoP446xHUmtcNtenx4eZ
	AkalKH/4VWrjuRT5Ry18riXD+qSRZgWiw=
X-Google-Smtp-Source: AGHT+IGYXKOrUTHFBszv088mxJhY1/WZRUFNXcJhCY6EQSyBx/+VCQSP28oNOfwdth93hqQN9GnNMZE2JdO3jUk+CkQ=
X-Received: by 2002:a05:6214:d0c:b0:6d8:a39e:32a4 with SMTP id
 6a1803df08f44-6e46eda3a58mr191623536d6.25.1739532216141; Fri, 14 Feb 2025
 03:23:36 -0800 (PST)
MIME-Version: 1.0
References: <e1ee9abe9c5d3dcca060978c6136bad6d64567ca.camel@vrag.ch>
 <CANNYZj8KOYO+zTditFWH=RRM4hWG0xSMtwDQNUBUdP0Lf2TyEA@mail.gmail.com> <CAO5Uq5QU8B2em3=CaifbCtHW=6GvWMNBYo2r-ExjL4zbTqkWaQ@mail.gmail.com>
In-Reply-To: <CAO5Uq5QU8B2em3=CaifbCtHW=6GvWMNBYo2r-ExjL4zbTqkWaQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 14 Feb 2025 12:23:24 +0100
X-Gm-Features: AWEUYZkMI7PBwMDHVbgB_WWogiglXrRI6Oa5Pe10lL_a1KSzSa0HQBSw4H3Eehc
Message-ID: <CANNYZj-EWzMoQ9FPdkvNTVKW32Mz6OUqSH1qbAc=wqP_=ktKXA@mail.gmail.com>
Subject: Re: [yocto] cargo does not build currently
To: Alex Kiernan <alex.kiernan@gmail.com>
Cc: yocto@lists.yoctoproject.org, david.daniel@vrag.ch
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2025 11:23:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64813

It would help to come up with a set of reproducible steps, e.g.:

- check out revision X
- bitbake cargo-native
- check out revision Y (as close to X as possible)
- bitbake cargo-native which reliably fails

and file a ticket in bugzilla for it. The issue is definitely real.

Alex

On Fri, 14 Feb 2025 at 12:19, Alex Kiernan <alex.kiernan@gmail.com> wrote:
>
> If you're seeing the same failure as me, its cargo-native and
> python3-cryptography-native - I've just pulled the latest changes and
> both failed to build here, cleaning them up seems to have fixed it.
>
> On Tue, Feb 11, 2025 at 2:00=E2=80=AFPM Alexander Kanavin via
> lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
> wrote:
> >
> > Run bitbake -c clean cargo and try again. Something in those recipes do=
esn=E2=80=99t do incremental builds properly.
> >
> > Alex
> >
> > On Tue 11. Feb 2025 at 14.55, David Daniel via lists.yoctoproject.org <=
david.daniel=3Dvrag.ch@lists.yoctoproject.org> wrote:
> >>
> >> Hi all
> >> Some problem with the build of cargo just popped up. I am doing
> >> currently builds on the master branches. It turns out after a sync of
> >> my sources cargo does not build anymore. It spits weird error messages
> >> that it cannot find the crate for libc:
> >>
> >>     can't find crate for `libc`
> >>
> >> Somehow things got mixed:
> >>
> >>     error[E0460]: found possibly newer version of crate `std` which `l=
ibnghttp2_sys` depends on
> >>
> >> I attached the build output in case of interest.
> >>
> >> Has anyone an idea how I can fix this?
> >> Thanks for any hints!
> >>
> >> Greets
> >> Dave
> >>
> >>
> >>
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#64765): https://lists.yoctoproject.org/g/yocto/mess=
age/64765
> > Mute This Topic: https://lists.yoctoproject.org/mt/111122235/3618097
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kiernan=
@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>
>
> --
> Alex Kiernan

