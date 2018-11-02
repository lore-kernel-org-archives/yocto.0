Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07679E00A4F; Fri,  2 Nov 2018 07:27:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4004AE00971
	for <yocto@yoctoproject.org>; Fri,  2 Nov 2018 07:27:31 -0700 (PDT)
Received: by mail-qk1-f194.google.com with SMTP id a132so3346012qkg.1
	for <yocto@yoctoproject.org>; Fri, 02 Nov 2018 07:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8jvFGRpxwVL49uYXyEjr2WghbEVDS/3AWCTsRXPuVHI=;
	b=idN9TT9lv94V0nRBa8yOVD8ZufI9NJJuwnRn/wuA9z6nFQXdOu81rZnKjUTOkjbavk
	sST/9YwZ/0baP3YyZnDzBgJUWnqibXParZPRzuPJU7l3sduBfWsRrysg08rddDH5QivA
	Nd63tN2TW0qEVS/S/l2v5d9KGtCNd1Lttx5Pu+E1f/r1W06IHtnG+cLS99b99usUtBNL
	K3DPyqmDFZprQfyURa8qGUG5ZGpHqvNyhylX6zKDcUi33BfIdlQUssWowIFnLmUI8R/Y
	ApIzGYBazwDrqY0gIWF7DSScgAs6UP1NPxKzNxDzW0Xd+2Jgsr4GsxqJvivbCfuQ9dCZ
	vRWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8jvFGRpxwVL49uYXyEjr2WghbEVDS/3AWCTsRXPuVHI=;
	b=OX1OxZujKXb+krrMrvUVdc/TWQ16koCkiFg2dSVWLcltprrzuJ045VEqCn53y/7nNL
	8oh7Hjd3QddJUGl9gyS885ooZH4H7a0Z7E1e3nKTdmleJ469zxI7v2r+6wdG5KQusWTH
	CcqHlTynBOnjoI45/Xa1XSO+acYToE05cp7I/uQAeAgFIor0XPnW/PWpK1lHJh3HjCDw
	g1JwovqZd02ORQl5aPuOOUJnkSfd3PXeZUDSBKHCzLuE+5ynL6By7LDJSB4Vw5zGvA+g
	Eza29BUjAhKPZKn1wU+o7bbxFLlQSchUwn7/WH8d6xSSeC3RsIEH0ykdklB7Y7Y2edQA
	pj6w==
X-Gm-Message-State: AGRZ1gLUXRz7riPns/f6RI7HC322i3JpswqLMAgaTKetjGhI7jR2cWYs
	blNV0ZWFRamSAO8Zi3k1rkfNj1xd6pTMAfHWew0TvCQu
X-Google-Smtp-Source: AJdET5esrVjhLg1HHn+vdfok0wysjniQE2+4Er6SAe0Z72VjYlwV9bMhKAsOKTAcWHQBLKXBizoHp+4/A+p1wQAA0q8=
X-Received: by 2002:a37:d408:: with SMTP id l8mr10666844qki.315.1541168850307; 
	Fri, 02 Nov 2018 07:27:30 -0700 (PDT)
MIME-Version: 1.0
References: <6c9102d2-91dc-41be-3aec-ab60d4688af5@denx.de>
	<20181101021854.GT24227@pek-khao-d2>
	<13692616-30d3-1bae-71b7-1ed2373a9a61@denx.de>
	<20181102085916.GA31329@pek-khao-d2>
In-Reply-To: <20181102085916.GA31329@pek-khao-d2>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 2 Nov 2018 07:27:04 -0700
Message-ID: <CAMKF1sov=e1z8wH0ckXozz3RK1Uz-7Ja+uzguqTTCxBPHiipyw@mail.gmail.com>
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
X-List-Received-Date: Fri, 02 Nov 2018 14:27:33 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Nov 2, 2018 at 2:02 AM Kevin Hao <kexin.hao@windriver.com> wrote:
>
> On Fri, Nov 02, 2018 at 09:01:34AM +0100, Heiko Schocher wrote:
> > Hello Kevin,
> >
> > Am 01.11.2018 um 03:18 schrieb Kevin Hao:
> > > On Wed, Oct 31, 2018 at 02:23:00PM +0100, Heiko Schocher wrote:
> > > > Hello all,
> > > >
> > > > just builded core-image-minimal with current head of thud branch for
> > > > the beaglebone-yocto machine, with linux 4.14.x LTS "Linux version 4.14.78",
> > > > installed the resulting sd card image and boot it, and get:
> > > >
> > > > INIT: Id "O0" respawning too fast: disabled for
> > > > 5 minutes
> > > >
> > > > Reason seems to be:
> > > >
> > > > meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > >
> > > > SERIAL_CONSOLES = "115200;ttyO0"
> > > >
> > > > shouldn't this be
> > > >
> > > > SERIAL_CONSOLES = "115200;ttyS0"
> > > >
> > > > With this fix, sd card image boot fine ... may I oversee seomthing
> > > > obvious ?
> > >
> > > No, it should be 'ttyO0'. It is set by the omap serial driver. You can
> > > refer the following in platform_data/serial-omap.h:
> > >    #define OMAP_SERIAL_NAME        "ttyO"
> >
> > Yes, you are right, but I see with linux kernel 4.14.78 from
> >
> > https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=linux-4.14.y&id=e7405910ca5553eae8744af4e5c03e64ee048cb1
> >
> > and I see:
> >
> > [    0.000000] Linux version 4.14.78 (oe-user@oe-host) (gcc version 8.2.0
> > (GCC)) #1 Thu Nov 1 10:51:09 UTC 2018
> > [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c5387d
> > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
> > [    0.000000] OF: fdt: Machine model: TI AM335x BeagleBone Black
> > [...]
> > [    0.362878] Serial: 8250/16550 driver, 6 ports, IRQ sharing disabled
> > [    0.365758] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq = 30, base_baud = 3000000) is a 8250
> > [    1.030465] console [ttyS0] enabled
> >
> > So definitely a ttyS0 ...
>
> OK, so you don't use the linux-yocto kernel, you must not use the Yocto kernel
> meta either.

I dont think there is such a rule. meta-yocto-bsps are meant as
references and people might want to enhance them.

 The reason that you got a ttyS0 here is that you use the
> 8250_omap.c driver. But in Yocto we use the omap-serial.c driver. You can
> workaround this issue by enabling SERIAL_8250_OMAP_TTYO_FIXUP.
>

omap serial is obsolete why does linux-yocto keeps using it.
seondly, machine config should enable both consoles ttyO0 and ttyS0 if
you know that at least one kernel is using ttyO0

> Thanks,
> Kevin
>
> >
> > bye,
> > Heiko
> > >
> > > Thanks,
> > > Kevin
> > >
> > > >
> > > > bye,
> > > > Heiko
> > > > --
> > > > DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> > > > HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> > > > Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de
> > > > --
> > > > _______________________________________________
> > > > yocto mailing list
> > > > yocto@yoctoproject.org
> > > > https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> > HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> > Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

