Return-Path: <urs.fassler@bytesatwork.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CEAAE00874; Wed,  3 Dec 2014 05:20:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bytesatwork.ch (bytesatwork.ch [91.135.72.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD645E0080C
	for <yocto@yoctoproject.org>; Wed,  3 Dec 2014 05:20:53 -0800 (PST)
Received: from [192.168.2.20] (201-97.77-83.cust.bluewin.ch [83.77.97.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested) (Authenticated sender: urs)
	by bytesatwork.ch (Postfix) with ESMTPSA id 8C6171800310
	for <yocto@yoctoproject.org>; Wed,  3 Dec 2014 14:18:52 +0100 (CET)
Message-ID: <547F0E34.2040206@bytesatwork.ch>
Date: Wed, 03 Dec 2014 14:20:52 +0100
From: =?windows-1252?Q?Urs_F=E4ssler?= <urs.fassler@bytesatwork.ch>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CADuAu8Qw_EZdNBN15LMoYz9tLX8PBP7pYWc_AgXd-+41yrPEFA@mail.gmail.com>	<4B07ADD556F70043925DA2E9C5D4346D2FDB561C71@MSXBEBVT12.planar.net>
	<CADuAu8RKxbAHrm2JaYErf3vTu7UnRmnqMAvhb9pzqo8EQ0+oaA@mail.gmail.com>
In-Reply-To: <CADuAu8RKxbAHrm2JaYErf3vTu7UnRmnqMAvhb9pzqo8EQ0+oaA@mail.gmail.com>
Subject: Re: Headers missing in generated SDK
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
X-List-Received-Date: Wed, 03 Dec 2014 13:20:56 -0000
X-Groupsio-MsgNum: 22468
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="QEKCsMPDknTTRx08VRKHQLvKvXs0dj38n"

--QEKCsMPDknTTRx08VRKHQLvKvXs0dj38n
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi,
I added
  TOOLCHAIN_TARGET_TASK +=3D "my-super-package"
in the image recipe.

When I then populate the SDK against this image, I have my-super-package
in the SDK sysroot.

Regards
Urs

On 02.12.2014 20:45, Syed Moosvi wrote:
> Hi Matt,
>=20
>                I added the following but still not getting headers in t=
he
> generated SDK.
>=20
>  *RDEPENDS_${PN}-dev =3D ""*        # added to openssl bb file
>=20
> TOOLCHAIN_TARGET_TASK_append =3D " openssl-dev"   # added to local.conf=
 file
>=20
> Also, I don't get any errors when I don't add RDEPENDS_ but I think
> you were getting some errors.
> Any clues as to what I may be missing?
>=20
> Thanks,
>=20
> Syed
>=20
>=20
> On Wed, Nov 26, 2014 at 6:07 PM, Matt Schuckmann <Matt.Schuckmann@plana=
r.com
>> wrote:
>=20
>> Syed,
>>
>> Your problem sounds similar to a problem I had getting my own headers =
and
>> static library included in the SDK.
>> Check out this thread to see if it helps.
>>
>> https://lists.yoctoproject.org/pipermail/yocto/2014-September/021678.h=
tml
>>
>> Matt S.
>>
>>
>=20
>=20
>=20


--=20
--
bytes at work
Technoparkstrasse 7
CH-8406 Winterthur
Switzerland

phone: +41 52 213 79 79




--QEKCsMPDknTTRx08VRKHQLvKvXs0dj38n
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJUfw40AAoJEKKADLnESIBj6xwP/Aq8V0apuGPzoU0DWARxYWdI
OWP5QTPryvuD4Jk+y/qMhSQTzVL+nckoYGb+EPxKdq6doDd+sqkpJvQE/FwPBGV4
TOx8FL0nI8QZt5iYA41oCMtubDx6R+NY0728sI/5RXTmatokr+E7zkZi+uvhyLmg
ZNGpZRe4rvIyBHhK9ShPAOW5jXTDjvyP1GqYZdHumUZCwR95G47mqT+Ivc5bkKrC
syM3jacEo0xEeOA6hD0gKDZo6yu8ojDJjdenScXg4DUksb1SjmSRcy9GvjlJdcsh
ii+Rm6ybsuz3Jhl0kbkGlPkn4ZIhztG+nYUWmVzmTT1BheWyBLmnCwSo3tknx1oO
t7ugUTy3WBY3TLlz0EMNd1hzDhXvzWDt0uUfcOoPE3jD6+WLvSa6HZ7dq1hOC2i5
kdwWUB5HEpqpqsFWDj/Zoc5xGAJE/cBRxDUTeg5b8SD3KsDm901raJIXW+bHgr1r
WC/+uyEDun4YDIeOwzj56WvPd1d50rpAk1weJDYiNaxHJOnNA83DXmYjlUNDYiB0
dXtTQNCPUPY4gXRfc39/TvRBhle/Cj3Bhmq7Oh7Ftk5ArjWpnmB3HScTDhbzHHr5
W0cNsuNPPbR+32W50mXKoJFh1wiNcDLi72DCI+RnQBmAL37NhNNoTQ26YE65FWT6
1vWHYT+VfZ9BNEHiRSUT
=//e6
-----END PGP SIGNATURE-----

--QEKCsMPDknTTRx08VRKHQLvKvXs0dj38n--
