Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A008E00AB3; Sat,  3 Nov 2018 18:54:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SUBJ_OBFU_PUNCT_FEW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* 0.0 SUBJ_OBFU_PUNCT_FEW Possible punctuation-obfuscated Subject:
	header
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B10E9E008D7
	for <yocto@yoctoproject.org>; Sat,  3 Nov 2018 18:54:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id wA41skwT005242
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 3 Nov 2018 18:54:46 -0700 (PDT)
Received: from pek-khao-d2 (147.11.105.123) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Sat, 3 Nov 2018 18:54:45 -0700
Date: Sun, 4 Nov 2018 09:53:28 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20181104015328.GA12164@pek-khao-d2>
References: <6c9102d2-91dc-41be-3aec-ab60d4688af5@denx.de>
	<20181101021854.GT24227@pek-khao-d2>
	<13692616-30d3-1bae-71b7-1ed2373a9a61@denx.de>
	<20181102085916.GA31329@pek-khao-d2>
	<CAMKF1sov=e1z8wH0ckXozz3RK1Uz-7Ja+uzguqTTCxBPHiipyw@mail.gmail.com>
	<20181103083713.GA4438@pek-khao-d2>
	<CAMKF1sqXH163nBB30Njm9kb7OgFVzx_i2rnRaAzdy3mCiCLYuQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqXH163nBB30Njm9kb7OgFVzx_i2rnRaAzdy3mCiCLYuQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Originating-IP: [147.11.105.123]
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
X-List-Received-Date: Sun, 04 Nov 2018 01:54:58 -0000
X-Groupsio-MsgNum: 43059
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="azLHFNyN32YCQGCU"
Content-Disposition: inline

--azLHFNyN32YCQGCU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 03, 2018 at 07:38:02AM -0700, Khem Raj wrote:
> On Sat, Nov 3, 2018 at 1:38 AM Kevin Hao <kexin.hao@windriver.com> wrote:
> >
> > On Fri, Nov 02, 2018 at 07:27:04AM -0700, Khem Raj wrote:
> > > On Fri, Nov 2, 2018 at 2:02 AM Kevin Hao <kexin.hao@windriver.com> wr=
ote:
> > > >
> > > > On Fri, Nov 02, 2018 at 09:01:34AM +0100, Heiko Schocher wrote:
> > > > > Hello Kevin,
> > > > >
> > > > > Am 01.11.2018 um 03:18 schrieb Kevin Hao:
> > > > > > On Wed, Oct 31, 2018 at 02:23:00PM +0100, Heiko Schocher wrote:
> > > > > > > Hello all,
> > > > > > >
> > > > > > > just builded core-image-minimal with current head of thud bra=
nch for
> > > > > > > the beaglebone-yocto machine, with linux 4.14.x LTS "Linux ve=
rsion 4.14.78",
> > > > > > > installed the resulting sd card image and boot it, and get:
> > > > > > >
> > > > > > > INIT: Id "O0" respawning too fast: disabled for
> > > > > > > 5 minutes
> > > > > > >
> > > > > > > Reason seems to be:
> > > > > > >
> > > > > > > meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > > > > > >
> > > > > > > SERIAL_CONSOLES =3D "115200;ttyO0"
> > > > > > >
> > > > > > > shouldn't this be
> > > > > > >
> > > > > > > SERIAL_CONSOLES =3D "115200;ttyS0"
> > > > > > >
> > > > > > > With this fix, sd card image boot fine ... may I oversee seom=
thing
> > > > > > > obvious ?
> > > > > >
> > > > > > No, it should be 'ttyO0'. It is set by the omap serial driver. =
You can
> > > > > > refer the following in platform_data/serial-omap.h:
> > > > > >    #define OMAP_SERIAL_NAME        "ttyO"
> > > > >
> > > > > Yes, you are right, but I see with linux kernel 4.14.78 from
> > > > >
> > > > > https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/=
commit/?h=3Dlinux-4.14.y&id=3De7405910ca5553eae8744af4e5c03e64ee048cb1
> > > > >
> > > > > and I see:
> > > > >
> > > > > [    0.000000] Linux version 4.14.78 (oe-user@oe-host) (gcc versi=
on 8.2.0
> > > > > (GCC)) #1 Thu Nov 1 10:51:09 UTC 2018
> > > > > [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7)=
, cr=3D10c5387d
> > > > > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT alia=
sing instruction cache
> > > > > [    0.000000] OF: fdt: Machine model: TI AM335x BeagleBone Black
> > > > > [...]
> > > > > [    0.362878] Serial: 8250/16550 driver, 6 ports, IRQ sharing di=
sabled
> > > > > [    0.365758] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D=
 30, base_baud =3D 3000000) is a 8250
> > > > > [    1.030465] console [ttyS0] enabled
> > > > >
> > > > > So definitely a ttyS0 ...
> > > >
> > > > OK, so you don't use the linux-yocto kernel, you must not use the Y=
octo kernel
> > > > meta either.
> > >
> > > I dont think there is such a rule.
> >
> > I don't get what you mean about such a rule. I didn't say anything abou=
t that.
>=20
> re-read carefully what you wrote above and hopefully you will understand

I definitely know what I mean. I just don't understand what you are talking=
 about.

