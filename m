Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web11.3140.1616356101030805149
 for <yocto@lists.yoctoproject.org>;
 Sun, 21 Mar 2021 12:48:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SIyXkjg0;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id kk2-20020a17090b4a02b02900c777aa746fso7403201pjb.3
        for <yocto@lists.yoctoproject.org>; Sun, 21 Mar 2021 12:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=qhEmba0qDVTrZpsP2YbVaiYFIuJYPdfb3ViGpa3o9As=;
        b=SIyXkjg0iFxQ43UVs3P6Nc+ZBFRgyux5lVTHTIPxyveFzxKTVNLc0RnlCVmUrtoO7X
         U20zo/hHYa09+CFSOQcmkCdRnbEuNYEAL6ckScRdEEzMtyaylKDR4FoigR0zDKBunEx2
         NOgIu8Tr61iVCmCfdyykLBEW43ELE1Vtqm1Q1+yjNr5URFnLLvdA4v+zWaOqLZsgmu6+
         qsr8xr8wzqt7Q1tmsGx7OsylNfS6phMLP+fd3Dk5F1m76MQ5Xr5vf8n6oxi/Dk+GKcDp
         JBhHL6K2sH15UYNmnKUw+Tx5QKLIAsNS9xzx8ff8tmyPPfkL3NcysxCtGriplEMcO4Vv
         Klzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=qhEmba0qDVTrZpsP2YbVaiYFIuJYPdfb3ViGpa3o9As=;
        b=CA/m+QknE+I7gvFdO90tI7OdFWpH/BIS7A6BNdv/HZSxI9MLTj1uag/lmbSGxiWwOV
         RLMd2egjEONhoQaQAxTMqWoxvU7b0TgBLdsX3InGD+7rvXLTJ0XVDbqssv67EQbQjk2r
         nWnySsr6jDu7SKGJgtXgEhHBuDfGyzMyCRxPSeTRk9OJNTRU8o3R4FNb2VX6ONUxfbo3
         GObP50eT7o39qKflPTSwuNQUC8WBwFdSRazee3RL808E0R0HjFL8itqd8vN5Aj3kx09V
         xt5asTO16nMexsTcUj1KTHLEsBq/EmOnaw0e6taEN3x9V/1ELpN3nZ+E+sxEvzYrfk7o
         CbAw==
X-Gm-Message-State: AOAM533DpdGQ8ks4gHo5B2HUMDq6kbj6g1+pmUoMSqH0hTrEzBBdxIAo
	gnq2jUPIpbjuPjmJ3GHVkZvhYV0NJruILIjeNcE=
X-Google-Smtp-Source: ABdhPJzSMt1qSDRHS2Ie7puwT1RNoLqSeKN/aEdyRtkmJM8STFm2jzYxLSCTSGj/rh1C2HO/9DZHs7ULhhvQs01OCf0=
X-Received: by 2002:a17:902:b28b:b029:e6:375:69b0 with SMTP id
 u11-20020a170902b28bb02900e6037569b0mr24236608plr.25.1616356100014; Sun, 21
 Mar 2021 12:48:20 -0700 (PDT)
MIME-Version: 1.0
References: <aabf284011d330a7f236b77b39963b93@vivaldi.net> <CAGAf8Lx7kc0ORJpi-XrYOGERLGGAs7RwxgiG8gtM4i1ShDMy-g@mail.gmail.com>
 <37f6a78e6f0df8502f3df7201354f931@vivaldi.net> <CAGAf8LwWHLjHNmG5v9xtpzgJnsUfYnLn5RCnCr+uKFhBH=QWCA@mail.gmail.com>
 <c451ff742c7fd6debcc9a8dbb02c88a2@vivaldi.net>
In-Reply-To: <c451ff742c7fd6debcc9a8dbb02c88a2@vivaldi.net>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Sun, 21 Mar 2021 20:48:08 +0100
Message-ID: <CAGAf8Lwat=0oSauF7aziR+mALYe1PdzqS-pnXRW_oB0UugZahg@mail.gmail.com>
Subject: Re: [yocto] spidev.c ?
To: jchludzinski <jchludzinski@vivaldi.net>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>  // interrupt-parent =3D <&intc>;
>  // interrupts =3D <0 24 IRQ_TYPE_EDGE_FALLING>;

