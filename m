Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0564EEE57DF
	for <webhook@archiver.kernel.org>; Mon, 11 Sep 2023 20:34:09 +0000 (UTC)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
 by mx.groups.io with SMTP id smtpd.web10.9012.1694464439421893921
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Sep 2023 13:33:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=JPMHO1eE;
 spf=pass (domain: gmail.com, ip: 209.85.166.48, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-7927f36120cso164493039f.1
        for <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 13:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694464438; x=1695069238; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=efu4zgZ+LCAHkHgua9mLycUU90jjf3OJjFELwlH0xw4=;
        b=JPMHO1eE9A5q9MlsqghJLxKO4BypfXf6PQbVTgHaVDRfv+y0mamGNil/BOpCgmChWY
         3hosC55eEvnd7aMkI8O3NS4NsWAuUkdoBRe+Ysn9m0bBuZc8HR0uBje8SqaR5wdzxxty
         BuSFQswdRQHd//7vlQc9cPFod7akff+4WbSi+RHjXz2bDiZsjMPeIsbVxnTiUjczNC9P
         PGgpLYEe631+NjP/Cssr+b/TCM8EGU8kYEvLnEQ2Xtlg9qM5kWOmP67zU8HQ+HD3uXy6
         n+st1N1jVkUdhy5wQR19J6Bn307JY5aRfNNtCf18hI1Y6WJbis/uuYfnbh4oijRscnVS
         +Sgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694464438; x=1695069238;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=efu4zgZ+LCAHkHgua9mLycUU90jjf3OJjFELwlH0xw4=;
        b=OpYOYtch9/FAjEKE6xkgAsLlHnLloK80oEuXjopkwCGQHsqrl+gbJlDZCAEVSosrqy
         nyY/ymseejVM+4ei5hBjNNhULzGk/sQA45IHlBdXCyS7OxI/ANCn28n7P+Pa0Ohy1iyG
         AbLcYQgeK0CKt5zntDOYg4OdjwiKRuu/2b8spbJYnJz3fOxEYTssfMTLlko9SIHbtjty
         BytSbjA6bc5IavLgh/CsqasY64pKnAa9cD2JYCZgpeCvYoXREYAAAXh7HtxZn1nbSSCO
         qWymFOxLO5JXHnsBdA5MnGa0SsjocpkD0DFDMdgeD0e6qar13CXgXsv68v7XK5KfI/BG
         hUTw==
X-Gm-Message-State: AOJu0YxXhKCnvpPX8hr5lwNr0L0MXJMaE9xQzRxw3xbVAYJD0y7ItfIh
	N+XSrypEwnz2wbxY7dghHx/GDKqATRCpXflN17w=
X-Google-Smtp-Source: AGHT+IE8sG8WudWXDQLqYpIyX0azMVIFLe3LS8zzFq/c1fHZUrGLJMv70lEnX7TvEqpUDzrcKJ6mrvZv0gAUrSpDm0M=
X-Received: by 2002:a05:6602:185:b0:790:aa71:b367 with SMTP id
 m5-20020a056602018500b00790aa71b367mr13444960ioo.4.1694464438642; Mon, 11 Sep
 2023 13:33:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sqe4sqEK6fO0nF2JKx-bGH6zxwZtKhbuxhDJC6=H+tJXA@mail.gmail.com>
 <246F203D-CE28-4FFB-B75B-430B65D64816@gmail.com> <CAMKF1sq-HLEDTVVwbqQXASE4GvH1zbWNe5fiaVF8=imKEwAH_g@mail.gmail.com>
 <CAAfyv35kSOPJqGgjsPbO-969TwKk0969eEuKR5361d+OCrYnDg@mail.gmail.com>
 <1783EECA054B2736.5496@lists.yoctoproject.org> <CAAfyv36C=i6uo9X_xidsz9R=wwWabTtNa0+7MCcpDiuWQP1m0Q@mail.gmail.com>
In-Reply-To: <CAAfyv36C=i6uo9X_xidsz9R=wwWabTtNa0+7MCcpDiuWQP1m0Q@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 11 Sep 2023 16:33:47 -0400
Message-ID: <CADkTA4Obuzq5RxdzCHdvN6OeDNxpK4xXiprM1EiZCMSa6b4cMg@mail.gmail.com>
Subject: Re: [yocto] [meta-virtualization] nerdctl broken in kirkstone
To: Marek Belisko <marek.belisko@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>, Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 20:34:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60974

On Mon, Sep 11, 2023 at 3:50=E2=80=AFPM Marek Belisko <marek.belisko@gmail.=
com> wrote:
>
> On Mon, Sep 11, 2023 at 9:27=E2=80=AFPM Marek Belisko via lists.yoctoproj=
ect.org <marek.belisko=3Dgmail.com@lists.yoctoproject.org> wrote:
>>
>> On Mon, Aug 28, 2023 at 10:38=E2=80=AFPM Belisko Marek <marek.belisko@gm=
ail.com> wrote:
>>>
>>> On Thu, Aug 24, 2023 at 4:05=E2=80=AFPM Khem Raj <raj.khem@gmail.com> w=
rote:
>>>>
>>>> does it work if you add do_compile[network] =3D "1"
>>>
>>> Nope it is not. It turns out that the fetch phase is not correct. When =
I do bitbake nerdctl -e | grep SRC_URI I got only:
>>>
>>>  SRC_URI=3D"git://github.com/containerd/nerdctl.git;name=3Dnerdcli;bran=
ch=3Dmain;protocol=3Dhttps"
>>>
>>> and not other SRC_URI's added in src_uri.inc file. It's mystery to me w=
hy this include is not working
>>
>> Khem any idea what can be the cause of this issue please? I've tried yq =
recipe which using more less the same approach and there SRC_URI's are prin=
ted properly.
>
> OK please disregard this message. I find out I have a nerdctl bbappend wh=
ich overwrites SRC_URI permanently. BTW on kirkstone nerdctl is broken due =
wrong branch name + wrong SRCREV. Should I post a patch?

You do realize that you are using the wrong mailing list for this thread ?

We have newer/working updated nerdctl recipes in newer branches of meta-vir=
t.

The upstream repos have just (unfortunately) changed some of their
revs, so the ones captured and tested on release have gone out of
date.

Bruce


>>>>
>>>>
>>>> On Wed, Aug 23, 2023 at 11:14=E2=80=AFPM Belisko Marek <marek.belisko@=
gmail.com> wrote:
>>>> >
>>>> >
>>>> >
>>>> > Sent from my iPhone
>>>> >
>>>> > > On 24 Aug 2023, at 02:23, Khem Raj <raj.khem@gmail.com> wrote:
>>>> > >
>>>> > > =EF=BB=BFwhich task is failing ?
>>>> > do_compile
>>>> > >
>>>> > >> On Wed, Aug 23, 2023 at 2:31=E2=80=AFPM Marek Belisko <marek.beli=
sko@gmail.com> wrote:
>>>> > >>
>>>> > >> Hi,
>>>> > >>
>>>> > >> I'm trying to add nerdctl to an image using kirkstone release for=
 meta-virtualization.
>>>> > >> I've added bbappend with following fix:
>>>> > >>
>>>> > >> SRC_URI =3D "git://github.com/containerd/nerdctl.git;name=3Dnerdc=
li;branch=3Dmain;protocol=3Dhttps"
>>>> > >>
>>>> > >> (branch name in original recipe is master but main is required)
>>>> > >>
>>>> > >> but then anyways it fails with:
>>>> > >>
>>>> > >> rsync: [sender] change_dir "/data/projects/test/build/tmp/work/co=
rtexa53-crypto-poky-linux/nerdctl/v0.18.0-r0/nerdctl-v0.18.0/src/import/ven=
dor.fetch/github.com/Masterminds/semver/v3" failed: No such file or directo=
ry (2)
>>>> > >> | rsync error: some files/attrs were not transferred (see previou=
s errors) (code 23) at main.c(1327) [sender=3D3.2.5]
>>>> > >>
>>>> > >> And in ${BP} I cannot see any of those vendor stuff which should =
be present. Is there some fix for that already pending or it's known issue?
>>>> > >>
>>>> > >> Thanks and BR,
>>>> > >>
>>>> > >> marek
>>>> > >>
>>>> > >> --
>>>> > >> as simple and primitive as possible
>>>> > >> -------------------------------------------------
>>>> > >> Marek Belisko - OPEN-NANDRA
>>>> > >> Freelance Developer
>>>> > >>
>>>> > >> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
>>>> > >> Tel: +421 915 052 184
>>>> > >> skype: marekwhite
>>>> > >> twitter: #opennandra
>>>> > >> web: http://open-nandra.com
>>>> > >>
>>>> > >>
>>>> > >>
>>>
>>>
>>>
>> Thanks,
>>
>> marek
>> --
>> as simple and primitive as possible
>> -------------------------------------------------
>> Marek Belisko - OPEN-NANDRA
>> Freelance Developer
>>
>> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
>> Tel: +421 915 052 184
>> skype: marekwhite
>> twitter: #opennandra
>> web: http://open-nandra.com
>>
>>
>>
>
> Thanks,
>
> marek
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60973): https://lists.yoctoproject.org/g/yocto/messag=
e/60973
> Mute This Topic: https://lists.yoctoproject.org/mt/100924569/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield=
@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

