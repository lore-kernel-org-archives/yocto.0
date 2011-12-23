Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 638F4E0030B
	for <yocto@yoctoproject.org>; Fri, 23 Dec 2011 05:23:59 -0800 (PST)
Received: by wibhq4 with SMTP id hq4so4477345wib.35
	for <yocto@yoctoproject.org>; Fri, 23 Dec 2011 05:23:58 -0800 (PST)
Received: by 10.180.19.106 with SMTP id d10mr32631098wie.2.1324646638651;
	Fri, 23 Dec 2011 05:23:58 -0800 (PST)
Received: from [172.20.1.19] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id eg7sm31632616wib.8.2011.12.23.05.23.56
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 23 Dec 2011 05:23:57 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <B65605DA-ADD9-4EBB-956A-6C785B5F204E@gmail.com>
Date: Fri, 23 Dec 2011 14:23:53 +0100
Message-Id: <7E61D6CF-5CC3-4DDA-B35B-7EC235014D3A@dominion.thruhere.net>
References: <4EF34776.9030002@gmail.com>
	<5B0E0226-A68D-4AB1-91E3-B6F396816C52@dominion.thruhere.net>
	<2143100.ORnxPSEQca@helios>
	<9CC56138-C252-46A6-B318-9FA939CE2DAC@dominion.thruhere.net>
	<B65605DA-ADD9-4EBB-956A-6C785B5F204E@gmail.com>
To: James Abernathy <jfabernathy@gmail.com>
X-Mailer: Apple Mail (2.1251.1)
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 23 Dec 2011 13:24:01 -0000
X-Groupsio-MsgNum: 3992
Content-Type: multipart/signed;
	boundary="Apple-Mail=_3B4DC7B7-700C-47E6-9068-1343BA019C98";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_3B4DC7B7-700C-47E6-9068-1343BA019C98
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


Op 23 dec. 2011, om 14:10 heeft James Abernathy het volgende geschreven:

>=20
> On Dec 23, 2011, at 3:50 AM, Koen Kooi wrote:
>=20
>>=20
>> Op 23 dec. 2011, om 09:37 heeft Paul Eggleton het volgende =
geschreven:
>>=20
>>> On Friday 23 December 2011 09:28:31 Koen Kooi wrote:
>>>> Op 22 dec. 2011, om 16:06 heeft Jim Abernathy het volgende =
geschreven:
>>>>> I know the examples in the documentation of Yocto use meta-intel a =
lot
>>>>> to get the board specific BSPs like meta-crownbay or meta-n450.
>>>>>=20
>>>>> Is there a meta-ti or similar that gets you the meta-beagleboard =
and
>>>>> meta-pandaboard?  If not how do you clone and checkout the =
pandaboard
>>>>> BPS?
>>>> =
http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-texasinstrument=
s/
>>>>=20
>>>> It has a README in there on how to set it up, read it and follow it
>>>> precisely.
>>>=20
>>> Just out of interest, why does meta-texasinstruments depend on =
meta-angstrom?
>>=20
>> It needs extra things in overrides and reuses tasks from there.
>=20
> Sorry for the follow-up, but if I clone the meta-texasinstruments bsp =
repository and checkout the pandaboard-rework branch,
> how does that relate to the Yocto branch/bsp yocto/standard/pandaboard =
on the Yocto site?

It doesn't.=20

> Being a Yocto newbie, it's hard enough to understand all the branches =
on the yocto site. Relating the meta-angstrom is confusing.

No, yocto (or is it poky? noone knows) has confusing messaging, It's =
best to find the official BSP for the board you use and follow the =
instructions in there and ignore anything else.=

--Apple-Mail=_3B4DC7B7-700C-47E6-9068-1343BA019C98
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAk70gOsACgkQMkyGM64RGpF+ZgCbBUT0CJWR4v/MBqYUcWW56RIR
//EAn1jZ55WRS/GiEc5zWJWc26TkeSxn
=eGkC
-----END PGP SIGNATURE-----

--Apple-Mail=_3B4DC7B7-700C-47E6-9068-1343BA019C98--
