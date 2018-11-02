Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83DC3E00C10; Fri,  2 Nov 2018 02:01:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12C2EE00A10
	for <yocto@yoctoproject.org>; Fri,  2 Nov 2018 02:01:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id wA290VA1031699
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 2 Nov 2018 02:01:12 -0700
Received: from pek-khao-d2 (147.11.105.123) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Fri, 2 Nov 2018 02:00:33 -0700
Date: Fri, 2 Nov 2018 16:59:16 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Heiko Schocher <hs@denx.de>
Message-ID: <20181102085916.GA31329@pek-khao-d2>
References: <6c9102d2-91dc-41be-3aec-ab60d4688af5@denx.de>
	<20181101021854.GT24227@pek-khao-d2>
	<13692616-30d3-1bae-71b7-1ed2373a9a61@denx.de>
MIME-Version: 1.0
In-Reply-To: <13692616-30d3-1bae-71b7-1ed2373a9a61@denx.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Originating-IP: [147.11.105.123]
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 02 Nov 2018 09:01:43 -0000
X-Groupsio-MsgNum: 43037
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xHFwDpU9dbj6ez1V"
Content-Disposition: inline

--xHFwDpU9dbj6ez1V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 02, 2018 at 09:01:34AM +0100, Heiko Schocher wrote:
> Hello Kevin,
>=20
> Am 01.11.2018 um 03:18 schrieb Kevin Hao:
> > On Wed, Oct 31, 2018 at 02:23:00PM +0100, Heiko Schocher wrote:
> > > Hello all,
> > >=20
> > > just builded core-image-minimal with current head of thud branch for
> > > the beaglebone-yocto machine, with linux 4.14.x LTS "Linux version 4.=
14.78",
> > > installed the resulting sd card image and boot it, and get:
> > >=20
> > > INIT: Id "O0" respawning too fast: disabled for
> > > 5 minutes
> > >=20
> > > Reason seems to be:
> > >=20
> > > meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> > >=20
> > > SERIAL_CONSOLES =3D "115200;ttyO0"
> > >=20
> > > shouldn't this be
> > >=20
> > > SERIAL_CONSOLES =3D "115200;ttyS0"
> > >=20
> > > With this fix, sd card image boot fine ... may I oversee seomthing
> > > obvious ?
> >=20
> > No, it should be 'ttyO0'. It is set by the omap serial driver. You can
> > refer the following in platform_data/serial-omap.h:
> >    #define OMAP_SERIAL_NAME        "ttyO"
>=20
> Yes, you are right, but I see with linux kernel 4.14.78 from
>=20
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?=
h=3Dlinux-4.14.y&id=3De7405910ca5553eae8744af4e5c03e64ee048cb1
>=20
> and I see:
>=20
> [    0.000000] Linux version 4.14.78 (oe-user@oe-host) (gcc version 8.2.0
> (GCC)) #1 Thu Nov 1 10:51:09 UTC 2018
> [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=3D1=
0c5387d
> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing ins=
truction cache
> [    0.000000] OF: fdt: Machine model: TI AM335x BeagleBone Black
> [...]
> [    0.362878] Serial: 8250/16550 driver, 6 ports, IRQ sharing disabled
> [    0.365758] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 30, bas=
e_baud =3D 3000000) is a 8250
> [    1.030465] console [ttyS0] enabled
>=20
> So definitely a ttyS0 ...

OK, so you don't use the linux-yocto kernel, you must not use the Yocto ker=
nel
meta either. The reason that you got a ttyS0 here is that you use the
8250_omap.c driver. But in Yocto we use the omap-serial.c driver. You can
workaround this issue by enabling SERIAL_8250_OMAP_TTYO_FIXUP.

Thanks,
Kevin

>=20
> bye,
> Heiko
> >=20
> > Thanks,
> > Kevin
> >=20
> > >=20
> > > bye,
> > > Heiko
> > > --=20
> > > DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> > > HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> > > Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de
> > > --=20
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
>=20
> --=20
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de

--xHFwDpU9dbj6ez1V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHc6qFoLCZqgJD98Zk1jtMN6usXEFAlvcEeQACgkQk1jtMN6u
sXEG9QgAr/1ouNGzb+fWtAnN/s0bee344COvZi4czuKjRtMsqasG+ejIZEMk4r9y
22dmtd2NvcT1G7ob0vIoL9JUuZHR4zMHeP4q4azOUooxTUaovlJaNw/Eoocab9fK
BKNNRXZDu5aMFNZoI28bBHmGUVec4CBpI3/4JBVXON+w0rjV5wGerKb86ypxL90k
J67MPrrLSMoqIdO2mv/5FNWVemLrdl9Np1doJamGx+qBUYQAsqBmvQe3YEl2aJuR
ymxxQvSwBvmNe2sYHD8S6MbvBw6UPoXuidWSplG2LXTx9QKSTmGgl717aZ76tbUY
SIMOXujY0CoiUMOkhktuxGESMq1L3A==
=NYRU
-----END PGP SIGNATURE-----

--xHFwDpU9dbj6ez1V--