Not sure if you did represent these values correctly?!

I have for enc28j60:something like this:
interrupt-parent =3D <&gpio2>;
interrupts =3D <1 IRQ_TYPE_EDGE_FALLING>;

Where <&gpio2> is gpio chip name (the gpio port 2),
and <1 IRQ_TYPE_EDGE_FALLING>;is pin 1 of port 2 (32 pins for ports
from port 0).

<&intc> should be an INT controller.
Since <0 24 IRQ_TYPE_EDGE_FALLING>; you are trying to represent 0 as
port #, 24 as pin #...

I have no idea how many pins you have per gpio port? 16? 32?

You should carefully analyse and try to understand if you wrote this
device tree sequence correctly.

But I am just guessing now...

Zee
_______

On Sat, Mar 20, 2021 at 11:02 PM jchludzinski <jchludzinski@vivaldi.net> wr=
ote:
>
> Using 'make nconfig' I selected the following options:
> (Keep in mind I using an Altera/Intel Arria 10 SoC which uses DesignWare =
hard SPI controllers. BUT the SPI controllers I'm concerned with now are so=
ft controllers defined in the FPGA code).
>
>                      .config - Linux/arm 5.4.74 Kernel Configuration
>  =E2=94=8C=E2=94=80=E2=94=80 SPI support =E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
>  =E2=94=82                                                               =
                                                                     =E2=94=
=82
>  =E2=94=82                            --- SPI support                    =
                                                                     =E2=94=
=82
>  =E2=94=82                            [*]   Debug support for SPI drivers=
                                                                     =E2=94=
=82
>  =E2=94=82                            -*-   SPI memory extension         =
                                                                     =E2=94=
=82
>  =E2=94=82                                  *** SPI Master Controller Dri=
vers ***                                                             =E2=94=
=82
>  =E2=94=82                            <M>   Altera SPI Controller
>
> ...
>
>  =E2=94=82                            <*>   Utilities for Bitbanging SPI =
masters                                                              =E2=94=
=82
>  =E2=94=82                            < >   Cadence SPI controller       =
                                                                     =E2=94=
=82
>  =E2=94=82                            < >   CLPS711X host SPI controller =
                                                                     =E2=94=
=82
>  =E2=94=82                            <*>   DesignWare SPI controller cor=
e support                                                            =E2=94=
=82
>  =E2=94=82                            <*>     PCI interface driver for DW=
 SPI core                                                            =E2=94=
=82
>  =E2=94=82                            <*>     Memory-mapped io interface =
driver for DW SPI core                                               =E2=94=
=82
>
> ...
>
>  =E2=94=82                                  *** SPI Protocol Masters *** =
                                                                     =E2=94=
=82
>  =E2=94=82                            <M>   User mode SPI device driver s=
upport                                                               =E2=94=
=82
>  =E2=94=82                            <M>   spi loopback test framework s=
upport                                                               =E2=94=
=82
>  =E2=94=82                            < >   Infineon TLE62X0 (for power s=
witching)                                                            =E2=94=
=82
>  =E2=94=82                            [*]   SPI slave protocol handlers  =
                                                                     =E2=94=
=82
>  =E2=94=82                            <M>     SPI slave handler reporting=
 boot up time                                                        =E2=94=
