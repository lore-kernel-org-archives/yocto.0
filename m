Return-Path: <zoran.stojsavljevic@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BBFBC433FE
	for <webhook@archiver.kernel.org>; Sun, 16 Oct 2022 19:58:28 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web11.33301.1665950306696409386
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Oct 2022 12:58:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=oLdEfTcb;
 spf=pass (domain: gmail.com, ip: 209.85.221.46, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-wr1-f46.google.com with SMTP id bv10so15464961wrb.4;
        Sun, 16 Oct 2022 12:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QDw9iZ1aQ3a1lnpunu1Y7aRy8ZMW6CpRFgGnKK/n4h8=;
        b=oLdEfTcbkCWmDmIJjrKhxBq/OL3eAZEGrf3WJnVbZMDaSTfEGrX9Mf5xeKFDtU7iYs
         EVQhZpbW6niWuSaoEdzGW11Itz4T0DB6W3mk6nrIiInkPdebB4/4rNlvuwoIdy0QTFCT
         cdYC7oTeiywgMXM7ioU228TS3Do1aExyasoj1gOpezlDWqkdU867F1hkwh3XkvtrVajL
         3GgyqNA7tMyAHARAtGL+BrYzyLYME8UirgbCRHP3XK2N8zIQq7blk6aJ+/r4UkkroPyT
         JUn4Mq2Ym60RWHC0JoapQL8RJdqezV9ffaIui2HAwOYyuUTH0yiRs8NZ1Ep5T4/uBoeY
         uA4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QDw9iZ1aQ3a1lnpunu1Y7aRy8ZMW6CpRFgGnKK/n4h8=;
        b=c6NZfGfOiRXPz4ZxdCTAw2uIDrrEymtftwwFXFFath3oJODqB+BtkN0I30qZRdH/jy
         uy0MTbefgzumWnmcua5mROUsIuDyQSI63dBOqnSDvq19a5EqUbdamAPvI0+L8lwh4AEQ
         MZDnyh0DvmTCVRLPHmeovYd+FTPRC/1Zc5RudH6I9+s4oLstxGXmZZry3btNn7wFbZuJ
         zI6mrsEvwq0TRI3gJOdv01EmXUdIjqtlRZ7F/cNanvyDCtX260gufb4uDWQg36qpyCQK
         pqjaXAvsySyC+333tnQIBQCdaEILVxO1dvQDhyAvfCqFcS//RqWf0wH1Z8yiFB/0igJr
         3eyw==
X-Gm-Message-State: ACrzQf1Wq2QLrJ1qrutmQYevN8RMR4S3Z9qU7uI7DGURfKCyVUtiFdUV
	sU9iWLzNtPmuDe/DjUzxUzejUWTX7VDGoxBJwTQ=
X-Google-Smtp-Source: AMsMyM4Y1qBD3NChC5cMlfsk1rm4zh9r43y3QXiY28NHjE/Xk39V/uXeXRvEKMTCFqBKz1Jgg0vZse3tTuoF6WA62s8=
X-Received: by 2002:adf:e442:0:b0:22e:2c5a:721d with SMTP id
 t2-20020adfe442000000b0022e2c5a721dmr4280497wrm.448.1665950304835; Sun, 16
 Oct 2022 12:58:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAF=G1t49Z0LXDGimbYsXmTXy1tjq-Hw-1wZHqZCQ1-K5a852MQ@mail.gmail.com>
In-Reply-To: <CAF=G1t49Z0LXDGimbYsXmTXy1tjq-Hw-1wZHqZCQ1-K5a852MQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Sun, 16 Oct 2022 21:58:13 +0200
Message-ID: <CAGAf8Lwn6zJ7nfxaT+qd2Q8Kc19jPfTbuyQW1-wOQgV7Sun64w@mail.gmail.com>
Subject: Re: [yocto] Error during linux booting
To: Vaibhav Deshpande <vdeshpande@ventanamicro.com>
Cc: yocto+help@lists.yoctoproject.org, yocto@lists.yoctoproject.org, 
	openembedded-core+help@lists.openembedded.org, 
	Anup Patel <apatel@ventanamicro.com>, Mayuresh Chitale <mchitale@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 16 Oct 2022 19:58:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58345

Interesting... Looking into the log massage itself!

> [    0.000000] Kernel command line: root=/dev/vda2 rootwait console=ttyS0 earlycon=uart8250,mmio,0x10000000

Command line does not specify baud rate... Usually by default it is
115200. Just a kludge.

Then:

> [    0.000000] earlycon: uart8250 at MMIO 0x0000000010000000 (options '')
> [    0.000000] printk: bootconsole [uart8250] enabled

bootconsole enabled, seems correct.

Then:

> [    1.628806] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
> [    1.648238] printk: console [ttyS0] disabled
> [    1.652252] 10000000.uart: ttyS0 at MMIO 0x10000000 (irq = 166, base_baud = 230400) is a 16550A
> [    1.656816] printk: console [ttyS0] enabled
> [    1.656816] printk: console [ttyS0] enabled
> [    1.657728] printk: bootconsole [uart8250] disabled
> [    1.657728] printk: bootconsole [uart8250] disabled

From what we see that the base baud rate is 230400 (?), everything
else is, seems, correct.

So, three things, which came adhoc to my mind:
[1] Please, check the baud rate;
[2] Please, check to which group /dev/ttyS0 belongs (root dialout)?
[3] The terminal should be interactive, but no way to check this (from
the logs)???

My two cent worth answer,
Zee
_______

On Sun, Oct 16, 2022 at 8:32 PM Vaibhav Deshpande
<vdeshpande@ventanamicro.com> wrote:
>
> Hello
>
> I am trying to build a yocto image from the kirkstone branch (https://github.com/openembedded/openembedded-core/tree/kirkstone) build gets successful but at the time of linux booting I am getting below error.

...[snap]...

