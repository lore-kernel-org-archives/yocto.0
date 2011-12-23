Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49F3DE0030B
	for <yocto@yoctoproject.org>; Fri, 23 Dec 2011 00:50:26 -0800 (PST)
Received: by wibhq4 with SMTP id hq4so4286007wib.35
	for <yocto@yoctoproject.org>; Fri, 23 Dec 2011 00:50:25 -0800 (PST)
Received: by 10.180.96.72 with SMTP id dq8mr30367170wib.10.1324630225356;
	Fri, 23 Dec 2011 00:50:25 -0800 (PST)
Received: from [172.20.1.19] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id z5sm29582966wix.5.2011.12.23.00.50.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 23 Dec 2011 00:50:24 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <2143100.ORnxPSEQca@helios>
Date: Fri, 23 Dec 2011 09:50:17 +0100
Message-Id: <9CC56138-C252-46A6-B318-9FA939CE2DAC@dominion.thruhere.net>
References: <4EF34776.9030002@gmail.com>
	<5B0E0226-A68D-4AB1-91E3-B6F396816C52@dominion.thruhere.net>
	<2143100.ORnxPSEQca@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1251.1)
Cc: yocto@yoctoproject.org
Subject: Re: meta-ti?????
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
X-List-Received-Date: Fri, 23 Dec 2011 08:50:27 -0000
X-Groupsio-MsgNum: 3990
Content-Type: multipart/signed;
	boundary="Apple-Mail=_829EC17D-7626-4D36-826A-50A5667A6871";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_829EC17D-7626-4D36-826A-50A5667A6871
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


Op 23 dec. 2011, om 09:37 heeft Paul Eggleton het volgende geschreven:

> On Friday 23 December 2011 09:28:31 Koen Kooi wrote:
>> Op 22 dec. 2011, om 16:06 heeft Jim Abernathy het volgende =
geschreven:
>>> I know the examples in the documentation of Yocto use meta-intel a =
lot
>>> to get the board specific BSPs like meta-crownbay or meta-n450.
>>>=20
>>> Is there a meta-ti or similar that gets you the meta-beagleboard and
>>> meta-pandaboard?  If not how do you clone and checkout the =
pandaboard
>>> BPS?
>> =
http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-texasinstrument=
s/
>>=20
>> It has a README in there on how to set it up, read it and follow it
>> precisely.
>=20
> Just out of interest, why does meta-texasinstruments depend on =
meta-angstrom?

It needs extra things in overrides and reuses tasks from there.=

--Apple-Mail=_829EC17D-7626-4D36-826A-50A5667A6871
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAk70QM4ACgkQMkyGM64RGpFgJQCfckaQzPEoaTptHFE6hNsuov1j
7RUAoJ4cg1q5+BhSIEdQLHTOTk3i012r
=alN7
-----END PGP SIGNATURE-----

--Apple-Mail=_829EC17D-7626-4D36-826A-50A5667A6871--
