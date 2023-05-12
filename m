Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9EBCC77B7C
	for <webhook@archiver.kernel.org>; Fri, 12 May 2023 12:45:52 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web11.23917.1683895549026727746
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 May 2023 05:45:49 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=TSYrFwm9;
 spf=pass (domain: gmail.com, ip: 209.85.167.170, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-394440f483fso1407916b6e.3
        for <yocto@lists.yoctoproject.org>; Fri, 12 May 2023 05:45:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683895548; x=1686487548;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OMJz1236SW5f6hjoBD0e4IUAaqvwZ3lVWyIlSm+iojo=;
        b=TSYrFwm9lVV00mL3bD4Wr2/e8qX2XlrzvyL22acC6GtT++DgiD2cUxE0iOkkcK+7q9
         pmZoM7pFQUlHz99+06Vi3HAj/iM7tUGkCWd89uESVFe+G/zVr2UUr9mLsQtEZLwtpkJg
         Jp4Dk199riWl8pz7UinusjBNfM4rtuI6/SE9DfqdwM7pA4ixisMGOstqf/ZDHBsFGlKs
         5CPHw1Scy79bdR1+6N8hPwP+H11sK9VLtBY6fO4Tmpt5BRLiPBo7GBIV/cqpyz0LpeSw
         1tXspZ/yXBY4XTPebtp29mp+xHIAD7QqRbDpaM3Q/c0zvwZGvAnEC09LCQIZEISd80Jl
         oGJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683895548; x=1686487548;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OMJz1236SW5f6hjoBD0e4IUAaqvwZ3lVWyIlSm+iojo=;
        b=Xt2rEIWJgM9BkN77Nks6YTFT1S7/XPGWSOD3Dfd5TwtnZ/UGpicTPldRuE26SsOoLO
         5ouo/KrdAeX7OyNbieEnEwvOE7BP2LCL/xYnnUrNVLcunsebs8xJUm+wlDJOXKwYmdlR
         SyCP5WABk8UxZ+rqf18sWXFRjQ8QhNnYquFaRUPRAm2GyyHQnl7jojtKgq305DDrm1v2
         O5r9i7wjT6K6Ioh7i3Ozn9EBR0e66Rr8/Sg51L/38i6DABtTEb7e2kJRVRdv8fLvfoxW
         O9EcGuxpJ5oSIG6XsbyGPohDg2KEm98CckI5JTbiVXUGph/QHLEM8t1jYdm8t5YPefYf
         4t0w==
X-Gm-Message-State: AC+VfDzxRPnbXLbhh/5h9kmKkNu5Qovc3l0hkVUst5pBWUJ3KGvPhPu5
	IOB1kUGAjs/1PvPSfPykOs52KWY5uHS42ZKdatU=
X-Google-Smtp-Source: ACHHUZ5RK/DtsFwQOVCeHrDJClPL7mvWyv4au96c3yTijybQgh6yS9b4W9nkkgr+KmSUwmbFxM0x0b+jX1JyDZ2CgB8=
X-Received: by 2002:a05:6808:2983:b0:38b:d115:e6c7 with SMTP id
 ex3-20020a056808298300b0038bd115e6c7mr6092866oib.8.1683895548042; Fri, 12 May
 2023 05:45:48 -0700 (PDT)
MIME-Version: 1.0
References: <CA+-BmJaCpaKURf0zrWRwY2gUfNkJFSY2mwiBJMhWbqb8W4_Vxw@mail.gmail.com>
 <C00CFD2F-FCE6-4E73-AF4C-D856176267A6@arm.com> <CAMKF1soReGst1zJRN6_5CVicCK2BW4F_39Fth=yePQT2Y9NejA@mail.gmail.com>
 <CA+-BmJazdjxrFFZjstWfZiTX5VZGiJuK-7Mqoo81Yr9LgWNZVw@mail.gmail.com>
 <DC50ACAA-3952-40AE-B025-EE31B64BB0E9@arm.com> <CA+-BmJZXKw-=WViAmXKjSGpRzrpE7XBzNE4Vm0ZzbY-sJ55BcQ@mail.gmail.com>
In-Reply-To: <CA+-BmJZXKw-=WViAmXKjSGpRzrpE7XBzNE4Vm0ZzbY-sJ55BcQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 12 May 2023 05:45:21 -0700
Message-ID: <CAMKF1sqiquGfRsBEf9YkvuCXin-v9ks2mik5sQ1WdqXKyWkPaw@mail.gmail.com>
Subject: Re: [yocto] openssl/libffi build broken for musl/cortex-m7
To: Ayoub Zaki <ayoub.zaki@googlemail.com>
Cc: Ross Burton <Ross.Burton@arm.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 May 2023 12:45:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60004

On Fri, May 12, 2023 at 4:46=E2=80=AFAM Ayoub Zaki <ayoub.zaki@googlemail.c=
om> wrote:
>
> After testing on the target, static busybox cannot be started, it looks l=
ike Cortex M7 (MMU less) cannot run ELF Binaries and need BFLT format:
>
> https://unix.stackexchange.com/questions/610094/kernel-cannot-execute-bin=
aries-error-8
>
> I saw that uClibc was removed and replaced with Musl, can Musl also gener=
ate  BFLT format binaries ?
>

you could use musl which has FDPIC support that is needed for running
static bins on MCUs however it might need some
tweaks to get it going in OE

>
>
> On Fri, May 12, 2023 at 11:35=E2=80=AFAM Ross Burton <Ross.Burton@arm.com=
> wrote:
>>
>> On 12 May 2023, at 10:24, Ayoub Zaki <ayoub.zaki@googlemail.com> wrote:
>> >
>> > Ross' suggestion to remove opkg-utils hard coded build dependency on p=
ython solved the issue
>>
>> I have some local patches to clean this up, so you never need to build o=
pkg-utils.
>>
>> > but I noticed that there is a similar issue if PACKAGE_CLASSES =3D "pa=
ckage_deb" is selected.
>> > wouldn't it be possible to disable in yocto completely package managem=
ent e.g PACKAGE_CLASSES =3D "=E2=80=9D ?
>>
>> Images are constructed from packages, so this would be tricky.
>>
>> Use package_ipk and you get the leanest package manager.  If you don=E2=
=80=99t have package-management in IMAGE_FEATURES then you don=E2=80=99t ge=
t on-target tools, which saves building them at all.
>>
>> > Another issue I faced since my target is MMU less is that busybox enfo=
rce shared lib build:
>> >
>> > http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-core/=
busybox/busybox.inc?h=3Dkirkstone#n115
>> >
>> > what is the reason behind this? shouldn't yocto support mmu less targe=
t ?
>>
>> We don=E2=80=99t have any official MMU-less supported targets.  If recip=
es need to be cleaned up to support them, then please do send patches.


>>
>> Ross

