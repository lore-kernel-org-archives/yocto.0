Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web09.2783.1576558154441136326
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 20:49:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DtyFNCr3;
 spf=pass (domain: gmail.com, ip: 209.85.160.177, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id k40so1837862qtk.8
        for <yocto@lists.yoctoproject.org>; Mon, 16 Dec 2019 20:49:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xR//UNZFGi8moLZhqPEp4y3CJJ4RlUbUda6c0vOYVio=;
        b=DtyFNCr3uf0dqh04k3GFOtE9wjuH9BPiBGWXRG3ZgJs+VVJY7spqsf/GdHnZSzDai4
         dozdGliVN6TCXdIq+9n5asflHEoBunV01Ad99K7NGHTPotKZHiKC+uCIcJmaBu8zZLAo
         obyYWUWQKu55jVFnYY6ZImIXc7tb+s4po/dioZPx4oQTa3Y9xmqYkKItfqiFWU2NfLoS
         ncsTt0rmK8+8Tsmi1zMmCHw8GwiHC7CVt+6svuhFWVy90KdVlO9FUVj/J2UJjevdnzXo
         2PdlCh4kZRGwGonqw+BUi+6gR50/hACMbZ/Nq/HP4t1ZCb10f9joJLenubMvKA7T6hvi
         CPeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xR//UNZFGi8moLZhqPEp4y3CJJ4RlUbUda6c0vOYVio=;
        b=or64QVkNmieWaW2kGC3kYP5wRzpbH0Swwz4bt6CKb0bxtovStLIkz9lWPlzWe3Ad8S
         k0ZIxv0W2PXcD100exCj/8O8zqW2u+yEmNIQQzPvSyr/o04WelMg8VFjoY3P2J3A2xV9
         Wspcsxr61Hylhwgn/H56W/yT8vWf6pSEkwlkxtcUGBVHizZRrAlpgi5QPOPHhCP9cGpK
         Ai7MUJCL8ar7M5GnPHb1HtvZcjMxVXeZBA/C7sj9PtmGHB1OCNzorvxTv9E+nhhZmbFF
         bPQ7ekRoiKtEdKG4nzgpe1qPbwVG3TSDM0aXEg5uIVPENhidEU+OVyuc8TDzXHhN54kK
         sicw==
X-Gm-Message-State: APjAAAUMKUJyWSBXGtOcUfiXZsQqpK4fSUoJsp3sozpTJpim9Wr+IxzH
	+/1LumX6fvNmnCkvAb/pIfAlkmgD5BuCYZqXYW8=
X-Google-Smtp-Source: APXvYqzZIOLgxVblv0Zahq+Z1kSpt/l7MsTGI3jS0TgG+7syctCpPZnUTQ7T67H/IDHCHGr6qZTPI7t7zi0J6DiJYtc=
X-Received: by 2002:ac8:145:: with SMTP id f5mr2793132qtg.194.1576558153155;
 Mon, 16 Dec 2019 20:49:13 -0800 (PST)
MIME-Version: 1.0
References: <W5UD.1576533409237003637.6umO@lists.yoctoproject.org>
In-Reply-To: <W5UD.1576533409237003637.6umO@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 16 Dec 2019 20:48:46 -0800
Message-ID: <CAMKF1sqYnuJ_QY6uyw1jTrVwni=oeOECrtx7LJVvVFnEq3xsFA@mail.gmail.com>
Subject: Re: [yocto] #raspberrypi
To: wojciech.st@tutanota.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Mon, Dec 16, 2019 at 1:56 PM <wojciech.st@tutanota.com> wrote:
>
> Problem with rootfs boot on my raspberrypi.
>
> Hi
> I am building simple image for my raspbery pi 3 A+ and connect to the pi via USB-UART converter and see the following in the console
> ...
> [ 2.071459] Run /bin/init as init process
> [ 2.076507] Run /bin/sh as init process
> sh: cannot set terminal process group (-1): Inappropriate ioctl for device
> sh: no job control in this shell
> sh-4.4#
>
>
>
> I build with the "bitbake core-image-base" and tried to run it on rpi 3A+, 3B, 3B+ and the problem is always the same it cannot switch to the rootfs on the sd card it seem like it stack at initramfs or some middle ground.
>
> I burn the *.rpi-sdimg image to SD card with dd from my Ubuntu16.04 host machine.
> I tried with two branches thud and warrior and the problem is exactly the same.
> The strange thing is that in this initramfs there are no tools like find grep modprobe etc. but I see my extra tools "i2c-tools vim"
>
> Here is my local.conf adjustments:
> MACHINE ?= "raspberrypi3"
> ENABLE_I2C = "1"
> ENABLE_UART = "1"
> IMAGE_INSTALL += "i2c-tools vim"

Can you turn this into
IMAGE_INSTALL_append = " i2c-tools vim"

>
> and the bblayer.conf
> BBLAYERS ?= " \
>   /media/dave/Develop/yoctopi/warrior/sources/poky/meta \
>   /media/dave/Develop/yoctopi/warrior/sources/poky/meta-poky \
>   /media/dave/Develop/yoctopi/warrior/sources/poky/meta-yocto-bsp \
>   /media/dave/Develop/yoctopi/warrior/sources/meta-openembedded/meta-oe \
>   /media/dave/Develop/yoctopi/warrior/sources/meta-raspberrypi \
>   "
>
> I tried also to build with the deprecated image "bitbake rpi-basic-image" but then I did not get my extra tools "i2c-tools vim".
>
> Anyone have any idea what can be wrong with my approach ?
>
> Regards,
>
> Wojciech
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47702): https://lists.yoctoproject.org/g/yocto/message/47702
> Mute This Topic: https://lists.yoctoproject.org/mt/68744766/1997914
> Mute #raspberrypi: https://lists.yoctoproject.org/mk?hashtag=raspberrypi&subid=6692173
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
