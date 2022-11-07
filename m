Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE621C433FE
	for <webhook@archiver.kernel.org>; Mon,  7 Nov 2022 01:00:37 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
 by mx.groups.io with SMTP id smtpd.web10.5240.1667782829274715793
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Nov 2022 17:00:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=C2Lcnytm;
 spf=pass (domain: gmail.com, ip: 209.85.210.45, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f45.google.com with SMTP id 94-20020a9d0067000000b0066c8d13a33dso4431894ota.12
        for <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 17:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3k1TEp7EovvvoMflO8yug/G5lTQGEShv0th+WeNrN5o=;
        b=C2LcnytmcLK4r3vqXcAbNCHfodvJzY+tR5YlvBvIcAbmZD3TXPvnkoAWtyue3ADzPM
         /JzS9FXSNogme48KFXTQvaUhs5j+0rGtj+pOrdVHHaBlwrWSNkUZ2FbP7MNpVyShio0f
         8/bWlMxLHgY9NuixjLKtAsrFsfG68Fadrn0m+WiEtredG+7dcAiqa5hVs+Nq3ZXVBmbE
         tW1UU2zg9oUYhpLyfaAg2WyyD1sJctbOaM5zat+uPuA8EBjSD1KrXtHFQFj4jxuHHmei
         R29cbQiMJnG2ZkuO+Z241RKS0R4X+pSZMKPhL4rUGTSAmjNwwQZt2Ygge8s8uZiM3mjk
         IilA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3k1TEp7EovvvoMflO8yug/G5lTQGEShv0th+WeNrN5o=;
        b=YO0yAQGolck7hbST7wyA9sQPtFz8IccK4vyhyIsR1GT2AM5kTv2+IZjjK/I/dIYyU9
         atiLotbxTvS+zm/2dYYNIES6TZ0NODtL8v092aTWmNlxsSvXVOCku3NVCtCJJUzpendt
         tuxQS4wADZm07rvTQoVKxhTi350fQDof/P6ZNU7jAwzTYtQOyDvLCuA7TYsPvZMsGlT6
         uH9SheBTy2fxjNwFL1sJLhzWwndB82NEdtwUb5lzlqctoOf3ut/DlXhYuU3iy9AEzM0+
         87pZOGXuPegiCtd5pmjOeCLL5SzvGj8aZIGxrXMzKnsBi00n5h6pCbI18FQ4neQT57cf
         USEA==
X-Gm-Message-State: ACrzQf3dIht6WUTJNTpki2ynutIvHafgfoe1csVCUrwOZvKYHVvB1d9X
	nALpaopS8hvfJe1EWnV6EIk5PTB323Lwcq8bCUc=
X-Google-Smtp-Source: AMsMyM5HYmk/Gva/fNSLm/lpcG38DqfCy9nrF2zHTkvL2R7tt8XYxcfC/MyaiA3qih9Svddmqe/s9/bnB8ELix5lafQ=
X-Received: by 2002:a9d:65c9:0:b0:66c:5124:909a with SMTP id
 z9-20020a9d65c9000000b0066c5124909amr19857825oth.111.1667782828417; Sun, 06
 Nov 2022 17:00:28 -0800 (PST)
MIME-Version: 1.0
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi> <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
In-Reply-To: <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 6 Nov 2022 17:00:02 -0800
Message-ID: <CAMKF1srJcmZsM+Gr=8nGrhTdnGJdgZii+-1vmqdyZQFuGDwo3Q@mail.gmail.com>
Subject: Re: [yocto] undefined reference problem persists
To: Mistyron <ron.eggler@mistywest.com>
Cc: Anders Montonen <Anders.Montonen@iki.fi>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 01:00:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58503

On Sun, Nov 6, 2022 at 8:02 AM Mistyron <ron.eggler@mistywest.com> wrote:
>
> On 11/6/22 02:26, Anders Montonen wrote:
> > On 6 Nov 2022, at 9:45, Mistyron <ron.eggler@mistywest.com> wrote:
> >> Hi,
> >>
> >> I'm working with dunfell and want to compile and install the drivers f=
or the Laird LWB5+ module (available from https://github.com/LairdCP/meta-l=
aird-cp).
> >> I have included the path to the layer in meta-laird-cp-pre-3.4 in my `=
bblayers.conf` and since I need the networkmanager and with information fro=
m their support team (don't trust the README apparently), I've added `lrd-n=
etworkmanager-sterling` to the `IMAGE_INSTALL` list in `sample-image-cp-lwb=
5plus.bb`. When I invoke `$ bitbake sample-image-cp-lwb5plus`, I keep getti=
ng:
> >>
> >>      | /usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/.=
./lrd-network-manager-10.4.0.10/src/nmcli/common.c:904: undefined reference=
 to `rl_echo_signal_char'
> >>
> >> even though I've added `readline` to the `DEPENDS` list. Why is this? =
I expected the `rl_echo_signal_char` dependency to be resolved, any hints?
> > Are you using meta-gplv2? That function doesn=E2=80=99t exist yet in th=
e version of readline provided by that layer.
>
> I see, yes my project is using "meta-gplv2".
>
> Should removal of that layer help, or would you recommend that I update
> the readline version within it to the latest? (and provide an upstream
> patch to: https://github.com/lgirdk/meta-gplv2 ?
>

you can also look into replacing readline with editline and see if
this would work for your package needs. That will be one less package
needed from meta-gpl2

> Thanks!
> Ron
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58498): https://lists.yoctoproject.org/g/yocto/messag=
e/58498
> Mute This Topic: https://lists.yoctoproject.org/mt/94840876/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

