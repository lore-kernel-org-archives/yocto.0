Return-Path: <jstephan@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8880C04FCD
	for <webhook@archiver.kernel.org>; Wed, 20 Sep 2023 18:04:48 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.2408.1695233080975949661
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Sep 2023 11:04:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20230601.gappssmtp.com header.s=20230601 header.b=lDJIgf03;
 spf=pass (domain: baylibre.com, ip: 209.85.208.182, mailfrom: jstephan@baylibre.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2bfed7c4e6dso1251031fa.1
        for <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 11:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695233079; x=1695837879; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H4lggiWIM8SFuthejfNlxLD7xTofZXjIAn1soeIKFus=;
        b=lDJIgf03zeCRE2Csj8A6Wk4qmx/BUQt8Ci7ofvFoYOLK+cESU1RROnt3aeLyULEgzT
         aamkE08RuRopz8OGEU6E0sddJCOFI1ydaXdTwzWIenuT5hPzrhDydNXGSvFqbPgeRnrg
         TGPKiJQMrfnF2sd1LuGrZvcCF6VNfIRoc9WhBAPzW7m/oOqVxx7Vi0u/+Are839LHnyG
         hIvCoJzUFcZfcSTZ9hQF8gil+2Wa1y77Yu6l5Lc+XC+R4imEqqFis8Yc7yWkcJuG5fF7
         QnOl0BeLVSFPufR41ibyyZnD/pTq42jj+KaGVwQ/b/UWVIVOleX6tIawiJIx0f/OPiRH
         jt0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695233079; x=1695837879;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H4lggiWIM8SFuthejfNlxLD7xTofZXjIAn1soeIKFus=;
        b=d1RrPHr3/kHGissZCozmmfWz4KN3ekBGnmRLSRSrq2uHDdZpZHc3PZOhdKujpEqa14
         cKBLIcFrVjbkDy4lkfBTGCcRxE8Zg/2xPOC37Vv+zYa+S+S2rTFt/mNzlLBQk66ok6IT
         UEmwXMzIZPOiqjtaijH+oIhJHE+1C+lDAHeQZ84ooAC4ClzdU7FhovkP4KICW9za0hxX
         g3Mro0YV6LA0+n2ie/wwUF2B3ZPVZco2+qqQXNdoQ6zkqdHjpp2mTIvtVybzoLgtin19
         WmCjGr7x5L70iJR7/76fPZJjD9+ixz5ynTH7fWoTrr9hPe2AiQ5FVd25gavkF5NZ6pJv
         CtwA==
X-Gm-Message-State: AOJu0YzpHOjjC1ZgGIEtJymUqUw+k4O2kylqYJQMKwfLCm46Ns+8vy7/
	QzQz51MyD0RCVKQiTZpZrxLKeDAnAhsYuCiVRTNCHw==
X-Google-Smtp-Source: AGHT+IFaZWKRntl4G+DQgA0boF9S7Hz2WJE6OpJbNu+likyYDxuqcYvIAYkDdM8EfpYc22Ta2f2OWoxYjWwhTWQ/ME8=
X-Received: by 2002:a2e:8959:0:b0:2bc:e2bc:81ff with SMTP id
 b25-20020a2e8959000000b002bce2bc81ffmr2921723ljk.51.1695233079134; Wed, 20
 Sep 2023 11:04:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
 <81f4c191fe6dead1feec6bfc0d36aa328af1f7d4.camel@linuxfoundation.org>
 <CANNYZj_uSknujoQUK2yV7U4N+WW_RkUH=sJnFDBfZgV0G5fv7Q@mail.gmail.com>
 <5ef99df95ab74e74df6f1e07ef4877487230d9fe.camel@linuxfoundation.org>
 <CANNYZj9mekKZwHs839m3r8sYbTiTLPaqzP=8C_-9=4w6MiJTaA@mail.gmail.com>
 <CAEHHSvbb9O_5zOBWvae+sCCouW+RyjMY+J8wOdtx2jixwFqN5A@mail.gmail.com> <CANNYZj_7zmvsZ1fJHoxkN-YgspaTD6Cei1qp-TS5Axw2D-0HLA@mail.gmail.com>
In-Reply-To: <CANNYZj_7zmvsZ1fJHoxkN-YgspaTD6Cei1qp-TS5Axw2D-0HLA@mail.gmail.com>
From: Julien Stephan <jstephan@baylibre.com>
Date: Wed, 20 Sep 2023 20:04:25 +0200
Message-ID: <CAEHHSvZpdsY+ZBVnT8yYCy_AwimHUE3ii03m2qgZtGpZr6ynXw@mail.gmail.com>
Subject: Re: Core workflow: sstate for all, bblock/bbunlock, tools for why is
 sstate not being reused?
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: ",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Michael Halstead <mhalstead@linuxfoundation.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 18:04:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61054

Unless I missed something, I think I fixed all comments from RP on the
branch I force pushed :)

Cheers
Julien

Le mer. 20 sept. 2023 =C3=A0 16:31, Alexander Kanavin
<alex.kanavin@gmail.com> a =C3=A9crit :
>
> That=E2=80=99s great to hear! When you have a new patch set please post i=
t here. I think there=E2=80=99s also a new reply from RP that you need to c=
onsider.
>
> Alex
>
> On Wed 20. Sep 2023 at 16.25, Julien Stephan <jstephan@baylibre.com> wrot=
e:
>>
>> Hi Alexander,
>> About bblock tool: I just force pushed my branch on poky-contrib
>> (https://git.yoctoproject.org/poky-contrib/log/?h=3Djstephan/bblock),
>> trying to fix an autobuilder issue reported by Alexandre Belloni.
>> I am still working on this, and I would be very happy to get this merged=
 :)
>>
>> Cheers
>> Julien
>>
>> Le ven. 15 sept. 2023 =C3=A0 10:28, Alexander Kanavin
>> <alex.kanavin@gmail.com> a =C3=A9crit :
>> >
>> > On Thu, 14 Sept 2023 at 21:54, Richard Purdie
>> > <richard.purdie@linuxfoundation.org> wrote:
>> >
>> > > Effectively those "configs" are what the eSDK is, you're just propos=
ing
>> > > a server side set of them rather than a built copy. In many ways tha=
t
>> > > could be useful way of possibly rethinking the way the eSDK works.
>> > >
>> > > So in that sense I like the idea, we should just be clear the proble=
m
>> > > it solves as it doesn't solve the "why is my build not using the cac=
he"
>> > > question specifically but it potentially solves other issues.
>> >
>> > Right, I didn't make it clear that this idea is not about 'why sstate
>> > is not being reused', but rather something I thought of to avoid
>> > placing people in that situation to begin with - offering them
>> > 'pre-fabricated builds' with guaranteed sstate availability. I have a
>> > hunch there'll be plenty, for whom this is just fine, and eventually
>> > this could be the basis of that oe-setup holy grail :)
>> >
>> > I'll start with the simplest enhancement of printing what would be
>> > rebuilt. There's a lot of code I need to understand, so this needs to
>> > be in manageable chunks :)
>> >
>> > Alex

