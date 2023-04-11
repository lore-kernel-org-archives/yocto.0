Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48893C77B6F
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 14:01:32 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web10.14554.1681221688327465496
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Apr 2023 07:01:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=bv8Ilotc;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id be27so8707167ljb.12
        for <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 07:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681221686; x=1683813686;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=curZN6SCr81wu6N3K/OjyUQcLabJGSY4kSpH4F9p6N0=;
        b=bv8IlotcG4zwDJKhNrsrIOVwlcavgoT0syH6auZhD9xuPTe+uOPHBTuiX36QxYI9r9
         GIpkkRfZdF4y2WLk/DPNCccBpGtS1+6JReC4BKlwKlqfBPuRTtUazTh/ZcidNvmdncd/
         NcpD+TOA667ccp9s0KmYvEIea0iiG3VhxfCzmqbIOXgrMDqapHBqVQhQlKLakc5sGhjw
         6VrONTKDygDkvfOBOBZlPX1RhlZ/6K38kIuU9HaTi1RawaC9pFKnQDwesV3z5/Vvl53j
         jYVxTjjGunfiW2phNcd43rQDQMc6tAEgNt639JubG4GfwPkRLEftgt7E8pRfa5F94wrM
         vGvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681221686; x=1683813686;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=curZN6SCr81wu6N3K/OjyUQcLabJGSY4kSpH4F9p6N0=;
        b=y4h9ggtdLF7tLpCduJ+SnVtIR8TXtai/0FWW2XO3w5nQJhqBKr351zVF+2/Y0la8rn
         HTpqyn9DjcjeynDkh0PAnanl+Oyah76pk1Ao4NQYjoLY3xYIovmYizptOVM+s3mM6HDo
         Es9dVXi/GR5Zsk24bsEJX1aqEU5JNrwF8Y5npKrPeFM8Ycpq6c3gi9Lal0dhX3xfos0F
         69aP/n8qOQ1Ti5H+xqq5/KgbK6sSUroSK5tCEbU5l5XaTXp0MdYzF9b+DezjfS4vHKzF
         kvxoFsOU5PM7UJc02DIuFkqlk4noyngE0Xfo96/fgc+ELgNjRvgzXUm5fF59lEfQ5ahi
         F9wA==
X-Gm-Message-State: AAQBX9ehjeLzNaJldu8RA6TfrYoi4SNfmUsFyytD8aabmh8RNEyc65QJ
	DSpWATT3O1IdwYRgzXapcMaG8FeVJFsEX35pIKA=
X-Google-Smtp-Source: AKy350bvn2xcL2L3EBXO67Xm+YM4Hs36aHb1YCRAyBpNPmzC0zWfClcpUpUaKeHaz1kYP/sYfwRoQ7cc/xqGiV5d+Yk=
X-Received: by 2002:a2e:9b98:0:b0:2a7:8295:cd00 with SMTP id
 z24-20020a2e9b98000000b002a78295cd00mr1483673lji.7.1681221686248; Tue, 11 Apr
 2023 07:01:26 -0700 (PDT)
MIME-Version: 1.0
References: <lyWk.1681218116757109971.QydI@lists.yoctoproject.org>
In-Reply-To: <lyWk.1681218116757109971.QydI@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 11 Apr 2023 16:01:14 +0200
Message-ID: <CANNYZj_ga--eO9pUFMw_YTkiULoN9JiDWpRkpXjsHToVxoFw5Q@mail.gmail.com>
Subject: Re: [yocto] create-layers-setup Yaml support #bitbake
To: talhacali@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 14:01:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59680

I'm not sure I understand your use case. What kind of information
would you want to have in the json file, and why can't it be placed
into a separate file next to the .json one? It would help if you post
snippets that show exactly what is missing and necessary for your CI
to operate.

Alex

On Tue, 11 Apr 2023 at 15:01, <talhacali@gmail.com> wrote:
>
> Hi All,
>
> In my project at work, we want to use create-layers-setup instead of git =
submodules. But, there is one issue that we are facing right now: We have g=
ot a CI pipeline that has Renovate bots to update, and create pull requests=
 for repositories when a new commit is made in one of the dependencies. For=
 it to work with Yocto layers, renovate bots require a regular expression i=
n the Json file before ref key that create-layers-setup creates. But the pr=
oblem is since Json doesn't support comments, and it is not sorted, it crea=
tes so much manual work. It is also so ugly if we add a dummy key to the js=
on.
>
> For that reason, would it be possible to support Yaml as an option? I kno=
w that Yaml is not part of Python standard library but it can be optional i=
f pyyaml is installed in the system like here. Either creating both json, a=
nd yaml file; or creating one of them that user chooses.
>
> Regards,
> Talha
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59679): https://lists.yoctoproject.org/g/yocto/messag=
e/59679
> Mute This Topic: https://lists.yoctoproject.org/mt/98196703/1686489
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

