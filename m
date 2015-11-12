Return-Path: <toby.gomersall@smartacoustics.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76E72E00B3D; Thu, 12 Nov 2015 01:17:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [80.241.60.212 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx1.mailbox.org (mx1.mailbox.org [80.241.60.212])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34CC2E00AB5
	for <yocto@yoctoproject.org>; Thu, 12 Nov 2015 01:17:33 -0800 (PST)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.mailbox.org (Postfix) with ESMTPS id 2B7D24007D
	for <yocto@yoctoproject.org>; Thu, 12 Nov 2015 10:17:32 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
	by gerste.heinlein-support.de (gerste.heinlein-support.de
	[91.198.250.173]) (amavisd-new, port 10030)
	with ESMTP id 49j_5rbCIjKf for <yocto@yoctoproject.org>;
	Thu, 12 Nov 2015 10:17:28 +0100 (CET)
To: yocto@yoctoproject.org
From: Toby Gomersall <toby.gomersall@smartacoustics.co.uk>
X-Enigmail-Draft-Status: N1110
Message-ID: <5644591F.1090703@smartacoustics.co.uk>
Date: Thu, 12 Nov 2015 09:17:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
Subject: Building yocto with hard float support
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
X-List-Received-Date: Thu, 12 Nov 2015 09:17:37 -0000
X-Groupsio-MsgNum: 27302
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="UU60anM7eKF0MDBof1QxAxPD7jRU2udtD"

--UU60anM7eKF0MDBof1QxAxPD7jRU2udtD
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

I want to build yocto with hard float support. I understand that I can
point the EXTERNAL_TOOLCHAIN variable at the appropriate external hard
float compiler (gcc-5-arm-linux-gnueabihf). However, I was wondering if
there was anything within the yocto project to do this?

I'm concerned that future updates to an external compiler might affect
my build and I would prefer to use a method from within the yocto project=
=2E

Thank you,
Toby


--UU60anM7eKF0MDBof1QxAxPD7jRU2udtD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWRFknAAoJEJFfznYik92Ws9YP/Au5qrbf2XfqkhrprM453fQy
ptM1ybVCu/C397Ys8+7NAa3yzPLm18T452pYGNSQ3op6mtfe8iL9lhxL8By2IfoR
WQEqFSY/n7Xc34ASBhoUIBKFnUuYFqdbwaRaZsuLY/ioc1KJ9E9lzo6FHpiFgqQu
SaNkGhD8qFHzxERsB7QE/ujNsvozK3kHIALsFOP0t7IhrDFhLrfQ+yLhSW1Ms0eu
LR6P62WXcKoFYYUDtqLudSgECdUNPpTc2uh1ld4T1HpKDmOPQW/hThO0JN5fEson
parBuFyEIGqezNbrt8Zds1pi8h2eAVemvrSUiPxhegegSrqPTyzCsP16B+GqDi+j
ljdeyTXWG9xMmvNxFxRVLWUKhu4U8OqS0vzAV3SOtDXdSoPneQrb5/7kEtMjM7Qe
C/ZZb45kkyRyjfDQfSTD0ZplfPcnYihtGIUXM/vlwH+lrCmuPMYQXJ0sNzvpO28t
TfQjxAZaDuvhd67Q+SRtlLnRIkch+TPOfGNU5Sk4FoiDWDSk+G1Nct8xKO6NrRJ+
uQnmKYqWaXNHFy1MQlduYXZFlONOKZfeLyz7crY7fiabDuguHvQch/HhiQ5zsUhk
e6uHtpaWqtiRxTlqPXmAcNOqlaPsG68v6Gb0gcC7rWoY4LiIEpzUQ9PRF+/ZGcxD
VNFGtRkKj2hzy8xUdBca
=XRpU
-----END PGP SIGNATURE-----

--UU60anM7eKF0MDBof1QxAxPD7jRU2udtD--
