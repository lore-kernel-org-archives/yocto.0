Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB6E7E00CC9; Mon, 17 Oct 2016 17:17:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.65 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D67BCE00ACE
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:17:40 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id qn10so9712474pac.2
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=iGCrNo2Ax9voisVAJTEcShPaZcpSa1SAyhsuQH4OZgo=;
	b=jxi1ET0xEdu5jafR0SlIIIE4FhxGWRxGq851MdM7C5kCGSrKi+M9zANeVcpEqBcauh
	4DqnaYTLnmmfLw//RC0qYYSlGBlKs+Vm95LOCB+bPm30UvXwB1mSHMo9boSzBr02X0tL
	sMteREJcFr64w7wOON9ILO3LIk+YPO9Ipcor5UCRVKd/+Pg8XbnUNOwRX8FIu3Dx1QL0
	aMaKRuvi2RsxGd4OHN1wzJOwxNeQXxnsMQms70OkuYZJXGwjphcu7g8TTc0Rr6Rdcdlq
	oIInErEiTB1Ym8k5tE98rZ6fJiJCiMJjHh8Un9rKEpUMAcsyO24pxQceo2V/GsBhs+At
	u7Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=iGCrNo2Ax9voisVAJTEcShPaZcpSa1SAyhsuQH4OZgo=;
	b=aFpoGyT77n4EpmiTbFvtcWS3jfYsegc6XKqgkKl+xWM1KrzyLVbXO0kBsbuRXCb9kD
	Yw8BkGoEko76aycYjv/gPyBAUbw6rjH8n9WPcHd6rSKMl6lC5Le7e98J/ajRzlJW+xUV
	SQ8rMmGDgbDncKNNIB++PZoxJlx2QyBuy0JEYXpz1OPo6oVPdvkCHNgYl/ZwgO6eQg4U
	PljVWlZdPZ7ZjAf4PmcBioLoo9LqK+d2Oi0if+To73+YZEihL8L/HjT1JxFPItz1R8H1
	66ecTi0MPxplTG2k+q2UGRHQw9rkEY2+kH6mPL2YDiXEBcOD7bUQj1rtXj+dnPh1JZeT
	Hi/A==
X-Gm-Message-State: AA6/9Rmemzwt2szgpAePBEDu6Uqm3GqUkngEmy+gtAo6LQGvm98nJ4eugGP0jVVbxSJPgg==
X-Received: by 10.66.88.231 with SMTP id bj7mr183539pab.91.1476749860616;
	Mon, 17 Oct 2016 17:17:40 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:ec00:906:f8cb:31c1?
	([2601:646:8882:b8c:ec00:906:f8cb:31c1])
	by smtp.gmail.com with ESMTPSA id
	oo10sm47418182pac.12.2016.10.17.17.17.39
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:17:39 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1476748950-21342-4-git-send-email-akuster808@gmail.com>
Date: Mon, 17 Oct 2016 17:17:39 -0700
Message-Id: <018CC106-A0C9-4953-B42D-497BB4586975@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
	<1476748950-21342-4-git-send-email-akuster808@gmail.com>
To: Armin Kuster <akuster808@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 04/17] swtpm: add new package
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
X-List-Received-Date: Tue, 18 Oct 2016 00:17:52 -0000
X-Groupsio-MsgNum: 32480
Content-Type: multipart/signed;
	boundary="Apple-Mail=_2A0D8A99-EE67-4B61-989C-73B868091C7D";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_2A0D8A99-EE67-4B61-989C-73B868091C7D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 17, 2016, at 5:02 PM, Armin Kuster <akuster808@gmail.com> =
