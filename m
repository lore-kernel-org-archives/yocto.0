Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2974E00FBC; Tue,  6 Sep 2016 11:06:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21647E00FE8
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 11:06:37 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id n24so179511pfb.2
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2016 11:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=ciyQR3URZQdxpYnj34ipxf5A/U4zmchwrbU3Ix7W4NE=;
	b=R3/l2XZPtDce/jlyM8yx30JSreV4zM9MExbkuoUmCTX2wetWgib2I4lZ8zCJb3I1W6
	xfY0PtYW5c1ybTK7MtxCIrMg2Ic7kzFkbMhuozG+tr+/zZTl/bPi6WVcO4JQQdGooUJi
	qXii7wS2ge6cbC4jUJWBG9Q1Egs6GeK6yd28vpOYc0N7qnzbzC9VaK4IJgo69TdVKfhL
	/ithD3o9z9OtE/2SIgP0TTHOL+Qhcv/lBzj/Iplm7fVNuk7uFF080/CmBsW6ZaDKlZbH
	QSxWpG+6/VSCSpwFK+TQ0qkgpVtIuYVX8+rzNwrbh1Ji6BAlPMash7XgjHAQm8TaPSAw
	Nj5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=ciyQR3URZQdxpYnj34ipxf5A/U4zmchwrbU3Ix7W4NE=;
	b=gBiXNwjrRLYLzvWq9kj7dLF6mf9DIY4eVEcXYQinkxeaJFbxllenng1F7eQREujIhk
	leZ5bVN5g+iraPcNLp+0tAhCLTwVjq7G/pCBgvze3kxkIPhieU8z/u0HuQUI618H1xB9
	pipTA3W6yiKAYLhWH2sKyBBHA7139Q3kJAg+SsGIHYXkkrisPInteIjW3ftBa59ipB72
	IlbDmaVPo+moumZLp9DHFV1eEaRvQymbgDwSfsWVEwRebucaR8TOITfl1C8fIIlx/7gw
	GkdlszAKqQBQhoh7Mkt/OqUB0a5Kp+e5ysTj7omJQKM5BBdikkBl+DmCyJW2oIJW38/E
	SYyg==
