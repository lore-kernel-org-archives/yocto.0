Return-Path: <menschel-d@posteo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D151E00B58; Tue, 17 Apr 2018 11:03:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [185.67.36.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 362 seconds by postgrey-1.32 at yocto-www;
	Tue, 17 Apr 2018 11:03:18 PDT
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF5DFE006B4
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 11:03:18 -0700 (PDT)
Received: from submission (posteo.de [89.146.220.130]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 58DBD2172A
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 19:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
	t=1523987835; bh=A/lIvoZEfZ86lqlKAplkv45WxNCeZ0AeOaawlHJpjpk=;
	h=Subject:To:From:Date:Autocrypt:OpenPGP:From;
	b=VBcC+wMAht16K6gJuyJUyBrsTbiWVC1bE1fw+j3c+c8E4+PUf2CRb+qHtwixxR47b
	68xFixbx4EG6uwnpOcrMZdohe7sVJy5SNetC/3NJ9K+vYMyCf756ConpQH0ijVuI3x
	+6Y8Paqts84UQpy6zRPLTOmKWtQY7IHw4U2zI4S1tEJe0/oJYvhtyeFGBLflUxc/7B
	twn9B15uu22lcFjjUbc44eIyYny16zdol5yMwln7vmeqKlAn6Q6s9ugfIE3U4AxLzk
	TBtfCNcnr823rmOh6/dkDlV7Ic5IP+dVJHVLKcNbcUZACFZri5G1QysYSU1szrMeSX
	Q7+kiPj6p26fw==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 40QXyL3HS4z9rxQ;
	Tue, 17 Apr 2018 19:57:14 +0200 (CEST)
To: =?UTF-8?Q?M=c3=a5ns_Zigher?= <mans.zigher@gmail.com>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <CAEhQi8khVFOsFzoM=LWZnDMnsbO2o=eodSokurZFSteXTNHjGA@mail.gmail.com>
From: Dennis Menschel <menschel-d@posteo.de>
Message-ID: <78ba1681-5c7d-2f2b-1784-474d29be6a8b@posteo.de>
Date: Tue, 17 Apr 2018 19:57:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAEhQi8khVFOsFzoM=LWZnDMnsbO2o=eodSokurZFSteXTNHjGA@mail.gmail.com>
Autocrypt: addr=menschel-d@posteo.de;
	keydata=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
	8VgVw1bAd13Ch1WOARIgQy1dLuk9Q=
OpenPGP: url=https://posteo.de/keys/menschel-d@posteo.de.asc
Subject: Re: rocko cmake buld cstdlib:75:15: fatal error: stdlib.h: No such file or directory
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
X-List-Received-Date: Tue, 17 Apr 2018 18:03:21 -0000
X-Groupsio-MsgNum: 40744
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="uQpSaG7CLkSuDUsZE8FneGstHUsFXrETR"

--uQpSaG7CLkSuDUsZE8FneGstHUsFXrETR
Content-Type: multipart/mixed; boundary="JhHktSjoDXugGgbR2nN46A2lMhePpaZZL";
 protected-headers="v1"
From: Dennis Menschel <menschel-d@posteo.de>
To: =?UTF-8?Q?M=c3=a5ns_Zigher?= <mans.zigher@gmail.com>,
 Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <78ba1681-5c7d-2f2b-1784-474d29be6a8b@posteo.de>
Subject: Re: [yocto] rocko cmake buld cstdlib:75:15: fatal error: stdlib.h: No
 such file or directory
References: <CAEhQi8khVFOsFzoM=LWZnDMnsbO2o=eodSokurZFSteXTNHjGA@mail.gmail.com>
In-Reply-To: <CAEhQi8khVFOsFzoM=LWZnDMnsbO2o=eodSokurZFSteXTNHjGA@mail.gmail.com>

--JhHktSjoDXugGgbR2nN46A2lMhePpaZZL
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Mans,

Am 17.04.2018 um 13:15 schrieb M=C3=A5ns Zigher:
> Hi all,
>=20
> Have anyone experienced this error message before?
>=20
>     c++/7.3.0/cstdlib:75:15: fatal error: stdlib.h: No such file or
>     directory=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0
>     |=C2=A0 #include_next <stdlib.h>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
>     |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=

>=20
> I am not seeing this error when cross compiling using the sdk. I can se=
e
> in the output that the -isystem is added which when googling the error
> appears to be a problem when cross compiling. Since the sdk works I am
> guessing this flag is added by OE/poky. Any pointers on how to go
> forward is appreciated.
>=20
> BR
> Mans Zigher

if I recall correctly, the problem can be circumvented by adding the
option "-DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1" when invoking cmake.

You can find a reference in the function "cmake_do_configure()" located
inside "poky/meta/classes/cmake.bbclass"

Best regards,
Dennis


--JhHktSjoDXugGgbR2nN46A2lMhePpaZZL--

--uQpSaG7CLkSuDUsZE8FneGstHUsFXrETR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJa1jV5AAoJELoiXviItXXQtSkP/RLQd9YvQU8ELXgVHexaypVW
6WCuMIpB6TQDH39quN3VGL24u30SrMhp01WM9CvwgXZBMfxP6bYyMGpMFkD33YUT
LLM1vUSOnT98QAGLv0CBPYEtlYxtLLGdxw43WnqlnXxH2q07DiRx/MITcNY8eRxG
WVpJvdW9StY+SNdSEUs/T4pi0XfsX73bQz309E8gg6ag+xHdf/km+Y3KUpY/HAYB
VjFCpRGdl5+HrxXwGjI4e6pEKa75BPm6dOlFhrMotx31lISS0769UkmGrtaLQX5Y
fnGFYC1VYOl6f8sAHshv3H+06cTXjEIfM/4Msf+6BEvzJu/ApPL41cQRQT0YR6QI
W3d2Ru0nZDn3evM1PzWQWdgHVlJ8EC5Y9DLSPh0n3CgrmfeLZ8qk7DwKq83Ty5Y1
k2E8MB35zxXVaj5/7t9DcYw/7DToSNOPglrUoRRjW4kBb0BijOzfpyxugYVonumZ
zRCuElT9KCSikMIWRYmQuZhU0WgSUYSDTGl0wOHRGDPYgqfpb4AVXa18g3XkMoou
nlh0ePpbiSqoWqDazSLd6M9OkBZWvMq5Bw6OJ8GDhGfFGPHW5RaN83evqs50qwxo
RGuvcjWQEYUwv25ap38pxCorccp2wgxLJ55rcBBFTCzC7zm+G8oJlo1GXU1spXhb
+/vFsD5KGG0aeXl8wGVm
=QFIu
-----END PGP SIGNATURE-----

--uQpSaG7CLkSuDUsZE8FneGstHUsFXrETR--
