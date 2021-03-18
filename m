Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
 by mx.groups.io with SMTP id smtpd.web08.5981.1616053510056758893
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Mar 2021 00:45:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NifiOAiY;
 spf=pass (domain: gmail.com, ip: 209.85.166.43, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f43.google.com with SMTP id v3so1295867ioq.2
        for <yocto@lists.yoctoproject.org>; Thu, 18 Mar 2021 00:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zsLtdu4ieNBtrGbfRQuBqlyKgyRCJSumgsispn7uiD0=;
        b=NifiOAiY2ifsFIUc7b3UYKUY0JsQ2KRNFGqUVDn7PDWZ9CnMqo07lNXcZ/1EVvSwh/
         FyYmpF5phvNC9koVSKkHbDaq+vpZ5YRuD9r+AbA2o1kxxZTaetpYE/xtUlP2GU6o7u/l
         vOOms9wlU5TXiAZVNJQzWhySCeiID+Fuc/IapXBQzgq3kKyrdidm+qFB3HGMvr7FyQLR
         93m0lR9qRJBFTd5hOEfNM2R5Jh/PkY+1HAgrfDu694cmbz+G4qh4M4SXpYs7hLCCxeB8
         mHK04tdIeYc3kZOJk3E4v2gjHbSFwy8FP6ws5YayRIPYw8OHAspBQJTzybk1EHy6aSkZ
         dDsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zsLtdu4ieNBtrGbfRQuBqlyKgyRCJSumgsispn7uiD0=;
        b=nNm2hP4ZezwHVgMzwcmWZVkEgFzgZiCOopHYYKnXmgeZJW/N/3YhobAqYMR6kr2Ku6
         H0HOGgmJiTSpieK9NBZ1tmpuixp8qGCmOKQ03ybUIhJeSGk8ttdlpK2mJtYgHDWpBQ/d
         mAgLbTHiwy0A9MN1ZoYpSUCKMe2iM2UmW/VTSXo6s2o4gvkOtr2kUrF4SRdgybd+gsXr
         qdriM0wPCLNS12paOlS8E1xx4tHAmy7+nhIpFpq3O4PExONHz71KKI7VcJ5pG+sClDYw
         9x2T9XaXUtm7uc2HVumX958G/J+nW61gdzzbPJEBfp5PA43w+Jkjc9uDGaDqhZblUl6i
         TaOg==
X-Gm-Message-State: AOAM532JtGrppUvARhdCAAEgERwqPc/x2xKtoMg/WNSYnbvQ2v79uZAX
	T3K0Z6Ov0sVegvBLxevm0KyK9RWvHLg8tGmBgpI=
X-Google-Smtp-Source: ABdhPJzfLCFefH5d5p5G955yDLHjq4Swe22EBIlX9+ttItCOj3m4iIcDNhftVJLcEkIePrHAY4PeUHzB41P5nT3MlWs=
X-Received: by 2002:a05:6638:d4e:: with SMTP id d14mr6046856jak.103.1616053509110;
 Thu, 18 Mar 2021 00:45:09 -0700 (PDT)
MIME-Version: 1.0
References: <aabf284011d330a7f236b77b39963b93@vivaldi.net>
In-Reply-To: <aabf284011d330a7f236b77b39963b93@vivaldi.net>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 18 Mar 2021 08:44:57 +0100
Message-ID: <CAGAf8Lx7kc0ORJpi-XrYOGERLGGAs7RwxgiG8gtM4i1ShDMy-g@mail.gmail.com>
Subject: Re: [yocto] spidev.c ?
To: jchludzinski@vivaldi.net
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

I am guessing here.... But what do you have while executing the
following command being in /sys
 as root?

root@arm:/sys# find . -name spi*

Zee
_______

On Wed, Mar 17, 2021 at 5:41 PM jchludzinski via
lists.yoctoproject.org
<jchludzinski=vivaldi.net@lists.yoctoproject.org> wrote:
>
> In the YOCTO/Linux source tree there's drivers/spi/ which has all the source for SPI drivers. There's only 1 file, spidev.c, which has:
>
> static int __init spidev_init(void)
> {
>         int status;
>
>         /* Claim our 256 reserved device numbers.  Then register a class
>          * that will key udev/mdev to add/remove /dev nodes.  Last, register
>          * the driver which manages those device numbers.
>          */
>         BUILD_BUG_ON(N_SPI_MINORS > 256);
>         status = register_chrdev(SPIDEV_MAJOR, "spi", &spidev_fops);
>         if (status < 0)
>                 return status;
>
>         spidev_class = class_create(THIS_MODULE, "spidev");
>         if (IS_ERR(spidev_class)) {
>                 unregister_chrdev(SPIDEV_MAJOR, spidev_spi_driver.driver.name);
>                 return PTR_ERR(spidev_class);
>         }
>
>         status = spi_register_driver(&spidev_spi_driver);
>         if (status < 0) {
>                 class_destroy(spidev_class);
>                 unregister_chrdev(SPIDEV_MAJOR, spidev_spi_driver.driver.name);
>         }
>         return status;
> }
> module_init(spidev_init);
>
> ... for creating device files in udev.
>
> So when I use 'make nconfig' to specifiy that I want a loadable module for the ALTERA SPI driver, why don't I see a spidev.o file in drivers/spi/ ?
>
> How does spi-altera.ko create device files without a call to register_chrdev(...).
>
> How is it a loadable module without module_init(...)?
>
> When I separately build spidev.c as an .ko and try loading it, I get: "Device or resourse busy"
>
> ---John
>
> 
>
