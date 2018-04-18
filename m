Return-Path: <menschel-d@posteo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2263AE009CA; Wed, 18 Apr 2018 13:47:14 -0700 (PDT)
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
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1409E0044F
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 13:47:12 -0700 (PDT)
Received: from submission (posteo.de [89.146.220.130]) 
	by mout01.posteo.de (Postfix) with ESMTPS id DE1F3210F2
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 22:47:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
	t=1524084430; bh=+p2yeDNfo2K4YPJZCr5TQZ1sHLp55Fq22VzOSah9+es=;
	h=Subject:To:Cc:From:Date:Autocrypt:OpenPGP:From;
	b=X/jBGeCCkp342WfEZUbxgpCA82O0MqNaGbd/TzBllLN5aMtzOjpq8j3rGnw4+/8UG
	nApkiirQGozIxVMoUhwGZXvqYzckqJMOW5iD4D4UrP6LMGj473m/jJSvg676d9s4k6
	wuOV47F0fhH2Fh9OYd1wp7Dedp9uck+k7SEpzLlge6LgN6XudiRMh9c4BuBARiJvOB
	3T5V7xHB9h8SwlM9SlV1MEMZAZpTox+x6FqnLh68iDLChYL+nmYN/1IujW2mfmt+gE
	IH/jusf2Nb0lG/5vai7ZRwd02QsVO5Kim7ztmgttGujjaM3q1M0MKzUn/MQdf9uTbF
	2sfzDBGLJAaEA==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 40RDgv4pmSz9rxj;
	Wed, 18 Apr 2018 22:47:07 +0200 (CEST)
To: =?UTF-8?Q?M=c3=a5ns_Zigher?= <mans.zigher@gmail.com>
References: <CAEhQi8khVFOsFzoM=LWZnDMnsbO2o=eodSokurZFSteXTNHjGA@mail.gmail.com>
	<78ba1681-5c7d-2f2b-1784-474d29be6a8b@posteo.de>
	<CAEhQi8kVuBfTGy2Bx-cdnhYXtrd2_sWkWpoWqEiw7FNu3DjtJQ@mail.gmail.com>
	<CAEhQi8nQyVJ7zSbs7o-NbrC-gVem77GqH6KKif_4kG4NOuqRkw@mail.gmail.com>
From: Dennis Menschel <menschel-d@posteo.de>
Message-ID: <17a6bf09-b738-c187-3b34-769556d041d5@posteo.de>
Date: Wed, 18 Apr 2018 22:46:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAEhQi8nQyVJ7zSbs7o-NbrC-gVem77GqH6KKif_4kG4NOuqRkw@mail.gmail.com>
Autocrypt: addr=menschel-d@posteo.de;
	keydata=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
	8VgVw1bAd13Ch1WOARIgQy1dLuk9Q=
OpenPGP: url=https://posteo.de/keys/menschel-d@posteo.de.asc
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 18 Apr 2018 20:47:14 -0000
X-Groupsio-MsgNum: 40762
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="0Jvts4GN6yjOXGfXNldH1UoQkRrzjT8Nr"

--0Jvts4GN6yjOXGfXNldH1UoQkRrzjT8Nr
Content-Type: multipart/mixed; boundary="HmAgKIWHOoQJ6BJO4Zwio8n3qvt3lm8aG";
 protected-headers="v1"
From: Dennis Menschel <menschel-d@posteo.de>
To: =?UTF-8?Q?M=c3=a5ns_Zigher?= <mans.zigher@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <17a6bf09-b738-c187-3b34-769556d041d5@posteo.de>
Subject: Re: [yocto] rocko cmake buld cstdlib:75:15: fatal error: stdlib.h: No
 such file or directory
