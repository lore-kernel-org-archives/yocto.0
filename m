Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914E1C636D3
	for <webhook@archiver.kernel.org>; Thu,  9 Feb 2023 18:54:29 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.25630.1675968860613756555
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Feb 2023 10:54:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=JAiPvfFr;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id h24so4486951lfv.6
        for <yocto@lists.yoctoproject.org>; Thu, 09 Feb 2023 10:54:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hODhNyilc+p5DBT1WxRmYafnRbc3zc3UOxsCP6kEhU4=;
        b=JAiPvfFr9ajNonG1E/qIf0s6eaP4skUcsYCNA5Dj2LguOijkS4drStl/Xkq+xsPxUh
         +5Wg/f8qVi65WNde3hDQGXpleDoqdjx7NmivAbTGDqMIRGGBXDC6JaQZEL74GT2sr2KX
         gQOr4R4kmX/IfiEFznO3UV+zZHhnIfTrib7r4zO+puYR7E0/eao+Nk6qV/X25j5yRCxI
         B7GwKHF3eyRi2UHtiaknY6h9PAfSjQBzLn457YqfSK3nV9Qe93qmXMMOZWtpdgEqzoBu
         6lBDItwVH65N6PlsouVpAOjtQQSUWGPFPs0MngmevLAd1LUL1Ub8CYIoikombAP2pfX0
         LZUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hODhNyilc+p5DBT1WxRmYafnRbc3zc3UOxsCP6kEhU4=;
        b=f731oRxYKm5VBGtmzE6mbuKC1slionCi0vjnu8mIdb0QBsS3bvBQBf6Q4OgiR0QGlt
         AK5cjbkIF/Mg1e/qjH56N4KME6gxNjMYpATD9g4CDxGVaOP6uB61+pUawUovtKs03NBn
         NpyrzsZ1SGnjn4wyETdtOcemJYNnRpildi6ZKMxsKUpVX9NzmQggY7QvcomwEw7esnGk
         1xjKH37bn33mWEnCfkEwiO6rDPkkml+omv2fA9/eXGtFoBWiRI1+evlVTErPOzNcun0K
         Q0/Te1Ks/LcEl2tbM8uwcT5N/nH787269zn4xGPD/65s09TIDxmC/9XWZ00f/sBxj1ri
         wq9A==
X-Gm-Message-State: AO0yUKWfQWY1mGgK8a0XOTecqnpvOphAK7c/dfefehOMGKcJ4QDP33NJ
	jL43IXGkskMlUlEoH/p8XZav2fHV5Qo4O6gsFdk=
X-Google-Smtp-Source: AK7set/Zj2Ac+vz6RmQSHlGTVhF4lwc1QDLVlJGf7RUG8/6KWRqieEm0ftYNUReA6gZMoPXsS4qQr1+h0/hnRQ5aLys=
X-Received: by 2002:ac2:5dcf:0:b0:4cc:7571:8b1d with SMTP id
 x15-20020ac25dcf000000b004cc75718b1dmr2664148lfq.58.1675968858703; Thu, 09
 Feb 2023 10:54:18 -0800 (PST)
MIME-Version: 1.0
References: <39760b676a3d2a628a446e3031724b53c8941a88.camel@linuxfoundation.org>
 <32073.1675641651799643620@lists.yoctoproject.org> <CAEFUPH2JJ6iiQvzT3bSrWDdM__Gf=XkDBRWg18XTu3B05dnFoA@mail.gmail.com>
In-Reply-To: <CAEFUPH2JJ6iiQvzT3bSrWDdM__Gf=XkDBRWg18XTu3B05dnFoA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 9 Feb 2023 19:54:07 +0100
Message-ID: <CANNYZj-__2x2mcAjEx5O=w1ym_5MpxQWmFoAxOJ=36Vfe+3sLQ@mail.gmail.com>
Subject: Re: [yocto] error when try to use sudo command in recipe
To: SIMON BABY <simonkbaby@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Feb 2023 18:54:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59205

