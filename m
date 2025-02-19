Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 517A9C021AA
	for <webhook@archiver.kernel.org>; Wed, 19 Feb 2025 08:36:02 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web10.17967.1739954152640436288
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2025 00:35:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BsnQDhSb;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6e67ce516efso24341466d6.3
        for <yocto@lists.yoctoproject.org>; Wed, 19 Feb 2025 00:35:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739954152; x=1740558952; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5NOIwz1WXJjppEYes90M+BxN2lT/IUTkyT5U+vLcrtY=;
        b=BsnQDhSb/JfpE6QUbYoysDpGjGp+QEjF2oY84DnLwibuUHJDnhFNjYhmIY77vEFPMJ
         946dNqaEXObxZno+McNPHSV6U9PXihRuzJnu1Mvca1C6trV9749d6ggV467UtA0sjA8J
         SX9lZvso8Fs1M1vt0TDJJvSOxrjR/YtPC6PxpPzo5BRn1Wja0DeY3sTfBcZbQfKh2bk0
         C8UUZYKFQug6dmPb5aah/GN2cwhHVQKMFeiH6Tyuef+Dd/oGoWDzSl2GvZJkbl/M+d6R
         Zl2uVhDKFRNyAjFFB9zv9DRxnyJQj85npD748h8T6Lvwb4BjGfF+OV/rhy6NywqIRkTV
         ViQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739954152; x=1740558952;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5NOIwz1WXJjppEYes90M+BxN2lT/IUTkyT5U+vLcrtY=;
        b=hBSgkz5G5fgpMRCxVrkLxPTrEAxMfNN9BWxzCSA81CLkFwDRYmMxtuRw56xpPr18KF
         JEQ0x1lQH6z5t2GaLVB54JWUEVeq0fUhLjewR7Li0iMc5hfedcX7/XON60pKt+kJ+pRv
         fneYdXFoabJ1wecJQ7CCjDakoqOS1tlRIt5zlnTWfTL/Wgr95MBz6eaNgEgpMFT1eQTh
         9I7BLNxBOMGICa4FrdorJI9g1H+SawY3zpUTwgnKcgYDKE7HaXuAPBXqtIIQ+WlQfmTz
         VaztRCcGcYbb4umZsGPM1QqB/OcBZO/VCkMbjLAz4C3QkvNGV/X0tfaivxZ+/G0wMefT
         tmbw==
X-Gm-Message-State: AOJu0Yy6kdv+ozZ3WWtIZxM8Ax1O2rsCJaM5HKLCNxVR6RsAszCFifOv
	zxOBdTtblW95t0dDzWHpvKPVqJ7cjFGJbIDKm+JAtxiKfhe3gcHFhbc4uhOGrEJ0vzzBJ5ao5yh
	jHTQz7QC3PvOnFCZE2M6ZRt9F8i4vBQ==
X-Gm-Gg: ASbGnct3iQWBsTVX4Y2G6lyJgEvioeLujo3t48L6Ty/Ngem2q4nFof41+1HYJu+hXL0
	TQEpVivnZ31nLoctyD9tYmJ8NSjl2LaEPpdArYLdoiouan02wmUGMdt8b5cl1WL4sEzATBPGGpD
	ts+rX1oSG2j4B6S+bEq+FhNnAZdzfuwcc=
X-Google-Smtp-Source: AGHT+IH9zWTNFAF6rOyZ9z5eGpKBYWgcDeWrnd9TQDN5ZEWDqi+MVA8jH6yWwLdhmEVj7U29lAMUXIZ2SUJlvcBXcy0=
X-Received: by 2002:a05:6214:2521:b0:6d8:a39e:32a4 with SMTP id
 6a1803df08f44-6e697502689mr44692136d6.25.1739954151691; Wed, 19 Feb 2025
 00:35:51 -0800 (PST)
MIME-Version: 1.0
References: <AM9P251MB022479123123C30D1631B4DC92FA2@AM9P251MB0224.EURP251.PROD.OUTLOOK.COM>
In-Reply-To: <AM9P251MB022479123123C30D1631B4DC92FA2@AM9P251MB0224.EURP251.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 19 Feb 2025 09:35:40 +0100
X-Gm-Features: AWEUYZmkwd9ewxQrtluUuKgGccZoWG8T_1ZuC6shrgeedoWnHeG-RdSM0WZP9Sc
Message-ID: <CANNYZj_ywZUMuZRbyrGH=AuK==AYxZSPGW2TucTnxWXx6CARtg@mail.gmail.com>
Subject: Re: [yocto] Failed to deploy gstreamer1.0-plugins-base plugins
To: yocto@lists.yoctoproject.org, karim_atiki@hotmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Feb 2025 08:36:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64840

