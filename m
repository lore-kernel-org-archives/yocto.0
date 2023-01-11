Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A987C5479D
	for <webhook@archiver.kernel.org>; Wed, 11 Jan 2023 12:47:10 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web11.22723.1673441220693048620
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Jan 2023 04:47:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=pqDIyEOd;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id g13so23342457lfv.7
        for <yocto@lists.yoctoproject.org>; Wed, 11 Jan 2023 04:47:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9mPWOWeGmKKG4JAaPDIhjRi1ByFu3daSgFwqtcmYjVE=;
        b=pqDIyEOdaQO0Vmr7ZDxuOpt3Vdo+BWfgrAy2n5Qiuk37m+PjSgyKIGUrOa4F1UsdWL
         +nayWEweSlwBwpxqUYrDef8OhT1UYkbmmnUuu1XSIMTnvi9o8kqCufFNvwmMEvw6lrJH
         ChmpQYrH+3CdUU+Qb0PoNd+QCpeCzp/moBu6GrjvnIdVjZMEPmhFzfUU6oy60+VCW4Tm
         C1JHAGKXg+7DrFYSG42MYw0kFK2z7mUdTiBsZ4aevaMKcpkhHeJApECMoWVPpfottd6X
         t2yV7aZ+2qmkxDsDtpaD5Amew4BqMCRhmwl9LbJUhZ5Af21rujkg6HpunCdCvTcEB4Jy
         VSag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9mPWOWeGmKKG4JAaPDIhjRi1ByFu3daSgFwqtcmYjVE=;
        b=PLWNBjVwMkrBHL4+qGnqCrLBvRMXl2eGlVTDsehZC33QS/KW3pcVQn3EFtp3UXWJ14
         011+heBN97n8lbE/70ijnS2AI8OdYv5fUY2uvmfo3UNm2ycTpf71MZ0ITONcLOCy1hEm
         +wQNUNKTV3+qXgrxZd988hOlHJrH22JKyjH5y5p+5BDlNlppSzMTvcf+DORp1GsjwDZY
         m5kFJidntECqbN/LLHqp1CDzUJi9mmbXe7kcg9n0oS462iAnSj8Z6sKkP4sxRDt+5c6i
         iReyfBvoG5GMPO6P9qelrJ/ZZR6kxtT8fHSEiv3m9XHUBEhrFFAogbc8mRKRbwO9FAyO
         xn5A==
X-Gm-Message-State: AFqh2kpkjLybTHAmvAjhVMc9daw8Cf3hOSl74n0fNFdrFMZf6a570tiB
	zlLBewN2IFF404BSX8+AFuYdWqKNCZafo2KzLXM=
X-Google-Smtp-Source: AMrXdXuns+R/Pfy9JmoX1hXcHywspihOg0Clss7HrBV5gG5ObS21idDvp8tsDgReKPIzDkIhn7bnJLo8nIX58m4Imkg=
X-Received: by 2002:ac2:568e:0:b0:4cb:4404:1bc3 with SMTP id
 14-20020ac2568e000000b004cb44041bc3mr1218767lfr.263.1673441218907; Wed, 11
 Jan 2023 04:46:58 -0800 (PST)
MIME-Version: 1.0
References: <CAJgSc4xpQuuwzJ8BDtngtrH=a3-+OXVrEW1mf7RZwLE=H4R4mg@mail.gmail.com>
In-Reply-To: <CAJgSc4xpQuuwzJ8BDtngtrH=a3-+OXVrEW1mf7RZwLE=H4R4mg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 11 Jan 2023 13:46:47 +0100
Message-ID: <CANNYZj-qj0noF5ZvhavtFsnW+ya=-=zOGOOmwUwMcXhV=ewk=Q@mail.gmail.com>
Subject: Re: [yocto] distutils.bbclass: why is --install-data=${datadir} passed?
To: "Alexandru N. Onea" <onea.alex@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Jan 2023 12:47:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58965

distutils has been removed from upcoming python 3.12, so I don't think
anyone would be particularly interested in what that class is doing :)
The concern should be what are you going to do with all these recipes
when you will be transitioning to a version of yocto without
distutils.

Alex

On Wed, 11 Jan 2023 at 12:48, Alexandru N. Onea <onea.alex@gmail.com> wrote=
:
>
> Hello, community!
>
> While writing some python-based recipes using setuptools3 I have noticed =
that ${datadir} is always installed in the staging area even though there i=
s no content under it. This causes QA issues. I found out that the distutil=
s bbclass contains the following line which causes this behavior:
>
> DISTUTILS_INSTALL_ARGS ?=3D "--root=3D${D} \
>     --prefix=3D${prefix} \
>     --install-lib=3D${PYTHON_SITEPACKAGES_DIR} \
>     --install-data=3D${datadir}"
>
> Is there a reason for installing ${datadir} always, regardless of what th=
e build system specifies either in setup.py or in do_install[_append]?
>
> So far my workaround is to remove this flag from DISTUTILS_INSTALL_ARGS. =
I did it first on a per-recipe basis and now I am thinking of doing it glob=
ally by overriding the distuitls bbclass with my own version that requires =
the original and then removes the flag. Are there any concerns that I shoul=
d be aware of?
>
> Best regards,
> Alexandru N. Onea
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58964): https://lists.yoctoproject.org/g/yocto/messag=
e/58964
> Mute This Topic: https://lists.yoctoproject.org/mt/96198112/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