References: <CAEhQi8khVFOsFzoM=LWZnDMnsbO2o=eodSokurZFSteXTNHjGA@mail.gmail.com>
 <78ba1681-5c7d-2f2b-1784-474d29be6a8b@posteo.de>
 <CAEhQi8kVuBfTGy2Bx-cdnhYXtrd2_sWkWpoWqEiw7FNu3DjtJQ@mail.gmail.com>
 <CAEhQi8nQyVJ7zSbs7o-NbrC-gVem77GqH6KKif_4kG4NOuqRkw@mail.gmail.com>
In-Reply-To: <CAEhQi8nQyVJ7zSbs7o-NbrC-gVem77GqH6KKif_4kG4NOuqRkw@mail.gmail.com>

--HmAgKIWHOoQJ6BJO4Zwio8n3qvt3lm8aG
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Mans,

Am 18.04.2018 um 06:56 schrieb M=C3=A5ns Zigher:
> Hi Dennis,
>=20
> This makes me a bot confused in cmake_do_configure we have
>=20
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 =
\
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${EXTRA_OECMAKE} \
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -Wno-dev
>=20
> I would think that I am using this cmake_do_configure so then the
> -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 should already be called correct?
>=20
> BR
> Mans Zigher

if you use "devtool build" from the extensible SDK to build a recipe
that inherits cmake.bbclass, then the function cmake_do_configure() will
be called implicitly.

But if you manually compile a cmake project with the SDK, then that
function won't be used. If your SDK contains the package
nativesdk-cmake, then the SDK contains the following file:

  $OECORE_NATIVE_SYSROOT/environment-setup.d/cmake.sh

This file will be sourced along with the rest of the SDK and set an
alias for cmake with an SDK-specific toolchain file.

To verify if the option CMAKE_NO_SYSTEM_FROM_IMPORTED has been set by
cmake, you can check if the file CMakeCache.txt (in the build directory)
contains an entry for CMAKE_NO_SYSTEM_FROM_IMPORTED. An alternative way
is to inspect the configuration via ccmake after calling cmake.

Best regards,
Dennis


--HmAgKIWHOoQJ6BJO4Zwio8n3qvt3lm8aG--

--0Jvts4GN6yjOXGfXNldH1UoQkRrzjT8Nr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJa167KAAoJELoiXviItXXQvh4QAN6CJfT+7/QSE7oXs9q6G78H
FOgiPPD4vkQe5vCorJXeEwf8Pt4y07UZeqfZdOYc3YnQeZs+Anq1Zbt0uUuF35as
uyVYdL1hv3UOPec3UT3Ch0MM/A5ECpWYEXGF8v9xcwoywzqiwcfPBb6p6fcPPvFf
vU2sNAceRLdeL/QZQ4Zk/MBdUyCN8+qXfsSDtSBQ2+mDHZ2F+oeyURVialctxvKV
aFfBkiOPRLj6VA2UHp15u4pnLtcBViuI6B4asVlAMkl8er3KhIzL9DqsyBCWp91b
nOh85Z2sPipVx7IhtZHCo5aigKbRdSPkMex6LtkCqO+KwlyPHzeQzRiFy6QLZCXQ
+60S4zlJyGaXFMdc5nvZxOEvUlKKSUu3o5sUnomdfI2Rt5shJ5h+fJ/8Xi207gil
R2oXl9HG9x0jxNmyzaEuztrUF7ErO5msGjrDV7XH3MAPx9ic4Z6xHWJvf2CilMHJ
PfGc4/arkL48LA9htHzoaM8HGTR8ZYZ9g9TgZ63PxdmOSq6gHDsQXUNZBb4n0tkT
v2qGkNrCNcmZrFoLXx1oJh0nyItqRM4VykxUyv4dmebRX0Rh/18iTfwbVEOEJdnt
nhVq2jfmXET4Y1IvcGAz9REM89hM9FPzTgX6DUYqjM1wZuoHHmzg6SGSRoRWnvr6
5chqjxz81MuSkq0Y3A9d
=lS5E
-----END PGP SIGNATURE-----

--0Jvts4GN6yjOXGfXNldH1UoQkRrzjT8Nr--
