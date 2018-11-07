Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F171BE009AA; Wed,  7 Nov 2018 05:33:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SUBJ_OBFU_PUNCT_FEW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* 0.7 SUBJ_OBFU_PUNCT_FEW Possible punctuation-obfuscated Subject:
	header
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77CD6E00950
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 05:33:50 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id wA7DXfQI017553
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 7 Nov 2018 05:33:41 -0800 (PST)
Received: from pek-khao-d2 (147.11.105.123) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Wed, 7 Nov 2018 05:33:41 -0800
Date: Wed, 7 Nov 2018 21:32:23 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Heiko Schocher <hs@denx.de>
Message-ID: <20181107133223.GA28321@pek-khao-d2>
References: <6c9102d2-91dc-41be-3aec-ab60d4688af5@denx.de>
	<20181101021854.GT24227@pek-khao-d2>
	<13692616-30d3-1bae-71b7-1ed2373a9a61@denx.de>
	<20181102085916.GA31329@pek-khao-d2>
	<CAMKF1sov=e1z8wH0ckXozz3RK1Uz-7Ja+uzguqTTCxBPHiipyw@mail.gmail.com>
	<de1a10ff-5d08-191d-3452-e548929affee@gmail.com>
	<20181105052558.GB22875@pek-khao-d2>
	<27e9ae41-5873-a476-0293-e929825e81bc@denx.de>
	<e4c77848-0c65-2660-2c73-65a843a60310@denx.de>
MIME-Version: 1.0
In-Reply-To: <e4c77848-0c65-2660-2c73-65a843a60310@denx.de>
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
X-List-Received-Date: Wed, 07 Nov 2018 13:33:52 -0000
X-Groupsio-MsgNum: 43125
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="M9NhX3UHpAaciwkO"
Content-Disposition: inline

--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 07, 2018 at 08:33:51AM +0100, Heiko Schocher wrote:
> Hello Kevin, Robert,
>=20
> Am 06.11.2018 um 09:10 schrieb Heiko Schocher:
> > Hello Kevin, Robert,
> >=20
> > Am 05.11.2018 um 06:26 schrieb Kevin Hao:
> > > On Sun, Nov 04, 2018 at 12:10:00PM +0200, Robert Berger wrote:
> > > > Hi,
> > > >=20
> > > > On 02.11.18 16:27, Khem Raj wrote:
> > > > >=20
> > > > > omap serial is obsolete why does linux-yocto keeps using it.
> > > > > seondly, machine config should enable both consoles ttyO0 and tty=
S0 if
> > > > > you know that at least one kernel is using ttyO0
> > > > >=20
> > > > How about picking whatever works for you in the kernel conf and in =
machine
> > > > conf?
> > > >=20
> > > > SERIAL_CONSOLES =3D "115200;ttyS0 115200;ttyO0"
> > > > SERIAL_CONSOLES_CHECK =3D "${SERIAL_CONSOLES}"
> > > >=20
> > > > Like this on the first boot either ttyO0 or ttyS0 should be picked
> > > > automatically.
> > >=20
> > > Yes, this is doable. Would you mind send a patch?
> >=20
> > Sorry for answering so late... good hint, I missed SERIAL_CONSOLES_CHECK
> >=20
> > I try this change and report, give me some time...
>=20
>=20
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> index e911e75004..def3a2ae06 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> @@ -20,7 +20,8 @@ WKS_FILE ?=3D "beaglebone-yocto.wks"
>  IMAGE_INSTALL_append =3D " kernel-devicetree kernel-image-zimage"
>  do_image_wic[depends] +=3D "mtools-native:do_populate_sysroot dosfstools=
-native:do_populate_sysroot"
>=20
> -SERIAL_CONSOLES =3D "115200;ttyO0"
> +SERIAL_CONSOLES =3D "115200;ttyS0 115200;ttyO0"
> +SERIAL_CONSOLES_CHECK =3D "${SERIAL_CONSOLES}"
>=20
>  PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
>  PREFERRED_VERSION_linux-yocto ?=3D "4.18%"
>=20
> and on my beagleboneblack linux kernels with 8250 serial driver enabled
> (console ttyS0) and kernel omap_serial driver enabled (console ttyO0)
> are booting.
>=20
> Unfortunately it took me some time, until I realized that my settings
> in auto.conf do not work, because in beaglebone-yocto.conf
>=20
> SERIAL_CONSOLES =3D "115200;ttyO0"
>=20
> is set ... May a
>=20
> SERIAL_CONSOLES ?=3D "115200;ttyS0 115200;ttyO0"
>=20
> is friendlier ?

Yes, "?=3D" is better.

>=20
> Should I send a formal patch?

Yes, please.

Thanks,
Kevin

>=20
> bye,
> Heiko
> --=20
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de

--M9NhX3UHpAaciwkO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHc6qFoLCZqgJD98Zk1jtMN6usXEFAlvi6WcACgkQk1jtMN6u
sXGmrAf/fixEnLciY64sVYiIteMN+oZulvdD46CQQE/oRpS7RSmRutpzMED7GMHU
qAeoLCyRULcu44BgurRg14yuC5JB9QTJI2lNTVXG8BByGeY8UJ6Cq4OHtyZCFUfy
00e8XqnhorCwKbioQ4GNEZcYskeMBG2UW3Ov0ncGw8hHk2Kbzl3/iqKUUvv85Aq/
eNeLVrI7qDHTQXpY+JnFCXs29jykhYiWjhul+g2UCkwjai70f9S5M6slaZQ5/JYQ
sXE/UbN6KrSLXG+UIYwFreLHxRjtl5PcLugp4T6E9WV3IahkKkuFS81bWX/t1z5Y
ZAxHBJmFHoOGWCiBBK56JvFZJmgwFg==
=fYB/
-----END PGP SIGNATURE-----

--M9NhX3UHpAaciwkO--