=82
>  =E2=94=82                            <M>     SPI slave handler controlli=
ng system state                                                      =E2=94=
=82
>
> This got the SPI nodes to show up in /sys/firmware/devicetree/ but there =
were no udev files (/dev/spidevXX). So I commented out the 'interrupts' in =
the DTSI file and the udev files appeared?
>
> spi2: spi@0xc00c0800 { // hps_spi_1553_int
>    address-cells =3D <0x1>;
>    #size-cells =3D <0x0>;
>    reg =3D <0xc00c0800 0x20>;
>    // interrupt-parent =3D <&intc>;
>    // interrupts =3D <0 24 IRQ_TYPE_EDGE_FALLING>;
>    num-cs =3D <0x1>;
>    status =3D "okay";
>
>    spidev@0 {
>       compatible =3D "rohm,dh2228fv";
>       #address-cells =3D <0x1>;
>       #size-cells =3D <0x0>;
>       reg =3D <0x0>;
>       spi-max-frequency =3D <0x1f400>;
>       // enable-dma =3D <0x1>;
>    };
> };
>
> BUT I need those interrupts. Thoughts and/or suggestions?
>
> ---John
>
>
>
> On 2021-03-19 01:10, Zoran wrote:
>
> Hello John,
>
> It seems that your target is configured correctly. Since you have all
> the components you should and must have as SPI framework.
>
> Namely I was looking for /sys/bus (since you must have an SPI bus
> driver), and then /sys/class (since as my best understanding is that
> SPI is a master/slave device), you must have class/). Others are
> assumed, you added debug directories.
>
> When I separately build spidev.c as an .ko and try
> loading it, I get: "Device or resource busy"
>
>
> This is understandable, since you already have included spidev.ko as
> menuconfig value Y, so it is already present in the kernel, but as a
> built-in part of the kernel (my best guess).
>
> root@arria10:~# lsmod
> Module                  Size  Used by
> spi_altera             16384  0
> spidev                 20480  0
>
>
> I see that you did change the menuconfig, and made spidev to be M.
>
> What I also see is that there are no dependencies between spidev and
> spi_altera. This is what you really wanted?
>
> But there are NO udev files for the SPI devices
> defined in the DTSI file.
>
>
> Could you, please, better explain this sentence? In more details (as
> much as you can)?
>
> Thank you,
> Zee
> _______
>
>
> On Thu, Mar 18, 2021 at 10:07 PM jchludzinski <jchludzinski@vivaldi.net> =
wrote:
>
>
> root@arria10:~# find /sys/ -name 'spi*'
>
> /sys/kernel/debug/clk/spi_m_clk
> /sys/kernel/debug/tracing/events/spi
> /sys/kernel/debug/tracing/events/spi/spi_controller_idle
> /sys/kernel/debug/tracing/events/spi/spi_controller_busy
>
> ...
>
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
> <jchludzinski=3Dvivaldi.net@lists.yoctoproject.org> wrote:
>
>
> In the YOCTO/Linux source tree there's drivers/spi/ which has all the sou=
rce for SPI drivers. There's only 1 file, spidev.c, which has:
>
> static int __init spidev_init(void)
> {
>         int status;
>
>         /* Claim our 256 reserved device numbers.  Then register a class
>          * that will key udev/mdev to add/remove /dev nodes.  Last, regis=
ter
>          * the driver which manages those device numbers.
>          */
>         BUILD_BUG_ON(N_SPI_MINORS > 256);
>         status =3D register_chrdev(SPIDEV_MAJOR, "spi", &spidev_fops);
>         if (status < 0)
>                 return status;
>
>         spidev_class =3D class_create(THIS_MODULE, "spidev");
>         if (IS_ERR(spidev_class)) {
>                 unregister_chrdev(SPIDEV_MAJOR, spidev_spi_driver.driver.=
name);
>                 return PTR_ERR(spidev_class);
>         }
>
>         status =3D spi_register_driver(&spidev_spi_driver);
>         if (status < 0) {
>                 class_destroy(spidev_class);
>                 unregister_chrdev(SPIDEV_MAJOR, spidev_spi_driver.driver.=
name);
>         }
>         return status;
> }
> module_init(spidev_init);
>
> ... for creating device files in udev.
>
> So when I use 'make nconfig' to specifiy that I want a loadable module fo=
r the ALTERA SPI driver, why don't I see a spidev.o file in drivers/spi/ ?
>
> How does spi-altera.ko create device files without a call to register_chr=
dev(...).
>
> How is it a loadable module without module_init(...)?
>
> When I separately build spidev.c as an .ko and try loading it, I get: "De=
vice or resourse busy"
>
> ---John
