Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1ECFE0073D; Thu, 14 Jan 2016 09:50:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02C97E00444
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 09:50:42 -0800 (PST)
Received: by mail-pf0-f174.google.com with SMTP id q63so106265504pfb.1
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 09:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=7w7cWUBYBTvhEa5CKcfaG1Xbc8J9auB6lPb0HdBAxWY=;
	b=shnsmjQJVlmpBhBrgsiE7nWY+btXRMDm4IUXMPdiEeRWnfPGmYWWYG/K2EoxZXNuw7
	vp74Ifru4jkq5A49KR8rDizEzrpCTghn+H3JGwAUoOBqFD38Eo2nQjVdYfjcdzzqp8tl
	jX19prwCAFDWZHvzhajarhuXzGg/HsMHk+BgpiZJRARrF+j/UZuP6hKHDPjiIuV5p3s7
	IWhn7b9fEz6g6qbQMEU4BOpSWtvjhg8QnDedhFDKCnIxUjYT6ofgOfwSVxIx24Z0zLwM
	+cJypxPYrPLb08mFmFCBcdCaADIU1IM7efhh/p93xs2W4TXFnbUeqgvtg6tQfYWGO1OV
	vfLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=7w7cWUBYBTvhEa5CKcfaG1Xbc8J9auB6lPb0HdBAxWY=;
	b=QdSSVz4dBKsg88/BF6wcWiKlbW37Q/+PCBvOQdbrYQMm+A0Wet530p5XoHE946N54l
	CdyNi43L90aRUtxCX08yavSNYezNswR4pTYGsJJKxRYcODBqxQu9POVK8S55nmtJnOol
	vTIWaqs5njPtZDM/1EqTJ7BVS1cz7VQx9HAmNMwVzXPpC4EZ+s2xOf4Q76ROOgTV8A5w
	5gd4bRljBOgEejpit7+zJmSW+k+J6FgqO0J1rAH4FAwXkTZurkts+n+0gU9t0l6pNh/L
	1ObcKRdOYhzkr9JwPVvRUQ0kB26MQrre6FLn2nUW86pqQB+rqQfioQ68fQgvTPhe3fnL
	pGqQ==
X-Gm-Message-State: ALoCoQklOyWqUq0PUAhGG5KmmTtWIdbM4T64ZKtvjkrmWoTQuQTB5dypq8f9nszkUl4Rbhl4p+P9BeNsR64SUySZ/IyPh8YzJQ==
X-Received: by 10.98.93.195 with SMTP id n64mr8034150pfj.67.1452793842600;
	Thu, 14 Jan 2016 09:50:42 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:4c4c:5f92:7d4d:1d28?
	([2601:646:8802:5d5c:4c4c:5f92:7d4d:1d28])
	by smtp.gmail.com with ESMTPSA id
	m87sm10684596pfi.47.2016.01.14.09.50.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 14 Jan 2016 09:50:41 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
X-Priority: 3 (Normal)
In-Reply-To: <1452783285.1696717@apps.rackspace.com>
Date: Thu, 14 Jan 2016 09:50:41 -0800
Message-Id: <E7570BB5-2C0C-4F99-BFF8-AC2924D5BB18@gmail.com>
References: <1452783285.1696717@apps.rackspace.com>
To: Scott Ellis <scott@jumpnowtek.com>
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][coreutils] Add attr build dependency
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
X-List-Received-Date: Thu, 14 Jan 2016 17:50:44 -0000
X-Groupsio-MsgNum: 27995
Content-Type: multipart/signed;
	boundary="Apple-Mail=_DE06E2E9-DAFA-417B-8493-532449C8E3F4";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_DE06E2E9-DAFA-417B-8493-532449C8E3F4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Scott

Thanks for patch. You might want to send into to oe-core mailing list.

> On Jan 14, 2016, at 6:54 AM, Scott Ellis <scott@jumpnowtek.com> wrote:
>=20
> Fixes this warning:
>=20
> WARNING: QA Issue: coreutils rdepends on libattr, but it isn't a build =
dependency? [build-deps]
>=20
> Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
> ---
> meta/recipes-core/coreutils/coreutils_8.24.bb | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/meta/recipes-core/coreutils/coreutils_8.24.bb =
b/meta/recipes-core/coreutils/coreutils_8.24.bb
> index f042346..47a25f3 100644
> --- a/meta/recipes-core/coreutils/coreutils_8.24.bb
> +++ b/meta/recipes-core/coreutils/coreutils_8.24.bb
> @@ -7,7 +7,7 @@ BUGTRACKER =3D "http://debbugs.gnu.org/coreutils"
> LICENSE =3D "GPLv3+"
> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Dd32239bcb673463ab874e80d47fae504\
>                     =
file://src/ls.c;beginline=3D5;endline=3D16;md5=3D38b79785ca88537b75871782a=
2a3c6b8"
> -DEPENDS =3D "gmp libcap"
> +DEPENDS =3D "attr gmp lib cap=E2=80=9D

while this fix is good. We can make this into a packageconfig knob

PACKAGECONFIG[attr] =3D "--enable-something,--disable-something,attr,"

> DEPENDS_class-native =3D ""
>=20
> inherit autotools gettext texinfo
> --
> 2.5.0
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_DE06E2E9-DAFA-417B-8493-532449C8E3F4
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlaX3/EACgkQuwUzVZGdMxT39ACfWfHSs2zkAi9/nz1Dott8lPRx
XokAn16/Gl6BVmwueHjR2jUJb7NXJ8wq
=ibqm
-----END PGP SIGNATURE-----

--Apple-Mail=_DE06E2E9-DAFA-417B-8493-532449C8E3F4--
