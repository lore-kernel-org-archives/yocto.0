Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 523E0E006DB; Fri, 26 Sep 2014 06:33:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB6BCE0056A
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 06:33:27 -0700 (PDT)
Received: from comp-006-thk.localnet (unknown [46.170.72.194])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 106DD2B03837;
	Fri, 26 Sep 2014 15:33:23 +0200 (CEST)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: yocto@yoctoproject.org
Date: Fri, 26 Sep 2014 15:33:21 +0200
Message-ID: <9606779.IXITSfPP3q@comp-006-thk>
User-Agent: KMail/4.13.3 (Linux/3.16.2-201.fc20.x86_64; KDE/4.14.1; x86_64; ; )
In-Reply-To: <CAKC+oqWEzdLPS5+MgaXRa2g0erY6QU6Vjbbf=nOgQa0Du_pesw@mail.gmail.com>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
	<CAMCfZKGTajCrqFyeOj9SXLqckK-pvh4vLi6Zc_QyFXubkUxHOQ@mail.gmail.com>
	<CAKC+oqWEzdLPS5+MgaXRa2g0erY6QU6Vjbbf=nOgQa0Du_pesw@mail.gmail.com>
MIME-Version: 1.0
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
X-List-Received-Date: Fri, 26 Sep 2014 13:33:38 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Friday 26 of September 2014 15:17:52 TakkTakk wrote:
> ok, I removed uEnv.txt, pressed the boot switch.
> Starting kernel ... and hang.
> why - "Image Name:   Linux-3.14.0-yocto-standard " ?

I'd recommend switching to current master (what is to be 1.7 soon), ski=
pping=20
meta-beaglebone for now and build core-image-minimal. Then prepare SD c=
ard=20
image either manually or with wic and try booting that. I'm doing such =
builds=20
every couple of days, so far without too many problems.

Once you get that working, add meta-beaglebone layer, handpick kernel/u=
-boot=20
versions if needed, add whatever extra packages you need. Best if you d=
o it=20
step by step.

>=20
> U-Boot SPL 2013.04-dirty (Sep 09 2014 - 21:38:22)
> musb-hdrc: ConfigData=3D0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx=
,
> SoftConn) musb-hdrc: MHDRC RTL version 2.0
> musb-hdrc: setup fifo_mode 4
> musb-hdrc: 28/31 max ep, 16384/16384 memory
> USB Peripheral mode controller at 47401000 using PIO, IRQ 0
> musb-hdrc: ConfigData=3D0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx=
,
> SoftConn) musb-hdrc: MHDRC RTL version 2.0
> musb-hdrc: setup fifo_mode 4
> musb-hdrc: 28/31 max ep, 16384/16384 memory
> USB Host mode controller at 47401800 using PIO, IRQ 0
> OMAP SD/MMC: 0
> reading u-boot.img
> reading u-boot.img
>=20
>=20
> U-Boot 2013.04-dirty (Sep 09 2014 - 21:38:22)
>=20
> I2C:   ready
> DRAM:  512 MiB
> WARNING: Caches not enabled
> NAND:  No NAND device found!!!
> 0 MiB
> MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
> *** Warning - readenv() failed, using default environment
>=20
> musb-hdrc: ConfigData=3D0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx=
,
> SoftConn)
> musb-hdrc: MHDRC RTL version 2.0
> musb-hdrc: setup fifo_mode 4
> musb-hdrc: 28/31 max ep, 16384/16384 memory
> USB Peripheral mode controller at 47401000 using PIO, IRQ 0
> musb-hdrc: ConfigData=3D0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx=
,
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
> ** Unable to read file uEnv.txt **
> gpio: pin 55 (gpio 55) value is 1
> 4985736 bytes read in 957 ms (5 MiB/s)
> gpio: pin 56 (gpio 56) value is 1
> 24868 bytes read in 92 ms (263.7 KiB/s)
> Booting from mmc ...
> ## Booting kernel from Legacy Image at 80007fc0 ...
>    Image Name:   Linux-3.14.0-yocto-standard
>    Image Type:   ARM Linux Kernel Image (uncompressed)
>    Data Size:    4985672 Bytes =3D 4.8 MiB
>    Load Address: 80008000
>    Entry Point:  80008000
>    Verifying Checksum ... OK
> ## Flattened Device Tree blob at 80f80000
>    Booting using the fdt blob at 0x80f80000
>    XIP Kernel Image ... OK
> OK
>    Using Device Tree in place at 80f80000, end 80f89123
>=20
> Starting kernel ...
>=20
> 2014-09-25 14:18 GMT+02:00 Diego Sueiro <diego.sueiro@gmail.com>:
> > Takk,
> >=20
> > On Wed, Sep 24, 2014 at 5:20 PM, TakkTakk <tomek82221@gazeta.pl> wr=
ote:
> >> ok, i changed "bootz" to "bootm" and i kept S2 swith pressed.
> >> Yocto not booting, two leds D2, D3 is shining.
> >>=20
> >> Serial console output:
> >>=20
> >> U-Boot SPL 2013.04-dirty (Sep 09 2014 - 21:38:22)
> >> musb-hdrc: ConfigData=3D0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO=
 Tx,
> >> SoftConn)
> >> musb-hdrc: MHDRC RTL version 2.0
> >> musb-hdrc: setup fifo_mode 4
> >> musb-hdrc: 28/31 max ep, 16384/16384 memory
> >> USB Peripheral mode controller at 47401000 using PIO, IRQ 0
> >> musb-hdrc: ConfigData=3D0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO=
 Tx,
