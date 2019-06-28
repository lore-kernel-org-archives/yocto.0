Return-Path: <ch@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EF8AE00BE9; Fri, 28 Jun 2019 13:56:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
X-Greylist: delayed 495 seconds by postgrey-1.32 at yocto-www;
	Fri, 28 Jun 2019 13:56:24 PDT
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DD29E00BE9
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 13:56:24 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 45b83r0YnQz1rC8T;
	Fri, 28 Jun 2019 22:48:08 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 45b83r0MMqz1qqkT;
	Fri, 28 Jun 2019 22:48:08 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id sgyQoomIS6k7; Fri, 28 Jun 2019 22:48:06 +0200 (CEST)
X-Auth-Info: F/1oPeuAL89LimSr0/iPj6HZ1Xrr1cWg8C1gdSe0PCo=
Received: from localhost (dslb-084-063-248-205.084.063.pools.vodafone-ip.de
	[84.63.248.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Fri, 28 Jun 2019 22:48:06 +0200 (CEST)
MIME-Version: 1.0
In-Reply-To: <CAMd7AX9SH60WPAhR87p=Za17rDOCf0CMsp3S7LFbgrT9Y+c2RQ@mail.gmail.com>
References: <CAMd7AX9SH60WPAhR87p=Za17rDOCf0CMsp3S7LFbgrT9Y+c2RQ@mail.gmail.com>
To: Aaron Biver <aaron.biver@gmail.com>, yocto@yoctoproject.org
From: Claudius Heine <ch@denx.de>
Message-ID: <156175488609.25365.211872127310867605@ardipi>
User-Agent: alot/0.8
Date: Fri, 28 Jun 2019 22:48:06 +0200
Subject: Re: Syntax for zero-padding a number in a recipe?
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
X-List-Received-Date: Fri, 28 Jun 2019 20:56:26 -0000
X-Groupsio-MsgNum: 45770
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature";
	boundary="===============2567205036423631179=="
Content-Disposition: inline

--===============2567205036423631179==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hi,

Quoting Aaron Biver (2019-06-28 18:44:40)
> Is there such a thing as zero padding a number in a recipe (or vice versa?
> I'd be just as happy starting with a zero-padded number, and converting it
> to non-zero-padded.

In bitbake you could do this with inline python:

	NUMBER =3D "1"
	NUMBER_PADDED =3D "${@"{:02d}".format(d.getVar("NUMBER", True))}"
	NUMBER_PADDED2 =3D "0012"
	NUMBER2 =3D "${@str(int(d.getVar("NUMBER_PADDED2", True)))}"

I have not tested this and it could possible be done more elegant, but
it should work.

regards,
Claudius

> The crux of the dilemma is that I must have zero-padding for file-naming,
> but I CAN'T have zero padding in these numbers when I pass them to the C
> code (or the C code treats them as octal).
>=20
> I'd like to start with:
> VERSION_MAJOR=3D"1"
> VERSION_MINOR=3D"19"
>=20
> And turn this into "01" and "19" for purposes of naming the output file
> from the recipe.
>=20
> I've tried the bash-style printf -v, but the recipe kicks the printf lines
> out with a parse error.
>=20
> VERSION_MAJOR=3D"01"
> VERSION_MINOR=3D"19"
>=20
> VERSION_MAJOR_STR=3D""
> VERSION_MINOR_STR=3D""
>=20
> printf -v VERSION_MAJOR_STR "%02d" VERSION_MAJOR
> printf -v VERSION_MINOR_STR "%02d" VERSION_MINOR
>=20
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-54 Fax: (+49)-8142-66989-80 Email: ch@denx.de

           PGP key: 6FF2 E59F 00C6 BC28 31D8 64C1 1173 CB19 9808 B153
                             Keyserver: hkp://pool.sks-keyservers.net

--===============2567205036423631179==
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Description: signature
Content-Type: application/pgp-signature; name="signature.asc"; charset="us-ascii"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEb/LlnwDGvCgx2GTBEXPLGZgIsVMFAl0WfQAACgkQEXPLGZgI
sVMGWQ/+Os9JTnEwFlZ7CsH+MAmP1R0v1MzDjIhEB2aHEoGSnu/0osYW9SrCVyIl
yj77gboXqFitMHHiyPMQsnx0klYBqLeWL+w8pDDvf6VojomZu0ugjCRkiZ2jwqqV
UkIRb/13yiok/PAHYDMPLZTls1U4rGez3o0c0Yj0lIM+ovdvJ55/hm22R/oEiFLG
f5/k7kNFQC5XiBbIIDouAzhV/L2qosWEfUr5WFVV4ZjeRJ+l4bRBaP/0DbWJH5yg
66U4NAlppZLCtUULWhcx8HtLE3qCmWbFq0CMwcisBiqP8yIDi3zqaD9/PNl96quM
1XWrA3cUV+hbsSXVS7gTdmTiqM8HIJgpk32a6hdg6mcHq/qji7U03bgl1p6pg/oi
P5D2ixIMcjt4aaKjhpvqnNVNPFSlPZ68c3eC/pr1S/SiDAX/h+ScQ1D66bJrzgYK
zkrj7iHnPcVaYD52Wi15Q99pTA8pF+zLUdUR05OGKbIFzCRviJSy/vx9BQYiHjb1
IZDPoMWJ2u+aHLAeFT91GFLFecVCOLhAV2rhohz7+3PTKv9cdhhc2+gaQXWENAsH
ImMViquy0JFM8gW51zMRTVqeDSDCZNAqusTeCUTNeb6bRm6/wg3/xoVJlWQM6Q94
wF7Z43d8ZTN5HpIG3o9L6IohOEsQM2K5WYdMnYoSWqPDNGQHMkE=
=A6S1
-----END PGP SIGNATURE-----

--===============2567205036423631179==--
