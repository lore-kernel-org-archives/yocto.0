Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83B11E00E0F; Sat, 20 Aug 2016 11:38:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D53B0E00972
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2016 11:38:50 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id i6so3404317pfe.0
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2016 11:38:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=Am8vSveTbZDZZgAxCIQvCtwu/48tamtjTD9X+q1rfrU=;
	b=lyia029jQ+1hOfqfDMfR55N/UYaA0/QE2qMo9lgM7Y2Fuc9R/Irf8o2gzfrBGXtuuz
	xjHlQxV6Ej6+1P7fNGEmA8mzRpt0uRF+/7E+qBj4Q2AVcLXZPnArGBCl/uNcjX1kdGbH
	zgse94GwMFuaVqndx5m1lL0Ef1lULZSFICirT8kikCANXibuxyjPOWx/03SbFtOSSoHt
	8JuZ/eaU+F1mo4Qfg7w7yXJn9jnfJ1dd3/pD3yGjx0ya5sbRGurVacN2gPPOT9p/eLK6
	Z/5ImOBDH54ZfujqfTScXc5UOn9F3rUQEEZMgrw/ZSvgDqrL8CHEWGQuKd/83eERVdcP
	5tag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=Am8vSveTbZDZZgAxCIQvCtwu/48tamtjTD9X+q1rfrU=;
	b=kPgY1iW+8PVUorFcsyCtRJfhEb1UNysf3YLpa8J57MAHwRlO95CgljBr4lk0nQUBhC
	RWjm17sS46yOprjW/UFiRAue6lqB9Ow3cjwNyRZiaKuxB8j3LlKpDsPgqg71R6LmN+of
	jJRxpEp5xGE/Ah/6z/D5Ay2TGC+RMqDWINTSmr9i+os9eOb9dLcW4qLJaYvBiHemW6L5
	lgMUxsNJGdYCasEQQ28SMtWHfy3pvqk/+CyW1Bcr77iEm5EqadLNHrm0wlLmpiwOTUa/
	VPdNCYmBqZZxqCIj1zhE6LmvXtRkVLDvzGcIeRoFZgECBZw70f0IpnDjyeu2HXh3721B
	0nDQ==
X-Gm-Message-State: AEkoouuUjqFXPK4bLBTlohl1UduZZrQBbtcX1kl3zOZ/I+mnITi8PlIc+zp5Sdyz7vCWwg==
X-Received: by 10.98.69.201 with SMTP id n70mr26738277pfi.64.1471718330105;
	Sat, 20 Aug 2016 11:38:50 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:6946:5275:9a40:9b8e?
	([2601:646:8882:b8c:6946:5275:9a40:9b8e])
	by smtp.gmail.com with ESMTPSA id
	tr1sm20644791pab.19.2016.08.20.11.38.49
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 20 Aug 2016 11:38:49 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1471716241-7010-1-git-send-email-juro.bystricky@intel.com>
Date: Sat, 20 Aug 2016 11:38:57 -0700
Message-Id: <6DB32F8B-568A-4D0A-836F-C5168FC5204B@gmail.com>
References: <1471716241-7010-1-git-send-email-juro.bystricky@intel.com>
To: Juro Bystricky <juro.bystricky@intel.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mingw][PATCH 0/7] Updates for krogoth/master
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
X-List-Received-Date: Sat, 20 Aug 2016 18:38:51 -0000
X-Groupsio-MsgNum: 31575
Content-Type: multipart/signed;
	boundary="Apple-Mail=_01390D42-57DC-4608-8AFD-2B1D0801376A";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_01390D42-57DC-4608-8AFD-2B1D0801376A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Aug 20, 2016, at 11:03 AM, Juro Bystricky =
<juro.bystricky@intel.com> wrote:
>=20
> Krogoth recipes fail to cross-compile for Windows using meta-mingw =
layer.
> In particular, the following should/used to work (jethro with =
meta-mingw layer):
>=20
> SDKMACHINE=3D"i686-mingw32"
> MACHINE=3D"qemux86"
> TCLIBC=3D"baremetal"
> bitbake gcc-cross-canadian-i586
>=20
> SDKMACHINE=3D"i686-mingw32"
> MACHINE=3D"qemux86"
> bitbake meta-toolchain
>=20
> This patchset updates meta-mingw layer so the above work for krogoth =
as well.
> There is no "krogoth" branch for meta-mingw, these patches should go =
there once the
> branch exists.
> FWIW, I tested these patches with the current poky master as well, and =
succeed in cross-compiling
> of the most common recipes (for both SDKMACHINE=3Di686-mingw32 and =
SDKMACHINE=3Dx86_64-mingw32)
> such as:
>    bitbake gcc-cross-canadian-i586
>    bitbake gdb-cross-canadian-i586
>    bitbake meta-toolchain
>    bitbake core-image-minimal -c populate_sdk
>=20
> [YOCTO#10143]

Whole series is fine.

>=20
>=20
>=20
> Juro Bystricky (7):
>  *-mingw32.conf: Upgrade for krogoth
>  gettext_0.19.4.bbappend: Update for later versions
>  binutils-cross-canadian_2.25%.bbappend: Work with all 2.2* versions
>  gcc-runtime: Drop libitm for mingw32 runtime
>  gmp_6.0.0.bbappend: Removed
>  mpfr_3.1.3.bbappend: Work with all 3.1.% versions
>  gdb-cross-canadian_7.9.1: Work with all 7.% versions
>=20
> conf/machine-sdk/i686-mingw32.conf                               | 7 =
++++++-
> conf/machine-sdk/x86_64-mingw32.conf                             | 7 =
++++++-
> recipes-core/gettext/gettext_0.19.%.bbappend                     | 6 =
++++++
> recipes-core/gettext/gettext_0.19.4.bbappend                     | 2 =
--
> recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend  | 5 =
+++++
> recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend | 5 =
-----
> recipes-devtools/gcc/gcc-runtime_%.bbappend                      | 1 +
> recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend             | 7 =
+++++++
> recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend           | 5 =
-----
> recipes-support/gmp/gmp_6.0.0.bbappend                           | 3 =
---
> recipes-support/mpfr/mpfr_3.1.%.bbappend                         | 1 +
> recipes-support/mpfr/mpfr_3.1.3.bbappend                         | 1 -
> 12 files changed, 32 insertions(+), 18 deletions(-)
> create mode 100644 recipes-core/gettext/gettext_0.19.%.bbappend
> delete mode 100644 recipes-core/gettext/gettext_0.19.4.bbappend
> create mode 100644 =
recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend
> delete mode 100644 =
recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
> create mode 100644 =
recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend
> delete mode 100644 =
recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend
> delete mode 100644 recipes-support/gmp/gmp_6.0.0.bbappend
> create mode 100644 recipes-support/mpfr/mpfr_3.1.%.bbappend
> delete mode 100644 recipes-support/mpfr/mpfr_3.1.3.bbappend
>=20
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_01390D42-57DC-4608-8AFD-2B1D0801376A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAle4o8EACgkQuwUzVZGdMxSUrgCfa3CAcXTklfq6PLX2BEJeKiOU
Nu8AniCuqhrnZrpELYltSI5SCIPE+ML3
=9YjI
-----END PGP SIGNATURE-----

--Apple-Mail=_01390D42-57DC-4608-8AFD-2B1D0801376A--
