Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04167E00C31; Mon, 17 Oct 2016 17:14:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 792DDE00AD2
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:14:20 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id hh10so9727892pac.0
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=t+FQRc1oFHDeW9VmqL8R0mfv84CtIIKr38dJxCgDNJs=;
	b=c71FabiO3NT9jWNk/cIfnqTVVOj+PDzVEnv65HX9XrJiVI3oLELBqmpUGbtVi+4cOt
	UG+yR6hEITvxQpX2soWDmKQ6FdZSH/g69JHdz3Vhtet8n0p3xVRhIPLc34diR4nEzq29
	d/nI6tvLV5r0qs9H3HAxrRsJ2P3E1NjKCvBJnOO5ZgR5WSvsoA1SZZQXbKmwVrt5Pg+8
	nvHXvi2IahIDfwGzkFpi37VtaGqPoFtBSgpDmuDJp7ZdJBZ/WFPF1zOuGUb1VTfDoxav
	I7nH1Mi1Pw8CirD2jwuTWnhEF1qJMVJ1Rcvb9ZFRMfw4VHvYduuXfGkbeBD/aXRG7LZo
	Eo1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=t+FQRc1oFHDeW9VmqL8R0mfv84CtIIKr38dJxCgDNJs=;
	b=HxxExX4OHiMMup3gMMoKtepViLzbDOMaFW7oddWirYpTQ6J0rDTz4D5DmD4E5iNiDn
	lEUybND7l/ZwMnCHDA7QHfRG4ePg8DEWdg1tdoVT7oR6lTymo8XR5vzUKQnbwk2cqL+7
	w/CFkKlU2CbNc9oBLPAVUPAheUrJ17yxfDa6v1tjKwWsJsBCjJSKOAnwkGbNs0gO+9e4
	cmUsUslqdDWEbBEcfDwAblxJA4pHU+ZL6DRKuoWPNm4QgO4fq5kDmL2GCGv72+Ma8hi9
	rjDNfExNfWpn4FuQN+7cne+41lBtRWIX6sQ321wmKU95yTHJDVloDKDLc0rEb+HQI9jH
	ZweA==
X-Gm-Message-State: AA6/9RljOVwwoHs+zpBJpFgClDE9u5g+DUv9w9qkS2W4sU3RsQUTd3/ZDGEfBKUUegc4nw==
X-Received: by 10.66.221.97 with SMTP id qd1mr198040pac.120.1476749660077;
	Mon, 17 Oct 2016 17:14:20 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:ec00:906:f8cb:31c1?
	([2601:646:8882:b8c:ec00:906:f8cb:31c1])
	by smtp.gmail.com with ESMTPSA id x1sm21326366pax.7.2016.10.17.17.14.19
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:14:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1476748950-21342-3-git-send-email-akuster808@gmail.com>
Date: Mon, 17 Oct 2016 17:14:18 -0700
Message-Id: <60C92BAB-696D-4AEB-82EC-10D0E1D7A788@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
	<1476748950-21342-3-git-send-email-akuster808@gmail.com>
To: Armin Kuster <akuster808@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 03/17] libtpm: add new package
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
X-List-Received-Date: Tue, 18 Oct 2016 00:14:31 -0000
X-Groupsio-MsgNum: 32479
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B38472C1-251C-461B-A1FA-45403D53C861";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_B38472C1-251C-461B-A1FA-45403D53C861
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 17, 2016, at 5:02 PM, Armin Kuster <akuster808@gmail.com> =
wrote:
>=20
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
> recipes-tpm/libtpm/libtpm_1.0.bb | 13 +++++++++++++
> 1 file changed, 13 insertions(+)
> create mode 100644 recipes-tpm/libtpm/libtpm_1.0.bb
>=20
> diff --git a/recipes-tpm/libtpm/libtpm_1.0.bb =
b/recipes-tpm/libtpm/libtpm_1.0.bb
> new file mode 100644
> index 0000000..61c1d7c
> --- /dev/null
> +++ b/recipes-tpm/libtpm/libtpm_1.0.bb
> @@ -0,0 +1,13 @@
> +SUMMARY =3D "LIBPM - Software TPM Library"
> +LICENSE =3D "BSD-3-Clause"
> +LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3D97e5eea8d700d76b3ddfd35c4c96485f"
> +SRCREV =3D "e5dc628043e981c9f8d7711ddfe5812c8f4e38cc"
> +SRC_URI =3D "git://github.com/stefanberger/libtpms.git"
> +
> +S =3D "${WORKDIR}/git=E2=80=9D


how about PV expressed in form of SRCPV

> +inherit autotools-brokensep pkgconfig
> +
> +PACKAGECONFIG ?=3D "openssl"
> +PACKAGECONFIG[openssl] =3D "--with-openssl, --without-openssl, =
openssl"
> +
> +BBCLASSEXTEND =3D "native"
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_B38472C1-251C-461B-A1FA-45403D53C861
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgFaVsACgkQuwUzVZGdMxT44wCfcu0YF97J6xRd3zs6jEJZrwwO
pecAoIcBy3BlRRPx5XC4MVcuhAMTt3gv
=31Tj
-----END PGP SIGNATURE-----

--Apple-Mail=_B38472C1-251C-461B-A1FA-45403D53C861--
