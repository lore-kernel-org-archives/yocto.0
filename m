Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
 by mx.groups.io with SMTP id smtpd.web09.2290.1616130655834630035
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Mar 2021 22:10:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=In8GPan1;
 spf=pass (domain: gmail.com, ip: 209.85.166.52, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f52.google.com with SMTP id v3so4801097ioq.2
        for <yocto@lists.yoctoproject.org>; Thu, 18 Mar 2021 22:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PIZaL8ozrVwwe0XVMhaqyu4RQhhylqzJSdWkMUMMpBg=;
        b=In8GPan1DY41qNKAozv3eVU+B7TnYXEUrbg/SgmOtPcO5LuPF32egO21pC5xZrmJff
         8+dhBmR2xzZQPej0Z11Xvs7e7iIb7UfGmXb5cf+uFDwcW9Jshfu2Pcgz97sgEYPy2QNx
         J/zQailTnpj7cu11zvTs6j8ZkmhfV2TFM8rNlVKdE2Hx0aKJ0oqEdKJ7NOUHg3uoLfMU
         xaMjmELYa9TfQHgPB47uM+n9LE4sOgCVjCuqWsRhPZVDFhvrce79Os2SKAKkIxWXCMjO
         8k1ffQwG3DDUIJ3iDl6/Tzxl0TBSjjEDesz3EphDAeJF8Q5kjcF8ZwFPSBnPfRur+RiP
         JjIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PIZaL8ozrVwwe0XVMhaqyu4RQhhylqzJSdWkMUMMpBg=;
        b=Z6JZa/tx54byPJVjX+eUqZWS+tFVBjHn/9vtnKPSKJcE9jvlGX24Sr2pj+0oCEeADo
         lk8ps2ow2l79YHi0KziFgWTqp5lCB8PVmnBgHlXlX3uAR79zNnt8NOKyhMP23yb0CYOb
         zzG1obDDJ05UVyZ3oy6v76fcFmQcpirJWEfi/hPjK5KNWVyrO7DQPufAFIZ1zonblsk3
         v6BWuaVnLvql1EhKrN/THTjth7LrBAiGoHht3lQCCgyn/8laD2ugfXw3rV/ABrwoVDU1
         sZd3S+3j0ACGtE/F9zrtnzJQRLRcL39NHSVTLFmPd6CZmDZkkYp0/UW3rXjWKZ74HWIH
         bCMw==
X-Gm-Message-State: AOAM5336LHxaQH7GnwoMwUfWj+6giUeaScxzUbvihsvHaQjNewDmOcwV
	4sdj/7gDPayRJMEzWFZHpbVYmYPXJuViE/tAo2k=
X-Google-Smtp-Source: ABdhPJyplyo0HpZJcMUjGwrXJMNoTEA4MmWoXMLomhMgu1rLa/Iv1DP9I7MlmJIcXdm6K46zmy8oL/sJsyC+Dvhmhts=
X-Received: by 2002:a02:cb8f:: with SMTP id u15mr9699562jap.45.1616130654878;
 Thu, 18 Mar 2021 22:10:54 -0700 (PDT)
MIME-Version: 1.0
References: <aabf284011d330a7f236b77b39963b93@vivaldi.net> <CAGAf8Lx7kc0ORJpi-XrYOGERLGGAs7RwxgiG8gtM4i1ShDMy-g@mail.gmail.com>
 <37f6a78e6f0df8502f3df7201354f931@vivaldi.net>
In-Reply-To: <37f6a78e6f0df8502f3df7201354f931@vivaldi.net>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 19 Mar 2021 06:10:43 +0100
Message-ID: <CAGAf8LwWHLjHNmG5v9xtpzgJnsUfYnLn5RCnCr+uKFhBH=QWCA@mail.gmail.com>
Subject: Re: [yocto] spidev.c ?
To: jchludzinski <jchludzinski@vivaldi.net>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello John,

It seems that your target is configured correctly. Since you have all
the components you should and must have as SPI framework.

Namely I was looking for /sys/bus (since you must have an SPI bus
driver), and then /sys/class (since as my best understanding is that
SPI is a master/slave device), you must have class/). Others are
assumed, you added debug directories.

> When I separately build spidev.c as an .ko and try
> loading it, I get: "Device or resource busy"

This is understandable, since you already have included spidev.ko as
menuconfig value Y, so it is already present in the kernel, but as a
built-in part of the kernel (my best guess).

