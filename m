Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web09.24379.1605874967487972064
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Nov 2020 04:22:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UIfV56q7;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: erik.boto@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id h23so9798239ljg.13
        for <yocto@lists.yoctoproject.org>; Fri, 20 Nov 2020 04:22:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=slPW12T7XGKPmEZgfuvKuPjnCKthBGUg9908MTYHJto=;
        b=UIfV56q7ZQ0d6sms8hFVlVyIuvMR39jSYwWf/N2Kw4FBxjmmnGl5gWSLV14sE26rpz
         2XrWg0j5V4MoYono19l1zGaazu6HkzZLx0CCYoaIgdLRrazDec27/M4HXGDNZc4/KLJI
         Zyok3lF256mU5pZ4x0SUFqn9apoW27hzaFfNdnhdnrYhdOdfs9QxiR8QKozF6ci5dfen
         8NK3YcTX/48LZLkcpAgQ0bE9MVHrhp11SCiaJ6ccAh5vmwlAuZYOVxyErJooSNX3dF9i
         Q2nRx80itVAMqmpvoV1CVeygDyXgqBaTDO4vAJFiHBNtBKD5NmhIylaqYKAJlDhf2hav
         uMWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=slPW12T7XGKPmEZgfuvKuPjnCKthBGUg9908MTYHJto=;
        b=VOKzl3K/NjnsI5m9cwLbW00YmLcLRyxQ3LW8htS2k/pqV/T9fo7niC+D84FmuTdOlh
         TCGNJrbgk+mkXpVJrzIQeJ0Rgk0kA98H3EBi1pI2Paka+362LXZEXF1t+FMJ2lwjdnar
         450VbavSDcdNFSUxRqPB1MvMJqAs5Kx3ft2QurhR3IYzWStp+nl87oEmIRpc8Oivk/2Y
         XQuehAy/VFMQycoMkCvW4x647sfEcDeicUnSA+zz19F1DFZVnXPXgL7ZukJXAOjYM00H
         Hq24JJxS6JIhYHs7n4cyvOyBvPNylC415egMbEfVbBE7FhgBgH9Uz6Tc9GNupc9e13oY
         ynLw==
X-Gm-Message-State: AOAM5327mim6FeXX/N5iwAZTlHv4YhIWv5IKJ+m2xzKg/HsCofk3jVHS
	FfxpSHcc4Gzs9mbJgwyqTkOSXoKIcnzCM1L75cU=
X-Google-Smtp-Source: ABdhPJwlbEsvj/DQYcfZWN6gvZG3vVIQtTjIanzd8EPox+mOYouHQcyKPM6pRjQAUKuuycfXlfM8gTrYRJa0EnF38bo=
X-Received: by 2002:a2e:8711:: with SMTP id m17mr8750688lji.308.1605874965228;
 Fri, 20 Nov 2020 04:22:45 -0800 (PST)
MIME-Version: 1.0
References: <61df164e-fa3a-7517-33e8-db8ef0c8af92.ref@yahoo.com>
 <61df164e-fa3a-7517-33e8-db8ef0c8af92@yahoo.com> <CAMKF1sq=my8uXJwO93BwhEMiEZRyYGOCvv9BMuMCG8=DuGV-Ww@mail.gmail.com>
 <16488BC657DA2093.23836@lists.yoctoproject.org> <1648CCC040C7B594.8629@lists.yoctoproject.org>
 <6cbee24058e04c0d9f21fb9077fe94e9@Exchange.sewerin.de>
In-Reply-To: <6cbee24058e04c0d9f21fb9077fe94e9@Exchange.sewerin.de>
From: "Erik Boto" <erik.boto@gmail.com>
Date: Fri, 20 Nov 2020 13:22:34 +0100
Message-ID: <CALNvYWNt6zK97wYbogV=RfT+_5w5Ho=-4H+nG9qOCjNiOiGEEA@mail.gmail.com>
Subject: Re: [yocto] Raspberry PI enabling MMC1
To: chuckkamas@yahoo.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 19, 2020 at 7:21 PM chuck kamas via lists.yoctoproject.org
<chuckkamas=yahoo.com@lists.yoctoproject.org> wrote:
>
> Making some progress here!
>
>
> I added a compiled version of the attached device tree and now the mmc1 shows up in my yocto image! Yes! Now I need to find out the secret magic in that tree that I need to add...

