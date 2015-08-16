Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35216E00A84; Sun, 16 Aug 2015 00:23:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51468E006BC
	for <yocto@yoctoproject.org>; Sun, 16 Aug 2015 00:22:57 -0700 (PDT)
Received: by pabyb7 with SMTP id yb7so86249620pab.0
	for <yocto@yoctoproject.org>; Sun, 16 Aug 2015 00:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=kuxLdZ4rroCuJJ+uNI3qFJWzpu9gOl6OjraO3J3sa2I=;
	b=gFQTMmHQ7spc0kEYM2tHLtkGkXWK/tHuSR5x0gytixN8zKEPXNdaiGy8sFCCg9GnhK
	EuSTcgDK8WZESY69hgXvyr8jJqcdB/8PYwy2ncKOAVCKk/bX/gQaT6/N2gdHuiB7VtVb
	IldFLp4IPmvtXIup2XUtl+t3T1CX3KE9kM3plyhskeoAnuXAqfESta2y2IG1UEfn8urH
	gCC9SooO6ZzayTFiXEhTAeqEXWoBD5lwbhaAEy1OZl01uUZw44mG0Q8/6zd1YX1aRu7R
	rPWL3S3GD/BRdoI0vIvtMP2LzFtDq/wfsIwjh4asS3Bzfwi3ExRsBQ3WNo+l2GH3eSM+
	cyVg==
X-Received: by 10.67.5.36 with SMTP id cj4mr24085662pad.140.1439709776684;
	Sun, 16 Aug 2015 00:22:56 -0700 (PDT)
Received: from [192.168.0.13] (c-76-103-142-85.hsd1.ca.comcast.net.
	[76.103.142.85]) by smtp.gmail.com with ESMTPSA id
	pi9sm10611802pbb.96.2015.08.16.00.22.55
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 16 Aug 2015 00:22:55 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAAVaN8y3kCLAiVS3RiE=Effd59y5shk=YX-0sFiKMPLE06VOWQ@mail.gmail.com>
Date: Sun, 16 Aug 2015 00:22:51 -0700
Message-Id: <86A285F2-5A0E-4DD6-AD90-C75DF2369EDE@gmail.com>
References: <CAAVaN8y3kCLAiVS3RiE=Effd59y5shk=YX-0sFiKMPLE06VOWQ@mail.gmail.com>
To: Andy Ng <andreas2025@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org
Subject: Re: Pickup the latest changes
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
X-List-Received-Date: Sun, 16 Aug 2015 07:23:00 -0000
X-Groupsio-MsgNum: 26134
Content-Type: multipart/signed;
	boundary="Apple-Mail=_891470EB-CCB5-40B9-A2C8-DC7632CF5BC7";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_891470EB-CCB5-40B9-A2C8-DC7632CF5BC7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jun 25, 2015, at 10:52 AM, Andy Ng <andreas2025@gmail.com> wrote:
>=20
> Hi
>=20
> I would like to make a Yocto recipe that picks up a package from the
> server that has the latest timestamp. It has the same filename but,
> differnt timestamp, how do instruct my recipe to check the timestmp of
> the tar.bz2 file and try to get the latest?
>=20

it doesn=E2=80=99t work with tarballs that way, if you were developing =
using SCMs then you could do this by using AUTOREVs
but if you control the tarballs then you may create a symlink which does =
not change and then always perform bitbake -ccleanall
on your recipe and let bitbake fetch it. But usually when using tarballs =
OE like to use locked versions.

> thanks
> Andy
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_891470EB-CCB5-40B9-A2C8-DC7632CF5BC7
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXQOksACgkQuwUzVZGdMxTmKgCfdEA7ejPM5OYwGMxyWR2RQO+5
CwQAniyG0FvcGRawPlhU7dVHV6iw3E4X
=xWRX
-----END PGP SIGNATURE-----

--Apple-Mail=_891470EB-CCB5-40B9-A2C8-DC7632CF5BC7--
