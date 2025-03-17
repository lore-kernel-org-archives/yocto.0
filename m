Return-Path: <kontakt@daniel-kampert.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC47C282EC
	for <webhook@archiver.kernel.org>; Mon, 17 Mar 2025 12:05:29 +0000 (UTC)
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.162])
 by mx.groups.io with SMTP id smtpd.web11.50703.1742213119283972433
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Mar 2025 05:05:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0002 header.b=m6CbIWvP;
 dkim=pass header.i=@daniel-kampert.de header.s=strato-dkim-0003 header.b=VqAIN4O7;
 spf=none, err=permanent DNS error (domain: daniel-kampert.de, ip: 81.169.146.162, mailfrom: kontakt@daniel-kampert.de)
ARC-Seal: i=1; a=rsa-sha256; t=1742213116; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=pH1btLPFREqhS+N2+ntmp+f/ZkhPrX4GkwlCPG0XVglq0N00yrMGcEtZ4wb/Dz3Jaw
    kr/CLlaMhP0ug9V+DqwLiP/tHP+h/v7wP+EaD2939kOIc96/IE5wilIM1ZPbpAfUMnga
    528OsDULUCLEiC3jIExXOrGo8GKIlfTB54BPei0dXtj19AuBOn3gMuQ7kQAeo03joPNd
    fUEqkZkv0nzg7iHH6PHwwcDq0LqZdfHT8syB0+7WlrOECM8jgbQakwQsp847JT6nQ65z
    yJ2qyh5I/nrOXfZfkh+LhX1D0c+DQWUIT1XQURMB9cq0/NHoq3NbXRBCZV8BkXwGUufp
    GFNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1742213116;
    s=strato-dkim-0002; d=strato.com;
    h=Subject:References:In-Reply-To:Message-ID:To:From:Date:Cc:Date:From:
    Subject:Sender;
    bh=JcYCuWC+Q7qIoXWrxtTiKNagMRB2sEn3K4exGyJ+Ut4=;
    b=KiUqoT711tg0i1pTyONQ2jecJ2NUGxGbAjGTsZ1Yk8ZdB68tLuLAoZ4JN1R0p7ZhhA
    Gt6lfZoskvnkCYPY1esEOgVacjhahV9tkAkGiUnAdPQ9g1B0cZK8vJC2RxNxx3VzImAV
    SN/YzBGnDKVJlsSxdftmB8d+MF7apk2SeKAJTxlZCTwOQmEyI1u5AZ6ygRi8h/EwclMJ
    Z666z8heUPkLIxqDNTnupPe/TR0YH5avmpeepUdKcieMEEXMH7VT99CifpQO7wbviU7C
    hhaceIlDxBKh4Xhnkb9wjplYYmvz4on/dv6rsS6nxBwRUkMgPftQeyqcd2PMrBUsx+VD
    eSMw==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1742213116;
    s=strato-dkim-0002; d=daniel-kampert.de;
    h=Subject:References:In-Reply-To:Message-ID:To:From:Date:Cc:Date:From:
    Subject:Sender;
    bh=JcYCuWC+Q7qIoXWrxtTiKNagMRB2sEn3K4exGyJ+Ut4=;
    b=m6CbIWvPIheg8xg6doUXnqy3FBfai40hQrR5aO6W9MLgYcwR+cGBN7rjQYGz2eTU+D
    YngZHn3/8mmOV9LeAKoDcuhVR7h8UbgyTc3qymwyETFS5ClZee36U+TrVlhGmUabr3ye
    onPjbFYw1jagnWpg49ZeoxAcOBdxJE4ObEqify8MPAUCv0MGTligHHj/AvBFkXv+LgFV
    4UOLeh974V264+1f7omqm/gNEuQLQNuMeX+1FfOt3nWUqixjGunZehPoY7Y8VCq8Da5g
    A4ljnaiUCMH5ncDf7e9rmCKJW6hFD0ruD1zGWCaU26XoQqDTGsoFSZpDhbFpIc6O9w9U
    n3NQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1742213116;
    s=strato-dkim-0003; d=daniel-kampert.de;
    h=Subject:References:In-Reply-To:Message-ID:To:From:Date:Cc:Date:From:
    Subject:Sender;
    bh=JcYCuWC+Q7qIoXWrxtTiKNagMRB2sEn3K4exGyJ+Ut4=;
    b=VqAIN4O7Ov28OmiEyXQeGTWvL31kbMpkbj/X+qtP+Vu6Hkgax4sT06PKb/YGuXfq21
    11N6QXIzgZnYwEo72EAQ==
