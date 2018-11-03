Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BA13E00AB3; Sat,  3 Nov 2018 07:38:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
	[209.85.222.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2C5DE008D7
	for <yocto@yoctoproject.org>; Sat,  3 Nov 2018 07:38:30 -0700 (PDT)
Received: by mail-qk1-f194.google.com with SMTP id d19so7769468qkg.5
	for <yocto@yoctoproject.org>; Sat, 03 Nov 2018 07:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=0lZN5FTp7rgMr+mm6tutxBHUR4zGeWbKyTYVjnW+5zA=;
	b=valQNGl0dLzKUJkoYo8USzfM8FwF8MUECAimuUf79bMvevtVvapcrVKO1h7CxDqaRW
	5wjFo92hJ5JDSGq5HESLEQ5UNB9cutljGjWIkKumXYFKVVQ76y5ndFoeFYGqdVBpwDNq
	GwtuJyeza87Hz9v9saP9cU8Lu+5aSqZGH12nvL7qYoFOtFza+9kVPJOXH+D6RHPkLNkG
	OfQTGLr4k2StGhCojtHsewB3LYaRUvEtSQ9ZsCWNgCQQS+wFt/HsF8wi+/U3+prV19Do
	zV+mYZyXG79ao2g1ZgHwpONGgxOyCnmzd3NC1eCkuBIL1xrOZJw3ZBfy2+JpO2IqQ8FF
	025Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=0lZN5FTp7rgMr+mm6tutxBHUR4zGeWbKyTYVjnW+5zA=;
	b=XS/gQ7mgNQsPN1L9baIoMwSixA8F+aNwwS1tC9um2dio7GUD0xAqXuiGmKyeV4E5QC
	DpK4z/1W2u3aPj8WX+vdB8xtn2N0boLOj8AVLy2l8OY/A5X1nUDx4a4zE5RiTaSLC119
	gKUnM9byuD4M8XFUYu/ib6dYyUw+mqj5DASCiuebSGm49Wk/K69A5ZaZB0jjMFwIaBW5
	a+cwfcGV8S6UN62jMJjyqs4KrdflJVm857DMO149Gp1k9uKeA3nUW4X4Vt4pC51oYZHP
	a7P9N7OJN2QuFy2j1CgZYYoop8T/yixn1g/0KrGXiQveU627e3hQPPBj10fAcv9RqpIr
	P3Aw==
X-Gm-Message-State: AGRZ1gLpOSYo7WQW+JipvHD4URRtxoNbHb2o5KK9FATmVI60sxIoAZ58
	q+DgdfKxA4IUfiRfLp4UZUN2aGn0tSQgjYLBA6/c0q8z
X-Google-Smtp-Source: AJdET5fnFmW6zsfHsZfeW3YYKcARivFGA9c8ctc0jdwcWu8Wy6Wc1H9ivMyp2Vimot6bG93Rsy34ZRmazbGCqrzdpl0=
X-Received: by 2002:a0c:98a1:: with SMTP id f30mr9625105qvd.224.1541255909588; 
	Sat, 03 Nov 2018 07:38:29 -0700 (PDT)
MIME-Version: 1.0
References: <6c9102d2-91dc-41be-3aec-ab60d4688af5@denx.de>
	<20181101021854.GT24227@pek-khao-d2>
	<13692616-30d3-1bae-71b7-1ed2373a9a61@denx.de>
	<20181102085916.GA31329@pek-khao-d2>
	<CAMKF1sov=e1z8wH0ckXozz3RK1Uz-7Ja+uzguqTTCxBPHiipyw@mail.gmail.com>
	<20181103083713.GA4438@pek-khao-d2>
In-Reply-To: <20181103083713.GA4438@pek-khao-d2>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 3 Nov 2018 07:38:02 -0700
Message-ID: <CAMKF1sqXH163nBB30Njm9kb7OgFVzx_i2rnRaAzdy3mCiCLYuQ@mail.gmail.com>
To: Kevin Hao <kexin.hao@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: thud, beaglebone-yocto.conf: SERIAL_CONSOLES setting
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 03 Nov 2018 14:38:32 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Nov 3, 2018 at 1:38 AM Kevin Hao <kexin.hao@windriver.com> wrote:
>
> On Fri, Nov 02, 2018 at 07:27:04AM -0700, Khem Raj wrote:
> > On Fri, Nov 2, 2018 at 2:02 AM Kevin Hao <kexin.hao@windriver.com> wrote:
> > >
> > > On Fri, Nov 02, 2018 at 09:01:34AM +0100, Heiko Schocher wrote:
> > > > Hello Kevin,
> > > >
> > > > Am 01.11.2018 um 03:18 schrieb Kevin Hao:
> > > > > On Wed, Oct 31, 2018 at 02:23:00PM +0100, Heiko Schocher wrote:
> > > > > > Hello all,
> > > > > >
> > > > > > just builded core-image-minimal with current head of thud branch for
> > > > > > the beaglebone-yocto machine, with linux 4.14.x LTS "Linux version 4.14.78",
> > > > > > installed the resulting sd card image and boot it, and get:
> > > > > >
> > > > > > INIT: Id "O0" respawning too fast: disabled for
> > > > > > 5 minutes
> > > > > >
> > > > > > Reason seems to be:
> > > > > >
> > > > > > meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > > > >
> > > > > > SERIAL_CONSOLES = "115200;ttyO0"
> > > > > >
> > > > > > shouldn't this be
> > > > > >
> > > > > > SERIAL_CONSOLES = "115200;ttyS0"
> > > > > >
> > > > > > With this fix, sd card image boot fine ... may I oversee seomthing
> > > > > > obvious ?
> > > > >
> > > > > No, it should be 'ttyO0'. It is set by the omap serial driver. You can
> > > > > refer the following in platform_data/serial-omap.h:
> > > > >    #define OMAP_SERIAL_NAME        "ttyO"
> > > >
> > > > Yes, you are right, but I see with linux kernel 4.14.78 from
> > > >
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=linux-4.14.y&id=e7405910ca5553eae8744af4e5c03e64ee048cb1
> > > >
> > > > and I see:
> > > >
> > > > [    0.000000] Linux version 4.14.78 (oe-user@oe-host) (gcc version 8.2.0
> > > > (GCC)) #1 Thu Nov 1 10:51:09 UTC 2018
> > > > [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c5387d
> > > > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
> > > > [    0.000000] OF: fdt: Machine model: TI AM335x BeagleBone Black
> > > > [...]
> > > > [    0.362878] Serial: 8250/16550 driver, 6 ports, IRQ sharing disabled
> > > > [    0.365758] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq = 30, base_baud = 3000000) is a 8250
> > > > [    1.030465] console [ttyS0] enabled
> > > >
> > > > So definitely a ttyS0 ...
> > >
> > > OK, so you don't use the linux-yocto kernel, you must not use the Yocto kernel
> > > meta either.
> >
> > I dont think there is such a rule.
>
> I don't get what you mean about such a rule. I didn't say anything about that.

re-read carefully what you wrote above and hopefully you will understand


> I just pointed out why Heiko get stuck by that issue and how to workaround it.
>
> > meta-yocto-bsps are meant as
> > references and people might want to enhance them.
>
> Of course, that is also why we are continually working on it.
>

your answer did not indicate that.

> >
> >  The reason that you got a ttyS0 here is that you use the
> > > 8250_omap.c driver. But in Yocto we use the omap-serial.c driver. You can
> > > workaround this issue by enabling SERIAL_8250_OMAP_TTYO_FIXUP.
> > >
> >
> > omap serial is obsolete why does linux-yocto keeps using it.
>
> I guess that the original reason that we use this should be something like the
> comments in the omap-serial.c:
>  * Note: This driver is made separate from 8250 driver as we cannot
>  * over load 8250 driver with omap platform specific configuration for
>  * features like DMA, it makes easier to implement features like DMA and
>  * hardware flow control and software flow control configuration with
>  * this driver as required for the omap-platform.
>
> Yes, it has been a long time since the comments were written and even before the
> birth of the 8250_omap.c. But I am just not sure that the 8250_omap driver
> is mature enough so we can switch to it safely and we also don't get any serial
> issue so far. That is why we leave it as is. And it also seem that the omap-serial.c
> is also enabled by default in both the multi_v7_defconfig and omap2plus_defconfig
> in the latest kernel:
>   $ git grep "CONFIG_SERIAL_OMAP" arch/arm/
>   arch/arm/configs/multi_v7_defconfig:CONFIG_SERIAL_OMAP=y
>   arch/arm/configs/multi_v7_defconfig:CONFIG_SERIAL_OMAP_CONSOLE=y
>   arch/arm/configs/omap2plus_defconfig:CONFIG_SERIAL_OMAP=y
>   arch/arm/configs/omap2plus_defconfig:CONFIG_SERIAL_OMAP_CONSOLE=y
>
> But if you are pretty sure that the 8250_omap.c is mature enough and also
> provide more functions than omap-serial.c, please send a patch and we can
> definitely switch the serial driver to that.

if you are in doubt always ask the source, in this case you could ask TI folks.

>
> > seondly, machine config should enable both consoles ttyO0 and ttyS0 if
> > you know that at least one kernel is using ttyO0
>
> Yes, this is an option to fix this issue. Do you mind send a patch?
>

I do not mind but I do not use this BSP layer, have no way to test it.

> Thanks,
> Kevin
> >
> > > Thanks,
> > > Kevin
> > >
> > > >
> > > > bye,
> > > > Heiko
> > > > >
> > > > > Thanks,
> > > > > Kevin
> > > > >
> > > > > >
> > > > > > bye,
> > > > > > Heiko
> > > > > > --
> > > > > > DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> > > > > > HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> > > > > > Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de
> > > > > > --
> > > > > > _______________________________________________
> > > > > > yocto mailing list
> > > > > > yocto@yoctoproject.org
> > > > > > https://lists.yoctoproject.org/listinfo/yocto
> > > >
> > > > --
> > > > DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> > > > HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> > > > Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto

