Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49711CD4F21
	for <webhook@archiver.kernel.org>; Wed, 13 May 2026 13:52:15 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.8076.1778680331833891771
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2026 06:52:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=CaYx0dbC;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-8b3fe2f19a4so64927506d6.2
        for <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 06:52:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778680331; cv=none;
        d=google.com; s=arc-20240605;
        b=ioE7FF9903SwDeaYUNqw2Kd6UdzdA/QIQKmhIaYWNXxrVgYqS7X7uVDSxLdRWJRG+V
         WX8xVmWqiJZMcagukoyjyjwIalo+/SUSeRC5L5jSz95OZmSmEOo9wCWmseSuxgms9yoK
         H8nO5pwhRhT4x6b+XGPGB6nhlJHv5ph3SHoKAFppxXM2LjB/J6PNvIHaR/j95Dj004yJ
         R8ropXZbK54LJGATg5mjte3A7FEUdpkZ9uH9vIdd6fstgqzE1aSIJHTz1Cxzipqejsou
         c8cule4ZOkAR8YTK8tX2lBeFHzuQno2TPbSlE1d0ciW51g+q/vp2CPKhgfS1FxI++KHY
         iSPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pKlKw3zOM8sA1zF1+tPiV9EhVHgY8BQYVp3awV5i4ds=;
        fh=PaCoefWFmkFLxT8cExE+3jqAoVAW1g5QHgRIWAFRCJU=;
        b=Ygr6juYkDVZr0z4+cdAdeZ3/gKeZ+G1GmPo5+5Nkk49ftWUF73cY9JPew0xydTR29K
         AQR44xB6ogeqhpD5DjX5l89QCgKHvUXMpSGhBxkbWc/33quh93qNJjvu8fnwOQt1fiba
         hTE7tCO7nROFMFNz/S/L7I8MipATx1bXEkeIeGaO3BsMYlvHez6wyGIIACYUZw2oUN6C
         BtIskka0UeaXZOzm1VzvEwzoFt7LHm8SNbVtIcauMP0sth4QXa2vRXB+11sDK8NELDkt
         BpJwgoQH34SFkNsiDuQ27EwU/sVItaqN951aayGQStsi3ze7A7oRsFWUHTgx8LQDoSEB
         cV/Q==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778680331; x=1779285131; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pKlKw3zOM8sA1zF1+tPiV9EhVHgY8BQYVp3awV5i4ds=;
        b=CaYx0dbC4pdyhTFZc9Iwo/5VmFepaajf1p9LrxQ0CAAGqCyiOuaQ2fyRM3zTMPuMqv
         UsZmwxtBMJujoQ+vO2Ijg3n/r4gawh/ZX+YwINmDNxyNHHVM+Q7OA3xs+iOHffdtiSqm
         YA5rLyOpmAy+k7+R2FUY9bx4JSEpQv3jCEnI5A772DvAL1EjQokwxcGFE+prMELGQdge
         Viw8bvFHVq3RS0UDurTK6r37bJP5a+1oH4lLAJLyZhm3ngWZDEkBOfAH3ZE8E9R5bIe3
         H79XbYoPWiBMp9XTNKTdL5Vcx6uyV+vGUB5+pMS/4B9YPK7t0Vq9zjtZu+UOXLaIRh+t
         AoiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778680331; x=1779285131;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pKlKw3zOM8sA1zF1+tPiV9EhVHgY8BQYVp3awV5i4ds=;
        b=i+lZp5vCIxaBEGcZS8E9jeXxhVsK7t57GPPlGxa/HugP5oMFltYMR+5i2s0pBGM/OH
         OwX/J/hwKD2R7ok1IjlVx8xalzYsqe/jEMdgDQtwX2lGW1Pl4QN9nBkV8lNunvzl82zw
         GThfjT8dIhEiRrasgc+eo7VjBoI10n/SaKWNig0fN61uKj4SYiHb+g/7jiXNz2OhNWW7
         XwYzX/2airxmVKxXfF5sfTkb2mjZ91nAL+Y+C5tS5KiEU+YrDY3LKS7gz65hF9dan3DV
         O6GvsypYJ7a+swlg4khhPhtrqafZBjAA9/udpqObdgOL5ytSzQ/8Mt+AAHEKm4MILA79
         bzqw==
