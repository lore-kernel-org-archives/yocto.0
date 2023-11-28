Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9901CC4167B
	for <webhook@archiver.kernel.org>; Tue, 28 Nov 2023 10:45:35 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web11.26824.1701151880637238033
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Nov 2023 22:11:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ChK6QB01;
 spf=pass (domain: gmail.com, ip: 209.85.210.180, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-6cc2027f7a2so2281642b3a.2
        for <yocto@lists.yoctoproject.org>; Mon, 27 Nov 2023 22:11:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701151880; x=1701756680; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bTsPcVSjK7ZSZap1IsrddWudRR7l83pNdhmR+00vBgk=;
        b=ChK6QB012/dY+M6+qdmrKBKStnfwoXSjXf3bAjLfsdZEINxZR4Xy0cLKmXtQAAEo4b
         dnPd+PnxAygnmzvnacG4EcNwvXHDT7w3e+m4K2vRC9Degrrm/BHkHEXAQOaNe08K4qKo
         99pKnttRFo8qyR5IJgPp7EcgzWVai3tB8i5lKXvNeQaV3ZdgmMNIMeeI9fyjY8duk3Mq
         5uwg7Y8Shfna5JtKWQdMVxnt2V9sA0Xo6qIUAwYd1QvJzBGFzVJUK7MH/yegXKnYw/GJ
         V46riq+AIxZXp4T39LJZAvxQad1IpUgnl3UdhYCve3VVs8T13ndlNBa5W+qRGNLX8ig5
         X81g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701151880; x=1701756680;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bTsPcVSjK7ZSZap1IsrddWudRR7l83pNdhmR+00vBgk=;
        b=Ww5AqAu8aYkf4IZIoWu24Zg5Uow4P2YLs0Mbw4iZwgP182pteFncPOxrs+cQaKuQxl
         iaQvRhuDQ5nATU19g96nGA3CwQoLggj20sbQNFN+AfIyDXd4FPj3Aof6LxapHj3IE1mi
         lHgjn1MDUKG/ZmVkg3yBcTCY6vClYKxyu7kIfiDFYz0LlkepYjMPGpC4Tzz8Qyxq5wyw
         xCjCJ5i56WkbVzIgKCY/IFeXv43B4pEHdoPB/oGkybAj3pEjSJlkSxZM0Oo7MMQJ3wTY
         W3lQFCGqlEKW5Vy7AzyZWEAgG1fv59OT/y4cK+/aFk7BeWnWzXp3WNx3gjT0Ibmyb3EP
         D4HQ==
X-Gm-Message-State: AOJu0Yx8DjWcvxScOz2EExHxCK0GNXA7ynETLiI90okCQB4AiSTKaJ3U
	WP68b/gr+nvnT/0W4G5teRMRjHY1CxIAbDIPk3E=
X-Google-Smtp-Source: AGHT+IGzg1e6/vyHAUjbxoCSp5YnymCfrw4Zc4t0x5F4mrOK4LRUmEbAfo9GteSpgyacR2bC4HdPUFZVibfx3azL9Js=
X-Received: by 2002:a05:6a20:4412:b0:18a:d8ba:ca4c with SMTP id
 ce18-20020a056a20441200b0018ad8baca4cmr15819837pzb.52.1701151879827; Mon, 27
 Nov 2023 22:11:19 -0800 (PST)
MIME-Version: 1.0
References: <UQTS.1701151253143685515.Msu1@lists.yoctoproject.org>
In-Reply-To: <UQTS.1701151253143685515.Msu1@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Tue, 28 Nov 2023 07:11:08 +0100
Message-ID: <CAGAf8LzT0xz6uCM4rD3i4xE4kA4sboOM1Pq1NuuHeQ8=WjE4WQ@mail.gmail.com>
Subject: Re: [yocto] TI AM62x based EV charger platform with Pionix UI s/w Image build problem. #apt #bitbake #distro #poky
To: sairajlp99@gmail.com
Cc: yocto@lists.yoctoproject.org, fede@evolware.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Nov 2023 10:45:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61767

Hello Sairaj,

You should do df command and explore how much of your /home or /
partitions (have no idea how the system was installed) is left.

Maybe you have a problem with the limited free space on your SSD/HDD?

You should have at least 60GB or even more disk space available to do
one successful YOCTO build.

Two cent worth answer,
Zee
_______


On Tue, Nov 28, 2023 at 7:00=E2=80=AFAM <sairajlp99@gmail.com> wrote:
>
> Hi team,
>
>
>
> we are trying to build TI AM62x EVSE SDK referring to https://github.com/=
PionixPublic/ti-am62x-evse-sdk  we have tried building in virtual machine a=
nd now we are trying to build in Linux  host pc with 500gb of storage and 1=
6gb ram but still bitbake runs till 99 percentage   and last module Nodejs =
takes forever to run system experiences a freeze. Tried multiple times runn=
ing the bitbake but still problem remains same .
>=20
>

