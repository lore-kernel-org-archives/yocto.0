Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 852CBE00CEC; Mon, 17 Oct 2016 17:10:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F9C5E00B66
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:10:23 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id 128so13680189pfz.1
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=ArrKf/z/2MX+w32/gA4n9cm212VgvFFtLKxiynM5qAM=;
	b=IFxFGl2RrHKUd3yaXjjPU/XBNWFCDlCyLKLJJiYHq3mpf/JJ+7ToaG4vIQhuUYcUq4
	QlPZNPmEJyrqdfyvuOPHiKmq5DjR9FVmUcr+mQwBuniXnYTgRI6E0KWeplFEGYdxtC6W
	ho4GrLkgC8q1oKqHJ28lZR7fg9jF2rnAuMb6xr2JT1/OqWd9BKiotNS8wumdOSlN48uz
	d+miJS9lPD155lu7klqyHaXsWMnNl4J55jMhFG4/TXwWiJxeg/102XF9rI7nWrgxMQ0C
	GVH+EQoQVUvcviFzeZe0oUl3fC5T4O3/xvHKAWrEu8TLhCi+bw/wHKcVzSZvfWo3rRa4
	4cew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=ArrKf/z/2MX+w32/gA4n9cm212VgvFFtLKxiynM5qAM=;
	b=I/aq6LeZrHgvSYUnvZyjWrs0D4U6rMM4NLLbgAem/VtlOOdGuxr2Ba6AfjbjHAj9Uj
	BcLd/Z5SNyT2D0pfZuiHbz9sqXrqb/ezyvgaakpyjn9UD23JZHw14Nmk6xl7tbAetMIy
	KBWJkq7DEFT71vcWKcudC9XkyOxMrOO7GXcy+avbEbWmeQZ7UwsJeXNKzsf/TYsGMkbr
	O6udynmGpF9bmi7EmGi6nYPk/hIGPPqt7Ua6MTWMlGgS2LZS2LQyG01nsNV2Z6gvwB9/
	EPrkiuSRBZ196y6my6kQuEbE2abhP0ielvWDUxhCvXsupAC/4UADphJP60hMM51TYKhp
	MmNg==
X-Gm-Message-State: AA6/9RkcZooYxV8p+0cNgw3Qerdb7UDipx/IZov2Q+sclyFh82VL/1tgx1SM5aj12pBoAQ==
X-Received: by 10.98.211.147 with SMTP id z19mr163425pfk.149.1476749423044;
	Mon, 17 Oct 2016 17:10:23 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:ec00:906:f8cb:31c1?
	([2601:646:8882:b8c:ec00:906:f8cb:31c1])
	by smtp.gmail.com with ESMTPSA id
	n2sm50357397pfa.75.2016.10.17.17.10.22
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:10:22 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1476748950-21342-2-git-send-email-akuster808@gmail.com>
Date: Mon, 17 Oct 2016 17:10:16 -0700
Message-Id: <50477F55-24E5-48C3-B584-15BB8265234B@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
	<1476748950-21342-2-git-send-email-akuster808@gmail.com>
To: Armin Kuster <akuster808@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 02/17] tpm-tools: add native support
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
X-List-Received-Date: Tue, 18 Oct 2016 00:10:34 -0000
X-Groupsio-MsgNum: 32477
Content-Type: multipart/signed;
	boundary="Apple-Mail=_46757AD2-430A-4870-85CA-175C7737B15F";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_46757AD2-430A-4870-85CA-175C7737B15F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 17, 2016, at 5:02 PM, Armin Kuster <akuster808@gmail.com> =
wrote:
>=20
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
> recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb     |  3 +++
> recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb | 23 =
+++++++++++++++++++++++
> 2 files changed, 26 insertions(+)
> create mode 100644 recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
>=20
> diff --git a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb =
b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
> index 5645976..99ea8ee 100644
> --- a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
> +++ b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
> @@ -9,6 +9,7 @@ SECTION =3D "tpm"
> LICENSE =3D "CPL-1.0"
> LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3D059e8cd6165cb4c31e351f2b69388fd9"
> DEPENDS =3D "libtspi openssl"
> +DEPENDS_class-native =3D "trousers-native"
>=20
> SRC_URI +=3D " \
>     =
http://downloads.sourceforge.net/project/trousers/${BPN}/${PV}/${BP}.tar.g=
z \
> @@ -20,3 +21,5 @@ SRC_URI[md5sum] =3D =
"85a978c4e03fefd4b73cbeadde7c4d0b"
> SRC_URI[sha256sum] =3D =
"66eb4ff095542403db6b4bd4b574e8a5c08084fe4e9e5aa9a829ee84e20bea83"
>=20
> inherit autotools gettext
> +
> +BBCLASSEXTEND =3D "native"
> diff --git a/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb =
b/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
> new file mode 100644
> index 0000000..be49dd9
> --- /dev/null
> +++ b/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
> @@ -0,0 +1,23 @@
> +SUMMARY =3D "Tools for TPM2."
> +DESCRIPTION =3D "tpm2.0-tools"
> +LICENSE =3D "BSD"
> +LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3D91b7c548d73ea16537799e8060cea819"
> +SECTION =3D "tpm"
> +
> +DEPENDS =3D "tpm2.0-tss openssl curl"
> +
> +SRCREV =3D "c924cc8ca752e5af6a829f893c6be4b185d56e99"
> +
> +SRC_URI =3D =
"git://github.com/01org/tpm2.0-tools.git;protocol=3Dgit;branch=3Dmaster;na=
me=3Dtpm2.0-tools;destsuffix=3Dtpm2.0-tools"
> +
> +S =3D "${WORKDIR}/tpm2.0-tools"
> +
> +PV =3D "1.0+git${SRCPV}=E2=80=9D

it seems to be 2.0 isn=E2=80=99t it ?

> +
> +inherit autotools-brokensep pkgconfig
> +
> +do_configure () {
> +	cd ${S}
> +	./bootstrap  --force
> +	./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
> +}
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_46757AD2-430A-4870-85CA-175C7737B15F
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgFaG0ACgkQuwUzVZGdMxSBUwCfTZ5sQC6EytT+bX4Q4p5lYcnU
/EoAnj1AF9zVncd44TqSzCuZcWjnCcEn
=4Xdi
-----END PGP SIGNATURE-----

--Apple-Mail=_46757AD2-430A-4870-85CA-175C7737B15F--
