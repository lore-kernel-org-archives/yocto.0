Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00C6EE0076C; Thu, 25 Sep 2014 12:33:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F6F0E0074B
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 12:33:43 -0700 (PDT)
Received: from comp-006-thk.localnet (unknown [78.8.239.243])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 2C6E929485AE;
	Thu, 25 Sep 2014 21:33:40 +0200 (CEST)
From: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
To: TakkTakk <tomek82221@gazeta.pl>
Date: Thu, 25 Sep 2014 21:33:39 +0200
Message-ID: <2019208.A6F5DtciUY@comp-006-thk>
User-Agent: KMail/4.13.3 (Linux/3.16.2-201.fc20.x86_64; KDE/4.14.1; x86_64; ; )
In-Reply-To: <CAMCfZKGTajCrqFyeOj9SXLqckK-pvh4vLi6Zc_QyFXubkUxHOQ@mail.gmail.com>
References: <CAKC+oqU3-ZQc34489BrPYOVr05JOke=dHUkCruPLfV+LODWDVQ@mail.gmail.com>
	<CAKC+oqUeHaL20vE86SMiM9toTsg3=q0h0dfMY1PhUfkoJsGWFA@mail.gmail.com>
	<CAMCfZKGTajCrqFyeOj9SXLqckK-pvh4vLi6Zc_QyFXubkUxHOQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 25 Sep 2014 19:33:46 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Thursday 25 of September 2014 09:18:07 Diego Sueiro wrote:
> Takk,
>=20
> On Wed, Sep 24, 2014 at 5:20 PM, TakkTakk <tomek82221@gazeta.pl> wrot=
e:
> > ok, i changed "bootz" to "bootm" and i kept S2 swith pressed.
> > Yocto not booting, two leds D2, D3 is shining.
> >=20
> > Serial console output:
> >=20
> > U-Boot SPL 2013.04-dirty (Sep 09 2014 - 21:38:22)
> > musb-hdrc: ConfigData=3D0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO =
Tx,
> > SoftConn)
> > musb-hdrc: MHDRC RTL version 2.0
> > musb-hdrc: setup fifo_mode 4
> > musb-hdrc: 28/31 max ep, 16384/16384 memory
> > USB Peripheral mode controller at 47401000 using PIO, IRQ 0
> > musb-hdrc: ConfigData=3D0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO =
Tx,
> > SoftConn)
> > musb-hdrc: MHDRC RTL version 2.0
> > musb-hdrc: setup fifo_mode 4
> > musb-hdrc: 28/31 max ep, 16384/16384 memory
> > USB Host mode controller at 47401800 using PIO, IRQ 0
> > OMAP SD/MMC: 0
> > reading u-boot.img
> > reading u-boot.img
> >=20
> >=20
> > U-Boot 2013.04-dirty (Sep 09 2014 - 21:38:22)
> >=20
> > I2C:   ready
> > DRAM:  512 MiB
> > WARNING: Caches not enabled
> > NAND:  No NAND device found!!!
> > 0 MiB
> > MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
> > *** Warning - readenv() failed, using default environment
> >=20
> > musb-hdrc: ConfigData=3D0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO =
Tx,
> > SoftConn)
> > musb-hdrc: MHDRC RTL version 2.0
> > musb-hdrc: setup fifo_mode 4
> > musb-hdrc: 28/31 max ep, 16384/16384 memory
> > USB Peripheral mode controller at 47401000 using PIO, IRQ 0
> > musb-hdrc: ConfigData=3D0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO =
Tx,
> > SoftConn)
> > musb-hdrc: MHDRC RTL version 2.0
> > musb-hdrc: setup fifo_mode 4
> > musb-hdrc: 28/31 max ep, 16384/16384 memory
> > USB Host mode controller at 47401800 using PIO, IRQ 0
> > Net:   <ethaddr> not set. Validating first E-fuse MAC
> > cpsw, usb_ether
> > Hit any key to stop autoboot:  0
> > gpio: pin 53 (gpio 53) value is 1
> > mmc0 is current device
> > micro SD card found
> > mmc0 is current device
> > gpio: pin 54 (gpio 54) value is 1
> > SD/MMC found on device 0
> > reading uEnv.txt
> > 527 bytes read in 4 ms (127.9 KiB/s)
> > Loaded environment from uEnv.txt
> > Importing environment from mmc ...
> > Running uenvcmd ...
> > reading uImage
> > 4368264 bytes read in 499 ms (8.3 MiB/s)
> > reading /dtbs/am335x-boneblack.dtb
> > 29192 bytes read in 10 ms (2.8 MiB/s)
> > ## Booting kernel from Legacy Image at 80200000 ...
> >=20
> >    Image Name:   Linux-3.8.13
> >    Image Type:   ARM Linux Kernel Image (uncompressed)
> >    Data Size:    4368200 Bytes =3D 4.2 MiB
> >    Load Address: 80008000
> >    Entry Point:  80008000
> >    Verifying Checksum ... OK
> >=20
> > ## Flattened Device Tree blob at 80f80000
> >=20
> >    Booting using the fdt blob at 0x80f80000
> >    Loading Kernel Image ... OK
> >=20
> > OK
> >=20
> >    Using Device Tree in place at 80f80000, end 80f8a207
> >=20
> > Starting kernel ...
> >=20
> > Uncompressing Linux... done, booting the kernel.
>=20
> Hummm. That's strange.
> I don't know if kernel 3.8.13 populate the serial debug interface as =
ttyO0
> or ttyS0.

You could try console=3DttyS0 or console=3DttyO0 in kernel command line=
.
=20
>=20
> I think you can remove your uEnv.txt file from FAT partition and powe=
rup
> the board by pressing the boot switch,
> The u-boot from meta-beagleboard doesn't need any extra configuration=
.


>=20
>=20
> Regards,
>=20
> --
> *dS
> Diego Sueiro
>=20
> Administrador do Embarcados
> www.embarcados.com.br
> <http://www.embarcados.com.br/?utm_source=3Dassinatura_diego&utm_medi=
um=3De-mail
> &utm_campaign=3DAssinatura%20Email%20Diego>
>=20
> /*long live rock 'n roll*/

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

