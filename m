Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA3D7C433F5
	for <webhook@archiver.kernel.org>; Mon,  4 Oct 2021 16:49:46 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web12.12435.1633366185552748162
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 09:49:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OkFMpW4G;
 spf=pass (domain: gmail.com, ip: 209.85.222.172,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f172.google.com with SMTP id i132so17138257qke.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 09:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=vRfjlurB4IKUYbboql8QOQ4s8AiwmcVtE+Xjqzv7TiE=;
        b=OkFMpW4G8iaeS879rBvrcI+VZDyWV6qa/3rDO1wd0vBphWSV7GWruwLscvNj95/qkK
         f2DESHndm8Uk7JIK/+YBRRqjkm5rpefNX6OFrOHoVColV6X/XYVGDmevDH5dPpjnS46B
         Ew2dRBaM3YZxqJO5ae2Hu1+5qOUOEdYaXXlRI/4olVgo7hrAOvU5lhZJ3lrR9p0Gi2Nl
         QwFcPe+298WEXtNlP8/NIbLZktYsQFca7yXWwvk7IoS+FHj/s44gwhL96p8eaXYFcvDP
         aYpHB9HS1J2pYVN1jORgRcoQRZz/65hajnNYuIW2siIpnb6db2rMwpl5kFoyYegGuUJ7
         ifWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=vRfjlurB4IKUYbboql8QOQ4s8AiwmcVtE+Xjqzv7TiE=;
        b=aJvjPOSmUXYRG9c3DRKxQ9hxMbSeCvYIvlEdaO0PDiaCLL6g0pXES3rKZBuLXiTA4t
         VM4Y6oEVQtDrlRGXpbDkf+ofyGdNoufaKXc7Zb9oySublVwxL8YDzRIL5DVakaNBc8PC
         e+Wl4Bos7iovJjM7sYseV96xCcs8ZolaDMtBoP8t2HzBJ8MAvvi8yQ0b3FJZppoku3Vl
         hTlkFQsRCS4VCIbD6C9FfiPKgtcUfjgF9kVJU4fbJUvJMaYws+Ym71SqN2D0VvhD8tYK
         0xt2QuxSW15C2baPkZ0XcoEyVjLGh+aRHHaNkktdR8EEpPzw5P3yNC2m1p8NDLXn1+aS
         vQJg==
X-Gm-Message-State: AOAM5337YDLi+/q+9gXKiXXXS+i1H0sX200aRr/pGbhP1m3HPieGFoKy
	PsmfoZmKbzXAvbEBuZeCXnkVZVWEB370hhGLQakiBeuaqgJ7Lw==
X-Google-Smtp-Source: 
 ABdhPJyoq/XwmuXL9JzTsyYHj2KttIWCVPb7WgmXU6iyM9lY1GNGgDjvkUDBZmI4husdZP2gXIjR+OPOKzxTDiS4aXM=
X-Received: by 2002:a37:48f:: with SMTP id 137mr10905256qke.105.1633366184551;
 Mon, 04 Oct 2021 09:49:44 -0700 (PDT)
MIME-Version: 1.0
References: <16AA05EDD73208C2.24161@lists.yoctoproject.org>
 <15448F47-97A9-4267-9D3B-682D8074D795@keylevel.com>
In-Reply-To: <15448F47-97A9-4267-9D3B-682D8074D795@keylevel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 4 Oct 2021 09:49:18 -0700
Message-ID: 
 <CAMKF1soZNRBLyTtczUW8U9WWzRNDLSMk-oeRUm2fwqzMY-068g@mail.gmail.com>
Subject: Re: [yocto] Meta-raspberrypi - how to configure device tree for
 MCP251x
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Oct 2021 16:49:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54941

can you check boot/config.txt and see fi your changes are there in your tar=
get ?

On Mon, Oct 4, 2021 at 1:21 AM Chris Tapp <opensource@keylevel.com> wrote:
>
> Sorry, I meant to add that I have tried adding the following to local.con=
f:
>
> RPI_EXTRA_CONFIG =3D ' \n \
>     dtparam=3Dspi=3Don \n \
>     dtoverlay=3Dmcp2515-can0,oscillator=3D16000000,interrupt=3D25 \n \
>     dtoverlay=3Dmcp2515-can1,oscillator=3D16000000,interrupt=3D23 \n \
>     '
>
> However, this did not make any difference to the interrupts.
>
> Since then, I have manually changed mcp2515-can1-overlay.dts in the kerne=
l build tree (after running bitbake - c do_configure virtual/kernel) and re=
built the kernel / image. This does result in the interrupt mapping changin=
g, and both CAN channels then operate correctly.
>
> Does anyone know why RPI_EXTRA_CONFIG doesn=E2=80=99t appear to be taking=
 effect?
>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>
> ----
> You can tell you're getting older when your car insurance gets real cheap=
!
>
> On 1 Oct 2021, at 22:38, Chris Tapp <opensource@keylevel.com> wrote:
>
> I am having trouble getting the Waveshare 2-CH CAN HAT working with an RP=
I4. Channel 0 does not come up, channel 1 does, but it will only send one m=
essage (eventually reporting "write: No buffer space available=E2=80=9D) an=
d not receive anything.
>
> Looking at the mcp2515-can0-overlay.dts and mcp2515-can1-overlay.dts devi=
ce tree files in /tmp/work-shared/raspberrypi4/kernel-source/arch/arm/boot/=
dts/overlays/, it looks as if the interrupts are not mapped as required for=
 the board.
>
>       DTS               HAT
> CAN0  brcm,pins =3D <25>  PIN23
> CAN1  brcm,pins =3D <25>  PIN25
>
> This doesn=E2=80=99t look right, and seems consistent with the behaviour =
I am seeing.
>
> I would also like to check the device chip select signals, but I can't se=
e how (if) they are mapped in the dts files.
>
> How can I override these settings when I build the image?
>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#54936): https://lists.yoctoproject.org/g/yocto/messag=
e/54936
> Mute This Topic: https://lists.yoctoproject.org/mt/86011706/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

