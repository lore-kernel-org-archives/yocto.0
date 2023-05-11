Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78A20C7EE22
	for <webhook@archiver.kernel.org>; Thu, 11 May 2023 17:23:37 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web10.2523.1683825809648692030
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 May 2023 10:23:30 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@sidebranch-com.20221208.gappssmtp.com header.s=20221208 header.b=aow+5Tci;
 spf=softfail (domain: sidebranch.com, ip: 209.85.215.169, mailfrom: leon@sidebranch.com)
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-5208be24dcbso6329412a12.1
        for <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 10:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20221208.gappssmtp.com; s=20221208; t=1683825808; x=1686417808;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YurJKntUy1Og60h74c0dZC4saZeqfREusHrWLiZ5VX4=;
        b=aow+5Tci8nquQsVi+HMjI3prCXS+qzhV9uwWmvcl79wWnCDtnrYUFzYwcr6z+uPfY3
         tTSF6C6x1/+jCljhD8VIv+tR4UfF2SZAQxUjSN9KIiz2BXYYzE+BQcXvqVg2KLo0eDPA
         FiBk+dr/QcTEyQKtlu3re4uujB3KiamariL7eo01hjGaWremNUgt1vxoVuypqEl6at3a
         0mN8DlK926B6kl8/dxBMVV2HgY4A8ERwXogYtVKCntiFPjm6jY0ghpGN71Ij2tRBUG68
         Ud/ium26arjm+Hq57zCSEcsSZdoTMKvDNG3DZUQ7AfAmVctBMFnfQ+4uxWnTCFvMxyBz
         Ultg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683825808; x=1686417808;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YurJKntUy1Og60h74c0dZC4saZeqfREusHrWLiZ5VX4=;
        b=Y+/jJ6Y0ePAsqjEtkLOggOOoyY8usptKx7dGd8ybUIKUXmG8gfsEe25BH5xPbcghlM
         M9KmfXbgVq5eqC4sO/9BecZ/243LduukXR9ZfmCXVHKMd/B4DTupFsM43I3nJzIUKlIv
         SZJWrDfKmEKFUH9f1qqg0vKa31ZubVrz2H3SP4J5WgJjI2KFFBBJLCtOvZZ0ExJdGz/P
         yG+6BsQbwojGZhE0F6b+GpFP7Ty0HKw6YfQZ5rZMvoTMsYi5B9gecXYFxYovdSjhk44d
         3fkyyBOh+g2+n7dAOdbqogyhYabJyxtUGlljdcG1X+5Os9tG+h2fMe/MUDP3qRhqjnUP
         OvCg==
X-Gm-Message-State: AC+VfDw5XbTiGgJ8piKnpt0dMAIwG4YcVMU/tpnqmPSP5qILxkJnwhHz
	sAxXXBQ+6D9lTYvpkTnykPYXBUhC/swXmm3XJZb3/Q==
X-Google-Smtp-Source: ACHHUZ4ogLJwcBuxyJLkwnCuflob4GNaPmfjDBDNDlrv72WzzenJtgxMYeSKtZuBn8/KG6GgL+CaJfS+t1scfyDMNhA=
X-Received: by 2002:a17:90a:708e:b0:24e:344e:d239 with SMTP id
 g14-20020a17090a708e00b0024e344ed239mr20584137pjk.25.1683825807502; Thu, 11
 May 2023 10:23:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnhEbi90oZmT=Fpz0CJw8av1jpAbe9xxJ=m0wV_YRKzvYA@mail.gmail.com>
 <f3d04550-0646-dabd-6294-3bccd0b71506@denx.de>
In-Reply-To: <f3d04550-0646-dabd-6294-3bccd0b71506@denx.de>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Thu, 11 May 2023 19:23:16 +0200
Message-ID: <CAMjhiJgrx4J3R=kC5jD1tV-iyydUjjqyoLFgiHE9zK9Vga5fFw@mail.gmail.com>
Subject: Re: [yocto] OTA Updates
To: Stefano Babic <sbabic@denx.de>
Cc: MOHAMMED HASSAN <hassanchattarki@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 17:23:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59995

Hello,

we have implemented OTA based on OSTree, in a non-commercial
no-license-fee setting, to update OTA over mobile (3G/4G) data
connections.

I remember the OTA server was really easy to setup.

We let Yocto deploy directly to the OTA server, using CI/CD.

Basically the server worked out of the box, running a few ostree
commands. We added a GUI to have visual version management, deployment
branches, rollbacks etc. with a few PHP scripts.

If you go this route, just run the ostree from the command line on
both the client and server, and you will quickly understand how it
works, and how you would like to wrap it up.

Regards,

Leon.

On Thu, May 11, 2023 at 6:59=E2=80=AFPM Stefano Babic <sbabic@denx.de> wrot=
e:
>
> Hi,
>
> On 11.05.23 16:33, MOHAMMED HASSAN wrote:
> > Hi all,
> > So I am referring this page for OTA updates
> > https://wiki.yoctoproject.org/wiki/System_Update
> > <https://wiki.yoctoproject.org/wiki/System_Update>
> >
> > However are these all paid or free services. Any more info about these
> > services is welcomed.
> > Also are there any tutorials, YouTube videos on ota updates for yocto? =
I
> > couldn=E2=80=99t find any though.
> >
>
> I and DENX offer services around SWUpdate as OTA service -
> https://swupdate.org/services. Layers and documentation can be retrieved
> at https://sbabic.github.io/swupdate/.
>
> Regards,
> Stefano Babic
>
> --
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> DENX Software Engineering GmbH,        Managing Director: Erika Unter
> HRB 165235 Munich,   Office: Kirchenstr.5, 82194 Groebenzell, Germany
> Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59994): https://lists.yoctoproject.org/g/yocto/messag=
e/59994
> Mute This Topic: https://lists.yoctoproject.org/mt/98828664/1051774
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [leon@sidebranc=
h.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

