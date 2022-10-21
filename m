Return-Path: <zoran.stojsavljevic@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 061D6C433FE
	for <webhook@archiver.kernel.org>; Fri, 21 Oct 2022 10:16:07 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web09.8403.1666347356715955701
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Oct 2022 03:15:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=oDeBEX1i;
 spf=pass (domain: gmail.com, ip: 209.85.221.50, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-wr1-f50.google.com with SMTP id a14so1253216wru.5
        for <yocto@lists.yoctoproject.org>; Fri, 21 Oct 2022 03:15:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZoveuTgWBsQ9LJDcBUJAcnik38ESslZy6rKu4/DqPcY=;
        b=oDeBEX1iHn/aA3JKJ2W4ei4v83BS3CnrlZIxWlwyClxn+GzAbiUZ/EvldDgE8FUpMT
         VwiE+TyM3gFUwIVxUMyo9+LKZpUYw0PqtoleucSbqJyvAd4Na+VOsKGBj3N+Sih15rSv
         zYHhgK9NhsuaGNpAvh0d+n6fV1EN/+PLtB/jhbcUW6mwZo9Haz6n6zJjTh+l3TsLDhhT
         NnbLlS6b4bcSX7YLn8Whp0fY8R+3+OhCwLqDgO9d/Ec9YNidwjlkcRP1B3AJwfU2fRZL
         9R9b6LrROYKRX0upv3kK6fx0klVuhv7nCa3NJ6urMd1GRNjYGtgIBUj+LUAYUGpu0cYE
         OF5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZoveuTgWBsQ9LJDcBUJAcnik38ESslZy6rKu4/DqPcY=;
        b=8POyQuIsejVLOXcX9Hvwz8iBlc5QZ4Iq9Z1JobCzD98Qia+JMTIgkmzWdJd6QLaGi3
         YxROqvPf8w3MShm8LKS3KPzgIn4EN5CbNbn/4c8x0wdcwn2mQJzijhtL2IO7Pewr1EU8
         FgfbIcNf3B6L3Wuh3d/fvXed8A1kPgQxme50xD1UNZVdFwOb+XNhgZSNN1dgKuWNyvIa
         cisEJvbAXgG+cML01w5FNXQFyBdt60Pq/eWbdtOuGGZGAMtUqZZ7vqkbWAhwPyytYN+1
         CiFF5NLQObymReXHtNUXpP9ArfaJxRl4IFxzRnyTZ5G+KscAm1+22D+VfYyJtbAvNnTa
         mJvg==
X-Gm-Message-State: ACrzQf16ZWj90MMIPpkn9PQx6YdwMYoG35asps8M2rfCjlO303a+o0Do
	mNS+xUsUWnA3FshclD3yPIKa+EA6H2IxuHOjhMM=
X-Google-Smtp-Source: AMsMyM5IDU1S4hpYcZiCYfjREwaH1VHaGqSl8qz7F8KgxRZek+2EQ+LFNUsj7WxXWozAHgZmw2KubFDHN0uwNlPkPhY=
X-Received: by 2002:a5d:4f81:0:b0:21e:2cd7:25df with SMTP id
 d1-20020a5d4f81000000b0021e2cd725dfmr12070104wru.439.1666347354856; Fri, 21
 Oct 2022 03:15:54 -0700 (PDT)
MIME-Version: 1.0
References: <SzSq.1666342613164866500.rC1v@lists.yoctoproject.org>
In-Reply-To: <SzSq.1666342613164866500.rC1v@lists.yoctoproject.org>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 21 Oct 2022 12:15:43 +0200
Message-ID: <CAGAf8LwFpwa9ehaHPf-+CpqEHgR0sRcR0afO43FNgwuqimYqpg@mail.gmail.com>
Subject: Re: [yocto] Raspberry Pi 4 h264 encoder
To: Ed Watson <edmundwatson@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Oct 2022 10:16:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58391

I see that you are using the following (EXO) player:
https://github.com/google/ExoPlayer

I see that you are trying to use the HW codec for H264.

In Android, I use also the SW codec with the option:
--encoder OMX.google.h264.encoder

This email is just to make the context much cleaner, and
understandable... To YOCTO primes.

And, yes, It is interesting to me as well. How to include rpi4 HW
coders into the context? ;-)

NOT only for rpi4 silicon... ;-))

Thank you all,
Zee
_______


On Fri, Oct 21, 2022 at 10:56 AM Ed Watson <edmundwatson@gmail.com> wrote:
>
> I want to increase the performance streaming from a rpi4 via an rtsp streamer.
>
> I am using ffmpeg to do the encoding however it is using CPU encoding.
>
> What is the right options for using the hardware in 264 encoding?
> I assume it is  -c:v h264_omx
>
> That is not compiled it.
>
> I added to ffmpeg_%.bbappend
>
> PACKAGECONFIG += " omx omx-rpi "
>
>
>
> PACKAGECONFIG[omx] = "--enable-omx"
>
> PACKAGECONFIG[omi-rpi] = "--enable-omx-rpi"
>
>
>
> DEPENDS =+ "virtual/libomxil"
>
> RDEPENDS_${PN} = "${VIRTUAL-RUNTIME_libomxil}"
>
> I get the error.
>
> ERROR: OMX_Core.h not found
>
>
>
> Am I braking up the wrong tree here?
>
> Thanks
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58390): https://lists.yoctoproject.org/g/yocto/message/58390
> Mute This Topic: https://lists.yoctoproject.org/mt/94472166/3618681
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [zoran.stojsavljevic@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

