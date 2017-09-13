Return-Path: <o.mandel@menlosystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 403A3E00C62; Wed, 13 Sep 2017 05:19:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D6C3E00BE8
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 05:19:50 -0700 (PDT)
Received: from frontend03.mail.m-online.net (unknown [192.168.6.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3xsghj5k20z1qtNm
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 14:19:49 +0200 (CEST)
Received: from localhost (dynscan3.mnet-online.de [192.168.6.84])
	by mail.m-online.net (Postfix) with ESMTP id 3xsghj5GD5z1qqkS
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 14:19:49 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan3.mail.m-online.net [192.168.6.84]) (amavisd-new,
	port 10024) with ESMTP id VEzB4YS_O145 for <yocto@yoctoproject.org>;
	Wed, 13 Sep 2017 14:19:48 +0200 (CEST)
X-Auth-Info: U/uSZLwtGBDeHnNW02boL/yf1qH1IWpN9y/fqB+bFY50h+GDDbRB60qgkJzjr+Il
Received: from [10.0.0.72] (host-141-40-253-38.customer.izb-online.de
	[141.40.253.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 14:19:48 +0200 (CEST)
To: yocto@yoctoproject.org
References: <264515b7-d412-2188-ad66-003c0e3d0dd8@menlosystems.com>
	<20170913114356.rpb76i365g5r2vec@ad.chargestorm.se>
From: Olaf Mandel <o.mandel@menlosystems.com>
Message-ID: <675346a9-8126-76e1-abf9-40ba74527c7c@menlosystems.com>
Date: Wed, 13 Sep 2017 14:18:56 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20170913114356.rpb76i365g5r2vec@ad.chargestorm.se>
Subject: Re: Question about populate_sdk
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
X-List-Received-Date: Wed, 13 Sep 2017 12:19:52 -0000
X-Groupsio-MsgNum: 37843
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="2hORKjQKG002v8Lohj55TGBodBMCat2Q4"

--2hORKjQKG002v8Lohj55TGBodBMCat2Q4
Content-Type: multipart/mixed; boundary="ADE6JHJDqHeE2aXrHFNUvsvOB89OdETrl";
 protected-headers="v1"
From: Olaf Mandel <o.mandel@menlosystems.com>
To: yocto@yoctoproject.org
Message-ID: <675346a9-8126-76e1-abf9-40ba74527c7c@menlosystems.com>
Subject: Re: [yocto] Question about populate_sdk
References: <264515b7-d412-2188-ad66-003c0e3d0dd8@menlosystems.com>
 <20170913114356.rpb76i365g5r2vec@ad.chargestorm.se>
In-Reply-To: <20170913114356.rpb76i365g5r2vec@ad.chargestorm.se>

--ADE6JHJDqHeE2aXrHFNUvsvOB89OdETrl
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable

Hello,

Am 13.09.2017 um 13:43 schrieb Anders Darander:
-Snipp-
> See Yocto #11724, at https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
11724
-Snipp-
> Ah, a small test example? Perfect!
> Could you add it the bug above? It would likely make it easier to debug=
=2E
>=20
Done.

Cheers,
Olaf
--=20
Olaf Mandel



--ADE6JHJDqHeE2aXrHFNUvsvOB89OdETrl--

--2hORKjQKG002v8Lohj55TGBodBMCat2Q4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJZuSI2AAoJEFS9nbRiUh3/2EEH+gP6BApqL5SnpkiJnAM+Jkpo
9qvjpUmvusUtZEpEpanlGu4WJ3ooVmoQFeL5/2qJc6BpPqc3Ay4jP+D+hrE0iDmW
rNXzlHOwAtVSXYL+uAs/+nU+bSIMm26Nn8kgnJ0IPsZEwKDuUAJ6kPffUMplqgJu
Igl88hr0MPoqUBVIFrh7YSouRQcYbs0fG5hQ8uYhw5V1mnsqOHBd2113q8qoxQEq
kKCfMrVIvc/aqzyKDtQxZOKoCgp+di9pzHhRoyKXbCajBS1N2VdQmGX45kO0+jeV
oSSn/j1txuHkBdn+FV3wOjRgv4W7+I4J2gV+L0C1raVCZPqk9dmo4x+Y3xFhBug=
=5qFV
-----END PGP SIGNATURE-----

--2hORKjQKG002v8Lohj55TGBodBMCat2Q4--
