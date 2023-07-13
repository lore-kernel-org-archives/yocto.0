Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C09CC001B0
	for <webhook@archiver.kernel.org>; Thu, 13 Jul 2023 06:02:11 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
 by mx.groups.io with SMTP id smtpd.web10.2354.1689228130027371987
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jul 2023 23:02:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=rJA4BktT;
 spf=pass (domain: gmail.com, ip: 209.85.167.182, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3a425ef874dso358027b6e.0
        for <yocto@lists.yoctoproject.org>; Wed, 12 Jul 2023 23:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689228129; x=1691820129;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MNzGTeEVy/vcqSHtLThUBRUoBDz5wuxygw3IyP3cie4=;
        b=rJA4BktTVOizsJHQlkP6KVpJCTnqFc6fe5tsHJLk9+G3BfkxceAjtmZV7w172wc4Kd
         dRxQmk+Jnwy92QfT5MkhRmFqSAyiIM9VUcaP0YueqpDTK9yz43xwp7dxni0CYnrh0rlP
         j0kfEP7rGmne+Oad9gckiyS/yRH4wwimO4oadeKWgIi1eVLfweEy0SItEmivZBnakYqw
         POtgqctc2I9l8diFiBTvsQDhVl9kB9f6d+0CdSsyOBnC+wD+BSUykD05zL06Mdx80EUM
         v8GvJ/3Llc1sAbio7Q6shbEDThmyXZXVNCB/OCqf4/A65wq+DtKANC6kCn9a0furBlZJ
         aFtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689228129; x=1691820129;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MNzGTeEVy/vcqSHtLThUBRUoBDz5wuxygw3IyP3cie4=;
        b=k+BQedtMzyGD0xqSHqYXk6a5sNDkBeD6uLmy5ZLCYRU0Xn+dzOx2PBkaRAdRZJa95m
         AsEtBGM+mgSzHr9+K2UY0Rprx/XYbyuqBX41Z4cNUYQIyle0iGGErgFmHg4WgYfM+58q
         9f/iuT3bC3LUR6e5D2VikpcHeoxMQUvXVwcm6bO1e1VBm74jUhsTV0MYnhB/pqvOEBIL
         G2tr/fSiWhisAeIbOmGTboW5CaS+fReOSoydpDaDfrdoVwMGD5kp6otfitX2PABqTwmC
         zq5pHHVInEb4mDEsYCmH6tpYHHM+QQC3/Uu/PtqpjyOFQofa4ZR76iVD2uidtPIQEFFB
         xMWw==
X-Gm-Message-State: ABy/qLbjEApFCBqYKvdZHrtsPbQ0Wng7S1Ut2jLikks3RkBfAEmDTnmj
	GEIX/tUE4eucez55aZiqDfSgsqbW7x/3CEm1VBY=
X-Google-Smtp-Source: APBJJlHCGkB4S7lYMH4KR6V3GD7mdw+MAyZ0KR2eaDPoovMdsWCf6vcTCpHY2DzFS+3mDIlYa84n7U1jJTENi2wrJB0=
X-Received: by 2002:a05:6870:8304:b0:1b0:3ffc:97e9 with SMTP id
 p4-20020a056870830400b001b03ffc97e9mr1399515oae.0.1689228129078; Wed, 12 Jul
 2023 23:02:09 -0700 (PDT)
MIME-Version: 1.0
References: <6tWH.1689227960782826676.KzZx@lists.yoctoproject.org>
In-Reply-To: <6tWH.1689227960782826676.KzZx@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 12 Jul 2023 23:01:43 -0700
Message-ID: <CAMKF1srpNNVOVb30tujqi-jGNSYnMm6mYkbcxe6dq7fgNrwOzQ@mail.gmail.com>
Subject: Re: [yocto] Creating a Software Bill of Materials in Yocto Zeus #zeus
To: "Poornesh G ( India - Bangalore )" <poornesh.g@mindteck.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 06:02:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60559

On Wed, Jul 12, 2023 at 10:59=E2=80=AFPM Poornesh G ( India - Bangalore )
<poornesh.g@mindteck.com> wrote:
>
> Greetings !
>
> Is it possible to generate  "Software Bill of Materials" in Yocto Zeus ? =
Is there any recommended patche for creating required bbclass for creating =
SBOM.
>
> INHERIT +=3D "create-spdx"


zeus is too old for spdx stuff, I would suggest to use latest release
mickledone for best results regarding SBOMs
>
> Thanks,
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60558): https://lists.yoctoproject.org/g/yocto/messag=
e/60558
> Mute This Topic: https://lists.yoctoproject.org/mt/100115545/1997914
> Mute #zeus:https://lists.yoctoproject.org/g/yocto/mutehashtag/zeus
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

