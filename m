Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0525C05027
	for <webhook@archiver.kernel.org>; Thu,  2 Feb 2023 08:59:04 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web11.10494.1675328335635329287
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Feb 2023 00:58:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=O5AjdUjR;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-169ba826189so1636133fac.2
        for <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 00:58:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=20NdHjWa+6oMGtDFkWTkBwjzDH9uMYu5kBD1T5mF2wA=;
        b=O5AjdUjRtNM1NxqZEsaZK7mksAWAZZ4LETTIoQ0BEpUhm1XOQe4s+dNaLl4grJGZY1
         t4SB46jZmQFHQmhlfMZL/d4AIrKqfTFfDq71B950Z/rdfN0/kjlGc9eZa8MHdlit2u9x
         RlJzRa+MOr4cCwpsMgdsNg8EfRFjk1J2FIQa7kaXbodqt8Dmb2QRKzVqpMdb7vGauz5p
         J/WcpZfk2Zn8bj3rb5SAybaB7a5S/RqK5u6p2s73XxP0W4wbZZJQW6vt7I0odWpt7Iwk
         Vr4Z9feBYjARgBbw0Fw8ZqD8vByFZqEo8+AEjYhIhhVOLFVPuYQo/ByHcE7bIgG+a5h1
         Vg+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=20NdHjWa+6oMGtDFkWTkBwjzDH9uMYu5kBD1T5mF2wA=;
        b=ROgYIlhntyqeUjZQ0vW2iFhHAzG6rPlgiChrBOjW4eW9Nv+sZNvWhOGpn68mvMN0J9
         PlQgOtwOUjFVyCAaTNAZ4y4BwniwIeOZdQFZKm1Hbvgg/AXJUhWDX173T0i3FQNOlDnw
         OeENCNEi/sfx85KSgpJyBuFFjRw/icfEv3o8spUaMkXvPDSVTqUUjIn3SR2RN/PNMkw9
         irPA7I6QjUSNiL3T2Hs3jgMJquSzpx7fxDyH/O3tPg346DOiRmSjF6/3JahMit+JbUdT
         9+IeNX4YPrVfB5zg73ydnVpYX8Yt2D5XFz8FZmkddNrzZ55VZelmWMU/x3T/lJ4d/jT/
         2nbQ==
X-Gm-Message-State: AO0yUKUZLQIM6Zq0LALrtgB7Lg3Z/0YThOfqHMCxLTSwxpUIQUh0BTAm
	Syw7WtH8svQzOVUftebo0g/PSCfkKjNbjcrOpCw=
X-Google-Smtp-Source: AK7set+Z2ikHTc5OD51t9b/BzErSYZPUX6l1tgQP1ZogyNM2PRh6FxP6DCAJW42TKmISFKXapx6OCIE91C9Anq6gZwk=
X-Received: by 2002:a05:6871:4e96:b0:163:d288:863 with SMTP id
 uk22-20020a0568714e9600b00163d2880863mr189118oab.55.1675328334700; Thu, 02
 Feb 2023 00:58:54 -0800 (PST)
MIME-Version: 1.0
References: <6qL9.1675327873124959941.pUOu@lists.yoctoproject.org>
In-Reply-To: <6qL9.1675327873124959941.pUOu@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 2 Feb 2023 00:58:28 -0800
Message-ID: <CAMKF1sr01My-Ki0n8JSOCOyxiFM78CzpuNyUa-qiPbpARowuAQ@mail.gmail.com>
Subject: Re: [yocto] Include Driver in my imx-image #sdk #yocto #imx8
 #kirkstone #kernel #patch
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 08:59:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59142

On Thu, Feb 2, 2023 at 12:51 AM Nikita Gupta <nikitagupta2509@gmail.com> wrote:
>
> Hello List,
>
> I am making kernel yocto image for imx8mplus. But according to my project requirement i need different audio driver rather then default which comes with this linux image. I am able to see many drivers in following path:
>
> imx-yocto-bsp/build-xwayland/tmp/work-shared/imx8mp-lpddr4-evk/kernel-sources/sound/soc/codecs
>
> C code of desired driver is present in this. So i want to integrate this driver in my kernel image so what is the procedure or how can i know that this particular driver has added in my upcoming yocto image before baking filnal image through bitbake.
> I also want to know that how can we know that which drivers are included before bitbake.
>
> Question:  How can i integrate desired driver in imx8-image?

You can add a kernel config fragment disabling/enabling needed drivers
during build and you can either build them into kernel proper or as
kernel modules. If you build them as kmods then you have to add it to
your image via IMAGE_INSTALL
the kernel modules will be individual rpm/ipks generated after kernel
build name is prefixed with kernel-module-<name>

>
> Thanks in advance
> Nikita Gupta
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59141): https://lists.yoctoproject.org/g/yocto/message/59141
> Mute This Topic: https://lists.yoctoproject.org/mt/96696536/1997914
> Mute #sdk:https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #imx8:https://lists.yoctoproject.org/g/yocto/mutehashtag/imx8
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkstone
> Mute #kernel:https://lists.yoctoproject.org/g/yocto/mutehashtag/kernel
> Mute #patch:https://lists.yoctoproject.org/g/yocto/mutehashtag/patch
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

