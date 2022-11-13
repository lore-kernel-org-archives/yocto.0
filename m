Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABF9C4332F
	for <webhook@archiver.kernel.org>; Sun, 13 Nov 2022 15:12:44 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web12.3333.1668352356188305380
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Nov 2022 07:12:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SHrmvlPv;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id f37so15440580lfv.8
        for <yocto@lists.yoctoproject.org>; Sun, 13 Nov 2022 07:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pN4DT6p4wFUFxwzXGeUiCzYutDfubgjXb8ayoMJKU1I=;
        b=SHrmvlPvvPVjpli8+0UDvte83eLihRbIzGR8pjpc83IhtwsGz4r0qD8CNzjhfNBngw
         KPJOSSqVfSDVPmiLyzT1NQS9+INNLeH0HQElzvCVeMW6sHZfONcFgGSLL3TKD0eoZ1Kr
         JdZ8HCKvhdwQ9s/m1oxMyFblpRPv7sTaM5TKpQ7cNb9sejZAn1M0wCodULm30rX/+3Wv
         6MhOpYUImEMs11robPc28kaxp/MEWfokwJN2qaRCk3QCgqXEG1UwnvQjSG5U9vn5+IPd
         8nKAItvImhdTp5VaADNvWnLnb3/rAWCAddBNG4OBN5JRXbrMH9u196/axMafpK/pbTng
         c5JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pN4DT6p4wFUFxwzXGeUiCzYutDfubgjXb8ayoMJKU1I=;
        b=l/AE/15k1tfIYwhYdmInNi3sxg5QavthNc5kxTUgx0CF/7SiqLvGYixHm1wgW2b4QE
         HnMq3RnmwbeJ5N4ETtIQ+2hXMfPcD/hx7VXWX6BcPJdDr7MAhOPehx7kq+obLB1QMvxM
         V/7VsXvhQBhYt/MqwyT66nHGvShs2w9Sh79TCU/H27eDcD01OxVV4bgHb8AidCyUf6xv
         eUZ0/pK42WpQR9ZNGesPEGZZQFc2wqVSEeQSHuZLebPGA7KJGaMYMYwbFp2dqMpT08pf
         j/ggV9a9XQdAnEN4weqaowqtaspQ0Lq6joA33BDaHYdT9IOhJGZjBtQLHIDdU4kC+l0N
         RP2Q==
X-Gm-Message-State: ANoB5pmb1/7Sv0uzeI/nlqRdc7FZDQ0EBKu7SHjI3RpFRFI10SRVSpME
	thH2Y+FOKOIv6KsQBZ6Q3ZX+PicF8V0JMYyzECw=
X-Google-Smtp-Source: AA0mqf7OezvFkowxfL/dEJL4kZOs7Ad2EBOicKm9xy8unV9Cy1OmQrPSsO3kfFzs8IGLq4wodeYivL99xBYCa4+4RwU=
X-Received: by 2002:a05:6512:c10:b0:4aa:81bc:dcf with SMTP id
 z16-20020a0565120c1000b004aa81bc0dcfmr3426548lfu.393.1668352354158; Sun, 13
 Nov 2022 07:12:34 -0800 (PST)
MIME-Version: 1.0
References: <CAJw49vp4_4BMooNGxrN-YKk+GzotueV9FOj+XYGzRdv2oQOL_A@mail.gmail.com>
 <CAM6O0ZjaXbYkU9r5gtSepmOfQG0gF00mpfA6rhMGYUL7ugXh4w@mail.gmail.com>
In-Reply-To: <CAM6O0ZjaXbYkU9r5gtSepmOfQG0gF00mpfA6rhMGYUL7ugXh4w@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 13 Nov 2022 16:12:22 +0100
Message-ID: <CANNYZj9pw4LDBjM3xrzU=g2ddU-Cc1jSpiYyWH+FWC9RX_Pk4g@mail.gmail.com>
Subject: Re: [yocto] source-less python
To: Federico Pellegrin <fede@evolware.org>
Cc: Yishai Jaffe <yishai1999@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 13 Nov 2022 15:12:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58550

Generally we slim down python installations by not installing all of
the standard library, and rather having precise dependencies for
specific modules. Can you illustrate the kind of space savings that
can be gained in actual numbers?

Another issue is that this should be supported upstream and in the
wider python community. Is it?

Alex

On Sun, 13 Nov 2022 at 14:25, Federico Pellegrin <fede@evolware.org> wrote:
>
>
> Hello,
> Just as a small reference since I raised some doubts and questions in Bui=
ldroot community on this: there has been also some troubles to understand t=
he correctness or not there (as I found some packages with problems due to =
this source-less management) and this then sparked, besides discussions in =
the Buildroot mailing list (roughly end of July / beginning of August if so=
meone interested searching there), also an issue to the Python community, w=
hich albeit some discussion I think never arrived to a concrete conclusion.=
 This is the issue: https://github.com/python/cpython/issues/95827 (see als=
o the linked one maybe)
>
> These are just my 2 cents to this discussion, then of course the Python e=
xperts will probably chime in and describe the official/discussed position =
of Yocto regarding to this, but just felt like mentioning that although Bui=
ldroot is somehow offering this right now (and likely mostly works as well!=
), it's not really a so clean and/or agreed solution.
>
> Cheers,
> Federico
>
> Il giorno dom 13 nov 2022 alle ore 13:55 Yishai Jaffe <yishai1999@gmail.c=
om> ha scritto:
>>
>> Hi,
>> I was wondering if there has been talk about support for source-less pyt=
hon on an image. Installing py and pyc files doubles the size of python on =
the rootfs. I can imagine this being implemented as an image feature.
>> I know that in buildroot it is supported.
>> Was this discussed and decided against? Is this an open issue?
>> I have a working patch that implements this. I can submit it for review.
>>
>> Thanks,
>> Yishai Jaffe
>> Yishai Jaffe
>>
>>
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58549): https://lists.yoctoproject.org/g/yocto/messag=
e/58549
> Mute This Topic: https://lists.yoctoproject.org/mt/94997538/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