X-RZG-AUTH: ":J2MKYUGjb98fESEFCJFViw9Avy7eC0lbL9IJtUAlr//iX6qLOAGQ/pwD7TVoM22VIJQXcvOsjy38"
Received: from ox-live-app204.back.ox.d0m.de
    by smtp-ox.front (RZmta 51.3.0 AUTH)
    with ESMTPSA id j1bda812HC5Gr3Y
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1 with 256 ECDH bits, eq. 3072 bits RSA))
	(Client did not present a certificate);
    Mon, 17 Mar 2025 13:05:16 +0100 (CET)
Date: Mon, 17 Mar 2025 13:05:16 +0100 (CET)
From: Daniel Kampert <kontakt@daniel-kampert.de>
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com,
	"Alexander Kanavin via lists.yoctoproject.org"
 <alex.kanavin=gmail.com@lists.yoctoproject.org>
Message-ID: <663305746.5836211.1742213116065@webmail.strato.de>
In-Reply-To: <CANNYZj_+csNysr1sb2pR4nQrctLOLVuK8y8An0YTxB48tgH4bg@mail.gmail.com>
References: <852477278.5779554.1742203477554@webmail.strato.de>
 <CANNYZj_+csNysr1sb2pR4nQrctLOLVuK8y8An0YTxB48tgH4bg@mail.gmail.com>
Subject: Re: [yocto] Migrating npm installation script into Yocto BSP
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev73
X-Originating-Client: open-xchange-appsuite
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Mar 2025 12:05:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64962

Hi Alexander,

unfortunately upgrading to the latest version is not an option. I have to u=
se Dunfell for the moment.

> Alexander Kanavin via lists.yoctoproject.org <alex.kanavin=3Dgmail.com@li=
sts.yoctoproject.org> hat am 17.03.2025 11:24 CET geschrieben:
>=20
> =20
> Dunfell reached end of life almost a year ago, and is no longer
> supported. You need to update to a more recent yocto.
>=20
> Alex
>=20
> On Mon, 17 Mar 2025 at 10:24, Daniel Kampert via
> lists.yoctoproject.org
> <kontakt=3Ddaniel-kampert.de@lists.yoctoproject.org> wrote:
> >
> > Hi,
> >
> > I have a BSP with a npm installation script. The script is sourced duri=
ng the initialization and contains the following commands:
> >
> > #!/bin/sh
> >
> > # Install Node.js version 18.20.2
> > curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.s=
h | bash
> > export NVM_DIR=3D"$HOME/.nvm"
> > [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
> > nvm install 18.20.2
> >
> > # Install pm2 via npm
> > npm --prefix /opt/app/backend/ install
> >
> > Now I=C2=B4m wondering how I can add this to the Yocto recipes of my BS=
P. The current Dunfell BSP only supports npm 14.x but I need this upgrade t=
o 18.20.
> >
> > How can I do it? Has someone done anything similar so far?
> >
> > Thanks for help!
> >
> > Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
> >
> > Ing. Daniel Kampert, M. Sc.
> > Embedded Systems Solutions
> > Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
> > Phone: +49 (0)174 6932561
> > E-Mail: kontakt@daniel-kampert.de
> > Web: www.daniel-kampert.de
> >
> >=20
> >
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64960): https://lists.yoctoproject.org/g/yocto/messag=
e/64960
> Mute This Topic: https://lists.yoctoproject.org/mt/111745830/9229641
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kontakt@daniel=
-kampert.de]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards

Ing. Daniel Kampert, M. Sc.=20
Embedded Systems Solutions
Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland=20
Phone: +49 (0)174 6932561=20
E-Mail: kontakt@daniel-kampert.de=20
Web:=C2=A0www.daniel-kampert.de (https://www.daniel-kampert.de)