>=20
>=20
> > I just pointed out why Heiko get stuck by that issue and how to workaro=
und it.
> >
> > > meta-yocto-bsps are meant as
> > > references and people might want to enhance them.
> >
> > Of course, that is also why we are continually working on it.
> >
>=20
> your answer did not indicate that.

I apologize if I gave the expression that I don't welcome the enhancement t=
o the meta-yocto-bsp.
But maybe you are the only one who get that from what I wrote.

>=20
> > >
> > >  The reason that you got a ttyS0 here is that you use the
> > > > 8250_omap.c driver. But in Yocto we use the omap-serial.c driver. Y=
ou can
> > > > workaround this issue by enabling SERIAL_8250_OMAP_TTYO_FIXUP.
> > > >
> > >
> > > omap serial is obsolete why does linux-yocto keeps using it.
> >
> > I guess that the original reason that we use this should be something l=
ike the
> > comments in the omap-serial.c:
> >  * Note: This driver is made separate from 8250 driver as we cannot
> >  * over load 8250 driver with omap platform specific configuration for
> >  * features like DMA, it makes easier to implement features like DMA and
> >  * hardware flow control and software flow control configuration with
> >  * this driver as required for the omap-platform.
> >
> > Yes, it has been a long time since the comments were written and even b=
efore the
> > birth of the 8250_omap.c. But I am just not sure that the 8250_omap dri=
ver
> > is mature enough so we can switch to it safely and we also don't get an=
y serial
> > issue so far. That is why we leave it as is. And it also seem that the =
omap-serial.c
> > is also enabled by default in both the multi_v7_defconfig and omap2plus=
_defconfig
> > in the latest kernel:
> >   $ git grep "CONFIG_SERIAL_OMAP" arch/arm/
> >   arch/arm/configs/multi_v7_defconfig:CONFIG_SERIAL_OMAP=3Dy
> >   arch/arm/configs/multi_v7_defconfig:CONFIG_SERIAL_OMAP_CONSOLE=3Dy
> >   arch/arm/configs/omap2plus_defconfig:CONFIG_SERIAL_OMAP=3Dy
> >   arch/arm/configs/omap2plus_defconfig:CONFIG_SERIAL_OMAP_CONSOLE=3Dy
> >
> > But if you are pretty sure that the 8250_omap.c is mature enough and al=
so
> > provide more functions than omap-serial.c, please send a patch and we c=
an
> > definitely switch the serial driver to that.
>=20
> if you are in doubt always ask the source, in this case you could ask TI =
folks.

OK, I will dig into the source codes, but if you already know the reasons w=
hy
omap-serial.c is obsolete and can be safely replaced by 8250_omap.c, why do=
n't
you put them here? It will help all the peoples who care about this issue.

>=20
> >
> > > seondly, machine config should enable both consoles ttyO0 and ttyS0 if
> > > you know that at least one kernel is using ttyO0
> >
> > Yes, this is an option to fix this issue. Do you mind send a patch?
> >
>=20
> I do not mind but I do not use this BSP layer, have no way to test it.

OK, I will put this on my todo list.

Thanks,
Kevin

>=20
> > Thanks,
> > Kevin
> > >
> > > > Thanks,
> > > > Kevin
> > > >
> > > > >
> > > > > bye,
> > > > > Heiko
> > > > > >
> > > > > > Thanks,
> > > > > > Kevin
> > > > > >
> > > > > > >
> > > > > > > bye,
> > > > > > > Heiko
> > > > > > > --
> > > > > > > DENX Software Engineering GmbH,      Managing Director: Wolfg=
ang Denk
> > > > > > > HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell,=
 Germany
> > > > > > > Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs=
@denx.de
> > > > > > > --
> > > > > > > _______________________________________________
> > > > > > > yocto mailing list
> > > > > > > yocto@yoctoproject.org
> > > > > > > https://lists.yoctoproject.org/listinfo/yocto
> > > > >
> > > > > --
> > > > > DENX Software Engineering GmbH,      Managing Director: Wolfgang =
Denk
> > > > > HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Ger=
many
> > > > > Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@den=
x.de
> > > > --
> > > > _______________________________________________
> > > > yocto mailing list
> > > > yocto@yoctoproject.org
> > > > https://lists.yoctoproject.org/listinfo/yocto

--azLHFNyN32YCQGCU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHc6qFoLCZqgJD98Zk1jtMN6usXEFAlveURgACgkQk1jtMN6u
sXHSkwf+Lt+CnMZ0Zi+INreE83gLcLYPEmNwdT2LxlR+aOgjdz+VBcF1Rwzd+H7u
KObPJ3irSsbdOxcq8dD2sAZHetTQLj+gCV0zfHSNZRIcj/VdCOO3O/O1eTVN/fsL
3Fm8GY8YDo6dSpj1PJrXHsnXmsEUyIubRvlHIuIpup1vc+5c2q8ASa1yqFb9eMXe
Fp98CHI9B4iy8e2Of8N9Z62h7rNHviOfP7d0bSOG35La/+JqGaPvidieajXJDOMT
OlGd1EOz2xOqIhQAWhCF+pK7ThjKWNnnzVWrC0rRl3ecaH/xUsWIViko1J/fetCa
ukTSpUCcWdWOFtssCQdHieWvErcQbA==
=Nscg
-----END PGP SIGNATURE-----

--azLHFNyN32YCQGCU--
