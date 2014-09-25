Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4D3FE0086F; Thu, 25 Sep 2014 05:18:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98C33E0086B
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 05:18:31 -0700 (PDT)
Received: by mail-qa0-f41.google.com with SMTP id cm18so4572504qab.28
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 05:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=QQWQOR9/lzai8oaZqnS3QWqJBmEdbXpT5wrGw0iSoh8=;
	b=nDqaUk27hO8DI8Q69xC31Z+AIkjL6Mn1bY7fPtAUAscu1mogx1XW+UygfkAx+SJyaO
	2qwQKIavp90hjDmxNPVaMx3MAJ5NS4BJkW25hJzFDfA9HpHPmkVipz46TKmxbz4Voe2c
	riq+leDjHBIcY9S6hXD151iA+hc5AYQrLkDCZwrkm2ldSf4DFAVTO0ppQ/kklCxT80N/
	mqu5QrzKya3vIbiP6BmdyhsvOLqGoMa3OY6LN4Z4uJ2xTuO7sLu1lV956tsI+GZmHVqJ
	LAzgsJNxXUq42t5PZNgNrzTrkTxRFyDarro+eCt58Yli5ddx319naSo2dwPlROVSqDLC
	fHOg==
X-Received: by 10.140.16.194 with SMTP id 60mr10156603qgb.105.1411647508049;
	Thu, 25 Sep 2014 05:18:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.83 with HTTP; Thu, 25 Sep 2014 05:18:07 -0700 (PDT)
In-Reply-To: <CAKC+oqUeHaL20vE86SMiM9toTsg3=q0h0dfMY1PhUfkoJsGWFA@mail.gmail.com>
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
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 25 Sep 2014 09:18:07 -0300
Message-ID: <CAMCfZKGTajCrqFyeOj9SXLqckK-pvh4vLi6Zc_QyFXubkUxHOQ@mail.gmail.com>
To: TakkTakk <tomek82221@gazeta.pl>
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
X-List-Received-Date: Thu, 25 Sep 2014 12:18:34 -0000
Content-Type: multipart/alternative; boundary=001a11c0a65443f65c0503e2cc89

--001a11c0a65443f65c0503e2cc89
Content-Type: text/plain; charset=ISO-8859-1

Takk,

On Wed, Sep 24, 2014 at 5:20 PM, TakkTakk <tomek82221@gazeta.pl> wrote:

> ok, i changed "bootz" to "bootm" and i kept S2 swith pressed.
> Yocto not booting, two leds D2, D3 is shining.
>
> Serial console output:
>
> U-Boot SPL 2013.04-dirty (Sep 09 2014 - 21:38:22)
> musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx,
> SoftConn)
> musb-hdrc: MHDRC RTL version 2.0
> musb-hdrc: setup fifo_mode 4
> musb-hdrc: 28/31 max ep, 16384/16384 memory
> USB Peripheral mode controller at 47401000 using PIO, IRQ 0
> musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx,
> SoftConn)
> musb-hdrc: MHDRC RTL version 2.0
> musb-hdrc: setup fifo_mode 4
> musb-hdrc: 28/31 max ep, 16384/16384 memory
> USB Host mode controller at 47401800 using PIO, IRQ 0
> OMAP SD/MMC: 0
> reading u-boot.img
> reading u-boot.img
>
>
> U-Boot 2013.04-dirty (Sep 09 2014 - 21:38:22)
>
> I2C:   ready
> DRAM:  512 MiB
> WARNING: Caches not enabled
> NAND:  No NAND device found!!!
> 0 MiB
> MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
> *** Warning - readenv() failed, using default environment
>
> musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx,
> SoftConn)
> musb-hdrc: MHDRC RTL version 2.0
> musb-hdrc: setup fifo_mode 4
> musb-hdrc: 28/31 max ep, 16384/16384 memory
> USB Peripheral mode controller at 47401000 using PIO, IRQ 0
> musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx,
> SoftConn)
> musb-hdrc: MHDRC RTL version 2.0
> musb-hdrc: setup fifo_mode 4
> musb-hdrc: 28/31 max ep, 16384/16384 memory
> USB Host mode controller at 47401800 using PIO, IRQ 0
> Net:   <ethaddr> not set. Validating first E-fuse MAC
> cpsw, usb_ether
> Hit any key to stop autoboot:  0
> gpio: pin 53 (gpio 53) value is 1
> mmc0 is current device
> micro SD card found
> mmc0 is current device
> gpio: pin 54 (gpio 54) value is 1
> SD/MMC found on device 0
> reading uEnv.txt
> 527 bytes read in 4 ms (127.9 KiB/s)
> Loaded environment from uEnv.txt
> Importing environment from mmc ...
> Running uenvcmd ...
> reading uImage
> 4368264 bytes read in 499 ms (8.3 MiB/s)
> reading /dtbs/am335x-boneblack.dtb
> 29192 bytes read in 10 ms (2.8 MiB/s)
> ## Booting kernel from Legacy Image at 80200000 ...
>    Image Name:   Linux-3.8.13
>    Image Type:   ARM Linux Kernel Image (uncompressed)
>    Data Size:    4368200 Bytes = 4.2 MiB
>    Load Address: 80008000
>    Entry Point:  80008000
>    Verifying Checksum ... OK
> ## Flattened Device Tree blob at 80f80000
>    Booting using the fdt blob at 0x80f80000
>    Loading Kernel Image ... OK
> OK
>    Using Device Tree in place at 80f80000, end 80f8a207
>
> Starting kernel ...
>
> Uncompressing Linux... done, booting the kernel.
>

