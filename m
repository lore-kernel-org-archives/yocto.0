Return-Path: <tom.isaacson@teknique.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4371CEB64DC
	for <webhook@archiver.kernel.org>; Fri, 14 Jul 2023 20:08:47 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.web10.5481.1689365322116535659
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jul 2023 13:08:42 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@teknique-com.20221208.gappssmtp.com header.s=20221208 header.b=Q2Wcg2UA;
 spf=none, err=SPF record not found (domain: teknique.com, ip: 209.85.219.50, mailfrom: tom.isaacson@teknique.com)
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-635e3ceb152so11341036d6.2
        for <yocto@lists.yoctoproject.org>; Fri, 14 Jul 2023 13:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=teknique-com.20221208.gappssmtp.com; s=20221208; t=1689365321; x=1691957321;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v9/pjZzlSvbXZPa3OoUBKtxt9weiH6Ds8EJyhgr1r20=;
        b=Q2Wcg2UAbupm1CkvoRvWXY5hvyS11V47ka4pODI+wdD+pz82j36v22+eWUdWoGbr9p
         3c6IhP+RWiQwr78IOHV8lk6pNXs8ZUxYP/ya6IAxr4xzauyQjJ/nKihpVCgv+5iwuLeu
         A7ZISIVXaZKjhTD0Tx+HJbYaAbJUXGgr6Rr6arIY+rvcjpSDMNZhmQxsUyjFlfGUvd+A
         8VfZHOmJDE35/ZF5kYVN7TfcVifOuZcYAiaCX6EJNnjILk+BzbBuNzw1HQCHomzMZzyI
         fe1rkQsiDyzyF8KV2teA21XZqJhHz7p9vUs27ZiooB6Ua/EoYJdGTFlYkBFwx0MH2mtM
         3tjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689365321; x=1691957321;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v9/pjZzlSvbXZPa3OoUBKtxt9weiH6Ds8EJyhgr1r20=;
        b=cAfM4TnD3W9x4nn1O7j6pBRXhAj7DZfs4GKuAzvFkqVMMMUeLlNC1YtiB0o3IXeQmN
         7pUmP7dEAFeVb6njBwSQODpdHGGzZHyRyoT1FwjVcma+t0fwuL/zKHDC9p0TfI5I5ZBG
         fq1TMgEQUTPmPRgQvpp/t08x1mjHW6NG2jgTq9AtVQBdDo0ByBaBhJz5u+wdFXVrv66D
         0aeV5gG4YkB5rMerguq/BrrtEDkpAJK7HiWhhWxUgH24zRyAppOzaDMcwRbMfVzgFcIJ
         kbhG2R7qRPYYNJ1CX+ddyKDI4CoZp28GJf7jCeB1gfCPh7lm6Jcpv255fQwE47h9hiXW
         HD2Q==
X-Gm-Message-State: ABy/qLZ9s0JP0Pu9F7cpyfvDfi0BJ2OWMNIXB0jDsFsYxiMS5WMHM1SS
	PQ5bNmkSLYiq5DGBJf22Je+nfm9Dv0zTE3qT5+aAlg==
X-Google-Smtp-Source: APBJJlG0oI9/aM0Xzbzx+lJ5tX3DTIQUdqws8AClbj8Mhtr5lyNBkzE2pH+9F6hTVMPLbnHjmoscad+u10p0oj0y8hk=
X-Received: by 2002:a0c:f588:0:b0:623:86a9:7696 with SMTP id
 k8-20020a0cf588000000b0062386a97696mr4757238qvm.5.1689365321106; Fri, 14 Jul
 2023 13:08:41 -0700 (PDT)
MIME-Version: 1.0
References: <CA+EiEZLqLzBreVxigh9f2uM2L9bP3Z6RZ0UfEWhQcGBNaLoD1A@mail.gmail.com>
 <CANNYZj-9eUXBpK3YV4ve=DFJS5Ej9g9PptAL94c83QR5BhhnPg@mail.gmail.com>
In-Reply-To: <CANNYZj-9eUXBpK3YV4ve=DFJS5Ej9g9PptAL94c83QR5BhhnPg@mail.gmail.com>
From: Tom Isaacson <tom.isaacson@teknique.com>
Date: Sat, 15 Jul 2023 08:08:31 +1200
Message-ID: <CA+EiEZ+e2SvgXjv8G+duoaVG_NF+uzqKDaTz3r2zGkC11xgK-Q@mail.gmail.com>
Subject: Re: [yocto] How does SOURCEFORGE_MIRROR work?
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jul 2023 20:08:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60582

Ah, I didn't realise there was a logfile for that.

For future reference, it uses
https://github.com/yoctoproject/poky/blob/kirkstone/bitbake/lib/bb/fetch2/_=
_init__.py#L1116
to run through a list of atlernates, eventually settling on
http://downloads.yoctoproject.org/mirror/sources/gsoap_2.8.106.zip

Thanks.

On Sat, Jul 15, 2023 at 7:29=E2=80=AFAM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> You perhaps could check log.do_fetch to see precisely where the file
> is being downloaded from.
>
> Alex
>
> On Fri, 14 Jul 2023 at 21:24, Tom Isaacson <tom.isaacson@teknique.com> wr=
ote:
> >
> > I'm looking at the Kirkstone recipe for gsoap
> > http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-sup=
port/gsoap/gsoap_2.8.106.bb?h=3Dkirkstone
> > and it downloads from:
> > SRC_URI =3D "${SOURCEFORGE_MIRROR}/${BPN}2/${BPN}_${PV}.zip
> >
> > SOURCEFORGE_MIRROR is defined in poky/meta/conf/bitbake.conf:
> > SOURCEFORGE_MIRROR =3D "https://downloads.sourceforge.net"
> > BPN =3D "gsoap"
> > so the URL is:
> > https://downloads.sourceforge.net/gsoap2/gsoap_2.8.106.zip
> >
> > But this doesn't exist:
> > $ wget https://downloads.sourceforge.net/gsoap2/gsoap_2.8.106.zip
> > --2023-07-15 07:23:40--
> > https://downloads.sourceforge.net/gsoap2/gsoap_2.8.106.zip
> > Resolving downloads.sourceforge.net (downloads.sourceforge.net)...
> > 204.68.111.105
> > Connecting to downloads.sourceforge.net
> > (downloads.sourceforge.net)|204.68.111.105|:443... connected.
> > HTTP request sent, awaiting response... 404 Not Found
> > 2023-07-15 07:23:40 ERROR 404: Not Found.
> >
> > So where is the build getting the file? Does SOURCEFORGE_MIRROR fall
> > back to a different location?
> >
> > --
> > Tom Isaacson
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#60580): https://lists.yoctoproject.org/g/yocto/mess=
age/60580
> > Mute This Topic: https://lists.yoctoproject.org/mt/100148132/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin=
@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >



--=20
Tom Isaacson

