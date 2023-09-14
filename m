Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CECAEDE9BE
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 12:40:19 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web10.11194.1694695208883007957
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 05:40:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=W3x5CsmR;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2b962535808so14812381fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 05:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694695207; x=1695300007; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mq9ufGuIOtJ52uQds0CfZwZES7HX1zQh0rY56b2MSaM=;
        b=W3x5CsmRUNf7XKwGsQWFMNLc4MKXwBAEo3QOCWzp7WAkXIr5jan4HNBK5Sc/9NYoFX
         mXnBV5rMg3+mYX8JEpPaD3x+azd5zrKaCiDjba76Dei9ZT2k6rP0uU3KXGMxt+xrbDgh
         lNRViIt1wrbhxFQk9qpFlBPsMugBfMX3Yk4EyuoLTRUrDc98Y6eC9i9LHEdZu/kyN+lO
         EuiQhfyhT/v2Wic+2p1/rQLQb9iXZR28xePeD890hPOlXVjbXNZO8R86XqLH7V5W8Fda
         MsY66Ao3GNOLtC0RONQ0LBG+9LnkjXzLpx2oWGTq4MKuuhgrpQEYbe/IOpOdP/pnGEFr
         fsmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694695207; x=1695300007;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mq9ufGuIOtJ52uQds0CfZwZES7HX1zQh0rY56b2MSaM=;
        b=Bd/fMSa704xHjGSI1gK6uYxbhV50azwb36LYRAXXnXHl0FimB5XCza8VSQvQm6AXh/
         SthjdIUzjItTfhq1/DrSB/slxMZQDamhbPaPeuT1mAdsmt/lzv8qYncdBqgj9cbCVLpT
         cM4GJjlN9dsvfmg8EfUqU99JgIG5eX3WIvWb4h4yPnnupPxj77wrRUXopAWN3sG87bbp
         OOqijMbpMRtMWfa5n5/5Ff1cGfdl8SyqAlrVu/FFV1TfgkDUZuRJpx4sOqEB5JYr37co
         FHHq7us4oNTvvXCnowPItH41A+MWRmIdJIZF4pDvEu3QnNBRs0IGbyxzY/w8UCud34UY
         fBPA==
X-Gm-Message-State: AOJu0YxB5bFmQ5W2lBUPbOF8Wx4CFM4ygioxHbilrihTEM5HYN/am0Fo
	SmcgYmlDJbaLaYne2vmFn6dbiAyocW+AS7GUsMw=
X-Google-Smtp-Source: AGHT+IElnzgaa4LJmW2aIkqb9Y7//RnB/OUpUwoi3gEh2NOj3VXEcog+iv37RccyHAfb+bFRDDs5eSpdvkBW/OSl3zQ=
X-Received: by 2002:a2e:3807:0:b0:2bd:ddf:8aa9 with SMTP id
 f7-20020a2e3807000000b002bd0ddf8aa9mr4134730lja.24.1694695206777; Thu, 14 Sep
 2023 05:40:06 -0700 (PDT)
MIME-Version: 1.0
References: <AM9PR03MB70126259019EF2AD25999A2892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
 <CA+chaQefpv8V2gsmnk_DYfOCRstcp1985RNVTAdRu3hJki0x4Q@mail.gmail.com> <AM9PR03MB7012488D10FE95C6F4D12AA892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
In-Reply-To: <AM9PR03MB7012488D10FE95C6F4D12AA892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 14 Sep 2023 14:39:55 +0200
Message-ID: <CANNYZj9-+r+yFR2W3Rgb8PGsOVOjdAC=XBZPWvtL9Lt2YMZvaA@mail.gmail.com>
Subject: Re: [yocto] Errno=No space left on device
To: Dave Hitchman <dave.hitchman@kymati.com>
Cc: Martin Jansa <martin.jansa@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 12:40:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61001

How about if you try it with a plain poky checkout (to the same
revision as your phytec setup)? Does it still happen?

Alex

On Thu, 14 Sept 2023 at 14:35, Dave Hitchman <dave.hitchman@kymati.com> wro=
te:
>
> Does anyone know what IS enough? Watching the video series around https:/=
/www.youtube.com/watch?v=3DbTEdfwtPtNY he doesnt mention changing this size=
. I dont actually know what this watch manager thing is supposed to be doin=
g, there is one command prompt doing one thing, I cant believe that it woul=
d need that many things being watched? What is it even watching for?
> ________________________________
> From: Martin Jansa <martin.jansa@gmail.com>
> Sent: 14 September 2023 14:17
> To: Dave Hitchman <dave.hitchman@kymati.com>
> Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> Subject: Re: [yocto] Errno=3DNo space left on device
>
> On Thu, Sep 14, 2023 at 2:07=E2=80=AFPM Dave Hitchman <dave.hitchman@kyma=
ti.com> wrote:
>
> ERROR: No space left on device or exceeds fs.inotify.max_user_watches?
> ERROR: To check max_user_watches: sysctl -n fs.inotify.max_user_watches.
> ERROR: To modify max_user_watches: sysctl -n -w fs.inotify.max_user_watch=
es=3D<value>.
>
>
>
> pyinotify.WatchManagerError: add_watch: cannot watch /home/dave/Documents=
/Kymati/yocto/build/conf WD=3D-1, Errno=3DNo space left on device (ENOSPC)
>
> dave@dave-TUXEDO-Aura-15-Gen1:~/Documents/Kymati/yocto/build$ sysctl -n f=
s.inotify.max_user_watches
> 65536
>
> What IS the actual problem and how is it actually fixed? I cant be the on=
ly person facing this surely?
>
>
> Have you tried to increase fs.inotify.max_user_watches as the error says?
>
> $ sysctl -n fs.inotify.max_user_watches
> 1048576
>
> 64K might not be enough.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61000): https://lists.yoctoproject.org/g/yocto/messag=
e/61000
> Mute This Topic: https://lists.yoctoproject.org/mt/101356635/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