X-Gm-Message-State: AOJu0YxK7DU67iM8f2b4AYM8kCIXAjchw9yBHaU0Y9ohuxZphW5g8e20
	bUYGb46+llYtaNSA44W4nbLZxaxLZ1bPlXHa7MPQeCuMfMZXH4/X2e9p2RyNIhLyXpZnEBc7rVH
	FEed3STK6v5DDokVe/rteM9aEPNmv5sZHxw==
X-Gm-Gg: Acq92OFuzqYbWCsB2f4dTjtOUjwDN9818LDRiAne4bHdYeAtsLtgrud1xM73TcW27ZI
	+4agF2uZwxfn3QSWL8IfD643LAndZLWRlevFiEV59pkYXmPZzgPZp6Rpkzyrjk/sqotnSDYWel2
	8PfY0VHYgQuxLAITZj7+lM/PgLhcZ8KIFMZO8U4Vj0ttFUtece5tkSMnEBXbT6GVC9MjJErGRpI
	v3Lcx9QQcPQuFAC91U2l1qioTFjdWazfnvB9SWRAEtNs8PNdRp/kqEXqp1rjPOtaApQ8RPuzCzl
	sIaMK/R1H07ejIVftrLz59AUwYR61xF20nl/Ap0e2A==
X-Received: by 2002:a05:6214:3290:b0:89c:ac72:2f6e with SMTP id
 6a1803df08f44-8c7bd6b335bmr54059066d6.43.1778680330655; Wed, 13 May 2026
 06:52:10 -0700 (PDT)
MIME-Version: 1.0
References: <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj9d4aGunvF3tQPF9frgNGrxqcntb7AQO+XsBTDBsOejTg@mail.gmail.com>
 <AS8PR08MB7251242FD5DCEDE2DFA4374FD5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <3306fb96-8964-4eea-be32-27fd26385bb0@cherry.de> <AS8PR08MB72519BF260608361FE603E29D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
In-Reply-To: <AS8PR08MB72519BF260608361FE603E29D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 13 May 2026 15:51:59 +0200
X-Gm-Features: AVHnY4ItrYawvJOY5tIRryBtkoTrHvH5ud2WC3JOAc50hy9bLhCh3cAT5nzckQw
Message-ID: <CANNYZj_VGh3G-b6mWPqJO6WukwRhkh3Gvjffk3GXG8D05ezeOg@mail.gmail.com>
Subject: Re: [yocto] Modifying SRC_URI before it is parsed by the fetcher
To: yocto@lists.yoctoproject.org, ext-antti.garding@kempower.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 13:52:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66555

On Wed, 13 May 2026 at 15:11, EXT-Antti G=C3=A4rding via
lists.yoctoproject.org
<ext-antti.garding=3Dkempower.com@lists.yoctoproject.org> wrote:
> I think this would work if the only goal was to append a tag parameter in=
to an SRC_URI entry, but I need something more. I'd like the function to be=
 in a class so that I can add the tag matching into a recipe by just inheri=
ting that class regardless of what is in SRC_URI and also disable tag match=
ing by just not inheriting that class anymore.

You still aren't saying what the condition for adding, or not adding
the tag is. What are the two scenarios here, why would one or the
other be selected? Please: if you want help, you should be forward and
clear with the use case, even if you have to disclose 'something'
about your development process.

You can probably just always inherit the class, but the class would
add the tag (or not), depending on whether some variable is set. And
then you either set it or not in your build/conf/local.conf, or some
other place that affects bitbake configuration for the build.

Alex

