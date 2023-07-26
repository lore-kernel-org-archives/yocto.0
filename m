Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF5D6C001DE
	for <webhook@archiver.kernel.org>; Wed, 26 Jul 2023 08:14:18 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.6513.1690359256590500447
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jul 2023 01:14:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=WtReMkqp;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2b70404a5a0so95694551fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 26 Jul 2023 01:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690359255; x=1690964055;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ntj84chmnGINkW70wUh/uOQ7t1BfXQKfs8QLEFq4BRA=;
        b=WtReMkqp1WbJ78UFMJ+Oa8ei8RtafpvhXmn985hwsVTWxPh/yBHEUgT5wsv+2+YQzO
         lD7H09pyKALG9howCT3qa64F1gqXSjVF83Hvkf+EDmei0zD3ncVlVXgPZ6FWAWMyxuzf
         H/zzmExf0vHmckHrMJsy1Ygk/KGl0ExZLjTOfjMYwBBw82ZRzaeLvw707+UFexyk6/ZR
         8TTUzq2HX0uiRblza/GOWgw0i+qSgIeIR8L9267Mwz8TRbqHcm8SUNIWpkhJYOuAX2xK
         PLF/aGj7YtBgzga+NwLZi0euirxUcEdAf5V7xglRyOtFEmhfydPaeBO4b/DiEurYBjPW
         2HbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690359255; x=1690964055;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ntj84chmnGINkW70wUh/uOQ7t1BfXQKfs8QLEFq4BRA=;
        b=dpV729VQ+S0YS9zo9Xb338ERpLPIadWkd2QC0+nxEY1uGz3LH7jD3LvqqJJupJRwVj
         2NIWyvdyZZgu0Sg1Ccl8KMIlu6VxZvsqvE6dFsDRMDqvejg5BooVWiALDTQxr/bzIvKQ
         kaQEoK9s4Dj4xPqRuMkvlby/CmITud095HZbn1qprlH5KPqn15My/h4tK0dwxvIJscbR
         gjFndnTkAdyH4ucGBZPIKI8A+uo6cAOIFE0+Ja+DbV8bqam9ls7+fIBJ51YEnLH8eN/e
         1uY2zpN9xe/xHhjhUcAubOLOYWC3QCc5vzsWd04Sqt66tVGHT13Vxe5BWqr0dXRxpM4P
         XVqg==
X-Gm-Message-State: ABy/qLYSWCJqO5Lx1L8Z2jPVZu2Udh7fbiqPolfov+9G4qOGIsrAJFQj
	K/qMSV/t435kDVd/0LE5LiDNLkL4urwBD+a5MK0=
X-Google-Smtp-Source: APBJJlEvmMjWH95OMkcT99E8MYaWEU8BDY6J0+BTMFHMMsMlew6W02PprL2oEF7ogTfBNI8AuxwH/yt/V/SuATFEkwk=
X-Received: by 2002:a2e:a40e:0:b0:2b5:1b80:263a with SMTP id
 p14-20020a2ea40e000000b002b51b80263amr860647ljn.47.1690359254552; Wed, 26 Jul
 2023 01:14:14 -0700 (PDT)
MIME-Version: 1.0
References: <5NtY.1690358038009111944.Elav@lists.yoctoproject.org> <CAMKF1srip0xMkO1qyxNnCtdgYqdp_2oeDLYqm6egsx2kBrM+Nw@mail.gmail.com>
In-Reply-To: <CAMKF1srip0xMkO1qyxNnCtdgYqdp_2oeDLYqm6egsx2kBrM+Nw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 26 Jul 2023 10:14:03 +0200
Message-ID: <CANNYZj_zs6iAmHh+2MpC2MBtYhaJuY=9W1=X+mVB+Z_TJX4K8A@mail.gmail.com>
Subject: Re: [yocto] Add different PREFERRED_VERSION of recipe to different images
To: Khem Raj <raj.khem@gmail.com>, Priyanshu Sharma <ms.priyanshu.sharma@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jul 2023 08:14:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60654

If you want readline 5.2 (which is very old and may cause security
issues) because you can't ship gpl version 3 code in a product, then a
much better option is to find out what requires readline, and disable
that option, so it isn't installed into images. There are also non-gpl
alternatives such as libedit.

Alex

On Wed, 26 Jul 2023 at 09:56, Khem Raj <raj.khem@gmail.com> wrote:
>
> On Wed, Jul 26, 2023 at 12:54=E2=80=AFAM Priyanshu Sharma
> <ms.priyanshu.sharma@gmail.com> wrote:
> >
> > I have two images in same custom layer : A-image.bb & B-image.bb
> >
> > I want to add readline_5.2.bb in A-image.bb & readline_8.2.bb in B-imag=
e.bb. How can I achieve this?
>
> It can not be done at image scope but at config metadata e.g. distro
> or machine config.
>
> >
> > Adding PREFERRED_VERSION in local.conf applies to both the image recipe=
s.
> >
> > Thanks,
> >
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60653): https://lists.yoctoproject.org/g/yocto/messag=
e/60653
> Mute This Topic: https://lists.yoctoproject.org/mt/100366603/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

