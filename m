Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1EB7E00C18; Mon, 17 Oct 2016 17:13:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0573FE00C54
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:13:23 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id s8so13655558pfj.2
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=mzeDb/1n9qxnsyHXQG8MwVRCDkV+cbPy5fqZe/Bxfw0=;
	b=dctoimPMWORCIkJLelghKeg6Hov09AIOV4wH56hF2icQmNbtHU088HEd7YXRp24C3F
	puTP+LqadHcNi5fLtfT818hQVuu2RkWgBTI0i5GbWhjUQJiZlxYaWVlRJMvxIUzNcNE+
	1vclFcPaKT3jShlGNKZi4paPQsI7nDYo54JlWa07klZth5fOO2IeeIi3EfRnV0EtLQaU
	coHy9Zc30foSFlUHsVWykYJKYti+ZwO2ZGNFyN//lzCGEmTCgFbobXJQdLHeaR3OA18o
	ID7uic11D13LbqvEYLFA9Ih+c1EdbIWbTTEMV6G+KTxJE4WIRXBE6pjxyOjKvXnQzDtV
	EmLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=mzeDb/1n9qxnsyHXQG8MwVRCDkV+cbPy5fqZe/Bxfw0=;
	b=L1lBk2DakiNC/ZNZ8JVeRZH9g8fb5ZcyUEjEii8sensyrPlBFQv7jHgDu37DDe6MdE
	LRl9KJV7pxYxUfV4sy+GZ5SSvNRhpOFzyySWGCYYkQ645LqeMRPjLrnrKTvCceexIYXQ
	hZsS88WwO6IrPrmZVI5j9LOV2da/+d9E/xkU5/A10JChKEOep+0Zpzdd5gx/+Hxa7Ofx
	Ko0KawtsLtC/IkuuyX/OkU/o8GmL/28wfDVFxaLbDC64UXhm7YvcBRTUim43uUdGiplb
	tgIo40a3Q+vJa9EWdv3bt8biPaCLbFWOJBXryXN9mEDs1Exd9Vf/yXNNsczuwS1CUmbm
	xmHw==
X-Gm-Message-State: AA6/9Rk1dvLGmeIuU+CKDe1Pbp9dbvfp1kTNvDVZwf5ysk/3UIXHFVU2nRtI95+s/mqNbA==
X-Received: by 10.98.149.74 with SMTP id p71mr228213pfd.126.1476749602808;
	Mon, 17 Oct 2016 17:13:22 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:ec00:906:f8cb:31c1?
	([2601:646:8882:b8c:ec00:906:f8cb:31c1])
	by smtp.gmail.com with ESMTPSA id x1sm21326366pax.7.2016.10.17.17.13.21
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:13:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1476748950-21342-5-git-send-email-akuster808@gmail.com>
Date: Mon, 17 Oct 2016 17:13:20 -0700
Message-Id: <3068B16C-E69A-4A25-A210-688E4248AA9A@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
	<1476748950-21342-5-git-send-email-akuster808@gmail.com>
To: Armin Kuster <akuster808@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 05/17] tpm2simulator: add package
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
X-List-Received-Date: Tue, 18 Oct 2016 00:13:32 -0000
X-Groupsio-MsgNum: 32478
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B78CDC87-3AB7-4FDF-8F9A-4FAC08CE179A";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_B78CDC87-3AB7-4FDF-8F9A-4FAC08CE179A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 17, 2016, at 5:02 PM, Armin Kuster <akuster808@gmail.com> =
wrote:
>=20
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
> .../tpm2simulator/tpm2simulator-native_116.bb      | 25 =
++++++++++++++++++++++
> 1 file changed, 25 insertions(+)
> create mode 100644 =
recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
>=20
> diff --git a/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb =
b/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
> new file mode 100644
> index 0000000..33eaf99
> --- /dev/null
> +++ b/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
> @@ -0,0 +1,25 @@
> +SUMMARY =3D "TPM 2.0 Simulator Extraction Script"
> +LICENSE =3D "BSD-2-Clause"
> +LIC_FILES_CHKSUM =3D =
"file://../LICENSE;md5=3D1415f7be284540b81d9d28c67c1a6b8b"
> +
> +DEPENDS +=3D "python"
> +
> +SRCREV =3D "93dc4412432013ed7bcabd42007754c68f6e362e"
> +SRC_URI =3D "git://github.com/stwagnr/tpm2simulator.git"
> +
> +S =3D "${WORKDIR}/git/cmake"
> +
> +PV =3D "116+git${SRCPV}"
> +
> +inherit native lib_package cmake
> +
> +EXTRA_OECMAKE =3D " \
> +	-DCMAKE_BUILD_TYPE=3DDebug \
> +	-DSPEC_VERSION=3D116 \
> +"
> +
> +do_configure_prepend () {
> +	sed -i 's/^SET =3D False/SET =3D True/' =
${WORKDIR}/git/scripts/settings.py

use S instead of WORKDIR

> +}
> +
> +BBCLASSEXTEND =3D =E2=80=9Cnative"

it is not needed.

> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_B78CDC87-3AB7-4FDF-8F9A-4FAC08CE179A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgFaSAACgkQuwUzVZGdMxRPRACeJtx1g0F4+qHV7rknNyHTFYAx
W3EAn20L2zVqjYguLAZlCyVKVpD3DamB
=dWpL
-----END PGP SIGNATURE-----

--Apple-Mail=_B78CDC87-3AB7-4FDF-8F9A-4FAC08CE179A--
