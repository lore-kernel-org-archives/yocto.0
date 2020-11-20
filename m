Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web08.5351.1605960987282007988
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Nov 2020 04:16:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lists.yoctoproject.org header.s=20140610 header.b=PpQj74i/;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Fri, 20 Nov 2020 14:10:15 +0000
X-Sender: bounce+53643+51497+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 8408
X-Received: by 127.0.0.2 with SMTP id FM15YY3619394x5sRtJNbeAP; Fri, 20 Nov 2020 06:09:29 -0800
X-Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web09.24379.1605874967487972064
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Nov 2020 04:22:47 -0800
X-Received: by mail-lj1-f178.google.com with SMTP id h23so9798239ljg.13
        for <yocto@lists.yoctoproject.org>; Fri, 20 Nov 2020 04:22:47 -0800 (PST)
X-Gm-Message-State: TushhmgeXPfD0Q7bGgtFZgntx3618059AA=
X-Google-Smtp-Source: ABdhPJwlbEsvj/DQYcfZWN6gvZG3vVIQtTjIanzd8EPox+mOYouHQcyKPM6pRjQAUKuuycfXlfM8gTrYRJa0EnF38bo=
X-Received: by 2002:a2e:8711:: with SMTP id m17mr8750688lji.308.1605874965228;
 Fri, 20 Nov 2020 04:22:45 -0800 (PST)
MIME-Version: 1.0
References: <61df164e-fa3a-7517-33e8-db8ef0c8af92.ref@yahoo.com>
 <61df164e-fa3a-7517-33e8-db8ef0c8af92@yahoo.com>
 <CAMKF1sq=my8uXJwO93BwhEMiEZRyYGOCvv9BMuMCG8=DuGV-Ww@mail.gmail.com>
 <16488BC657DA2093.23836@lists.yoctoproject.org>
 <1648CCC040C7B594.8629@lists.yoctoproject.org>
 <6cbee24058e04c0d9f21fb9077fe94e9@Exchange.sewerin.de>
In-Reply-To: <6cbee24058e04c0d9f21fb9077fe94e9@Exchange.sewerin.de>
From: "Erik Boto" <erik.boto@gmail.com>
Date: Fri, 20 Nov 2020 13:22:34 +0100
X-OldMsgId: <CALNvYWNt6zK97wYbogV=RfT+_5w5Ho=-4H+nG9qOCjNiOiGEEA@mail.gmail.com>
Subject: Re: [yocto] Raspberry PI enabling MMC1
To: chuckkamas@yahoo.com
Cc: yocto@lists.yoctoproject.org
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=lists.yoctoproject.org; q=dns/txt; s=20140610; t=1605881369;
 bh=csnbKuR89V1thOejJyTmAcqboIEat2UkWjMsB+Q6aTQ=;
 h=Cc:Content-Type:Date:From:Subject:To;
 b=PpQj74i/i330TjRr7vBuayMkLNYyWTbjiGXTz62CnZ/u8UnRhEsD76rCeupnWPTQRS4
 bagcw7KgMAjSlayKxvXdA90oE0ZNl9Fykx4Y20bDe36E3KGj34/fsURD1L0o17qXvM18V
 HxU91Cw+eG62AxBqwSP3nAGQ8P6BVQHdwPw=
Return-Path: bounce+53643+51497+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of
 yocto@lists.yoctoproject.org designates 66.175.222.12 as permitted sender)
 receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <358d88c9958141799b9cc48ba8fa2843@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="4auY70uUnx4tKDxmMAvX"

--4auY70uUnx4tKDxmMAvX
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




--4auY70uUnx4tKDxmMAvX--