> root@arria10:~# lsmod
> Module                  Size  Used by
> spi_altera             16384  0
> spidev                 20480  0

I see that you did change the menuconfig, and made spidev to be M.

What I also see is that there are no dependencies between spidev and
spi_altera. This is what you really wanted?

> But there are NO udev files for the SPI devices
> defined in the DTSI file.

Could you, please, better explain this sentence? In more details (as
much as you can)?

Thank you,
Zee
_______


On Thu, Mar 18, 2021 at 10:07 PM jchludzinski <jchludzinski@vivaldi.net> wrote:
>
> root@arria10:~# find /sys/ -name 'spi*'
>
> /sys/kernel/debug/clk/spi_m_clk
> /sys/kernel/debug/tracing/events/spi
> /sys/kernel/debug/tracing/events/spi/spi_controller_idle
> /sys/kernel/debug/tracing/events/spi/spi_controller_busy
> /sys/kernel/debug/tracing/events/spi/spi_message_submit
> /sys/kernel/debug/tracing/events/spi/spi_message_start
> /sys/kernel/debug/tracing/events/spi/spi_message_done
> /sys/kernel/debug/tracing/events/spi/spi_transfer_start
> /sys/kernel/debug/tracing/events/spi/spi_transfer_stop
> /sys/kernel/debug/regmap/spi0.0
> /sys/devices/platform/soc/ffda5000.spi/spi_master
> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0
> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0
> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/statistics/spi_sync
> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/statistics/spi_async
> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/spi0.0/statistics/spi_sync_immediate
> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/statistics/spi_sync
> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/statistics/spi_async
> /sys/devices/platform/soc/ffda5000.spi/spi_master/spi0/statistics/spi_sync_immediate
> /sys/class/spidev
> /sys/class/spi_master
> /sys/class/spi_master/spi0
> /sys/firmware/devicetree/base/__symbols__/spi2
> /sys/firmware/devicetree/base/__symbols__/spi0
> /sys/firmware/devicetree/base/__symbols__/spin_ctrl_1
> /sys/firmware/devicetree/base/__symbols__/spi_m_clk
> /sys/firmware/devicetree/base/__symbols__/spi1
> /sys/firmware/devicetree/base/__symbols__/spin_ctrl_2
> /sys/firmware/devicetree/base/soc/spi@ff809000
> /sys/firmware/devicetree/base/soc/spi@ffda5000
> /sys/firmware/devicetree/base/soc/spi@ffda5000/resource-manager@0/spi-max-frequency
> /sys/firmware/devicetree/base/soc/clkmgr@ffd04000/clocks/spi_m_clk
> /sys/firmware/devicetree/base/soc/spi@ffda4000
> /sys/firmware/devicetree/base/spi@0xc00c0800
> /sys/firmware/devicetree/base/spi@0xc00c0800/spidev@0
> /sys/firmware/devicetree/base/spi@0xc00c0800/spidev@0/spi-max-frequency
> /sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@200/spin-controller
> /sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@200/spin-rph
> /sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@100/spin-controller
> /sys/firmware/devicetree/base/testcase-data-2/fairway-1/ride@100/spin-controller-names
> /sys/firmware/devicetree/base/testcase-data-2/substation@100/motor-1/spin
> /sys/bus/platform/drivers/spi_altera
> /sys/bus/spi
> /sys/bus/spi/devices/spi0.0
> /sys/bus/spi/drivers/spi-nor
> /sys/bus/spi/drivers/altr_a10sr/spi0.0
> /sys/bus/spi/drivers/spidev
> /sys/module/spidev
> /sys/module/spidev/drivers/spi:spidev
> /sys/module/spi_altera
>
>
>
>
> On 2021-03-18 03:44, Zoran wrote:
>
> I am guessing here.... But what do you have while executing the
> following command being in /sys
>  as root?
>
> root@arm:/sys# find . -name spi*
>
> Zee
> _______
>
> On Wed, Mar 17, 2021 at 5:41 PM jchludzinski via
> lists.yoctoproject.org
> <jchludzinski=vivaldi.net@lists.yoctoproject.org> wrote:
>
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
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#52762): https://lists.yoctoproject.org/g/yocto/message/52762
> Mute This Topic: https://lists.yoctoproject.org/mt/81407811/5071304
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> [jchludzinski@vivaldi.net]
