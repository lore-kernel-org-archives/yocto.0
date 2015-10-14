Return-Path: <allen.curtis@curtisembedded.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20DA3E00AB0; Wed, 14 Oct 2015 11:36:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [70.40.196.235 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from gproxy7-pub.mail.unifiedlayer.com
	(gproxy7-pub.mail.unifiedlayer.com [70.40.196.235])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 9CA7CE006D5
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 11:36:08 -0700 (PDT)
Received: (qmail 2558 invoked by uid 0); 14 Oct 2015 18:36:05 -0000
Received: from unknown (HELO cmgw3) (10.0.90.84)
	by gproxy7.mail.unifiedlayer.com with SMTP; 14 Oct 2015 18:36:05 -0000
Received: from box410.bluehost.com ([69.89.31.210]) by cmgw3 with 
	id VCbz1r00g4Y0hd901Cc23A; Wed, 14 Oct 2015 18:36:03 -0600
X-Authority-Analysis: v=2.1 cv=Zs1+dbLG c=1 sm=1 tr=0
	a=ETof7DMrXRHAC+dJixH5gQ==:117 a=ETof7DMrXRHAC+dJixH5gQ==:17
	a=cNaOj0WVAAAA:8
	a=f5113yIGAAAA:8 a=3_4UIzzJAAAA:8 a=mHfT8ucao3sA:10 a=o0XNLtqhUCMA:10
	a=5lJygRwiOn0A:10 a=pGLkceISAAAA:8 a=bx6WbTgyElvAoHaSYUgA:9
	a=CjuIK1q_8ugA:10 a=CFrHPncw2f3MJoYW4K4A:9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=curtisembedded.com; s=default; 
	h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=XzQ+OlSpqthSBwo8Bh6q71SQNeI65yZK7PmGs2ImLno=; 
	b=F4BD5MH+hdam8oKjgAaTj7X1yeS6GPA+DM6ZTqzmNvSkSmcfv8lIvwRkqbt56XnJo8b1zGE0KubgV9bfVpEQ9buBp7n7nsiyNSfpLdg9jyQ6YXiyEUF7nxvn1YxAHVVZ;
Received: from [68.225.237.157] (port=57600 helo=[192.168.0.3])
	by box410.bluehost.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.84) (envelope-from <allen.curtis@curtisembedded.com>)
	id 1ZmQu9-0003lB-2G; Wed, 14 Oct 2015 12:36:01 -0600
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
From: Allen Curtis <allen.curtis@curtisembedded.com>
In-Reply-To: <E534C686-C0FF-472D-B769-EAFB2C35D302@gmail.com>
Date: Wed, 14 Oct 2015 11:35:44 -0700
Message-Id: <B86EACE6-50D9-40BA-8356-36C30AFD930D@curtisembedded.com>
References: <24D62272-F484-4CBA-9113-6D83AD754818@curtisembedded.com>
	<E534C686-C0FF-472D-B769-EAFB2C35D302@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1510)
X-Identified-User: {2323:box410.bluehost.com:actwoent:curtisembedded.com}
	{sentby:smtp auth 68.225.237.157 authed with
	allen.curtis@curtisembedded.com}
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: mtd-utils floating point exception
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
X-List-Received-Date: Wed, 14 Oct 2015 18:36:13 -0000
X-Groupsio-MsgNum: 26843
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A37D235F-D30D-4525-93A0-16AD0B67103D";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_A37D235F-D30D-4525-93A0-16AD0B67103D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



On Oct 14, 2015, at 10:16 AM, Khem Raj <raj.khem@gmail.com> wrote:

>=20
>> On Oct 14, 2015, at 9:32 AM, Allen Curtis =
<allen.curtis@curtisembedded.com> wrote:
>>=20
>> Hello,
>>=20
>> When I execute any of the mtd utilities from a Yocto AM335x build, =
they terminate with a floating point exception.
>>=20
>> Is this a known bug?
>=20
> Can you provide more details

What other details can I provide?
The build directory is =
"cortexa8t2hf-vfp-neon-.../mtd-utils/1.5.1+gitAUTOINC+9f107132a6-r0"

if I execute> flash_erase -j /dev/mtd11

It executes but exits with a message regarding a floating point =
exception.



--Apple-Mail=_A37D235F-D30D-4525-93A0-16AD0B67103D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJWHqCNAAoJECJAA8NZNansvi4QAKM6KvCdJs85+wknf8FFNWTl
0E+6TCYg3l82xtg834IoMdN3vKk5IIjUJe4aLo0wUJj/v6D7N2YGG8EBywuvWg/F
DBRhBbtXRmfN8D2Bva8Hcks064H8ACzRQhJgwKCACPvFS7ri0Tc8LIylpzm+xUj+
L3cDeulJ+rCIDS9j7DyR4k6ClSV0pYr4dOMQ5TV1kBeLildQAX5j7Vbjw2qzm6iL
faA51NWr7CCJKEEivJ5SqMLzDpagzswzNET4AcRiTgwV8PQaMKPiS/PsaUUN7ybZ
i8FF+gN/Qkz9wDmojXsYRJdzNt34Qt55FW7RvmJCyn3W7Cr8DtWeQKCqOmvEi21R
mSvBP8fuhkrWZ1YxetgHdGhSnn0jAmcygiUHO6PNqd2oInPmEdpjOojnS65whIu1
rEbSYHeUSTWzYQR/Jl1FQSIP5m7cd1t6dAoSQbXG28eNlHZvLs5qknwbwmrLyV66
d6sNaokU4AZQYG5PcflgVkNvoLEL9pPwNqCVvsBOOAbH9gpwSNgtrvD+nQqmIVK5
6ZRFEY+fSVXjq1Av3TIfOeUcgySYMnx526eutLkZXk6GEA4gJHKCelJPynOvkGYH
tmKrob7L+sifphjbK8+cC0kVIu6/GFlRx18y/+KMzFbVMRy3o3WQpPG448Dlr1ce
YV2k1PEmKa+nDcs7fdgp
=SfZM
-----END PGP SIGNATURE-----

--Apple-Mail=_A37D235F-D30D-4525-93A0-16AD0B67103D--
