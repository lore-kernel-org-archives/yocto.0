Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79B42E00BC6; Wed, 31 Oct 2018 19:21:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6631FE00B5E
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2018 19:21:18 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id wA12JwJM013198
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 31 Oct 2018 19:20:45 -0700
Received: from pek-khao-d2 (147.11.105.123) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Wed, 31 Oct 2018 19:20:11 -0700
Date: Thu, 1 Nov 2018 10:18:54 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Heiko Schocher <hs@denx.de>
Message-ID: <20181101021854.GT24227@pek-khao-d2>
References: <6c9102d2-91dc-41be-3aec-ab60d4688af5@denx.de>
MIME-Version: 1.0
In-Reply-To: <6c9102d2-91dc-41be-3aec-ab60d4688af5@denx.de>
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
X-List-Received-Date: Thu, 01 Nov 2018 02:21:20 -0000
X-Groupsio-MsgNum: 43017
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GAoked8QSizNecZ5"
Content-Disposition: inline

--GAoked8QSizNecZ5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 31, 2018 at 02:23:00PM +0100, Heiko Schocher wrote:
> Hello all,
>=20
> just builded core-image-minimal with current head of thud branch for
> the beaglebone-yocto machine, with linux 4.14.x LTS "Linux version 4.14.7=
8",
> installed the resulting sd card image and boot it, and get:
>=20
> INIT: Id "O0" respawning too fast: disabled for
> 5 minutes
>=20
> Reason seems to be:
>=20
> meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
>=20
> SERIAL_CONSOLES =3D "115200;ttyO0"
>=20
> shouldn't this be
>=20
> SERIAL_CONSOLES =3D "115200;ttyS0"
>=20
> With this fix, sd card image boot fine ... may I oversee seomthing
> obvious ?

No, it should be 'ttyO0'. It is set by the omap serial driver. You can
refer the following in platform_data/serial-omap.h:
  #define OMAP_SERIAL_NAME        "ttyO"

Thanks,
Kevin

>=20
> bye,
> Heiko
> --=20
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--GAoked8QSizNecZ5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHc6qFoLCZqgJD98Zk1jtMN6usXEFAlvaYo4ACgkQk1jtMN6u
sXGgkwf/XvQJs8ACb4aR9rCvSA6Fsqh4vT2ef9DQ0fs5DTe44p/ofBfg+38lZN/e
WY/tmTpgd3yIo1JGP4ITMrFkIZthXaPcOjvDTHGqilvRl9K0MMOD5GY+QAFJDqRx
vd3YkBFhfcEgWTOqmSTcHyGwN1Z5xwRNeiNdJoiVobTr50ss64mnvDpJPaXlVvw6
arrhhvIaISuE5/Zoe73uj0dF2IfMJhc+QpH9La7/l/9uRuWf80BHb3N1iJLS8IBC
AYwvVEThU8LLeAq0ue0epQkeF3nZuTUFcEJ3gahVK1sIl2meCCbBX9UdzBc1HSp2
+qYEuJaAv3wLYSamlGmTAwVk1trvxQ==
=laN2
-----END PGP SIGNATURE-----

--GAoked8QSizNecZ5--
