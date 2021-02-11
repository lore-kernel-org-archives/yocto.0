Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
 by mx.groups.io with SMTP id smtpd.web09.8905.1613052054177736413
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Feb 2021 06:00:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=scjTc7Jj;
 spf=pass (domain: gmail.com, ip: 209.85.166.54, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f54.google.com with SMTP id s24so5747015iob.6
        for <yocto@lists.yoctoproject.org>; Thu, 11 Feb 2021 06:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rzJDCiXJ0YWQ/rikJ29Rb/8pAv18MVj7jgW7jUonj8A=;
        b=scjTc7JjuQEPtTWA3ZcUxMx0KpdcO3DC7nM17tsyFNg3oEoi+DmyWHfEOk6wX7npAY
         IQ4+3C7ikOwAMHCj4X5tITNCXzUiEP9z26M7KBQXShPbK5kxnaQ8tf2NqVOf4yIXkM2o
         NOdW12wCUIjhca24AgLqdxNsGHqJEC9XceldGjsE94QouBMLWq468rEe31kUhC0brEEs
         yVpXNJl+cRkSKLMTksAyCCwwES1tkf8muewGIVIcl5Di3zCrqEHcA/cXb/lVyo8aM2Cy
         nZ4wwf7eBX4P4mWTPQFvx3sCLbgTtpi1GCTTr9ZFJV+jQbyDC026uHkRAulJFFQoVntO
         229Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rzJDCiXJ0YWQ/rikJ29Rb/8pAv18MVj7jgW7jUonj8A=;
        b=I+FGIt38hfz7bFiXU2xLn8Th0xb2wqQjWv03RikriGDQIM6uj8ojcipvayMopFEkTZ
         +sHeUDqIhhQF5Rbo5aImF/pmV/9yfyVmvhQbSYzQwwMg0RWlAusFZ4/k0sd4Kz5M8awp
         0++tVlmhfXNqTN4QqxQbLJkC/K9lw2c+/PsJX4KHQ2PS/TVAX5NE1JcZNar2Vluvf1xv
         XbBbw0sJqYwEPZUiMr2kG6SN4lZ++9IgYrZrfktZzRY/VRcEr3BqT4XJDMRdrveUqiJG
         vxFJhFcHtKJe1DAI6H9QqcBIX75Hek77key+CZGr3GEj9lQfAv/d+H8seIf9fVMx+/ee
         tMrw==
X-Gm-Message-State: AOAM531i6VWiJO68ncchCAvPV13cSA/Ni/I+yUbWveaUBHC4gfN5X9AD
	2rQLa156JTmGp5m/vyyMu25EU/iCrXE3YoQ7MMk=
X-Google-Smtp-Source: ABdhPJxD5WAeorKuvwb0J3sbjEcjiPB3HYynczdLj7pvZLR5zn1dfUpJaHyyIXYFkoapkcSvmratCBl3jgcxmXW1XOA=
X-Received: by 2002:a6b:c913:: with SMTP id z19mr5506807iof.60.1613052053297;
 Thu, 11 Feb 2021 06:00:53 -0800 (PST)
MIME-Version: 1.0
References: <gBp3.1613049880489523374.fNiM@lists.yoctoproject.org>
In-Reply-To: <gBp3.1613049880489523374.fNiM@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 11 Feb 2021 15:00:41 +0100
Message-ID: <CAGAf8Lz0zrVjMwnpXxAwvOY=Ym52nroxpDDAZ+v9EPPHATZRxg@mail.gmail.com>
Subject: Re: [yocto] Enabling Serial console via uart1(serial1) in cm3(rpi3) kernel 5.4. #cm3 #dunfell
To: prashantsingh@dialtronics.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello Prashant,

Can you telnet to the target? And issue the following: cat /proc/cmdline

And post it here?

In the meantime, you can verify the issue with:
https://www.raspberrypi.org/documentation/configuration/cmdline-txt.md

Hope this helps,
Zee
_______

On Thu, Feb 11, 2021 at 2:24 PM <prashantsingh@dialtronics.com> wrote:
>
> Dear Team,
>
> I'm using poky-dunfell  to get os for my raspberrypi-cm3.
> I need to get the stdout data to serial console via uart1(serial1).
>
> I given change in my cmdline.txt as:   dwc_otg.lpm_enable=0 console=serial1,115200 consol=tty1 root=/dev/mmcblk0p2 rootfstype=ext4 rootwait kgdboc=serial0,115200
> and in  config.txt  as:
>
> dtoverlay=pi3-disable-bt
> dtparam=uart1=on
> # Enable UART
> enable_uart=1
> dtoverlay=uart1,txd1_pin=32,rxd1_pin=33
> core_freq=250
> force_turbo=1
>
> then also I'm not getting the serial output in my serial1.
>
> Please help to resolve this issue.
>
> Thanks & Regards.
> 
>
