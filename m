Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC6DCEE357
	for <webhook@archiver.kernel.org>; Wed,  9 Oct 2024 21:59:04 +0000 (UTC)
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
 by mx.groups.io with SMTP id smtpd.web10.29651.1728511138382335639
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Oct 2024 14:58:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iB45yo6C;
 spf=pass (domain: gmail.com, ip: 209.85.161.51, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-5daa93677e1so123032eaf.3
        for <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 14:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728511137; x=1729115937; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EcvWaZEn/AxhCeA0LgEGcOgb8H3urLxJDrr/e7kv5VU=;
        b=iB45yo6CqGcY5M9ZF57emsM8Yk/u7WRMZmGcFMbxn2JwNulliga14VMKgDmfx7k1IM
         af4ERpAKWp/V/491LeCK0HbvJfoRxMAByfbAraOm4eY/bPZCggORE0PuHdVOr9bvpWX9
         zqFWkmowWA4b1V0hgaUZm1z1jMXZGN2nulja9D50zwAb9SijLXDFmz7dnXIdNL7Deeqb
         7L+VsV+vKRllc4DGa/2tifpXGvW1Tgir9pvPuFrTQnz/ZzWAgq8RySUbjZsm7K0ERCVE
         rYBbyGUZn7vza8o7TzRoR2gdRsCazSPWLjVZXyw9oQC9TsQVxLOB7bx0W/mzvewd+yoY
         Ft9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728511137; x=1729115937;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EcvWaZEn/AxhCeA0LgEGcOgb8H3urLxJDrr/e7kv5VU=;
        b=AqXjLH1SCUrusrQziBNEWs8SXxHt8uY85/Iftr/uaxBTwHKHSUD2A4i3DQDFr/U0QM
         fEj5CTpxxRbvqtp8ek+LIew2rNPbwuaY2QgCwL0IckESpcgvqGbEs1R6gtZPRExAamJL
         sKxI7SrVoxHrbArCgAb8Ugc2wdy9uCOnXkdtv6lmYHjC3ffgyqqp4Da5RhmNf8ROPc9b
         KWY1eQPc5aP3O1CV40pkmWnwUPlQvDwTb+7WGNV2CdVoL1XbarIombssOFBEyO7LHdG9
         N9qCcXl/fFdSN9DySQlfnj2pjX3FzEhxxrFTXWgFDBtqfc0rDKNGmLeEAFG+QmRt6D4k
         aEqg==
X-Gm-Message-State: AOJu0YxsAnlLD4b7DN9qKtmRRE7GJbdTpNJqnfd6OPDYUTN8JMFpkkz9
	RV4xmdI5WBdUVsvssLY/xbzA8+86JTHR+4yz7UfDleuGySMFRw5I46owKHXFD8jeu5LvhS2/d8y
	A3JImAiMmihXdpbzWWnKVH/3wqee8Dz+2I3M=
X-Google-Smtp-Source: AGHT+IEfDEFgjQH6zdfEueJC7J0n8adwhBGPQjNuz6UxHWTUcC6XelvJr5Hc9nUshPjMD9ygT1Lv3RUkp1HPBMKPi0I=
X-Received: by 2002:a05:6870:ebc4:b0:277:e641:5659 with SMTP id
 586e51a60fabf-288344d656emr3064304fac.35.1728511137378; Wed, 09 Oct 2024
 14:58:57 -0700 (PDT)
MIME-Version: 1.0
References: <THe4.1728400256824602958.rStN@lists.yoctoproject.org> <10004.1728466643973723741@lists.yoctoproject.org>
In-Reply-To: <10004.1728466643973723741@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 9 Oct 2024 14:58:31 -0700
Message-ID: <CAMKF1somoZiCg2-7037c4Xu6RKiAkDaXmWVWoVD2eSRob7NdOQ@mail.gmail.com>
Subject: Re: [yocto] Help enabling the BT_QCA driver
To: yocto@lists.yoctoproject.org, Jesus.JimenezSanchez@verifone.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 21:59:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63994

On Wed, Oct 9, 2024 at 2:37=E2=80=AFAM Jesus Jimenez Sanchez via
lists.yoctoproject.org
<Jesus.JimenezSanchez=3Dverifone.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> I wanted to add that I have been able to enable the driver using menuconf=
ig by enabling its dependencies.
>
> The problem I'm facing now is that Yocto is not building the kernel objec=
t files (.ko), not even the ones it was building before. As far as I know I=
 have only changed the configuration to build this new driver but I could b=
e wrong and maybe touche where I shouldn't.
>
> Is there a way to tell Yocto to build those kernel objects?

depending upon which kernel recipe is in use you might be able to use
kernel config fragments where you add a file with needed configs which
is then merged into the final .config file
by build system, linux-yocto kernel uses this method extensively.
Create something like bt.cfg with BT_QCA =3D m and then add bt.cfg to
SRC_URI this should hopefully enable the
driver and emit it as a separate output package like
kernel-module-btqca or somesuch. Which you can add to your image via

MACHINE_EXTRA_RRECOMMENDS:append =3D " kernel-module-btqca" in machine
conf or local.conf file.

>
> Thank you.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63983): https://lists.yoctoproject.org/g/yocto/messag=
e/63983
> Mute This Topic: https://lists.yoctoproject.org/mt/108890949/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