X-Gm-Message-State: AE9vXwNsxHy9BEEGiu136BOh/pISKZKoLOe9utxTiLa4x5k+QwC+lXTwHctQZgr75l9XOQ==
X-Received: by 10.98.53.68 with SMTP id c65mr74661678pfa.66.1473185197555;
	Tue, 06 Sep 2016 11:06:37 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:3edf:99d4:c55f:fbd3:66fa?
	([2601:647:4c00:3edf:99d4:c55f:fbd3:66fa])
	by smtp.gmail.com with ESMTPSA id
	g15sm6470050pfa.48.2016.09.06.11.06.35
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Sep 2016 11:06:35 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1473047029-28460-1-git-send-email-akuster808@gmail.com>
Date: Tue, 6 Sep 2016 11:06:34 -0700
Message-Id: <F7290603-5F10-4DAE-BD49-E68B7529119B@gmail.com>
References: <1473047029-28460-1-git-send-email-akuster808@gmail.com>
To: Armin Kuster <akuster808@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][v2][PATCH] clamav: fix gcc 6.x build failure.
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
X-List-Received-Date: Tue, 06 Sep 2016 18:06:59 -0000
X-Groupsio-MsgNum: 31806
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8E064991-5304-4F95-B5D7-D47E4EDB85D2";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_8E064991-5304-4F95-B5D7-D47E4EDB85D2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Sep 4, 2016, at 8:43 PM, Armin Kuster <akuster808@gmail.com> wrote:
>=20
> V2: refactored patch to use meta-oe llvm.
>=20
> ./llvm/include/llvm/Support/AlignOf.h:57:24: error: expected =
unqualified-id before 'alignof'
> static inline unsigned alignof() { return AlignOf<T>::Alignment; }
>                        ^~~~~~~
>=20
> configure --with-system-llvm --with-llvm-linking=3Ddynamic.
> defined use with meta-oe LLVM3.3 via config option
>=20
> switched to git fetch.
> Fix typo for systemd PACKAGECONFIG
>=20
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
> recipes-security/clamav/clamav_0.99.2.bb | 24 ++++++++++++++++++++----
> 1 file changed, 20 insertions(+), 4 deletions(-)
>=20
> diff --git a/recipes-security/clamav/clamav_0.99.2.bb =
b/recipes-security/clamav/clamav_0.99.2.bb
> index 184d605..d1a4cde 100644
> --- a/recipes-security/clamav/clamav_0.99.2.bb
> +++ b/recipes-security/clamav/clamav_0.99.2.bb
> @@ -8,7 +8,9 @@ DEPENDS =3D "libtool db libmspack =
chrpath-replacement-native"
>=20
> LIC_FILES_CHKSUM =3D =
"file://COPYING.LGPL;beginline=3D2;endline=3D3;md5=3D4b89c05acc71195e9a06e=
dfa2fa7d092"
>=20
> -SRC_URI =3D =
"http://www.clamav.net/downloads/production/${BPN}-${PV}.tar.gz \
> +SRCREV =3D "5ceae552829ee65c9ecff8ff303b1f2ddfd11576"
> +
> +SRC_URI =3D "git://github.com/vrtadmin/clamav-devel;branch=3D${PV} \
>     file://clamd.conf \
>     file://freshclam.conf \
>     file://volatiles.03_clamav \
> @@ -17,6 +19,8 @@ SRC_URI =3D =
"http://www.clamav.net/downloads/production/${BPN}-${PV}.tar.gz \
> SRC_URI[md5sum] =3D "61b51a04619aeafd965892a53f86d192"
> SRC_URI[sha256sum] =3D =
"167bd6a13e05ece326b968fdb539b05c2ffcfef6018a274a10aeda85c2c0027a"
>=20
> +S =3D "${WORKDIR}/git"
> +
> LEAD_SONAME =3D "libclamav.so"
> SO_VER =3D "7.1.1"
>=20
> @@ -27,9 +31,21 @@ inherit autotools-brokensep pkgconfig useradd =
systemd
> UID =3D "clamav"
> GID =3D "clamav"
>=20
> -PACKAGECONFIG ?=3D "ncurses openssl bz2 zlib "
> +# Clamav has a built llvm version 2 but does not build with gcc 6.x,
> +# disable the internal one. This is a known issue
> +# If you want LLVM support, use meta-oe llvm3.3 to build for GCC 6.X,
> +# as defined below
> +
> +CLAMAV_LLVM ?=3D "oellvm"
> +CLAMAV_LLVM_RELEASE ?=3D "3.3"
> +
> +PACKAGECONFIG ?=3D "ncurses openssl bz2 zlib ${CLAMAV_LLVM}"
> PACKAGECONFIG +=3D " ${@bb.utils.contains("DISTRO_FEATURES", "ipv6", =
"ipv6", "", d)}"
> PACKAGECONFIG +=3D "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', =
'systemd', '', d)}"
> +
> +PACKAGECONFIG[oellvm] =3D "--with-system-llvm =
--with-llvm-linking=3Ddynamic --disable-llvm, =
,llvm${CLAMAV_LLVM_RELEASE}"
> +#export WANT_LLVM_RELEASE =3D "${CLAMAV_LLVM_RELEASE"
> +
> PACKAGECONFIG[pcre] =3D "--with-pcre=3D${STAGING_LIBDIR},  =
--without-pcre, libpcre"
> PACKAGECONFIG[xml] =3D "--with-xml=3D${STAGING_LIBDIR}/.., =
--with-xml=3Dno, libxml2,"
> PACKAGECONFIG[json] =3D "--with-libjson=3D${STAGING_LIBDIR}, =
--without-libjson, json,"
> @@ -39,8 +55,7 @@ PACKAGECONFIG[openssl] =3D =
"--with-openssl=3D${STAGING_DIR_HOST}/usr, --without-open
> PACKAGECONFIG[zlib] =3D "--with-zlib=3D${STAGING_DIR_HOST}/usr, =
--without-zlib, zlib, "
> PACKAGECONFIG[bz2] =3D "--with-libbz2-prefix=3D${STAGING_LIBDIR}/.., =
--without-libbz2-prefix, "
> PACKAGECONFIG[ncurses] =3D =
"--with-libncurses-prefix=3D${STAGING_LIBDIR}/.., =
--without-libncurses-prefix, ncurses, "
> -
> -PACKAGECONFI[systemd] =3D =
"--with-systemdsystemunitdir=3D${systemd_unitdir}/system/', =
'--without-systemdsystemunitdir', "
> +PACKAGECONFIG[systemd] =3D =
"--with-systemdsystemunitdir=3D${systemd_unitdir}/system/', =
'--without-systemdsystemunitdir', "
>=20
> EXTRA_OECONF +=3D " --with-user=3D${UID}  --with-group=3D${GID} \
>             --without-libcheck-prefix --disable-unrar \
> @@ -48,6 +63,7 @@ EXTRA_OECONF +=3D " --with-user=3D${UID}  =
--with-group=3D${GID} \
>             --program-prefix=3D"" \
>             --disable-yara \
>             --disable-rpath \
> +	    --disable-llvm \

this seems to be duplicated with packageconfig. One of them should be =
removed.

>             "
>=20
> do_configure () {
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_8E064991-5304-4F95-B5D7-D47E4EDB85D2
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlfPBa4ACgkQuwUzVZGdMxTeBACcCfNAVj5SzDJ5QZcaqZXfq3BR
FKcAnR6FwAXsbY6QhBcoZpDQkrVbGlVT
=nPSF
-----END PGP SIGNATURE-----

--Apple-Mail=_8E064991-5304-4F95-B5D7-D47E4EDB85D2--