> >> SoftConn)
> >> musb-hdrc: MHDRC RTL version 2.0
> >> musb-hdrc: setup fifo_mode 4
> >> musb-hdrc: 28/31 max ep, 16384/16384 memory
> >> USB Host mode controller at 47401800 using PIO, IRQ 0
> >> OMAP SD/MMC: 0
> >> reading u-boot.img
> >> reading u-boot.img
> >>=20
> >>=20
> >> U-Boot 2013.04-dirty (Sep 09 2014 - 21:38:22)
> >>=20
> >> I2C:   ready
> >> DRAM:  512 MiB
> >> WARNING: Caches not enabled
> >> NAND:  No NAND device found!!!
> >> 0 MiB
> >> MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
> >> *** Warning - readenv() failed, using default environment
> >>=20
> >> musb-hdrc: ConfigData=3D0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO=
 Tx,
> >> SoftConn)
> >> musb-hdrc: MHDRC RTL version 2.0
> >> musb-hdrc: setup fifo_mode 4
> >> musb-hdrc: 28/31 max ep, 16384/16384 memory
> >> USB Peripheral mode controller at 47401000 using PIO, IRQ 0
> >> musb-hdrc: ConfigData=3D0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO=
 Tx,
> >> SoftConn)
> >> musb-hdrc: MHDRC RTL version 2.0
> >> musb-hdrc: setup fifo_mode 4
> >> musb-hdrc: 28/31 max ep, 16384/16384 memory
> >> USB Host mode controller at 47401800 using PIO, IRQ 0
> >> Net:   <ethaddr> not set. Validating first E-fuse MAC
> >> cpsw, usb_ether
> >> Hit any key to stop autoboot:  0
> >> gpio: pin 53 (gpio 53) value is 1
> >> mmc0 is current device
> >> micro SD card found
> >> mmc0 is current device
> >> gpio: pin 54 (gpio 54) value is 1
> >> SD/MMC found on device 0
> >> reading uEnv.txt
> >> 527 bytes read in 4 ms (127.9 KiB/s)
> >> Loaded environment from uEnv.txt
> >> Importing environment from mmc ...
> >> Running uenvcmd ...
> >> reading uImage
> >> 4368264 bytes read in 499 ms (8.3 MiB/s)
> >> reading /dtbs/am335x-boneblack.dtb
> >> 29192 bytes read in 10 ms (2.8 MiB/s)
> >> ## Booting kernel from Legacy Image at 80200000 ...
> >>=20
> >>    Image Name:   Linux-3.8.13
> >>    Image Type:   ARM Linux Kernel Image (uncompressed)
> >>    Data Size:    4368200 Bytes =3D 4.2 MiB
> >>    Load Address: 80008000
> >>    Entry Point:  80008000
> >>    Verifying Checksum ... OK
> >>=20
> >> ## Flattened Device Tree blob at 80f80000
> >>=20
> >>    Booting using the fdt blob at 0x80f80000
> >>    Loading Kernel Image ... OK
> >>=20
> >> OK
> >>=20
> >>    Using Device Tree in place at 80f80000, end 80f8a207
> >>=20
> >> Starting kernel ...
> >>=20
> >> Uncompressing Linux... done, booting the kernel.
> >=20
> > Hummm. That's strange.
> > I don't know if kernel 3.8.13 populate the serial debug interface a=
s ttyO0
> > or ttyS0.
> >=20
> > I think you can remove your uEnv.txt file from FAT partition and po=
werup
> > the board by pressing the boot switch,
> > The u-boot from meta-beagleboard doesn't need any extra configurati=
on.
> >=20
> >=20
> > Regards,
> >=20
> > --
> > *dS
> > Diego Sueiro
> >=20
> > Administrador do Embarcados
> > www.embarcados.com.br
> >=20
> > /*long live rock 'n roll*/

--=20

Maciej Borz=C4=99cki=20
Senior Software Engineer Open-RnD Sp. z o.o.=20
www.open-rnd.pl, Facebook, Twitter=20
mobile: +48 telefon, fax: +48 42 657 9079=20

Niniejsza wiadomo=C5=9B=C4=87 wraz z za=C5=82=C4=85cznikami mo=C5=BCe z=
awiera=C4=87 chronione prawem lub=20
poufne informacje i zosta=C5=82a wys=C5=82ana wy=C5=82=C4=85cznie do wi=
adomo=C5=9Bci i u=C5=BCytku os=C3=B3b, do=20
kt=C3=B3rych zosta=C5=82a zaadresowana. Je=C5=9Bli wiadomo=C5=9B=C4=87 =
zosta=C5=82a otrzymana przypadkowo=20
zabrania si=C4=99 jej kopiowania lub rozsy=C5=82ania do os=C3=B3b trzec=
ich. W takim przypadku=20
uprasza si=C4=99 o natychmiastowe zniszczenie wiadomo=C5=9Bci oraz poin=
formowanie=20
nadawcy o zaistnia=C5=82ej sytuacji za pomoc=C4=85 wiadomo=C5=9Bci zwro=
tnej. Dzi=C4=99kujemy.=20

This message, including any attachments hereto, may contain privileged =
or=20
confidential information and is sent solely for the attention and use o=
f the=20
intended addressee(s). If you are not an intended addressee, you may ne=
ither=20
use this message nor copy or deliver it to anyone. In such case, you sh=
ould=20
immediately destroy this message and kindly notify the sender by reply =
email.=20
Thank you. 