If I'm not mistaken that should be done by appending
RPI_KERNEL_DEVICETREE_OVERLAYS. If you don't have your own custom
machine configuration where this could be added, try adding the
following to local.conf:

RPI_KERNEL_DEVICETREE_OVERLAYS_append = " overlays/sdio.dtbo "

Cheers,
Erik
>
>
> Chuck
>
>
> On 11/18/20 7:59 PM, chuck kamas via lists.yoctoproject.org wrote:
>
> Raj,
>
>
> I found out how to debug the boot process of the PI from:
>
> https://github.com/raspberrypi/documentation/blob/master/hardware/raspberrypi/bootmodes/README.md
>
> by turning on the boot code debug.
>
> sed -i -e "s/BOOT_UART=0/BOOT_UART=1/" bootcode.bin
>
>
> I found out that the sdio overlay does not exist!
>
> MESS:00:00:07.868162:0: dtdebug: Failed to open overlay file 'overlays/sdio.dtbo'
> MESS:00:00:07.874093:0: Failed to load overlay 'sdio'
> MESS:00:00:07.878881:0: brfs: File read: /mfs/sd/overlays/sdio.dtbo
> MESS:00:00:07.891322:0: brfs: File read: /mfs/sd/cmdline.txt
>
>
> So what am I missing on how to turn on the sdio on GPIO22-27? Is it not an overlay and instead a driver/other code/linux config that needs to be set?
>
>
> Chuck
>
>
> On 11/17/20 4:29 PM, chuck kamas via lists.yoctoproject.org wrote:
>
> Raj,
>
>
> Thanks for taking the time to respond. I thought of that too. My custom Yocto build has the line to turn on the sdio in it:
>
> dtoverlay=sdio,poll_once=off
>
>
> I have attached the entire file: config.txt.yocto
>
> However, the Rasbian image does not have any mention of the dtoverlay for the sdio.  Curious. See config.txt attached.
>
>
> Thanks for the help!
>
> Chuck
>
>
> On 11/17/20 12:08 AM, Khem Raj wrote:
>
> On Mon, Nov 16, 2020 at 11:43 PM chuck kamas via
> lists.yoctoproject.org <chuckkamas=yahoo.com@lists.yoctoproject.org>
> wrote:
>
> Hi all,
>
>
> I have been spinning my wheels for two days trying to discover how to
> enable MMC1 on a CM3. This is the one on GPIO22-27. I can boot Rasbian
> on the CM3 and it inits the MMC1 and its pins just fine. I can
> read/write to my SD card from it etc. However, when I build yocto it
> leaves the GPIOS22-27 in gpio mode and does not set them to MMC1 mode.
> I have tried changing the device tree as described here:
>
> https://stackoverflow.com/questions/44702426/how-to-setup-an-own-device-tree-for-a-raspberrypi-in-yocto
>
> That compiles and add the .dtbo to my build, but still the GPIOS are not
> set to MMC1 mode.
>
> cat /sys/kernel/debug/pinctrl/*gpio*/pinmux-pins
> Pinmux settings per pin
> Format: pin (name): mux_owner gpio_owner hog?
> ....
>
> pin 22 (gpio22): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 23 (gpio23): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 24 (gpio24): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 25 (gpio25): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 26 (gpio26): (MUX UNCLAIMED) (GPIO UNCLAIMED)
> pin 27 (gpio27): (MUX UNCLAIMED) (GPIO UNCLAIMED)
>
> .....
>
> I have looked at:
>
> https://ralimtek.com/raspberry%20pi/electronics/software/raspberry_pi_secondary_sd_card/
>
>
> Any ideas of where to look next to turn on the sdio would be appreciated!
>
>
> what does /boot/config.txt look like on raspbian and yocto built images
>
> Chuck
>
>
>
>
>
>
>
>
>
>
>
>
>
> 
>
