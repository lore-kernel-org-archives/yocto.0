Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3710E00805; Fri, 27 Sep 2019 07:03:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [46.105.39.154 listed in list.dnswl.org]
X-Greylist: delayed 342 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 Sep 2019 07:03:53 PDT
Received: from 5.mo177.mail-out.ovh.net (5.mo177.mail-out.ovh.net
	[46.105.39.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50A3BE00805
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2019 07:03:53 -0700 (PDT)
Received: from player159.ha.ovh.net (unknown [10.109.146.50])
	by mo177.mail-out.ovh.net (Postfix) with ESMTP id 0627410C78C
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2019 15:58:09 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player159.ha.ovh.net (Postfix) with ESMTPSA id 89591A38EF09
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2019 13:58:09 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CAA=hcWSriyGnbRTGjj26ef86-h=ePNWiOxoWU9S=XrDe1y+gtA@mail.gmail.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
	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
	0f2bcrTp9w==
Message-ID: <b125be44-41fe-d1a0-374f-c005770734bb@3mdeb.com>
Date: Fri, 27 Sep 2019 15:58:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAA=hcWSriyGnbRTGjj26ef86-h=ePNWiOxoWU9S=XrDe1y+gtA@mail.gmail.com>
X-Ovh-Tracer-Id: 1545016148813688489
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrfeeigdeilecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecu
Subject: Re: kernel module and drivers missing in final image
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
X-List-Received-Date: Fri, 27 Sep 2019 14:03:56 -0000
X-Groupsio-MsgNum: 46766
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="RYKPqoLWPMLj7l22ei3Fq6LhpDMbz0qSk"

--RYKPqoLWPMLj7l22ei3Fq6LhpDMbz0qSk
Content-Type: multipart/mixed; boundary="VRaA0CB7MOJtfGk9B7uxq6UEWRvCmIbPP";
 protected-headers="v1"
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: yocto@yoctoproject.org
Message-ID: <b125be44-41fe-d1a0-374f-c005770734bb@3mdeb.com>
Subject: Re: [yocto] kernel module and drivers missing in final image
References: <CAA=hcWSriyGnbRTGjj26ef86-h=ePNWiOxoWU9S=XrDe1y+gtA@mail.gmail.com>
In-Reply-To: <CAA=hcWSriyGnbRTGjj26ef86-h=ePNWiOxoWU9S=XrDe1y+gtA@mail.gmail.com>

--VRaA0CB7MOJtfGk9B7uxq6UEWRvCmIbPP
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US


On 27.09.2019 14:01, JH wrote:
> Hi,
>
> I included emmy-w1-driver-sdiosdio in packagegroup.bb, but all drivers
> and kernel modules in emmy-w1-driver-sdiosdio are missing in the
> deploy image, any clues why, how to debug it, how to fix it?
It is not clear to me what do you mean by including it in packagegroup.bb=

and what stuff are you installing into the image.

If you wish to install all modules which were built, simply add
kernel-modules to your image via IMAGE_INSTALL variable.
> Thank you.
>
> Kind regards,
>
> - jh

--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: F1401D2E1CCB19EF
https://3mdeb.com | @3mdeb_com



--VRaA0CB7MOJtfGk9B7uxq6UEWRvCmIbPP--

--RYKPqoLWPMLj7l22ei3Fq6LhpDMbz0qSk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJdjhVwAAoJEPFAHS4cyxnv71gP/A/pYm8Rs5y6+vpRSs9qD0kQ
HSG7PMZroKbiaOTI1AhMlb2buIMHe6o5jXfdSo3trfphIGJGnhSXJLDHtBYilrT3
qMxyzQsA/GvOc1+H5OLaLp6MqcurlrPCvGY29jgY9CBCwxETHuIg5VmphyPClYKh
fFJ7F2D2g7WeZCWKfY/qhJCZAovK3/Xk2t7f5G6+Q9ESF15RxuP5DfJpexsOJAES
OxPjwq2UMh5riZlWmmF2p7QjhSQvft09CivW0wmGZDR/O/K+pNWJe7hmsgUK4w3U
TLadr06dk/6YOz3PGYd26ENQTBse8ZbMCgPGJD1iF0kUXSz73M2GNTffGtF1siSS
a3wpKFKvirDvPwu7x2V2QayDvod+yP2Ij4Kgf9/y+XvqksmnqOHQSrX5AhJbeAr3
JTBdBaOP+kUc/w6iFcz/+IznDW0J6/tuAJ1Bkz8WzS+e3kaHmW/o/tS0atvS7BKo
c3NSSDZ+66vH9K9KUqbCtkDkriQZp3fVV/Lo04PgCuwTEbA5Vt+ReeavQSzt/ZZn
l7M6yUH6rRzCHvDPuXQqEvUp13xOdVIz8/4KgJF4NygArofSR+8xIlhdBLlKDQ60
S12aItWx5o5tcQJ0Ou16Uf5EdVaYHCPexeQYDtsHUVZ8o++tWgSQVF47ru8K1BCT
IQTuTG/d3t/5CAvWQ5bQ
=I+kz
-----END PGP SIGNATURE-----

--RYKPqoLWPMLj7l22ei3Fq6LhpDMbz0qSk--
