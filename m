Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F12EC4332F
	for <webhook@archiver.kernel.org>; Mon,  7 Nov 2022 02:17:18 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web11.5722.1667787436416258235
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Nov 2022 18:17:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=c8QTg9/u;
 spf=pass (domain: gmail.com, ip: 209.85.167.176, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f176.google.com with SMTP id r76so10783827oie.13
        for <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 18:17:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bskxK3YtocQT2z/IqadgA0KARX5gBT7T0VPh0iqQvlQ=;
        b=c8QTg9/uNpJjjAYbq9AMmT3mCNeHGpg62d9C0h6MxBzpNhhomAFQn3Huz45EydElYZ
         k26jFKh423fpYx7QV7KxYlMBaWMuFXvCtP8hzTrZUcKgeWvymPlucYuP6kDk0oiP7lmj
         NUyY6zf1xp05fsYS0dEVwG+QLwSuxG7gWConfbibmbTIEYpO1Wg0o9XblYlkiXpcAHID
         lM9DqYdxNvb4vJtm4LVlu7wmzxLkZR01JBnSTI5H1GduYF9hDGxZI/P04+KSfJF8823L
         W14C9nnK74tc/EfDkKX4B/7rBbSib2Xho2yFkNQRm7Webva5EEUReHYaPdVu6e30sU3c
         yFZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bskxK3YtocQT2z/IqadgA0KARX5gBT7T0VPh0iqQvlQ=;
        b=UzgRW6Nv/9ek2PIvc7v/aQWn+4FqeTXdweeKBYjdgk+dU2nG9J1B6I+tcFy8jfWXEF
         R5mMDED6FerhovLVjCyQDDYIQ5jl82oA2wVB6/mP1ntVHyIgmRWdZ+SeGufCl/37CLmx
         kba8a+Ywt83F61myZhcK0k2kG2aFitvyBEwsfTDxJ9BeOUPgq9/wqeIt0C9Ksak2hTiu
         vE0RauEcDovJbLDD4g7sQPlfIK64RNXDGnCzsia0unzDtezBjoxx8mGXQOkzRU/JFVMp
         4G9vtVzy88NYKy4UXM0qnQgsNgV687iGOeqswgJAxG47PiPVC+umOtWQeTiifQJrisA9
         ZoVw==
X-Gm-Message-State: ACrzQf2ZmZFHdIFM6S1CtmKoW/BwcDwJ7eiwYVKH7uc7ZQDTif0TccHs
	ilf0Rx+tLaOQBEjus+DZVSxHD8T1B0UCIHOGyQA=
X-Google-Smtp-Source: AMsMyM4VBhZH2nwBA5yHw8Tf2tCd5T3bckCVh6hGZ1rOAKZUBK2YtKPw+4XEGPcSFdmb5l8nyanq0jz6RcmyyS7ojSQ=
X-Received: by 2002:a05:6808:20a0:b0:359:e4d6:8bd3 with SMTP id
 s32-20020a05680820a000b00359e4d68bd3mr25231062oiw.262.1667787435593; Sun, 06
 Nov 2022 18:17:15 -0800 (PST)
MIME-Version: 1.0
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi> <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
 <CAMKF1srJcmZsM+Gr=8nGrhTdnGJdgZii+-1vmqdyZQFuGDwo3Q@mail.gmail.com>
In-Reply-To: <CAMKF1srJcmZsM+Gr=8nGrhTdnGJdgZii+-1vmqdyZQFuGDwo3Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 6 Nov 2022 18:16:49 -0800
Message-ID: <CAMKF1son6juOfbvEbcaXTb5uFyL2jB2hzgkTyXJFocRhgFtaCA@mail.gmail.com>
Subject: Re: [yocto] undefined reference problem persists
To: Mistyron <ron.eggler@mistywest.com>
Cc: Anders Montonen <Anders.Montonen@iki.fi>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Nov 2022 02:17:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58505

On Sun, Nov 6, 2022 at 5:00 PM Khem Raj <raj.khem@gmail.com> wrote:
>
> On Sun, Nov 6, 2022 at 8:02 AM Mistyron <ron.eggler@mistywest.com> wrote:
> >
> > On 11/6/22 02:26, Anders Montonen wrote:
> > > On 6 Nov 2022, at 9:45, Mistyron <ron.eggler@mistywest.com> wrote:
> > >> Hi,
> > >>
> > >> I'm working with dunfell and want to compile and install the drivers=
 for the Laird LWB5+ module (available from https://github.com/LairdCP/meta=
-laird-cp).
> > >> I have included the path to the layer in meta-laird-cp-pre-3.4 in my=
 `bblayers.conf` and since I need the networkmanager and with information f=
rom their support team (don't trust the README apparently), I've added `lrd=
-networkmanager-sterling` to the `IMAGE_INSTALL` list in `sample-image-cp-l=
wb5plus.bb`. When I invoke `$ bitbake sample-image-cp-lwb5plus`, I keep get=
ting:
> > >>
> > >>      | /usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build=
/../lrd-network-manager-10.4.0.10/src/nmcli/common.c:904: undefined referen=
ce to `rl_echo_signal_char'
> > >>
> > >> even though I've added `readline` to the `DEPENDS` list. Why is this=
? I expected the `rl_echo_signal_char` dependency to be resolved, any hints=
?
> > > Are you using meta-gplv2? That function doesn=E2=80=99t exist yet in =
the version of readline provided by that layer.
> >
> > I see, yes my project is using "meta-gplv2".
> >
> > Should removal of that layer help, or would you recommend that I update
> > the readline version within it to the latest? (and provide an upstream
> > patch to: https://github.com/lgirdk/meta-gplv2 ?
> >
>
> you can also look into replacing readline with editline and see if
> this would work for your package needs. That will be one less package
> needed from meta-gpl2

I should have said libedit and not editline

>
> > Thanks!
> > Ron
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#58498): https://lists.yoctoproject.org/g/yocto/mess=
age/58498
> > Mute This Topic: https://lists.yoctoproject.org/mt/94840876/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gma=
il.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

