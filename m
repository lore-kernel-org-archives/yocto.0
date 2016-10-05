Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CE94E00C93; Wed,  5 Oct 2016 16:49:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0E41E00547
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 16:49:42 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id 190so152184pfv.1
	for <yocto@yoctoproject.org>; Wed, 05 Oct 2016 16:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=aUSgtrjvfQY+VxIn0gdNUCljea4Dceq0XxZSltdfhj0=;
	b=WkeYif675rAMIh9O3xWk4cQlCynZsFJBzI0uGpydcLxVC6xVOoa9FuCS+AUY4GxsrG
	rvoCZsYxlH1XG6EGKfpKn5ulUUSenJuQbTUnoG1zvyjA76jPtHtd7yLrV937s9Jm0H4k
	0t/odk4UWenovAO1vZW/3CNPWfVv5H7IEWHwAgjJXDfhONrXio1pgpzTAHdkvOFIXtFv
	NkY5ZsYTGzQWK6m2KUTNPeoVtGS4ROr76SutVJVqp5D5UcT/Z7IRES/x5+dsy3GHnkDy
	vuR1mdTAlXXaCdD1xgfWeUyssPsjxW/POfd9FNF+XjQs402D+cWTR5lkKlyCr8F39jnW
	Hxfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=aUSgtrjvfQY+VxIn0gdNUCljea4Dceq0XxZSltdfhj0=;
	b=FyKX9+Cch686jVrbgWEEM0lM4+Yv/0P5555IdAZ5n1SCmwCtsIZEMq5s3cEaCWo8Fs
	Ae3dgWcz7THMMmJQi4kbMxxyq/06Z8vMs40xpnbCK0ZLpQXsWn1GSb6wNNTkFLDHskqA
	Q3viqnj0XZAEC4H6IiVga0hqswjGc0lTnaPOyLS783gg6Hv5TaDp3yTeNzKj+nTSH9kZ
	954YOCerpYUpFM0H0H82LueJyVrPFWgu3z1lyKsrnZITtcb+oB5e/nGRKD1lFHdYPigw
	qSyLBQrOx8DVpMjnvAYTYblpSFmdXlAxUT/VnS2Sjuw5ZKI89Zl1vWKa5znm1cQoyrvC
	uYKg==
X-Gm-Message-State: AA6/9RktCfsaTeJsoJXQsDwYpsZo5nMA0uBQIhndx8+aAZrX38vJAwHNcaFZBLn6+gllHQ==
X-Received: by 10.98.222.3 with SMTP id h3mr11618555pfg.168.1475711380656;
	Wed, 05 Oct 2016 16:49:40 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:80cb:b789:7a19:7ecc?
	([2601:646:8882:b8c:80cb:b789:7a19:7ecc])
	by smtp.gmail.com with ESMTPSA id
	s12sm66249033pfj.73.2016.10.05.16.49.39
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 05 Oct 2016 16:49:40 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1475707760-36799-3-git-send-email-juro.bystricky@intel.com>
Date: Wed, 5 Oct 2016 16:49:35 -0700
Message-Id: <7B13F0F2-B128-46B6-8FEE-A54DA79F3DCD@gmail.com>
References: <1475707760-36799-1-git-send-email-juro.bystricky@intel.com>
	<1475707760-36799-3-git-send-email-juro.bystricky@intel.com>
To: Juro Bystricky <juro.bystricky@intel.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org, jurobystricky@hotmail.com
Subject: Re: [meta-mingw][PATCH 2/3] gcc-crosssdk_%.bbappend: Do not configure with initfini-array enabled.
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
X-List-Received-Date: Wed, 05 Oct 2016 23:49:43 -0000
X-Groupsio-MsgNum: 32237
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B6478E7B-E89D-4DF3-9D1D-F51E59B1E586";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_B6478E7B-E89D-4DF3-9D1D-F51E59B1E586
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 5, 2016, at 3:49 PM, Juro Bystricky <juro.bystricky@intel.com> =
wrote:
>=20
> Default configuration for gcc-crosssddk is now to enable =
initfini-array.
> However, this works only for Linux so we disable it for mingw32.
> Otherwise we will eventually encounter build error such as:
>=20
> multiple definition of `__do_global_dtors'
>=20
> Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
> ---
> recipes-devtools/gcc/gcc-crosssdk_%.bbappend | 3 +++
> 1 file changed, 3 insertions(+)
>=20
> diff --git a/recipes-devtools/gcc/gcc-crosssdk_%.bbappend =
b/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
> index 77ba57f..b3b843a 100644
> --- a/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
> +++ b/recipes-devtools/gcc/gcc-crosssdk_%.bbappend
> @@ -1 +1,4 @@
> EXTRA_OECONF_mingw32 :=3D =
"${@oe_filter_out('--with-linker-hash-style=3D${LINKER_HASH_STYLE}', =
'${EXTRA_OECONF}', d)}"
> +PACKAGECONFIG_CONFARGS ?=3D ""
> +EXTRA_OECONF_remove_mingw32 =3D "--enable-initfini-array"
> +EXTRA_OECONF_append_mingw32 =3D " --disable-initfini-array=E2=80=9D

I think in OE-Core we should add this via PACKAGECONFIG

> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_B6478E7B-E89D-4DF3-9D1D-F51E59B1E586
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlf1kZMACgkQuwUzVZGdMxThLACeMrTeqoS48kZKzOmxSvTn4hMj
KiUAoIsUEIRT78jsxxd2Ol+ihyryoHBf
=Ytw3
-----END PGP SIGNATURE-----

--Apple-Mail=_B6478E7B-E89D-4DF3-9D1D-F51E59B1E586--
