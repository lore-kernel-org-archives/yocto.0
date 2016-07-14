Return-Path: <clopez@igalia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63DA5E00CAE; Thu, 14 Jul 2016 06:08:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.51.32.191 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Thu, 14 Jul 2016 06:08:06 PDT
Received: from smtp4.mundo-r.com (smtp3.mundo-r.com [212.51.32.191])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B628CE00C18
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 06:08:06 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2BtAQDzjIdX/5tjdVtcGgEBAQGDIFZ8jSqrP4F1BhcLhXcCgTE4FAEBAQEBAQFlJ4RdAQEBAwECdRELGAkWDwkDAgECARYvEwgCiDABCcAwAQEIAgEWCQWGKoRNhQyFDwWIEZEOgzaBbm6FOoMNiU+FYoZ3iSIeNoNzOjIBh20BAQE
X-IPAS-Result: A2BtAQDzjIdX/5tjdVtcGgEBAQGDIFZ8jSqrP4F1BhcLhXcCgTE4FAEBAQEBAQFlJ4RdAQEBAwECdRELGAkWDwkDAgECARYvEwgCiDABCcAwAQEIAgEWCQWGKoRNhQyFDwWIEZEOgzaBbm6FOoMNiU+FYoZ3iSIeNoNzOjIBh20BAQE
X-IronPort-AV: E=Sophos;i="5.28,362,1464645600"; 
	d="asc'?scan'208";a="168062268"
Received: from fanzine.igalia.com ([91.117.99.155])
	by smtp4.mundo-r.com with ESMTP; 14 Jul 2016 15:07:00 +0200
Received: from maestria.local.igalia.com ([192.168.10.14] helo=mail.igalia.com)
	by fanzine.igalia.com with esmtps 
	(Cipher TLS1.0:RSA_AES_128_CBC_SHA1:16) (Exim) id 1bNgLz-0001K2-G2
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 15:06:59 +0200
Received: from [192.168.10.140] by mail.igalia.com with esmtps 
	(Cipher TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim)
	id 1bNgLz-0001Qd-DI
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 15:06:59 +0200
To: yocto@yoctoproject.org
References: <CY1PR0101MB1594413BBE9700E6A3EFC6E9D7250@CY1PR0101MB1594.prod.exchangelabs.com>
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
	url=http://key.neutrino.es
Organization: Igalia S.L.
Message-ID: <57878E6D.5060005@igalia.com>
Date: Thu, 14 Jul 2016 15:06:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.8.0
MIME-Version: 1.0
In-Reply-To: <CY1PR0101MB1594413BBE9700E6A3EFC6E9D7250@CY1PR0101MB1594.prod.exchangelabs.com>
Subject: Re: Shorter build time?
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
X-List-Received-Date: Thu, 14 Jul 2016 13:08:08 -0000
X-Groupsio-MsgNum: 31058
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature";
	boundary="hTU4Mmlsw8dJg9Q8rT0GWHRLDugpMJeqi"

--hTU4Mmlsw8dJg9Q8rT0GWHRLDugpMJeqi
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 01/07/16 03:29, Takashi Matsuzawa wrote:
>=20
> Hello Yocto.
>=20
> Well, this may not be a very new topic, but I wonder if you have recent=
 suggetions.
> So far I have tried the followings and see some improvement, making the=
 build time to days to hours.
>=20
> 1) All of the directories, DL_DIR, SSTATE_CACHE, TMPDIR, DEPLOY_DIR are=
 on SSD.
> 2) .repo and working directory (where I synch my recipes) also on SSD.
> 3) Set BB_NUMBER_PARSE_THREADS/PARALLEL_MAKE/BB_NUMBER_THREADS to somet=
hing like 20, 30, etc.
> 4) Enable use of ICECC.
> 5) Use pigz, pbzip2, pxz instead of gzip, bzip2 and xz.
>=20

6) Selecting ipk instead of rpm speeds ups all the packaging steps.

@local.conf:
-PACKAGE_CLASSES ?=3D "package_rpm"
+PACKAGE_CLASSES ?=3D "package_ipk"


https://lists.yoctoproject.org/pipermail/poky/2011-May/006362.html


--hTU4Mmlsw8dJg9Q8rT0GWHRLDugpMJeqi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIcBAEBCgAGBQJXh45uAAoJEJZQic5rlfiCWWQP/1erkv83q1NIsv7qw/+VpzTt
JSrctmTHKZ3LjusXZTKvMFbF/iX4AfYs/A8Ud+9gBqX4ZdLfG3v6a+v04bKnZAQQ
cLwp5kVEl/s+ZuWmdeCC5Fsy9aDGSN+sEEYs3EXv/81SToeBDw91geRnIo5R9VlI
QGJ0O71d/msleTN6XpZxhR9IhsCJLCsKLWUQPfzrXJ4U43eRCW3hpL3WUYsvZIK8
ND2Twxu53xUZBSsjasOfWlrFKZ7YM6YO11qjIEdZYb/jCUwwhVrBYnIb4xxf22Xz
xqvojTOspqJy5csNkOs2iwDovxqBd+S62UNTvB0nvudxXfFGFQBqsIC93VZQ8ddu
Ar/lqF5MAURFgXUhvL+Pf0t9MgM/NHRW5f+XXMJ/kiQ+u5CoTA3ZzwA63qV4QAq+
TgXTYylDNKeVHjBUXbArCZiK9vBzUClQezQFTto3w6I3WY2Wg1Yjl/ofiN6RnknF
raV/UGOBJHyyKsEFTkHAzBUBHFBfL2h+mR/P/boCrCtzwJL1Op3X38/sp4vxti5g
1BJEPjYxtADSt+0LgXaSy+8hVds6Xj48qLyQERu/JAuV893iGPdridIvTYZPCFGc
9bBJZYKipreDJK5fwcZrhCQTpN1xbCiPp7czcKM0gmDmXZeQWch25srYbogcN5YD
BX8CsggRD+HWGjjSQgmX
=yFz/
-----END PGP SIGNATURE-----

--hTU4Mmlsw8dJg9Q8rT0GWHRLDugpMJeqi--
