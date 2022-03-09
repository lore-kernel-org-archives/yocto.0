Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80423C433F5
	for <webhook@archiver.kernel.org>; Wed,  9 Mar 2022 17:26:47 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web08.210.1646846806699595394
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Mar 2022 09:26:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VbPQlgfi;
 spf=pass (domain: gmail.com, ip: 209.85.160.177,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id v3so2444527qta.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Mar 2022 09:26:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=m5akJPIIkjMgkyPOzP1yrmRZbRI+43Cz6gakkJT2VKM=;
        b=VbPQlgfipnq1hyP6kmsgdtUvRe8iTbvFdVsAwMv2Oy/ZGXowMsaZ/HqElh7c5J8My3
         obzehlBMG8/gPG9l54vnZ9sqd5O/GAL3g0z+bJ64sjt34TBorFyvSOZwYzGtoQwbjFtn
         G/oVwzLM1+K2+8yMqqqz4VDUAZ0ErCKOHabcKqFYgA2b14D7NvVJeavgYzmfjBCCnw8N
         7w/SF6vcKM2hHL+lLsW5f+VeI1yeXuRGPQNE5d00Jv7sd/uRZAbT/yBaEzWz/61QElOp
         ATr4m9hfoxllb3uwbZblnK5BdhE+b3LBKrtTPRWlYTAia3KEbezw8d67GkbYKidYEWSr
         u3XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=m5akJPIIkjMgkyPOzP1yrmRZbRI+43Cz6gakkJT2VKM=;
        b=W5MLE1mwa5Z4xM6KTqmBg/fkcW6W3/iJZ5FjqEjoWOWUupa2mgFlGUpsxQyKWNU/Cv
         w7DpXELJmztRf4R+35S+XqXXjcAUdpRfbSFDOXx5sXOkLqtiJekBPsdlOyaRuBvRbU6x
         NtFQYjvzwpplx8IXd8WLVD2qhMjws1AFE7ZU2DditvxYSYRUeJJU1tGevmG0MX7ZSJiZ
         /5StaHiokv1k5HjtcIHV55UeXQORBUxxj9HFhr9CqzdCLawH74ZThSckCmtdXtNa4BsF
         iuTTlFvumwIbu7stViQEGj0t/DiT1xNx20njhqsiog0R13rhHygPOogjzAEKShsB1mMh
         N6eA==
X-Gm-Message-State: AOAM5335N6PvuUWU5zwhtShbujX/UhRGxnEgxaku6r5ETJhI/BZzBRJ7
	u3fQ95TU3ZGZ+MDL/WZ6r5DV+JYdBXt6YPhRpnA=
X-Google-Smtp-Source: 
 ABdhPJzlj8z75VAPxgwH4nZqYW4nrMFHHJqQQHyLu4WP1bWfZDG/+7VgFCukE73v3nCtLgbRu0Ksc4cgdeNQWI+cAt0=
X-Received: by 2002:a05:622a:1042:b0:2e1:378b:e200 with SMTP id
 f2-20020a05622a104200b002e1378be200mr635493qte.229.1646846805697; Wed, 09 Mar
 2022 09:26:45 -0800 (PST)
MIME-Version: 1.0
References: <22943.1646812940439022103@lists.yoctoproject.org>
 <14260.1646816514233831890@lists.yoctoproject.org>
In-Reply-To: <14260.1646816514233831890@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 9 Mar 2022 09:26:19 -0800
Message-ID: 
 <CAMKF1sr1-MdH-zbzHSWaVQmckTOT_hGQr_4ZkeUaLAQGzrJkyQ@mail.gmail.com>
Subject: Re: [yocto] How to disable Bluetooth of Raspberry Pi from Yocto?
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Mar 2022 17:26:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56412

On Wed, Mar 9, 2022 at 1:01 AM Sourabh Hegde <hrsourabh011@gmail.com> wrote=
:
>
> Hello Tomasz,
>
> Thanks for quick reply.
>
> meta-raspberrypi provide recipe just for the `config.txt` file. I don't k=
now which Yocto version you are usingbut on master it looks like this https=
://github.com/agherzan/meta-raspberrypi/blob/master/recipes-bsp/bootfiles/r=
pi-config_git.bb#L1You will need some bbappend in your custom recipe to ext=
end config.txt wtih `dtoverlay=3Ddisable-bt`.
>
> I forgot to mention, I am on "Honister" release. Yes, I added rpi_config_=
git.bbappend file
>
> Did you try to hit an enter couple of times and then maybe log in?
>
> Yes, I tried that, but it's not working. May be it's fails to respond for=
 keyboard inputs.
>

can you check /boot/config.txt on target and see if this change is
persisting in your image or not

> Regards,
> Sourabh
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56400): https://lists.yoctoproject.org/g/yocto/messag=
e/56400
> Mute This Topic: https://lists.yoctoproject.org/mt/89657548/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

