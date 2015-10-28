Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31DF0E0071C; Wed, 28 Oct 2015 11:46:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75E13E0049B
	for <yocto@yoctoproject.org>; Wed, 28 Oct 2015 11:46:47 -0700 (PDT)
Received: by padhy1 with SMTP id hy1so8613824pad.0
	for <yocto@yoctoproject.org>; Wed, 28 Oct 2015 11:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=zXcDSRqKHSFz58tn006EPxz+xtV5v8NyQcDkgilnJyA=;
	b=DsBQR4XyfSvZeDALDIA17L5uABlQL6ARqSkGE53S217Z/8hdxfNpy/vn1Stgnxammr
	ayZ9UclQgya3mxG9Ng9M+q5Fr9BrGdXlxmC+xszJ4VqxEUUsZ/DNJRfgHmIEGkENRgXo
	xy9IyllCvUHOHQHszT9g0PeTBN1+1D4W9hgvArgzJRk7eNolBCVarCOJWOZn1qbXJim2
	z0sBQ30zrIy///8LbkqNlAXQjkH4v3kOBd8v3AaTtbIfMPVjnbAdy76KPLQS+s11AuKr
	KEV57y0lZPuC6CcRQ/VzalylHetCP5j5a1j4zilGL2g1C1l4tJVpWpoyzw9N9qjdGhOZ
	gw5A==
X-Received: by 10.66.122.33 with SMTP id lp1mr26297437pab.12.1446058007253;
	Wed, 28 Oct 2015 11:46:47 -0700 (PDT)
Received: from [192.168.129.253] (173-167-109-116-sfba.hfc.comcastbusiness.net.
	[173.167.109.116]) by smtp.gmail.com with ESMTPSA id
	w8sm46743070pbs.87.2015.10.28.11.46.46
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 28 Oct 2015 11:46:46 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.1 \(3096.5\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <C5143333-4B76-4AC2-B295-F63B89B4F14D@gmx.de>
Date: Wed, 28 Oct 2015 11:46:41 -0700
Message-Id: <0D9FEC4F-ADB0-4A68-AD17-D9EF2580EEFC@gmail.com>
References: <C5143333-4B76-4AC2-B295-F63B89B4F14D@gmx.de>
To: Virgilia Eigner <virgi200@gmx.de>
X-Mailer: Apple Mail (2.3096.5)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: External toolchain
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
X-List-Received-Date: Wed, 28 Oct 2015 18:46:49 -0000
X-Groupsio-MsgNum: 27074
Content-Type: multipart/signed;
	boundary="Apple-Mail=_45C43D06-A96A-4C35-BA29-A68CD252CA8D";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_45C43D06-A96A-4C35-BA29-A68CD252CA8D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 28, 2015, at 11:37 AM, Virgilia Eigner <virgi200@gmx.de> wrote:
>=20
> Hi,
>=20
> I am working on a image for my personal hardware.
> In this case I use to prefer my own toolchain (used before in =
buildroot).
> Now I am not sure how to proceed.
> Is it possible to include the old toolchain with a few chance setting =
in local.conf
> Or do i have to create my own Layer?
> How should i start with, are there some examples?
>=20


you can hook in external toolchains, e.g. look at =
https://github.com/MentorEmbedded/meta-sourcery
for some guidance

> -Yocto Version YP Core-Dizzy 1.7.2
> -My own customize hardware, with different interfaces
>=20
>=20
> best regards Lisa
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_45C43D06-A96A-4C35-BA29-A68CD252CA8D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlYxGBQACgkQuwUzVZGdMxSC7wCcDUSje6ZKgDsIh2QWhsoEOEkH
OyoAn2McgLNewAlBUSt6OtD0fqm0eKWS
=jMdw
-----END PGP SIGNATURE-----

--Apple-Mail=_45C43D06-A96A-4C35-BA29-A68CD252CA8D--
