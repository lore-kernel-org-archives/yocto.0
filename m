Return-Path: <laurent.gauthier@soccasys.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B88B4C433FE
	for <webhook@archiver.kernel.org>; Thu, 20 Oct 2022 17:30:21 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
 by mx.groups.io with SMTP id smtpd.web09.259.1666287018519582502
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Oct 2022 10:30:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20210112.gappssmtp.com header.s=20210112 header.b=SNOFuE1y;
 spf=pass (domain: soccasys.com, ip: 209.85.210.45, mailfrom: laurent.gauthier@soccasys.com)
Received: by mail-ot1-f45.google.com with SMTP id cb2-20020a056830618200b00661b6e5dcd8so284726otb.8
        for <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 10:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WVvnkW0xS8m0W4UqTsUKffrchRHQ2nbJB4aXRh7oZ7A=;
        b=SNOFuE1yD/wh/8/16YBXdy4oaMV0Z21c2/FkPtsHKKQFf+5zUqhJvXvIu1BWkUeE6X
         Yy9IrS8vu2VL1RICtRRGxYKRiF6d02GsoEtmgbtxG659orJl77qN6dAgPzpRMbF07CFV
         nicWQBQ0w0EBCSnaL023yw2BzDkGl4UbcOOj67hpCSNsayWthDmW8PWGRCniAlfvC7oL
         yvGV5nbqRYMus51BSIRuid2MgZ4w9XaeZRS39IWXQeKiZgUfckFgESBcthH1IszekfPc
         6pSImiireD7yCpMAY2wr2vM0lG43Rc5coxziREpqdC7uzIOsbRKApyTiqml3n5Cgt9Ms
         //FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WVvnkW0xS8m0W4UqTsUKffrchRHQ2nbJB4aXRh7oZ7A=;
        b=uVG0X7rZZE2bu31NPhVfdg1CWw+P42BaLVP8W1k0YfsYykSkTfO0IbmG8GAuDn14C7
         wQ9FzqgCF1xSy+89PlLNyTfdeJ+7Ba7F+LNh2lDO+bIh5X6WBXsfAPvB1pPHUfJ/Qi/M
         9Mnf2XODcplzxCN4ODDdOlKRdp9pfrUBdYwOXbYzMymYFr8Yi63ibriID5LMxacf1m8p
         FEcgH/FC/5jg8jGThwhuHTtrajILvjpcGKNkNspGMMB8R1rZhybeCex+hGraQW/if5VR
         SNIqJb8FbCvTQcqAQFbv2JLCR8RSK6cRHpdjK6SRZKvh4bdY7m4Zw0cmtd8ZAlND8CzI
         vSSQ==
X-Gm-Message-State: ACrzQf1kKJUE/F8aC3IMarJ4SbAvlIsuvjI08jKhMe65NdrTxgLHchyG
	qpVfYq3XncO3tzqEdaJLWOXDLM1Uzrr4tH6Y0TVvPg==
X-Google-Smtp-Source: AMsMyM5K8UD6Ex0X5HeFZF0Eoo3bHd32def0Ih9hFa3xQOKGNn99ZielywFxkaNKz0JufNzfSD3q00azTGLhb9hgWaY=
X-Received: by 2002:a9d:7f87:0:b0:661:b8d6:d85e with SMTP id
 t7-20020a9d7f87000000b00661b8d6d85emr7708857otp.172.1666287017559; Thu, 20
 Oct 2022 10:30:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAF=G1t49Z0LXDGimbYsXmTXy1tjq-Hw-1wZHqZCQ1-K5a852MQ@mail.gmail.com>
 <CAGAf8Lwn6zJ7nfxaT+qd2Q8Kc19jPfTbuyQW1-wOQgV7Sun64w@mail.gmail.com> <CAF=G1t67+nivmkWqmVUqRaYNZqPmXcBxt59ESL=vP0j37J3k_A@mail.gmail.com>
In-Reply-To: <CAF=G1t67+nivmkWqmVUqRaYNZqPmXcBxt59ESL=vP0j37J3k_A@mail.gmail.com>
From: Laurent Gauthier <laurent.gauthier@soccasys.com>
Date: Thu, 20 Oct 2022 19:29:41 +0200
Message-ID: <CAGbd71Qbqi689wAGNmruUJ2OBuXk9Qg4ssNOKPtnhcfhtVGPVQ@mail.gmail.com>
Subject: Re: [yocto] Error during linux booting
To: Vaibhav Deshpande <vdeshpande@ventanamicro.com>
Cc: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, yocto+help@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org, openembedded-core+help@lists.openembedded.org, 
	Anup Patel <apatel@ventanamicro.com>, Mayuresh Chitale <mchitale@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 17:30:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58385

Hi Vaibhav,

Out of curiosity which image did you build?

Kind regards, Laurent.

On Thu, Oct 20, 2022 at 7:07 PM Vaibhav Deshpande
<vdeshpande@ventanamicro.com> wrote:
>
> Helo
>
> I have added systemd in rootfs by adding IMAGE_INSTALL = " systemd" in local.conf and the issue solved
> is this required for the latest yocto version (kirkstone)?
>
>
> Thank you.
>
> Regards
> Vaibhav Vivek Deshpande
>
>
> On Mon, Oct 17, 2022 at 1:28 AM Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
>>
>> Interesting... Looking into the log massage itself!
>>
>> > [    0.000000] Kernel command line: root=/dev/vda2 rootwait console=ttyS0 earlycon=uart8250,mmio,0x10000000
>>
>> Command line does not specify baud rate... Usually by default it is
>> 115200. Just a kludge.
>>
>> Then:
>>
>> > [    0.000000] earlycon: uart8250 at MMIO 0x0000000010000000 (options '')
>> > [    0.000000] printk: bootconsole [uart8250] enabled
>>
>> bootconsole enabled, seems correct.
>>
>> Then:
>>
>> > [    1.628806] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
>> > [    1.648238] printk: console [ttyS0] disabled
>> > [    1.652252] 10000000.uart: ttyS0 at MMIO 0x10000000 (irq = 166, base_baud = 230400) is a 16550A
>> > [    1.656816] printk: console [ttyS0] enabled
>> > [    1.656816] printk: console [ttyS0] enabled
>> > [    1.657728] printk: bootconsole [uart8250] disabled
>> > [    1.657728] printk: bootconsole [uart8250] disabled
>>
>> From what we see that the base baud rate is 230400 (?), everything
>> else is, seems, correct.
>>
>> So, three things, which came adhoc to my mind:
>> [1] Please, check the baud rate;
>> [2] Please, check to which group /dev/ttyS0 belongs (root dialout)?
>> [3] The terminal should be interactive, but no way to check this (from
>> the logs)???
>>
>> My two cent worth answer,
>> Zee
>> _______
>>
>> On Sun, Oct 16, 2022 at 8:32 PM Vaibhav Deshpande
>> <vdeshpande@ventanamicro.com> wrote:
>> >
>> > Hello
>> >
>> > I am trying to build a yocto image from the kirkstone branch (https://github.com/openembedded/openembedded-core/tree/kirkstone) build gets successful but at the time of linux booting I am getting below error.
>>
>> ...[snap]...
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58384): https://lists.yoctoproject.org/g/yocto/message/58384
> Mute This Topic: https://lists.yoctoproject.org/mt/94368916/3618354
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [laurent.gauthier@soccasys.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


-- 
Laurent Gauthier
Embedded Linux Systems & Software
Phone: +33 630 483 429
https://soccasys.com

