Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7911CC00144
	for <webhook@archiver.kernel.org>; Fri, 29 Jul 2022 16:31:20 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web08.86.1659112273435614593
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jul 2022 09:31:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VSzst9XP;
 spf=pass (domain: gmail.com, ip: 209.85.222.174,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f174.google.com with SMTP id o21so3972068qkm.10
        for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jul 2022 09:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=QKro8fYkos33cOg/Cb/43unzGKq4MNdZOumN6LrPKcE=;
        b=VSzst9XPcnpZLDyv4BRr+3PXLrwn1gR29qcvcNrYMJGTIexGY2g4W3pHIo0ehNl0dW
         lxEg9Ij4ctnET+CHzpmrrzrtAWhXf/190Fiz/+BHn2rcVBiBy1UAqKF+tgfz6/X5v/zA
         ctImNqhMua+S43Adv5GPWJWYdB1fUbP6HlyJjw4Qesm++uKE+YSNlz38aPQd4DAZzILK
         DxB/Ufz+WhIqwCEVyXEuhyEiih4LIt34+c1BowVkHMlowf3NQlReu4yVQ5SanzzNlge4
         gZPl534+ck7DIiT3bg8F/wybrrWb8V70WruooptE9jt9b0y8Fut/5ovS1jI0uZkO7ofc
         d/9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=QKro8fYkos33cOg/Cb/43unzGKq4MNdZOumN6LrPKcE=;
        b=mcjrRBWyesVMfE53Y1yBbWtl7ahjBjmC7KyfJ9vnQY5gEJfvif55GTeGwwEYwtb48l
         6zmB6qs1rC8COU1PIKKWgNiLKSvcixDTwYF0c4+ESEBCUAIfDE/HaLJu7XSMgedAzzF0
         dDV67Rq/BlSMHefRFbvknlIoQnkyd62+SH127njo2pk6ECH+mrhiDDDF2hjCexA9nWxl
         Y/4gP8EBK1aPQoPssBCmJewbG1tbFJ+bmzuyIubeHkErcW5ZfPBd08+Yv7/wsWmVUMt3
         r7YriTxya3+gYlAjhY2IHJuP7nqifmCORweh9irxqOrOuzU7DfuBZuEVIivMFJBmGLku
         viJQ==
X-Gm-Message-State: AJIora/upBbJ9r0/CL+opkN9OW/J9QOFKe6YcbnGi7NNapZo97XlYYTV
	m55zY38+gh0cR7t0HdjxfM6435JcU5IOIvdboL4=
X-Google-Smtp-Source: 
 AGRyM1vl54NEGgEgMpN43FbnH/u1O7G3NDQkLd9U16e2oX2/JXUIDXNycAcmvbJMcH8s0gk1PVefA+y1HZWH4PWTjnw=
X-Received: by 2002:a05:620a:4007:b0:6b5:d88b:6d42 with SMTP id
 h7-20020a05620a400700b006b5d88b6d42mr3395210qko.180.1659112272262; Fri, 29
 Jul 2022 09:31:12 -0700 (PDT)
MIME-Version: 1.0
References: <Lysv.1659076612285788528.9LDe@lists.yoctoproject.org>
In-Reply-To: <Lysv.1659076612285788528.9LDe@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 29 Jul 2022 12:30:46 -0400
Message-ID: 
 <CAMKF1sphGkQ=MNH1agcFn1Nft8bOMdunstGwvoac+eyMPoxUcQ@mail.gmail.com>
Subject: Re: [yocto] Re : rdepends upon non-existent task do_package_write_deb
To: poornesh.g@mindteck.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Jul 2022 16:31:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57691

On Fri, Jul 29, 2022 at 2:36 AM <poornesh.g@mindteck.com> wrote:
>
> Greetings !
> I am trying to add go.opentelemetry.io-proto-otlp-native package in yocto=
 (krikstone) .
>
> When I give :  bitbake go.opentelemetry.io-proto-otlp-native  , it is suc=
cessfully compiling .  But when I trying to add in local.conf as IMAGE_INST=
ALL:append +=3D "go.opentelemetry.io-proto-otlp-native" , it is giving the =
below error .

you don't add native packages to image, native packages are for
supporting cross builds of target packages to avoid build host
specific issues etc. If you want opentelemetry in your image you want
to do something like

 MAGE_INSTALL:append =3D " go.opentelemetry.io-proto-otlp"

>
> -------------------------------------------------
>
> ERROR: Task do_populate_sdk in /home/user/yocto/imx_krikstone/sources/pok=
y/meta/recipes-core/images/core-image-minimal.bb rdepends upon non-existent=
 task do_package_write_deb in /home/user/yocto/imx_krikstone/sources/meta-s=
ca/recipes-go/go.opentelemetry.io-proto-otlp-native_0.12.0.bb
> ERROR: Command execution failed: 1
>
> -------------------------------------------------
>
> Requesting you to help me out to solve this issue .
>
> Thanks in advance .
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57687): https://lists.yoctoproject.org/g/yocto/messag=
e/57687
> Mute This Topic: https://lists.yoctoproject.org/mt/92685903/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

