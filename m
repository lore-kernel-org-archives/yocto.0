Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E262E0030C
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 06:08:00 -0800 (PST)
Received: by eekb47 with SMTP id b47so571680eek.35
	for <yocto@yoctoproject.org>; Wed, 07 Dec 2011 06:07:59 -0800 (PST)
Received: by 10.213.2.77 with SMTP id 13mr3462872ebi.82.1323266879746;
	Wed, 07 Dec 2011 06:07:59 -0800 (PST)
Received: from [172.20.1.19] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id v3sm5990252eej.7.2011.12.07.06.07.57
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 07 Dec 2011 06:07:58 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1605255.ltn5bNtJ0l@helios>
Date: Wed, 7 Dec 2011 15:07:54 +0100
Message-Id: <752D6B50-3DE9-4257-B160-AE1CAA99F2C7@dominion.thruhere.net>
References: <88701C38B5D07249817D428430999C910B774261@sestoex09.enea.se>
	<CABcZANkovWJH9dFUpRngNzrQH5VAxYOiO1dK3H2pPB4SM9GS6A@mail.gmail.com>
	<1605255.ltn5bNtJ0l@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1251.1)
Cc: =?iso-8859-1?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>,
	yocto@yoctoproject.org
Subject: Re: Variable locality too restricted.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 07 Dec 2011 14:08:01 -0000
X-Groupsio-MsgNum: 3693
Content-Type: multipart/signed;
	boundary="Apple-Mail=_1BC5F218-140D-4BCF-AC4C-65073E165BD2";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_1BC5F218-140D-4BCF-AC4C-65073E165BD2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


Op 7 dec. 2011, om 15:05 heeft Paul Eggleton het volgende geschreven:

> On Wednesday 07 December 2011 06:52:25 Chris Larson wrote:
>> On Wed, Dec 7, 2011 at 6:44 AM, David Nystr=F6m =
<David.Nystrom@enea.com>=20
> wrote:
>>> I'm trying to create a setup for qemuppc.
>>>=20
>>> Goals:
>>> core-image-minimal + virtual/kernel.
>>> core-image-minimal + virtual/kernel with modified .config for debug
>>> flavoured kernel.
>>>=20
>>> Problems:
>>> PREFERRED_PROVIDER seems to be restricted to local.conf, distro and
>>> machine.
>> This is incorrect. It can be anywhere in the configuration metadata.
>> bitbake.conf includes a variety of config files, not just
>> distro/machine. Read that to see other existing files which get
>> included. Further, you could create a .conf/.inc which you include
>> from your machine .conf, if your goal is just to avoid duplication.
>=20
> Changing MACHINE has other implications though; do we not have any =
other way=20
> to switch out the kernel on a per-image basis?

And how would that work from a packaging perspective? AIUI changing =
DISTRO/MACHINE flags in an image is a recipe for failure.

regards,

Koen=

--Apple-Mail=_1BC5F218-140D-4BCF-AC4C-65073E165BD2
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAk7fczwACgkQMkyGM64RGpEmvACgph3MLYdoMoUBI3pBh7ZjGwRS
0PQAn0DDBDgu3M1oltYBBIzc9Ff8xgm/
=U0x4
-----END PGP SIGNATURE-----

--Apple-Mail=_1BC5F218-140D-4BCF-AC4C-65073E165BD2--
