Return-Path: <tomek82221@gazeta.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FABEE0076C; Fri, 26 Sep 2014 06:17:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tomek82221[at]gazeta.pl)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 244ECE00749
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 06:17:52 -0700 (PDT)
Received: by mail-qg0-f49.google.com with SMTP id q107so9012913qgd.22
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 06:17:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=ovubBpE6KwsZgcsG7xRbUU144pXm11R0LqYgFSjlCwk=;
	b=BFWkW5+fgq7t++NiuaE1MiXfy//NV8IOoWdneI8Z8bBte7q0tAEzoSg1jOm4rqW4ZU
	JL6yNqLHbHhtks3yxATOZphV8XKwkkWqp1SSP03KNA2y2BJzFl8TpGQ0l+ykIVvp4Kah
	xYwiWgvU3vObzP+fTS8UBBmWUTZC6rFK1HqbEgUHZwXdTcd7eK/uEjixcrr1EqO20GJB
	UbMqT5pBt9LfhYsiQIq6EftfFgzN5DgxiidluRDfdZVySFFJjGnrY21SXnwiCjZuTnk9
	SNof3tE+IL7z7/jdOVwwVN5/51+HqQueS8k5pi+VAtZjRTjGRgYbif4DZa5vz1bnY5Qb
	X+rA==
X-Gm-Message-State: ALoCoQlaBroR69PJeAKwZGaMbEjBMVlUPvCgZSZQ3nZeYn366D7AEJeEy666C6ITLB8890v/L6GX
MIME-Version: 1.0
X-Received: by 10.140.88.134 with SMTP id t6mr28998799qgd.12.1411737472148;
	Fri, 26 Sep 2014 06:17:52 -0700 (PDT)
Received: by 10.140.16.15 with HTTP; Fri, 26 Sep 2014 06:17:52 -0700 (PDT)
In-Reply-To: <CAMCfZKGTajCrqFyeOj9SXLqckK-pvh4vLi6Zc_QyFXubkUxHOQ@mail.gmail.com>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
	<CAMCfZKE0uEAXz6yDbqs5v1M4MX9LqCqGzv7+4XunNC=GFXbJpQ@mail.gmail.com>
	<CAKC+oqUbbj9oEeekE6SSqDbyTGBJnwaGGYWgeLLRJKS+QB6aMQ@mail.gmail.com>
	<CAMCfZKHQV6X1rL5+jEhjbMF8BYWzEm6XrT9MiD_8gT_uyeokww@mail.gmail.com>
	<CAKC+oqX=KmSUcAR=2Ngvnimq46QKzAo=N+gaTw+M496c-QGW2w@mail.gmail.com>
	<CAMCfZKHegx_E0SK=k+7bAAomjNCRMzTcg-ji4tf8aSRuoziWWw@mail.gmail.com>
	<CAKC+oqUhVfbL-5aNO-xm9y=t-avHdke21X9Gt6N3ge_YkEuYfw@mail.gmail.com>
	<CAMCfZKF=bqW=8zWFgCdrUKGtvZt6PrMa7NOpVRAUxLL+Gm6BtA@mail.gmail.com>
	<CAKC+oqVYWwraL2V28RCq0ESVwnHB+SqeHZAhQuZ8Ev82R2UqHQ@mail.gmail.com>
	<CAMCfZKF8_BWneiG1PpYoRp16=dwQqw6w5v=-REQ7dKC1_4SSPw@mail.gmail.com>
	<CAKC+oqW74-KjA3gfy+U+8SmDiLRx3Fm9OFZjs-LOB1+ffq=eAg@mail.gmail.com>
	<CAMCfZKEA8romBZk+HRP0tUc3eFBHF-tS9=FVcnkMTts5EXGhAA@mail.gmail.com>
	<CAKC+oqUeHaL20vE86SMiM9toTsg3=q0h0dfMY1PhUfkoJsGWFA@mail.gmail.com>
	<CAMCfZKGTajCrqFyeOj9SXLqckK-pvh4vLi6Zc_QyFXubkUxHOQ@mail.gmail.com>
Date: Fri, 26 Sep 2014 15:17:52 +0200
Message-ID: <CAKC+oqWEzdLPS5+MgaXRa2g0erY6QU6Vjbbf=nOgQa0Du_pesw@mail.gmail.com>
From: TakkTakk <tomek82221@gazeta.pl>
To: Diego Sueiro <diego.sueiro@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto 1.6 - beaglebone black - cape manager
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
X-List-Received-Date: Fri, 26 Sep 2014 13:17:57 -0000
Content-Type: text/plain; charset=UTF-8

ok, I removed uEnv.txt, pressed the boot switch.
Starting kernel ... and hang.
why - "Image Name:   Linux-3.14.0-yocto-standard " ?

U-Boot SPL 2013.04-dirty (Sep 09 2014 - 21:38:22)
musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx, SoftConn)
musb-hdrc: MHDRC RTL version 2.0
musb-hdrc: setup fifo_mode 4
musb-hdrc: 28/31 max ep, 16384/16384 memory
USB Peripheral mode controller at 47401000 using PIO, IRQ 0
musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx, SoftConn)
musb-hdrc: MHDRC RTL version 2.0
musb-hdrc: setup fifo_mode 4
musb-hdrc: 28/31 max ep, 16384/16384 memory
USB Host mode controller at 47401800 using PIO, IRQ 0
OMAP SD/MMC: 0
reading u-boot.img
reading u-boot.img


U-Boot 2013.04-dirty (Sep 09 2014 - 21:38:22)

I2C:   ready
DRAM:  512 MiB
WARNING: Caches not enabled
NAND:  No NAND device found!!!
0 MiB
MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
*** Warning - readenv() failed, using default environment

musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx,
SoftConn)
musb-hdrc: MHDRC RTL version 2.0
musb-hdrc: setup fifo_mode 4
musb-hdrc: 28/31 max ep, 16384/16384 memory
USB Peripheral mode controller at 47401000 using PIO, IRQ 0
musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx,
SoftConn)
musb-hdrc: MHDRC RTL version 2.0
musb-hdrc: setup fifo_mode 4
musb-hdrc: 28/31 max ep, 16384/16384 memory
USB Host mode controller at 47401800 using PIO, IRQ 0
Net:   <ethaddr> not set. Validating first E-fuse MAC
cpsw, usb_ether
Hit any key to stop autoboot:  0
gpio: pin 53 (gpio 53) value is 1
mmc0 is current device
micro SD card found
mmc0 is current device
gpio: pin 54 (gpio 54) value is 1
SD/MMC found on device 0
reading uEnv.txt
** Unable to read file uEnv.txt **
gpio: pin 55 (gpio 55) value is 1
4985736 bytes read in 957 ms (5 MiB/s)
gpio: pin 56 (gpio 56) value is 1
24868 bytes read in 92 ms (263.7 KiB/s)
Booting from mmc ...
## Booting kernel from Legacy Image at 80007fc0 ...
   Image Name:   Linux-3.14.0-yocto-standard
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    4985672 Bytes = 4.8 MiB
   Load Address: 80008000
   Entry Point:  80008000
   Verifying Checksum ... OK
## Flattened Device Tree blob at 80f80000
   Booting using the fdt blob at 0x80f80000
   XIP Kernel Image ... OK
OK
   Using Device Tree in place at 80f80000, end 80f89123

Starting kernel ...

2014-09-25 14:18 GMT+02:00 Diego Sueiro <diego.sueiro@gmail.com>:
> Takk,
>
> On Wed, Sep 24, 2014 at 5:20 PM, TakkTakk <tomek82221@gazeta.pl> wrote:
>>
>> ok, i changed "bootz" to "bootm" and i kept S2 swith pressed.
>> Yocto not booting, two leds D2, D3 is shining.
>>
>> Serial console output:
>>
>> U-Boot SPL 2013.04-dirty (Sep 09 2014 - 21:38:22)
>> musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx,
>> SoftConn)
>> musb-hdrc: MHDRC RTL version 2.0
>> musb-hdrc: setup fifo_mode 4
>> musb-hdrc: 28/31 max ep, 16384/16384 memory
>> USB Peripheral mode controller at 47401000 using PIO, IRQ 0
>> musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx,
>> SoftConn)
>> musb-hdrc: MHDRC RTL version 2.0
>> musb-hdrc: setup fifo_mode 4
>> musb-hdrc: 28/31 max ep, 16384/16384 memory
>> USB Host mode controller at 47401800 using PIO, IRQ 0
>> OMAP SD/MMC: 0
>> reading u-boot.img
>> reading u-boot.img
>>
>>
>> U-Boot 2013.04-dirty (Sep 09 2014 - 21:38:22)
>>
>> I2C:   ready
>> DRAM:  512 MiB
>> WARNING: Caches not enabled
>> NAND:  No NAND device found!!!
>> 0 MiB
>> MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
>> *** Warning - readenv() failed, using default environment
>>
>> musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx,
>> SoftConn)
>> musb-hdrc: MHDRC RTL version 2.0
>> musb-hdrc: setup fifo_mode 4
>> musb-hdrc: 28/31 max ep, 16384/16384 memory
>> USB Peripheral mode controller at 47401000 using PIO, IRQ 0
>> musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx,
>> SoftConn)
>> musb-hdrc: MHDRC RTL version 2.0
>> musb-hdrc: setup fifo_mode 4
>> musb-hdrc: 28/31 max ep, 16384/16384 memory
>> USB Host mode controller at 47401800 using PIO, IRQ 0
>> Net:   <ethaddr> not set. Validating first E-fuse MAC
>> cpsw, usb_ether
>> Hit any key to stop autoboot:  0
>> gpio: pin 53 (gpio 53) value is 1
>> mmc0 is current device
>> micro SD card found
>> mmc0 is current device
>> gpio: pin 54 (gpio 54) value is 1
>> SD/MMC found on device 0
>> reading uEnv.txt
>> 527 bytes read in 4 ms (127.9 KiB/s)
>> Loaded environment from uEnv.txt
>> Importing environment from mmc ...
>> Running uenvcmd ...
>> reading uImage
>> 4368264 bytes read in 499 ms (8.3 MiB/s)
>> reading /dtbs/am335x-boneblack.dtb
>> 29192 bytes read in 10 ms (2.8 MiB/s)
>> ## Booting kernel from Legacy Image at 80200000 ...
>>    Image Name:   Linux-3.8.13
>>    Image Type:   ARM Linux Kernel Image (uncompressed)
>>    Data Size:    4368200 Bytes = 4.2 MiB
>>    Load Address: 80008000
>>    Entry Point:  80008000
>>    Verifying Checksum ... OK
>> ## Flattened Device Tree blob at 80f80000
>>    Booting using the fdt blob at 0x80f80000
>>    Loading Kernel Image ... OK
>> OK
>>    Using Device Tree in place at 80f80000, end 80f8a207
>>
>> Starting kernel ...
>>
>> Uncompressing Linux... done, booting the kernel.
>
>
> Hummm. That's strange.
> I don't know if kernel 3.8.13 populate the serial debug interface as ttyO0
> or ttyS0.
>
> I think you can remove your uEnv.txt file from FAT partition and powerup the
> board by pressing the boot switch,
> The u-boot from meta-beagleboard doesn't need any extra configuration.
>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> Administrador do Embarcados
> www.embarcados.com.br
>
> /*long live rock 'n roll*/



-- 
TakTak

