Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B45C25B76
	for <webhook@archiver.kernel.org>; Wed,  5 Jun 2024 10:53:46 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.12271.1717584822544436847
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jun 2024 03:53:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RyhYfaWs;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2eaa794eb9fso54212741fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 05 Jun 2024 03:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717584821; x=1718189621; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yxf+I2hwJmv307QIOQl+qkNg1ixPHoS3IECF4wp/sTU=;
        b=RyhYfaWs+9xpwEMMZrR7Z9EnZfgx/6O9Nf4b8zAUcUHudhxc88WHmmlcbD+U8kyvjz
         f7xoR5cqawIct5qCLn3WCQGnwSQgV4y6N/WsOhmMEMr3eFOw4MVD8mELM8wfV3gduD/A
         Bbkybiiy8zyingOhcy4FmOMYIHAuDt1/M5/fgnxLNOvAF8j4ra8PGf7XrXj9fURgn08g
         VdhUwLE8jKkIQOtt79nM24nkmC4N32IeKMgQ0Q7mJHs0CNBXufCY1pBvjZT/83It8Qun
         zWKDXlK4XIRMVdsldkwxwFhUgVS2IqZbHzdjDs2gECbxP5aLNWjRDP9ZoKqsfPmvGHw9
         P28Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717584821; x=1718189621;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yxf+I2hwJmv307QIOQl+qkNg1ixPHoS3IECF4wp/sTU=;
        b=fkluPeAnsKlXbpcXtmRQiOShu5N4WxlfZZejrjfJ0ME8UkoReA91ufNYOhrLsU+Mj5
         tBPCgkLqINKNREssyU1dEV8jvrFDl1R0oOmUyosQe1OaSwxLjP38GWMLVrhO1l6KTpyZ
         VrxDUEV7/fDtc1G08sCBwpOS42VO5pPJz8BHsIQlxWm0OAI3QGgSoTY1Hzi3mXxMBpha
         fSnvsxXzpUlD30DUxtY/F/pNDQatJYnO3K5UGXaV37O86VfNZ8caOIS8iPT+RSQ6Ce6a
         mKRXjP4hmxOqjUST9AE2xtbWuV8/gf2/LhgMfRJU4+ZBPpOHcf/7HIurcpZFlbye9Yrn
         6otQ==
X-Gm-Message-State: AOJu0YyId2pmCmgSH4yMDPRm+S7CA585614l/KCRyOBFntV3OcWB0oPB
	mABGiFyIE6MRpu0/35e+EHlbqyFpsU/7LuXqq43VO7LirvdaTrjKrOdrnn6CFUvJH9gLvXsZFUj
	gvj5pAOclKIsrkumobytcVarzFyI=
X-Google-Smtp-Source: AGHT+IFyxjYm29v89GeO7PsmUYsP0njXohBn6ofE8gyM238ri/ykgpMlhy7hun2HpjkGn2EWv65gPyTJx1S8duZU/yI=
X-Received: by 2002:a2e:a796:0:b0:2e9:83e3:29d9 with SMTP id
 38308e7fff4ca-2eac79c0853mr15707901fa.12.1717584820447; Wed, 05 Jun 2024
 03:53:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAKe-BNoRfMiza5Mf691s7h8DP1+BN38-0sx7-rdiSTJhfSkA1g@mail.gmail.com>
 <CANNYZj-fyCD3f_2RtDhKKMuO9dFk=pt7yb0fazez0v1Z_DAoBQ@mail.gmail.com> <CAKe-BNqwwFzMFFAgy7DjG4oi37E0HBx6jRJTeCPe4E+seF7wUQ@mail.gmail.com>
In-Reply-To: <CAKe-BNqwwFzMFFAgy7DjG4oi37E0HBx6jRJTeCPe4E+seF7wUQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 5 Jun 2024 12:53:29 +0200
Message-ID: <CANNYZj95qctfL=iAVwNZLuPWY_kwf+45ZNM_QrWDy17gXH3ARQ@mail.gmail.com>
Subject: Re: [yocto] Need to add TEMPLATECONF in Custom layer.
To: Saswati Nayak <saswatinayak2010@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jun 2024 10:53:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63284

TEMPLATECONF needs to be set only when you execute oe-init-build-env
to initialize the build. You don't need to permanently export it to
the environment, and can simply put it as a prefix to the command:

TEMPLATECONF=3D/path/to/config/template/in/some/meta-layer/ .
/path/to/oe-init-build-env /path/to/build-folder

This is awkward and not user friendly, so oe-setup-build was
developed. But it's not in kirkstone.

A command to save the active configuration to a template in a layer is
not in kirkstone either. You need to copy the files in conf/ by hand,
or you can create them yourself from nothing.

Altogether, you'll get better support for this in newer yocto
versions. We're still working on standardizing everything and closing
all the gaps.

I would recommend that you set up a scarthgap build (with just plain
poky, no other layers), and play with the tools available there to
understand better how the pieces fit together.

Alex

On Wed, 5 Jun 2024 at 12:21, Saswati Nayak <saswatinayak2010@gmail.com> wro=
te:
>
> Hello Alexander,
>
> Can you help me with the example?
> As I am using the Kirkstone version of yocto, I am not able to get a prop=
er idea how to set.
> Do we need to export the TEMPLATECONF?
>
>
> Thanks & Regards
> Saswati
>
> On Tue, Jun 4, 2024 at 3:54=E2=80=AFPM Alexander Kanavin <alex.kanavin@gm=
ail.com> wrote:
>>
>> If your yocto version is recent enough, use
>>
>> 'bitbake-layers save-build-conf' to save build/conf/ as a template. In
>> older versions you need to do what it does by hand.
>>
>> To set up a build from template, use oe-setup-build (from scarthgap
>> onwards) or TEMPLATECONF=3D . oe-init-build-env in older versions.
>>
>> Alex
>>
>> On Tue, 4 Jun 2024 at 12:17, Saswati Nayak via lists.yoctoproject.org
>> <saswatinayak2010=3Dgmail.com@lists.yoctoproject.org> wrote:
>> >
>> > Hello All,
>> >
>> > I want to add a custom templateconf in my build directory.
>> > Can anyone help me how to create Templateconf from our local source so=
 that it will point in the build/conf/templateconf.cfg .
>> >
>> > Thanks & Regards
>> > Saswati
>> >
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> > Links: You receive all messages sent to this group.
>> > View/Reply Online (#63270): https://lists.yoctoproject.org/g/yocto/mes=
sage/63270
>> > Mute This Topic: https://lists.yoctoproject.org/mt/106479728/1686489
>> > Group Owner: yocto+owner@lists.yoctoproject.org
>> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavi=
n@gmail.com]
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >

