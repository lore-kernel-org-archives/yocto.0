Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C3C4E008AE; Tue, 20 Oct 2015 14:49:53 -0700 (PDT)
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
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC13CE00843
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 14:49:50 -0700 (PDT)
Received: by pabrc13 with SMTP id rc13so32682948pab.0
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 14:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=RO9s9gDrjFZVunQ+6lCjkPByB9J/0SaHkeT2c05WH8c=;
	b=nv2hAvT2H4NRJ/vHMlHozWg9JN8rQCpTwEUk2e1vQs3Z5kC6qy6V8uMW/MSiM3za7m
	M2We7Iz8y45VBtEiiSxWjf/cqrdj4eLYdEPwNZETrl3jcD23uKCyiM6hKb6jklXDWRwA
	gSzM3tdpbl+S/N8PGTZoCEra4Qe17+2XOzT3SnVLik90oOZ3sTtxdXWj7nPxfI2d1KBg
	2sIhu6VrSjfVto1uvVmzoQxJnog9JzYhzdsI77kuCeoyzgDNYmxs3HwQEKl2ArYLVUaQ
	r/s8jujFsIorUnBEjvns+8ysQWqICpMq5TsUaftI0bpe9GNyTvg+mIc9BMK6kZzmdgbO
	Xgrg==
X-Received: by 10.68.88.193 with SMTP id bi1mr6352040pbb.49.1445377790354;
	Tue, 20 Oct 2015 14:49:50 -0700 (PDT)
Received: from [10.244.115.139] ([50.141.34.7])
	by smtp.gmail.com with ESMTPSA id
	be3sm5457653pbc.88.2015.10.20.14.49.48
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 20 Oct 2015 14:49:49 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.1 \(3096.4\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1445334560-69082-1-git-send-email-wenzong.fan@windriver.com>
Date: Tue, 20 Oct 2015 14:49:44 -0700
Message-Id: <653EC6A5-78B8-490E-B37D-B20083C49A9B@gmail.com>
References: <1445334560-69082-1-git-send-email-wenzong.fan@windriver.com>
To: wenzong.fan@windriver.com
X-Mailer: Apple Mail (2.3096.4)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][meta-selinux] libselinux, libsepol: depends on coreutils-native
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
X-List-Received-Date: Tue, 20 Oct 2015 21:49:53 -0000
X-Groupsio-MsgNum: 26926
Content-Type: multipart/signed;
	boundary="Apple-Mail=_11CCD9CD-391D-45D0-946E-2C9213756F18";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_11CCD9CD-391D-45D0-946E-2C9213756F18
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 20, 2015, at 2:49 AM, wenzong.fan@windriver.com wrote:
>=20
> From: Wenzong Fan <wenzong.fan@windriver.com>
>=20
> 'ln --relative' doesn't work on Ubuntu 12.04 that has ln 8.13. The

OE-Core has lnr script you can use that.

> changes involved by SELinux commit:
>=20
>  commit 71393a181d63c9baae5fe8dcaeb9411d1f253998
>  Author: Steve Lawrence <slawrence@tresys.com>
>  Date:   Mon Oct 20 15:46:17 2014 -0400
>=20
>    libselinux: libsepol: use ln --relative to create .so symlinks
>=20
>    The current build system assumes SHLIBDIR is ../../ relative to =
LIBDIR.
>    However, this isn't always the case. For example, Arch Linux sets =
both
>    LIBDIR and SHLIBDIR to /usr/lib, which results in broken symlinks.
>=20
>    Instead of making that assumption, create .so symlinks using ln
>    --relative so that the correct relative paths are used. Note that =
this
>    adds a dependency for the build system to use coretuils-8.16 or =
later.
>=20
> Just depends on coreutils-native to fix the issue.
>=20
> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> ---
> recipes-security/selinux/libselinux.inc | 2 +-
> recipes-security/selinux/libsepol.inc   | 2 ++
> 2 files changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/recipes-security/selinux/libselinux.inc =
b/recipes-security/selinux/libselinux.inc
> index d571a7c..b0f7bc4 100644
> --- a/recipes-security/selinux/libselinux.inc
> +++ b/recipes-security/selinux/libselinux.inc
> @@ -7,7 +7,7 @@ LICENSE =3D "PD"
>=20
> inherit lib_package pythonnative
>=20
> -DEPENDS +=3D "libsepol python libpcre swig-native"
> +DEPENDS +=3D "libsepol python libpcre swig-native coreutils-native"
>=20
> PACKAGES +=3D "${PN}-python"
> FILES_${PN}-python =3D =
"${libdir}/python${PYTHON_BASEVERSION}/site-packages/selinux/*"
> diff --git a/recipes-security/selinux/libsepol.inc =
b/recipes-security/selinux/libsepol.inc
> index b24ed28..9234f24 100644
> --- a/recipes-security/selinux/libsepol.inc
> +++ b/recipes-security/selinux/libsepol.inc
> @@ -8,6 +8,8 @@ LICENSE =3D "LGPLv2+"
>=20
> inherit lib_package
>=20
> +DEPENDS +=3D "coreutils-native"
> +
> # Change RANLIB for cross compiling, use host-tools $(AR) rather than
> # local ranlib.
> EXTRA_OEMAKE +=3D "RANLIB=3D'$(AR) s'"
> --
> 1.9.1
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_11CCD9CD-391D-45D0-946E-2C9213756F18
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlYmtvwACgkQuwUzVZGdMxR7GwCffXRAyuDCfIE9bV4soBRLW6dw
HAEAoI6GnRGRjQlm7INF1N3Wa5tE6QBg
=uW4H
-----END PGP SIGNATURE-----

--Apple-Mail=_11CCD9CD-391D-45D0-946E-2C9213756F18--
