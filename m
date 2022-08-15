Return-Path: <wangzq.jn@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96146C00140
	for <webhook@archiver.kernel.org>; Mon, 15 Aug 2022 06:02:19 +0000 (UTC)
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by mx.groups.io with SMTP id smtpd.web09.13426.1660543331238923843
 for <yocto@lists.yoctoproject.org>;
 Sun, 14 Aug 2022 23:02:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ddt3apZk;
 spf=pass (domain: gmail.com, ip: 209.85.218.67,
 mailfrom: wangzq.jn@gmail.com)
Received: by mail-ej1-f67.google.com with SMTP id uj29so11952671ejc.0
        for <yocto@lists.yoctoproject.org>;
 Sun, 14 Aug 2022 23:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=eak74J9yrXGiFWTC8qekfeQywi++84ZW0uv+njbRAXQ=;
        b=ddt3apZk10Iz0qhCbDnIAhIBp/WYpZvkMOW2b4D2Jfm8dgKF7UHlYSrkOJbcPojIEL
         yD+31qgr0tFAjfCBQfBi36PSOeg2mLZQGWD1BomPm4R78s6gAJDTma+ezEY2ufE1gO8u
         l6SzpKN9M1JycNwbKdbDPTTDtSRfYtYiEiQxKOBkmAXTzBwQr4cUpgX8nQQE4RA4pSI3
         kXqvSIkS5VxYQZehABD+5JMOPWawB4WtNRM6NQ403qZVyp3qNdhH2vcYYvJnUJMwgsCP
         Ng6Pv4lGfgbLHWI4y076rUsL7NNzMSvAU8WuDXG8xRsuPoN7qY29S/WC8rL63S7TqlYy
         jrTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=eak74J9yrXGiFWTC8qekfeQywi++84ZW0uv+njbRAXQ=;
        b=uIsW7mOQ5yUNNEek38oLkdIaoMJZy7XV89qfCbzhUaXP6eeAbGSatzsFt4kteM92hU
         ZPPU+vVS5Q5lMtLrPnpA+otqEYGQJah7x1P6lETegISnjhXFzXdpsWqk+t+WkvbvNUUP
         T5aK3O8P48mtBFnnp0oM+WYu4fME++Qp0xN/x17ZehXxJKJiFvnd1cQYAArl+cwUR99r
         HlKPrSZBt6Scd05c/enCXjguDS3ITdLYY+8xQhPEDZc5lMPbGIkgz2go12c7i5tVc7bx
         mI3Z1Jt2UfVmHl4YQnpLLBgBJd54zKM6VKadO190GX1QCDMkv81T9E8aVOyZyUNe5gEC
         RknQ==
X-Gm-Message-State: ACgBeo3lPzkAZGiiZYEPlmpyoCMNWjAHSZqlZmpHwSn1II8stC/3gn9B
	JOFtR1FqYCigaab/UAeLLkq2qU+cZ64iuXu4ELg=
X-Google-Smtp-Source: 
 AA6agR5K4jAXKqcXqPGCccoMXmT+Fd2RmTycXt4pBGm+NoHhkuWi8YPLvxaAp+LtV61rPE7q11oUqqJX7Hb7+wVCRA0=
X-Received: by 2002:a17:907:628c:b0:6ee:70cf:d59 with SMTP id
 nd12-20020a170907628c00b006ee70cf0d59mr9497054ejc.402.1660543329567; Sun, 14
 Aug 2022 23:02:09 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAHwNHZWC+BJnU34rrm2d3UNKv4gZ3mt9vOug89pgtQxb+wh1bg@mail.gmail.com>
 <CAMKF1sqqKJrzLL3e=2O5F2R1f9t3LW17Q5pb0KwhDSu_15=+1w@mail.gmail.com>
In-Reply-To: 
 <CAMKF1sqqKJrzLL3e=2O5F2R1f9t3LW17Q5pb0KwhDSu_15=+1w@mail.gmail.com>
From: John Wang <wangzq.jn@gmail.com>
Date: Mon, 15 Aug 2022 14:01:58 +0800
Message-ID: 
 <CAHwNHZXdHDx5XLLBc1cLyod0=zTAUXyoa6rKNcQifsEYCWnkEw@mail.gmail.com>
Subject: Re: [yocto] question about PREFERRED_RPROVIDER
To: Khem Raj <raj.khem@gmail.com>, richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Aug 2022 06:02:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57841

I did as Richard suggested, It worked as expected now

feature-public.bb or feature-private.bb:
SRC_URI =3D "git://public or git://private"

PROVIDES +=3D  "virtual/feature"
RPROVIDES:${PN} +=3D " \
virtual-feature \
"

machine.conf:
PREFERRED_PROVIDER_virtual/feature =3D "feature-public"


Khem Raj <raj.khem@gmail.com> =E4=BA=8E2022=E5=B9=B48=E6=9C=8813=E6=97=A5=
=E5=91=A8=E5=85=AD 22:11=E5=86=99=E9=81=93=EF=BC=9A
>
> fetcher will try to get versions of recipes during parse phase and if
> your recipes are using AUTOREV they will try to poke at git server for
> latest commit SHA
> are you using AUTOREV by chance ?

No,  and I will avoid to use AUTOREV, thank you

I checked the yocto-manual, and saw

If you use a virtual/\* item with PREFERRED_PROVIDER, then any recipe
that PROVIDES that item but is not selected (defined) by
PREFERRED_PROVIDER is prevented from building, which is usually
desirable since this mechanism is designed to select between mutually
exclusive alternative providers[1].

Do you mean if I use AUTOREV, bitbake sill tries to fetch ?

And, I am confused about the "PREFERRED_RPROVIDER" ,  I saw someone
use this variable[2], but I cannot find any thing about it In the
manual [3]

[1] https://docs.yoctoproject.org/ref-manual/variables.html#term-PREFERRED_=
PROVIDER
[2] https://github.com/search?q=3DPREFERRED_RPROVIDER_virtual&type=3Dcode
[3] https://docs.yoctoproject.org/genindex.html#P

>
> On Sat, Aug 13, 2022 at 2:57 AM John Wang <wangzq.jn@gmail.com> wrote:
> >
> > Hi,
> >
> > There is a package with two versions, private and public.
> > But when I use the PREFERRED_RPROVIDER to select the public version,
> > bitbake still tries fetch the private one, and then bitabke terminates
> > because do_fetch fails (no permission)
> >
> > What I expect is that when I select the public repository version, it
> > should not fetch the private repository, am I right?
> > Or, should I not use the PREFERRED_RPROVIDER to select a public/private=
 repo ?
> >
> > Could someone guide me :)
> >
> >
> > feature-public.bb
> >
> > ```
> > SRC_URI =3D "git://public"
> >
> > RPROVIDES:${PN} +=3D " \
> >     virtual-feature \
> > "
> > ```
> >
> > feature-private.bb
> >
> > ```
> > SRC_URI=3D "git://private"
> >
> > RPROVIDES:${PN} +=3D " \
> >     virtual-feature \
> > "
> > ```
> >
> >
> > machine.conf
> >
> > ```
> > PREFERRED_RPROVIDER_virtual-feature =3D "feature-public"
> > ```
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#57835): https://lists.yoctoproject.org/g/yocto/mess=
age/57835
> > Mute This Topic: https://lists.yoctoproject.org/mt/92997258/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gma=
il.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

