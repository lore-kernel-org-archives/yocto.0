Return-Path: <menschel-d@posteo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16D7BE00B6F; Tue, 25 Jul 2017 14:19:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [185.67.36.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA9B5E00B43
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 14:19:19 -0700 (PDT)
Received: from submission (posteo.de [89.146.220.130]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 0DF7E20E4D
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 23:19:17 +0200 (CEST)
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 3xHB2F23D0z10HC;
	Tue, 25 Jul 2017 23:19:17 +0200 (CEST)
To: =?UTF-8?B?Tmfhu41jIFRoaSBIdeG7s25o?= <so61pi.re@gmail.com>,
	Yocto <yocto@yoctoproject.org>
References: <CAGnCEbuysuVU34RSX435ftsa+GKawUB0tWtcEdVdCFRqvY4TSw@mail.gmail.com>
From: Dennis Menschel <menschel-d@posteo.de>
Message-ID: <f9d7925e-e938-6f80-9fba-b271ec568c90@posteo.de>
Date: Tue, 25 Jul 2017 23:18:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAGnCEbuysuVU34RSX435ftsa+GKawUB0tWtcEdVdCFRqvY4TSw@mail.gmail.com>
Subject: Re: How to build a same package twice with different configurations for same MACHINE?
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
X-List-Received-Date: Tue, 25 Jul 2017 21:19:21 -0000
X-Groupsio-MsgNum: 37156
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="MaAGf7J3I04mwnMMC96lpUHhw8GlKW1MO"

--MaAGf7J3I04mwnMMC96lpUHhw8GlKW1MO
Content-Type: multipart/mixed; boundary="udFd6p5sdqNVPN9KM40g1kuVlXueL2Sso";
 protected-headers="v1"
From: Dennis Menschel <menschel-d@posteo.de>
To: =?UTF-8?B?Tmfhu41jIFRoaSBIdeG7s25o?= <so61pi.re@gmail.com>,
 Yocto <yocto@yoctoproject.org>
Message-ID: <f9d7925e-e938-6f80-9fba-b271ec568c90@posteo.de>
Subject: Re: [yocto] How to build a same package twice with different
 configurations for same MACHINE?
References: <CAGnCEbuysuVU34RSX435ftsa+GKawUB0tWtcEdVdCFRqvY4TSw@mail.gmail.com>
In-Reply-To: <CAGnCEbuysuVU34RSX435ftsa+GKawUB0tWtcEdVdCFRqvY4TSw@mail.gmail.com>

--udFd6p5sdqNVPN9KM40g1kuVlXueL2Sso
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

Am 18.07.2017 um 15:24 schrieb Ng=E1=BB=8Dc Thi Hu=E1=BB=B3nh:
> [...]
>=20
> Both images use busybox package but in different ways. The main-image
> can use several busybox' tools but the initial-flasher-image only uses
> one or two of them just to complete the flashing goal.
>=20
> My question is, is there a way to build busybox for main-image with one=

> defconfig, then build the busybox for initial-flasher-image with a
> different defconfig when I issue "bitbake initial-flasher-image" comman=
d?
>=20
> [...]
I'm not aware of such a feature in BitBake. As for your situation I'd
suggest creating a secondary recipe (e.g. "busybox-flasher") in your own
layer which includes the original busybox recipe and adapts its feature
set with a configuration fragment.

Example: busybox-flasher_1.24.1.bb

    require recipes-core/busybox/busybox_${PV}.bb
    SRC_URI +=3D "file://flasher-options.cfg"

That way you can easily distinguish busybox and busybox-flasher in your
images and you can minimize the redundancies between the recipes.

Hope it helps!

Best regards,
Dennis Menschel


--udFd6p5sdqNVPN9KM40g1kuVlXueL2Sso--

--MaAGf7J3I04mwnMMC96lpUHhw8GlKW1MO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJZd7XUAAoJELoiXviItXXQEjIQAMD2qvR4PLLpfIKTacpeLYlx
pl9TkTy05ja3xETWrjvQOzqsYaPJhZaMSkULC7XLxrbSjF/EkQ/M6zKTZW+lGbfJ
zRNoQ8HiB2odTJgaV2fR7DJjL4EFm1lXsadVyLh+zjuPiqOqpzcwN7h0L+UhWGbc
S9rulczNXj31cTDoEMgmT8cBS9uj84jTvQHmstl1QS+6PMezhPBeR7vpyUrTqgey
pNu5T6uSK6f1ewtKx53u/L5fLLSdwmPh1d+E3r/3VSLAZHKiYixwCxviMtE/nZIl
qlFOdOi22MCKyr8LahOQHbTZDs1THIdFOwgmEFdo3ZK2hkp5bKzzG6uT5Gl48jHf
6DkRJY0S0nUy1ZsYPTH5+8iVEFe4BvWs8UKpL7mg9IdjS62Sp9q8/r4R60nEeDk4
xYv+3rt1fwk6D3O6vwcDLpamDmv2eUIBVk3C//XRfln/IqBbsCS+O0sW+/LtyBGk
NEB15QaiMerGu4nBW07mRr4CHkwB8LBFdgMRYIJv+N9HtyCvPilMj3tDc5OjJz43
z7dX8Ffppa+3UWDwBBiLs/kfGKTV3xk6oEdrm+gNeeEA/Fzlvm0JyS4Tf5K0bOuP
unEQSxRHol7CuxEPPpBACllEPmRseS3kCXC55LrCksBaHdUGs7L2uieCnD4NXly9
vELkt389QuKVltmrCe/R
=CH29
-----END PGP SIGNATURE-----

--MaAGf7J3I04mwnMMC96lpUHhw8GlKW1MO--
