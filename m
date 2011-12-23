Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DA8AE00303
	for <yocto@yoctoproject.org>; Fri, 23 Dec 2011 09:52:41 -0800 (PST)
Received: by wibhq4 with SMTP id hq4so4712524wib.35
	for <yocto@yoctoproject.org>; Fri, 23 Dec 2011 09:52:40 -0800 (PST)
Received: by 10.180.72.133 with SMTP id d5mr34459431wiv.7.1324662760045;
	Fri, 23 Dec 2011 09:52:40 -0800 (PST)
Received: from [172.20.1.19] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id p2sm14459716wbh.22.2011.12.23.09.52.38
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 23 Dec 2011 09:52:39 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
Mime-Version: 1.0 (Apple Message framework v1251.1)
Date: Fri, 23 Dec 2011 18:52:35 +0100
In-Reply-To: <4EF4BE2D.1090707@windriver.com>
To: Yocto Project <yocto@yoctoproject.org>
References: <4EF34776.9030002@gmail.com>	<5B0E0226-A68D-4AB1-91E3-B6F396816C52@dominion.thruhere.net>	<2143100.ORnxPSEQca@helios>	<9CC56138-C252-46A6-B318-9FA939CE2DAC@dominion.thruhere.net>	<B65605DA-ADD9-4EBB-956A-6C785B5F204E@gmail.com>
	<4EF4B610.6050904@windriver.com> <4EF4BCA3.30209@balister.org>
	<4EF4BE2D.1090707@windriver.com>
Message-Id: <EBB285D3-2B43-4182-B723-1193873648B3@dominion.thruhere.net>
X-Mailer: Apple Mail (2.1251.1)
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
X-List-Received-Date: Fri, 23 Dec 2011 17:52:42 -0000
X-Groupsio-MsgNum: 3999
Content-Type: multipart/signed;
	boundary="Apple-Mail=_69A323FA-5610-4AA5-A2CB-E86A8C419C67";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_69A323FA-5610-4AA5-A2CB-E86A8C419C67
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


Op 23 dec. 2011, om 18:45 heeft Bruce Ashfield het volgende geschreven:

> On 11-12-23 12:38 PM, Philip Balister wrote:
>> On 12/23/2011 12:10 PM, Bruce Ashfield wrote:
>>> On 11-12-23 08:10 AM, James Abernathy wrote:
>>>>=20
>>>> On Dec 23, 2011, at 3:50 AM, Koen Kooi wrote:
>>>>=20
>>>>>=20
>>>>> Op 23 dec. 2011, om 09:37 heeft Paul Eggleton het volgende =
geschreven:
>>>>>=20
>>>>>> On Friday 23 December 2011 09:28:31 Koen Kooi wrote:
>>>>>>> Op 22 dec. 2011, om 16:06 heeft Jim Abernathy het volgende =
geschreven:
>>>>>>>> I know the examples in the documentation of Yocto use =
meta-intel a
>>>>>>>> lot
>>>>>>>> to get the board specific BSPs like meta-crownbay or meta-n450.
>>>>>>>>=20
>>>>>>>> Is there a meta-ti or similar that gets you the =
meta-beagleboard and
>>>>>>>> meta-pandaboard?  If not how do you clone and checkout the =
pandaboard
>>>>>>>> BPS?
>>>>>>> =
http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-texasinstrument=
s/
>>>>>>>=20
>>>>>>>=20
>>>>>>> It has a README in there on how to set it up, read it and follow =
it
>>>>>>> precisely.
>>>>>>=20
>>>>>> Just out of interest, why does meta-texasinstruments depend on
>>>>>> meta-angstrom?
>>>>>=20
>>>>> It needs extra things in overrides and reuses tasks from there.
>>>>=20
>>>> Sorry for the follow-up, but if I clone the meta-texasinstruments =
bsp
>>>> repository and checkout the pandaboard-rework branch,
>>>> how does that relate to the Yocto branch/bsp =
yocto/standard/pandaboard
>>>> on the Yocto site?
>>>=20
>>> I'll jump into the middle of the thread, and answer a couple of =
specific
>>> questions and leave the larger what depends on what, and where
>>> things evolve and why .. for another day.
>>>=20
>>> The yocto/standard/pandaboard in the 3.0 kernel tree is the =
refresh/update
>>> of a reference BSP for the 3.0 (and newer) kernel(s).
>>=20
>> Who is the intended audience of this BSP? The Angstrom/meta-to layer =
is
>> obviously intended for people using TI hardware and all the =
associated
>> peripherals. Without defining your audience better, this jsut adds to
>> the confusion end users are experiencing with all the words and =
layers
>> being used in emails. This is becoming a real problem as new users =
enter
>> the project.
>=20
> Quite simply, the audience that needs a particular kernel version
> and feature set, with the tooling to transition to a supported (i.e
> not the yocto one) BSP.

You do realize that by doing this without informing anyone involved with =
the official pandaboard BSP the net effect is negative? And by =
'negative' I mean "severe annoyance" among other things.=

--Apple-Mail=_69A323FA-5610-4AA5-A2CB-E86A8C419C67
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAk70v+UACgkQMkyGM64RGpEKUwCgh0KeYcEDNEQPYsa+nAjKRLdZ
nc4An3KVlZbyO0F4SzxvFOT2yhh1Jueo
=hMGD
-----END PGP SIGNATURE-----

--Apple-Mail=_69A323FA-5610-4AA5-A2CB-E86A8C419C67--
