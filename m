Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 788A1C3DA4A
	for <webhook@archiver.kernel.org>; Wed, 14 Aug 2024 19:25:13 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web10.106579.1723663510275020207
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Aug 2024 12:25:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=B0hQz6py;
 spf=pass (domain: gmail.com, ip: 209.85.167.170, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3db157d3bb9so107144b6e.2
        for <yocto@lists.yoctoproject.org>; Wed, 14 Aug 2024 12:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723663509; x=1724268309; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UmsZG3VLoU4v99p+bCiCDIvT//zXPiGIRY1zx73v0BQ=;
        b=B0hQz6py/PXCODlUhwqqqR3EILEA+RyHI+NgGdVNRu+v6TiMcnpjo4gxlMV5Z1BPNK
         33xUWDcDoFBcjR1lpXwdvgTCMJyGwnAIWjRvmaXhZ4DSSKxjcFMjYo6Gp/GT2Zxq7hns
         XX/UCdjknAH+2ftaNZHiT8iRdA+90U6T5072u2+Mpk9ojDy+H3cpF40BijmWDXhPtZTH
         G53Ce23AeGnzTpyx51lF53G4b+PlizwvQtgEUhYhNgTEEaYFshR4yts7/Guj1ORKa1Ra
         h1h2DZZl1NbIhyfYW2I8r5PHYEkCaMDqC95UmJMixj+EquQd5dCP2+MV+dIw5734CQv5
         01pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723663509; x=1724268309;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UmsZG3VLoU4v99p+bCiCDIvT//zXPiGIRY1zx73v0BQ=;
        b=JVCQ/O261WYdK4JzNl/WPUflIQt3TKeqw8d8AvdPTlByWvirgJwttMm59HyRvwKxr6
         z2nlReDpi2KlY21y4utMofyt6wZ5oWtUHfALqD/eaXDrsxDJfSyIBh3qY1DmgBbzr67D
         H2M98wFg/T1oGD9ndcMgvjigH+Mt0jLHuT/YyXZwaXS3KwVBNRzWz9CjN5yx/RUaX0lZ
         NC3SV2zgYabPlAZ3BWEh60ATnmanPue3eGAIPAccLucgMO7Yh9Cl3R4hXlU7dObnko3x
         qPYiAxKGvHYEE2X3MQe20n6/6+f1NXIiofXXc70p3SbZd8Tvjbofui9FWaqIWIzD4z6r
         KvPA==
X-Gm-Message-State: AOJu0Yws7RkT5zbnldsKgd2qlWVcouvPgN9kgxxU2YzruBCtbFApFJ9Y
	gPrkxM7iFAHMjTDcj2P6JEd2hOYoTMJqJrfFK3pFesDx+O4cGe2o2bo8KuxaqGRZfBodJc622mk
	rFn6zlKQ5bzxyZB0ttJX9XSWpJh/vwA==
X-Google-Smtp-Source: AGHT+IH6XdcFX40jC2bpbMSGzvX9tirdLYdjSdwtczolPFUMJmi1CCUsFItYyZIcb2bJzx7BkNisqthxfVSfQ91aDB4=
X-Received: by 2002:a05:6808:3028:b0:3dd:1e60:37ef with SMTP id
 5614622812f47-3dd2996333emr4635999b6e.35.1723663509102; Wed, 14 Aug 2024
 12:25:09 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.17EBAE4E6A437742.17352@lists.yoctoproject.org>
In-Reply-To: <MADEUP.17EBAE4E6A437742.17352@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 14 Aug 2024 12:24:41 -0700
Message-ID: <CAMKF1so5j+Pybn90f2_bCZHEUjGD0TGNqjb1rJgpJbxjdQguVw@mail.gmail.com>
Subject: Re: [yocto] Parallel builds under yocto
To: yocto@lists.yoctoproject.org, steven.monsees@baesystems.us
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Aug 2024 19:25:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63700

On Wed, Aug 14, 2024 at 12:15=E2=80=AFPM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.us@lists.yoctoproject.org> wrote:
>
> Hello:
>
> I am looking for some clarity with regards too parallel builds under Yoct=
o=E2=80=A6
>
> I think I had a false assumption on setting PARALEL_MAKE=E2=80=A6
>
> To increase thread usage: You add following to your local.conf inside the=
 build/conf directory. Replace x and y with your wanted configuration.
>
> PARALLEL_MAKE =3D "-j x"
>
>
>
> BB_NUMBER_THREADS =3D "y"
>
>
>
> Is the following true ?
>
>
>
> PARALLEL_MAKE defines how many threads should be used/dedicated when usin=
g make -j command during do_compile.
>
>

seems correct.

>
> BB_NUMBER_THREADS defines number of threads dedicated for bitbake.

It means how many jobs/tasks can bitbake spawn in parallel, its higher
order than parallel make.

>
>
>
> I set up like so:
>
>
>
> There are 12 cores my board
>
>
>
> Yocto supporters say threads should be 2 times the number of cores, but d=
on=E2=80=99t go above 20=E2=80=A6, or just the number cores, also under 20=
=E2=80=A6 depending on what you read.
>
>
>
> They also say, increasing PARALLEL_MAKE to higher values, increases your =
chance for a race condition.
>
>
>
> Is the following true ?
>
>
>
> PARALLEL_MAKE =3D "-j x"  # For do_compile
>
>
>
> BB_NUMBER_THREADS =3D "y"  # For bitbake
>
>
>
> PARALLEL_MAKEINST =3D "-j x"  # For do_install
>
>
>
> If so, does this mean for 12 cores:
>
>
>
> BB_NUMBER_THREADS=3D"8", will this dedicate 8 cores just for bitbake to u=
se ?

No, it will not reserve 8 cores, rather it tells bitbake to launch 8
task executions in parallel
if bitbake deems them not dependent upon each other, e.g. every recipe
has several tasks
during build do_confgure, do_compile, do_install etc. and there are
several recipes in build
queue, then bitbake's task manager can find out non-dependent tasks
and execute them
in parallel, now be aware that in some cases it could be executing 8
tasks which could be
all do_compile tasks for different recipes, in this case your
parallelism will become -j 8*8
systemwide.

>
>
>
> And does this dedicate the remaining 4 for do_compile and do_install ?
>
>
>
> PARALLEL_MAKE=3D"-j 2"
>
> PARALLEL_MAKEINST=3D"-j 2=E2=80=9D
>
>
>
> Thank you=E2=80=A6
>
>
>
> Steve
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63699): https://lists.yoctoproject.org/g/yocto/messag=
e/63699
> Mute This Topic: https://lists.yoctoproject.org/mt/107901352/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

