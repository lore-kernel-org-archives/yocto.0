Return-Path: <zoran.stojsavljevic@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A21B5C43217
	for <webhook@archiver.kernel.org>; Thu, 20 Oct 2022 23:49:03 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.4312.1666309733748537844
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Oct 2022 16:48:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cuJL0WkZ;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id b4so2150692wrs.1;
        Thu, 20 Oct 2022 16:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kpbWjwEG4XfL2TecKjpVl1yXPd6AlH8/HpLYfcozxSk=;
        b=cuJL0WkZVFXRAReMTRfVfVFiVg5HFPzwJwNL5JdKf8qoqGQjb29+XIamjOJsloPNkH
         D/n3oMERE09eg4YLm5bpFKEqMZHd4sUN/9RkbZWgv+rqf6veBN1cXAS1UAuWqvZmywda
         CfdOQVfYnPUvssCiSgmLu2wiOQGHFKeArA+mkxgerxvUPoZwMrcGjf5DoZUikxrhcOec
         lyLrPzrCJVF/m7BWU0ciVbBjwqLViH0AxyRROQpFZOF2Y1bVsiqqcaekrjuM4uwIS8UV
         jHxpZbgg5RM5w3NoHluuuD3rpNauJq24WiUU0x4VW9etV8E7AJmZsPnOa3bLAupccPet
         jshw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kpbWjwEG4XfL2TecKjpVl1yXPd6AlH8/HpLYfcozxSk=;
        b=2lfW5hlT8ovmfMYds6/p/+oQ6C1dZmzZwG3GCg3+3adSAdGh1YqVhDb0ejlGQmt8bB
         73+9pry8EyxZItmy0LO2py+cYiJdUAl3WIFav11Qu+Fm89N+M0XBEGvpFuL3x8sdUbqm
         dgV06vFpcZL/YclIEpXqA0GERHKFSoSGVvN0dEhUv627qOznHzsYKuFiDoCNIVQ3UNjA
         pbidwqV4ED8la24DSpqHLTEvtCHGtyY7lzeQPpUty+GRNLwGkjIku6Z9yRJiAVu96c9K
         62OZIYbgm7gmPfRspcnr4iwWnpnoVeLNLnjpQjxeMgxkybyKuljYcKz75zN2CKyDbf8Z
         kTPw==
X-Gm-Message-State: ACrzQf1a+SLHPBa+6Lt2n3LQfLUrTAd2k+uK3FGX3ZgF3AniFOqz7XI3
	xinD4qAraGGvpHBF0m2e13mL2bKIOS1qaztWL78=
X-Google-Smtp-Source: AMsMyM7mm6WpR6RH1FjAB8JOVblBsT6YAMdKp8NPs6KEDFU+Z6tifXkKIJZhg/RN5iJMyqrEDwI05KMf0GUSO1a7IRA=
X-Received: by 2002:a5d:4f81:0:b0:21e:2cd7:25df with SMTP id
 d1-20020a5d4f81000000b0021e2cd725dfmr10632307wru.439.1666309731841; Thu, 20
 Oct 2022 16:48:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAF=G1t49Z0LXDGimbYsXmTXy1tjq-Hw-1wZHqZCQ1-K5a852MQ@mail.gmail.com>
 <CAGAf8Lwn6zJ7nfxaT+qd2Q8Kc19jPfTbuyQW1-wOQgV7Sun64w@mail.gmail.com> <CAF=G1t67+nivmkWqmVUqRaYNZqPmXcBxt59ESL=vP0j37J3k_A@mail.gmail.com>
In-Reply-To: <CAF=G1t67+nivmkWqmVUqRaYNZqPmXcBxt59ESL=vP0j37J3k_A@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 21 Oct 2022 01:48:40 +0200
Message-ID: <CAGAf8LxrjRbk_YGX0EqYWztVv174xFgsJ_ukOcyTjrkrPSEECQ@mail.gmail.com>
Subject: Re: [yocto] Error during linux booting
To: Vaibhav Deshpande <vdeshpande@ventanamicro.com>
Cc: yocto+help@lists.yoctoproject.org, yocto@lists.yoctoproject.org, 
	openembedded-core+help@lists.openembedded.org, 
	Anup Patel <apatel@ventanamicro.com>, Mayuresh Chitale <mchitale@ventanamicro.com>, 
	Laurent Gauthier <laurent.gauthier@soccasys.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 23:49:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58387

> I have added systemd in rootfs by adding
> MAGE_INSTALL = " systemd" in local.conf
> and the issue solved is this required for the
> latest yocto version (kirkstone)?

You did set the INIT_MANAGER ?= "systemd", didn't you?

And how (in which manner) systemd influences the console, or consoles setup?

Consoles' setup should be done much earlier then systemd!?

Zee
_______

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

