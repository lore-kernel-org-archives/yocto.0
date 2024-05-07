Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7923C10F1A
	for <webhook@archiver.kernel.org>; Tue,  7 May 2024 04:43:12 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
 by mx.groups.io with SMTP id smtpd.web10.4168.1715056986157286439
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 May 2024 21:43:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZZnjaTlh;
 spf=pass (domain: gmail.com, ip: 209.85.160.53, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-23db0b5dd28so1914301fac.2
        for <yocto@lists.yoctoproject.org>; Mon, 06 May 2024 21:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715056985; x=1715661785; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PV+OHS97neCwUVWa+9HE1MQZ2nwA33UHcWAi1zyUn4w=;
        b=ZZnjaTlhH1taVZnFdYQy98H/5YxnWaWfLhHBjhiFccJ5eSpW025t7y+EGx63B7B64e
         9S2+PCoUiIww0S8iBAVTGwoeuo7VywpkGnTpFZjDsPxSR75kU/ViqEcDjZnF8oyuxOLI
         9YQupY0/WkmUJ8DrsX6vAuZaeAWr8g84RVlfXzhOIr+isFLZSmYkOQlWwg34H5Juc6Ti
         Sr8F4QAq3UmJjr/zt8truAY9SXYQHudY5oO522SgND+d+gaSvhvVop32gpiN4p3Odw2J
         rfvAz1X5Bn/QU33Bxik4Es9+55to6Y4UIltzfgJ9laZhVVBnTI6EFx8Lh/rGCdxdmPER
         UO4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715056985; x=1715661785;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PV+OHS97neCwUVWa+9HE1MQZ2nwA33UHcWAi1zyUn4w=;
        b=xExI01JoMhc+ikVZi9Wu9BB757DR0pOXmJvzmG/AOdrVh1WKUm4zo4CU7A6UKQuSR6
         iqFOgwWUIs1DgX437bxQPcTTgZEkdvJTsfLbte0jmYFRgzccWQdoDFxullTxiygthLuT
         KxHJBniPfA5894azCtw9dA/EEJI9hXoSGHNTYrRNiIv8YB+1fm7vY0DLk1jOsWkY+yRn
         /kTGgxfODxFeHHHdVa5WBMUQqCkO2fA/guYj7EXQYpgq1SKpOB0hSeGtXiE8EoVbyhh0
         aIKXBqafGyJPbKsXsozUXG28qx3fHArCULTuSV0ENOmaBPk9/wfN4+R1AvTXYR5qdApm
         pLeQ==
X-Gm-Message-State: AOJu0Yw20tFRmq/6s2IFZS7pe86yOqI1KN9ugXf8fll1Frm2RV8mMsfT
	Q/seGK4QaCu8yWPXQ9f4fB7uGOm73y+W2NMqXejj4b+liNOhmzCsnx/rf+oJkLdtVaeXIPV140R
	6aTfDMLJ7cFSnp0Y/TfNkqPCxhh3mcoTdATw=
X-Google-Smtp-Source: AGHT+IFQNkN1uSS3Cs1/hCMTsgHgWkjpwEdcZN9d4stWlJC8boxXnPO7Y+b1VAlEbDDrSDz4Khk3FJvTkYXuruktwCQ=
X-Received: by 2002:a05:6870:218c:b0:23e:b430:3f87 with SMTP id
 l12-20020a056870218c00b0023eb4303f87mr10761409oae.2.1715056985183; Mon, 06
 May 2024 21:43:05 -0700 (PDT)
MIME-Version: 1.0
References: <CALSmAY7=T9hENBfNFt8nUGT98boRZF5_3KdubfDLipcTkG+-vQ@mail.gmail.com>
In-Reply-To: <CALSmAY7=T9hENBfNFt8nUGT98boRZF5_3KdubfDLipcTkG+-vQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 6 May 2024 21:42:38 -0700
Message-ID: <CAMKF1srgDX5tNk2J3ik=pAD2z7nDqs5BtAWwW-s5HPGh=w6OGA@mail.gmail.com>
Subject: Re: [yocto] Command line Variable
To: yocto@lists.yoctoproject.org, bratiranjan12@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 May 2024 04:43:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63040

On Mon, May 6, 2024 at 9:25=E2=80=AFPM Bratiranjan Acharya via
lists.yoctoproject.org
<bratiranjan12=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi,
> Could we establish a tailored command within Yocto, taking to "BUILD_ID=
=3D123456 bitbake custom-image" mirroring the functionality of "MACHINE=3Dx=
86 bitbake custom-image"? Essentially, I'm exploring the possibility of int=
roducing a custom variable like of 'MACHINE' and executing it similarly fro=
m the command line, as mentioned before.
> I have tried various ways like defining in the conf,recipe,.inc file like=
 "BUILD_ID ?=3D "none"" and running directly from command line  "BUILD_ID=
=3D123456 bitbake custom-image" so it must change the BUILD_ID to 123456 bu=
t its not working like that. Anyone have any suggestions? Thanks & Regards =
Brati
>

Maybe set BB_ENV_PASSTHROUGH_ADDITIONS =3D "BUILD_ID"

> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63039): https://lists.yoctoproject.org/g/yocto/messag=
e/63039
> Mute This Topic: https://lists.yoctoproject.org/mt/105954779/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