Note that per its README, meta-virtualization has a dedicated mailing
list and an irc channel, so perhaps you could ask there?

https://git.yoctoproject.org/meta-virtualization/tree/README says

Mailing list: https://lists.yoctoproject.org/g/meta-virtualization
IRC: libera.chat #meta-virt channel

Alex

On Thu, 9 Feb 2023 at 19:45, SIMON BABY <simonkbaby@gmail.com> wrote:
>
> Hello,
>
>
>
> I was testing the meta-virtualization/recipes-demo/images/ app-container. I was able to build the container. But I am not sure where is the image created  and how do we run the image using docker commands. I also see the .yaml files.
>
> On the target I can see /usr/bin/flask-app. Below is the folder contents after bitbake.
>
>
>
> bitbake app-container
>
>
>
> build/tmp/work/armv8a-poky-linux/helloworld-flask$ ls
>
> 0.1-r0
>
> /build/tmp/work/armv8a-poky-linux/helloworld-flask$ cd 0.1-r0/
>
> build/tmp/work/armv8a-poky-linux/helloworld-flask/0.1-r0$ ls -ll
>
> total 84
>
> -rw-r--r--  1 tdydev tdydev    65 Feb  7 11:58 configure.sstate
>
> drwxr-xr-x  3 tdydev tdydev  4096 Feb  7 12:10 deploy-debs
>
> drwxr-xr-x  2 tdydev tdydev  4096 Feb  7 11:38 deploy-source-date-epoch
>
> -rwxrwxr-x  1 tdydev tdydev   518 Feb  2 14:24 flask-app
>
> -rw-r--r--  1 tdydev tdydev   511 Feb  7 11:58 flask-app-service.yaml
>
> -rw-r--r--  1 tdydev tdydev   178 Feb  7 11:58 flask-app.yaml
>
> drwxr-xr-x  2 tdydev tdydev  4096 Feb  7 11:35 helloworld-flask-0.1
>
> drwxr-xr-x  4 tdydev tdydev  4096 Feb  7 11:58 image
>
> drwxr-xr-x  3 tdydev tdydev  4096 Feb  7 11:38 license-destdir
>
> drwxr-xr-x  4 tdydev tdydev  4096 Apr  5  2011 package
>
> drwxr-xr-x 10 tdydev tdydev  4096 Feb  7 12:10 packages-split
>
> drwxr-xr-x  7 tdydev tdydev  4096 Apr  5  2011 pkgdata
>
> drwxr-xr-x  7 tdydev tdydev  4096 Feb  7 11:58 pkgdata-pdata-input
>
> drwxr-xr-x  7 tdydev tdydev  4096 Feb  7 11:58 pkgdata-sysroot
>
> drwxrwxr-x  2 tdydev tdydev  4096 Feb  7 12:10 pseudo
>
> drwxr-xr-x  5 tdydev tdydev  4096 Feb  7 12:10 recipe-sysroot
>
> drwxr-xr-x  8 tdydev tdydev  4096 Feb  7 12:10 recipe-sysroot-native
>
> drwxr-xr-x  2 tdydev tdydev  4096 Feb  7 11:35 source-date-epoch
>
> drwxr-xr-x  2 tdydev tdydev 12288
>
>
>
>
>
>
> Regards
>
> Simon
>
>
>
> On Sun, Feb 5, 2023 at 4:00 PM SIMON BABY via lists.yoctoproject.org <simonkbaby=gmail.com@lists.yoctoproject.org> wrote:
>>
>> Hi Richard,
>>
>> I added extra code in the recipe to print the sudo permissions to compare with actual permissions.
>>
>> Regards
>> Simon
>>
>>
>>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59204): https://lists.yoctoproject.org/g/yocto/message/59204
> Mute This Topic: https://lists.yoctoproject.org/mt/96733939/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