wrote:
>=20
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
> recipes-tpm/swtpm/files/fix_lib_search_path.patch | 41 =
+++++++++++++++++++++++
> recipes-tpm/swtpm/swtpm_1.0.bb                    | 38 =
+++++++++++++++++++++
> 2 files changed, 79 insertions(+)
> create mode 100644 recipes-tpm/swtpm/files/fix_lib_search_path.patch
> create mode 100644 recipes-tpm/swtpm/swtpm_1.0.bb
>=20
> diff --git a/recipes-tpm/swtpm/files/fix_lib_search_path.patch =
b/recipes-tpm/swtpm/files/fix_lib_search_path.patch
> new file mode 100644
> index 0000000..015f418
> --- /dev/null
> +++ b/recipes-tpm/swtpm/files/fix_lib_search_path.patch
> @@ -0,0 +1,41 @@
> +
> +Upstream-Status: Inappropriate [OE config]
> +
> +Signed-off-by: Armin Kuster <akuster808@gmail.com>
> +
> +Index: configure.ac
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +--- a/configure.ac
> ++++ b/configure.ac
> +@@ -349,21 +349,17 @@ CFLAGS=3D"$CFLAGS -Wformat -Wformat-securi
> + dnl We have to make sure libtpms is using the same crypto library
> + dnl to avoid problems
> + AC_MSG_CHECKING([the crypto library libtpms is using])
> +-dirs=3D$($CC $CFLAGS -Xlinker --verbose 2>/dev/null | \
> +-       sed -n '/SEARCH_DIR/p' | \
> +-       sed 's/SEARCH_DIR("=3D\?\(@<:@^"@:>@\+\)"); */\1\n/g')
> +-for dir in $dirs; do
> +-  if test -r $dir/libtpms.so; then
> +-    if test -n "`ldd $dir/libtpms.so | grep libcrypto.so`"; then
> +-      libtpms_cryptolib=3D"openssl"
> +-      break
> +-    fi
> +-    if test -n "`ldd $dir/libtpms.so | grep libnss3.so`"; then
> +-      libtpms_cryptolib=3D"freebl"
> +-      break
> +-    fi
> ++dir=3D"$SEARCH_DIR"
> ++if test -r $dir/libtpms.so; then
> ++  if test -n "`ldd $dir/libtpms.so | grep libcrypto.so`"; then
> ++    libtpms_cryptolib=3D"openssl"
> ++    break
> +   fi
> +-done
> ++  if test -n "`ldd $dir/libtpms.so | grep libnss3.so`"; then
> ++    libtpms_cryptolib=3D"freebl"
> ++    break
> ++  fi
> ++fi
> +
> + if test -z "$libtpms_cryptolib"; then
> +   AC_MSG_ERROR([Could not determine libtpms crypto library.])
> diff --git a/recipes-tpm/swtpm/swtpm_1.0.bb =
b/recipes-tpm/swtpm/swtpm_1.0.bb
> new file mode 100644
> index 0000000..ae16e51
> --- /dev/null
> +++ b/recipes-tpm/swtpm/swtpm_1.0.bb
> @@ -0,0 +1,38 @@
> +SUMMARY =3D "SWTPM - Software TPM Emulator"
> +LICENSE =3D "BSD-3-Clause"
> +LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3Dfe8092c832b71ef20dfe4c6d3decb3a8"
> +SECTION =3D =E2=80=9Ctpm"

this should be =E2=80=98apps=E2=80=99 perhaps.

> +
> +DEPENDS =3D "libtasn1 fuse expect socat glib-2.0 libtpm-native"
> +
> +SRCREV =3D "2cd10cee2f74c84bda22081514b6b2cb566fa42d"
> +SRC_URI =3D "git://github.com/stefanberger/swtpm.git \
> +	   file://fix_lib_search_path.patch"
> +
> +S =3D "${WORKDIR}/git"
> +
> +inherit autotools-brokensep pkgconfig
> +PARALLEL_MAKE =3D ""
> +
> +TSS_USER=3D"tss"
> +TSS_GROUP=3D"tss"
> +
> +PACKAGECONFIG ?=3D "openssl"
> +PACKAGECONFIG +=3D "${@bb.utils.contains('DISTRO_FEATURES', =
'selinux', 'selinux', '', d)}"
> +PACKAGECONFIG[openssl] =3D "--with-openssl, --without-openssl, =
openssl"
> +PACKAGECONFIG[gnutls] =3D "--with-gnutls, --without-gnutls, gnutls"
> +PACKAGECONFIG[selinux] =3D "--with-selinux, --without-selinux, =
linselinux"
> +
> +CACHED_CONFIGUREVARS =3D "ac_cv_path_EXPECT=3D${STAGING_LIBDIR} \
> +ac_cv_path_SOCAT=3D${STAGING_LIBDIR} =E2=80=9C

STAGING_LIBDIR seems dubious here. Can you check if it needs it during =
build then it should
point to native versions.if it needs during runtime then it should be =
${libdir}

> +
> +EXTRA_OECONF +=3D "--with-tss-user=3D${TSS_USER} =
--with-tss-group=3D${TSS_GROUP}"
> +
> +export SEARCH_DIR =3D "${STAGING_LIBDIR_NATIVE}"
> +
> +USERADD_PACKAGES =3D "${PN}"
> +GROUPADD_PARAM_${PN} =3D "--system ${TSS_USER}"
> +USERADD_PARAM_${PN} =3D "--system -g ${TSS_GROUP} --home-dir  \
> +    --no-create-home  --shell /bin/false ${BPN}"
> +
> +RDEPENDS_${PN} =3D "libtpm expect socat bash=E2=80=9D

This probably should be +=3D

> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_2A0D8A99-EE67-4B61-989C-73B868091C7D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgFaiMACgkQuwUzVZGdMxSgfgCbBfVEOjndxvNkcN9wzonpwLUo
2+oAn1v/prncb5HAvqh7wL5JzVn44eAF
=nyga
-----END PGP SIGNATURE-----

--Apple-Mail=_2A0D8A99-EE67-4B61-989C-73B868091C7D--
