Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7670E009AA; Sun,  4 Nov 2018 21:27:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SUBJ_OBFU_PUNCT_FEW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* 0.7 SUBJ_OBFU_PUNCT_FEW Possible punctuation-obfuscated Subject:
	header
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB123E008D7
	for <yocto@yoctoproject.org>; Sun,  4 Nov 2018 21:27:28 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id wA55RIHr019953
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 4 Nov 2018 21:27:18 -0800 (PST)
Received: from pek-khao-d2 (147.11.105.123) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Sun, 4 Nov 2018 21:27:18 -0800
Date: Mon, 5 Nov 2018 13:26:00 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <20181105052558.GB22875@pek-khao-d2>
References: <6c9102d2-91dc-41be-3aec-ab60d4688af5@denx.de>
	<20181101021854.GT24227@pek-khao-d2>
	<13692616-30d3-1bae-71b7-1ed2373a9a61@denx.de>
	<20181102085916.GA31329@pek-khao-d2>
	<CAMKF1sov=e1z8wH0ckXozz3RK1Uz-7Ja+uzguqTTCxBPHiipyw@mail.gmail.com>
	<de1a10ff-5d08-191d-3452-e548929affee@gmail.com>
MIME-Version: 1.0
In-Reply-To: <de1a10ff-5d08-191d-3452-e548929affee@gmail.com>
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
X-List-Received-Date: Mon, 05 Nov 2018 05:27:29 -0000
X-Groupsio-MsgNum: 43068
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="V0207lvV8h4k8FAm"
Content-Disposition: inline

--V0207lvV8h4k8FAm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 04, 2018 at 12:10:00PM +0200, Robert Berger wrote:
> Hi,
>=20
> On 02.11.18 16:27, Khem Raj wrote:
> >=20
> > omap serial is obsolete why does linux-yocto keeps using it.
> > seondly, machine config should enable both consoles ttyO0 and ttyS0 if
> > you know that at least one kernel is using ttyO0
> >=20
> How about picking whatever works for you in the kernel conf and in machine
> conf?
>=20
> SERIAL_CONSOLES =3D "115200;ttyS0 115200;ttyO0"
> SERIAL_CONSOLES_CHECK =3D "${SERIAL_CONSOLES}"
>=20
> Like this on the first boot either ttyO0 or ttyS0 should be picked
> automatically.

Yes, this is doable. Would you mind send a patch?

Thanks,
Kevin

>=20
> Regards,
> Robert

--V0207lvV8h4k8FAm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHc6qFoLCZqgJD98Zk1jtMN6usXEFAlvf1GUACgkQk1jtMN6u
sXFRhwf+M2BbAJzsvCRxWtFajeP/erWJJgrPxWt5Y3ICSfyXp497PEDeIKEO9uOR
lO2W2mKPTiRrS1GCGnTZ+ta+wbdyvtFakOSvIHlVt+0CW1A9K+3oRIPPd6+yj2Yt
g9fvql5yLldbaX3joBeKNJKI3RIz0yBT/MveZTyLKpO+PvzwQg6Vszd0pgV3dcYD
owuTSyyO/mduNuU00M4MhznRGQBmLlo9ebkjK/CGOsgv/BBff4YfuHEH0Ex4mL9G
3bHAi96ZEpmiSkeNawQKWbN06/9alzpOGAWERu2m0pTltTZYD/QWb2OxX8w9p+z5
QunUWUeuNq7HTCidMR8WrKyQnqIZ5w==
=R+xY
-----END PGP SIGNATURE-----

--V0207lvV8h4k8FAm--
