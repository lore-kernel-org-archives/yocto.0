Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD9CDC433EF
	for <webhook@archiver.kernel.org>; Wed, 16 Feb 2022 17:38:19 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com
 [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web11.2282.1645033098336363799
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Feb 2022 09:38:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CUpK7XGp;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id fh9so3297846qvb.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 16 Feb 2022 09:38:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=7ooCQ+NbHkAapHnfjd/odv5zzGnE4eZLY8+sI2NX5zY=;
        b=CUpK7XGpdqhC5rQ5x+3j77e7tIJrEuALScUKVm+XNmrp9H9hCEuYPrpeXh/YSYpzR6
         WUWRS9fz8FvFHraTtawOgY98WH2qqOqNuNsS6vPkMiKc1h8n+23EEnAXoK++rXjUmdJL
         yPxHwFbahz+1VJ2suYQA3TWJyplPoQbxtdstW4Fh8jJFp8q7DaTLqaS0Z/kexQZH+BvD
         2zrjTbHpQokh6cK5QL444rciWDgdSaXwLUHVwNcuMibrIpB42c2vTzu2mUvU1xIMMk+n
         qJi6FG7Bz3OHahIMex5dAandgkdexChq5WlNLkjsaxmxwukL+KCgyYmFNJ5TlX+ymKTf
         nMAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=7ooCQ+NbHkAapHnfjd/odv5zzGnE4eZLY8+sI2NX5zY=;
        b=JA8SI4Bfbce0e4xmo29l66cyy034l73k9HeRgUMg+VCTZD+FVgFXKITa7hxoWGGqLU
         eDd+pI1ZerJM3hopKiJK8Uk8AZae/dDzKOy5ivRS4eLkfSAxn4uPVQyB81vBlLIXShsY
         O8Jm8jQGKMAddP3FiDVQ+yHg4fBKuIqR7/HK4sdp+1WxWP6SUJra4T4agF2vPQdcTeTG
         eO2GQpt0nw/85jSJUTrEbyTZY6sgc8XV8hfrWUA2GiYXiezzU9hLcOgeriPa+y9Vj95r
         ybNo6ZNACIPl83WlzgOg0Bq6tlqBDJUqpwTcZLtMKErAbN5cV05RoZNiZKjndbAbYBcQ
         JXZA==
X-Gm-Message-State: AOAM532DwHKKXUQ5K7WRiYMSG2rEIzCGt3hYVwOT/grkHUQLUGtRrLS4
	e0/CzMrN+My82/6WpOd9r5tacEdcfTyHtWNUctg=
X-Google-Smtp-Source: 
 ABdhPJwK2AsTLGZffFRyR0TS9ju+cOctj94puqFH69Cro6B1obdL/tzgonFJVlWxJ4CsVyDqJ86bkk8ksmoNX+T/Xto=
X-Received: by 2002:a05:622a:1046:b0:2dc:eb87:afd0 with SMTP id
 f6-20020a05622a104600b002dceb87afd0mr2800798qte.229.1645033097352; Wed, 16
 Feb 2022 09:38:17 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAOar+7QdRygTkRkyizGa8AwZvW4+0ruTGpSk0aj3Eg6qKVN1Aw@mail.gmail.com>
In-Reply-To: 
 <CAOar+7QdRygTkRkyizGa8AwZvW4+0ruTGpSk0aj3Eg6qKVN1Aw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 16 Feb 2022 09:37:51 -0800
Message-ID: 
 <CAMKF1sqFC3LkZTVzCcMW78RwXGBrsqrkacmnf4H0jJAvnFpXMQ@mail.gmail.com>
Subject: Re: [yocto] same build for multiple machine configurations
To: Alexandru Ionita <alexandru.ionita@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Feb 2022 17:38:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56210

On Wed, Feb 16, 2022 at 1:36 AM Alexandru Ionita
<alexandru.ionita@gmail.com> wrote:
>
>
> Hello all,
>
> I'm not sure if this is even possible at all. I'm using the meta-raspberr=
y layer to build raspberry images. Whilst I'm able to build images by stric=
tly selecting a raspberry pi machine configuration (MACHINE=3Draspberrypi3)=
, I would like to know if it's possible to build an image that is compatibl=
e with multiple raspberry pi machine configurations. For instance an image =
that would work for both raspberrypi3 and raspberrypi4.
>

I think you can share maximum by using same tunes perhaps for pi3 and
pi4 machines but we do not generate single images which will work
across multiple SOCs.

> Thanks.
> Alex
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56206): https://lists.yoctoproject.org/g/yocto/messag=
e/56206
> Mute This Topic: https://lists.yoctoproject.org/mt/89182058/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