Hummm. That's strange.
I don't know if kernel 3.8.13 populate the serial debug interface as ttyO0
or ttyS0.

I think you can remove your uEnv.txt file from FAT partition and powerup
the board by pressing the boot switch,
The u-boot from meta-beagleboard doesn't need any extra configuration.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c0a65443f65c0503e2cc89
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Takk,</div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Wed, Sep 24, 2014 at 5:20 PM, Takk=
Takk <span dir=3D"ltr">&lt;<a href=3D"mailto:tomek82221@gazeta.pl" target=
=3D"_blank">tomek82221@gazeta.pl</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div id=3D":bcg" class=3D"a3s" style=3D"overflow:hidden">ok, =
i changed &quot;bootz&quot; to &quot;bootm&quot; and i kept S2 swith presse=
d.<br>
Yocto not booting, two leds D2, D3 is shining.<br>
<br>
Serial console output:<br>
<br>
U-Boot SPL 2013.04-dirty (Sep 09 2014 - 21:38:22)<br>
musb-hdrc: ConfigData=3D0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx, Soft=
Conn)<br>
musb-hdrc: MHDRC RTL version 2.0<br>
musb-hdrc: setup fifo_mode 4<br>
musb-hdrc: 28/31 max ep, 16384/16384 memory<br>
USB Peripheral mode controller at 47401000 using PIO, IRQ 0<br>
musb-hdrc: ConfigData=3D0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx, Soft=
Conn)<br>
musb-hdrc: MHDRC RTL version 2.0<br>
musb-hdrc: setup fifo_mode 4<br>
musb-hdrc: 28/31 max ep, 16384/16384 memory<br>
USB Host mode controller at 47401800 using PIO, IRQ 0<br>
OMAP SD/MMC: 0<br>
reading u-boot.img<br>
reading u-boot.img<br>
<br>
<br>
U-Boot 2013.04-dirty (Sep 09 2014 - 21:38:22)<br>
<br>
I2C:=A0 =A0ready<br>
DRAM:=A0 512 MiB<br>
WARNING: Caches not enabled<br>
NAND:=A0 No NAND device found!!!<br>
0 MiB<br>
MMC:=A0 =A0OMAP SD/MMC: 0, OMAP SD/MMC: 1<br>
*** Warning - readenv() failed, using default environment<br>
<br>
musb-hdrc: ConfigData=3D0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx, Soft=
Conn)<br>
musb-hdrc: MHDRC RTL version 2.0<br>
musb-hdrc: setup fifo_mode 4<br>
musb-hdrc: 28/31 max ep, 16384/16384 memory<br>
USB Peripheral mode controller at 47401000 using PIO, IRQ 0<br>
musb-hdrc: ConfigData=3D0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx, Soft=
Conn)<br>
musb-hdrc: MHDRC RTL version 2.0<br>
musb-hdrc: setup fifo_mode 4<br>
musb-hdrc: 28/31 max ep, 16384/16384 memory<br>
USB Host mode controller at 47401800 using PIO, IRQ 0<br>
Net:=A0 =A0&lt;ethaddr&gt; not set. Validating first E-fuse MAC<br>
cpsw, usb_ether<br>
Hit any key to stop autoboot:=A0 0<br>
gpio: pin 53 (gpio 53) value is 1<br>
mmc0 is current device<br>
micro SD card found<br>
mmc0 is current device<br>
gpio: pin 54 (gpio 54) value is 1<br>
SD/MMC found on device 0<br>
reading uEnv.txt<br>
527 bytes read in 4 ms (127.9 KiB/s)<br>
Loaded environment from uEnv.txt<br>
Importing environment from mmc ...<br>
Running uenvcmd ...<br>
reading uImage<br>
4368264 bytes read in 499 ms (8.3 MiB/s)<br>
reading /dtbs/am335x-boneblack.dtb<br>
29192 bytes read in 10 ms (2.8 MiB/s)<br>
## Booting kernel from Legacy Image at 80200000 ...<br>
=A0 =A0Image Name:=A0 =A0Linux-3.8.13<br>
=A0 =A0Image Type:=A0 =A0ARM Linux Kernel Image (uncompressed)<br>
=A0 =A0Data Size:=A0 =A0 4368200 Bytes =3D 4.2 MiB<br>
=A0 =A0Load Address: 80008000<br>
=A0 =A0Entry Point:=A0 80008000<br>
=A0 =A0Verifying Checksum ... OK<br>
## Flattened Device Tree blob at 80f80000<br>
=A0 =A0Booting using the fdt blob at 0x80f80000<br>
=A0 =A0Loading Kernel Image ... OK<br>
OK<br>
=A0 =A0Using Device Tree in place at 80f80000, end 80f8a207<br>
<br>
Starting kernel ...<br>
<br>
Uncompressing Linux... done, booting the kernel.</div></blockquote></div><d=
iv class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Hummm. That&#=
39;s strange.</div><div class=3D"gmail_extra">I don&#39;t know if kernel 3.=
8.13 populate the serial debug interface as ttyO0 or ttyS0.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">I think you can remov=
e your uEnv.txt file from FAT partition and powerup the board by pressing t=
he boot switch,</div><div class=3D"gmail_extra">The u-boot from meta-beagle=
board doesn&#39;t need any extra configuration.</div><br><br clear=3D"all">=
<div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego =
Sueiro<br><br>Administrador do Embarcados<br><a href=3D"http://www.embarcad=
os.com.br/?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;utm_ca=
mpaign=3DAssinatura%20Email%20Diego" target=3D"_blank">www.embarcados.com.b=
r</a><br><br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a11c0a65443f65c0503e2cc89--