Investigating this needs to be done in two steps:

1. Inspect the ${WORKDIR}/packages-split for any relevant recipe to
see what files go to what package.

2. Inspect ${WORKDIR}/temp/log.do_rootfs for the image you're building
to see what list of packages is given to the package manager, and what
actually gets installed.

Alex

On Tue, 18 Feb 2025 at 21:26, Atiki Karim via lists.yoctoproject.org
<karim_atiki=hotmail.com@lists.yoctoproject.org> wrote:
>
> I'm experiencing an issue that's driving me mad with Yocto Scarthgap
>
> I'm trying to deploy:
>   gstreamer1.0
>  gstreamer1.0-plugins-base
>  gstreamer1.0-plugins-good
>
> I've added the recipes in IMAGE_INSTALL.
>
> The packages are correctly compiled.
> They come with a Qt5 compilation.
>
> But at the end, the installed plugins:
>
> ./usr/lib/gstreamer-1.0/libgstcoreelements.so
> /usr/lib/libgstallocators-1.0.so.0 -> libgstallocators-1.0.so.0.2211.0
> ./usr/lib/libgstallocators-1.0.so.0.2211.0
> ./usr/lib/libgstapp-1.0.so.0 -> libgstapp-1.0.so.0.2211.0
> ./usr/lib/libgstapp-1.0.so.0.2211.0
>  ./usr/lib/libgstaudio-1.0.so.0 -> libgstaudio-1.0.so.0.2211.0
>  ./usr/lib/libgstaudio-1.0.so.0.2211.0
> ./usr/lib/libgstbase-1.0.so.0 -> libgstbase-1.0.so.0.2211.0
>  ./usr/lib/libgstbase-1.0.so.0.2211.0
> ./usr/lib/libgstcheck-1.0.so.0 -> libgstcheck-1.0.so.0.2211.0
> ./usr/lib/libgstcheck-1.0.so.0.2211.0
> ./usr/lib/libgstcontroller-1.0.so.0 -> libgstcontroller-1.0.so.0.2211.0
> ./usr/lib/libgstcontroller-1.0.so.0.2211.0
> ./usr/lib/libgstgl-1.0.so.0 -> libgstgl-1.0.so.0.2211.0
> ./usr/lib/libgstgl-1.0.so.0.2211.0
> ./usr/lib/libgstnet-1.0.so.0 -> libgstnet-1.0.so.0.2211.0
> ./usr/lib/libgstnet-1.0.so.0.2211.0
> ./usr/lib/libgstpbutils-1.0.so.0 -> libgstpbutils-1.0.so.0.2211.0
> ./usr/lib/libgstpbutils-1.0.so.0.2211.0
> ./usr/lib/libgstphotography-1.0.so.0 -> libgstphotography-1.0.so.0.2211.0
> /usr/lib/libgstphotography-1.0.so.0.2211.0
> ./usr/lib/libgstreamer-1.0.so.0 -> libgstreamer-1.0.so.0.2211.0
> ./usr/lib/libgstreamer-1.0.so.0.2211.0
> ./usr/lib/libgsttag-1.0.so.0 -> libgsttag-1.0.so.0.2211.0
> ./usr/lib/libgsttag-1.0.so.0.2211.0
> ./usr/lib/libgstvideo-1.0.so.0 -> libgstvideo-1.0.so.0.2211.0
> ./usr/lib/libgstvideo-1.0.so.0.2211.0
> ./usr/lib/plugins/mediaservice/libgstaudiodecoder.so
> ./usr/lib/plugins/mediaservice/libgstcamerabin.so
> ./usr/lib/plugins/mediaservice/libgstmediacapture.so
> ./usr/lib/plugins/mediaservice/libgstmediaplayer.so
>
> Every plugins of base and good are missing, and I just can't figure out why.
>
> Any suggestion is welcome.
>
> Karim
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64837): https://lists.yoctoproject.org/g/yocto/message/64837
> Mute This Topic: https://lists.yoctoproject.org/mt/111258015/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

