Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web11.6385.1630061044450840854
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Aug 2021 03:44:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@denx.de header.s=phobos-20191101 header.b=MO8Lu0A0;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: lukma@denx.de)
Received: from ktm (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 5E1BD8326B;
	Fri, 27 Aug 2021 12:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1630061036;
	bh=1W2UmkdsLWDSj1tWnSMH5x7cBCbTx+lG6aFTKMo+40A=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=MO8Lu0A0BZ7TUDWeWpgJemO9dsnyVcr8vHEuYdZJlLNZ+FKRhTrZ86Jqb7e01ZfSI
	 35UiqB6kFrS8Y9ET/3kmqZ0dX2RByJhXx88cSCnkOD5M/JNkVIOdBow8NnazTalfge
	 VnpUsLHKPsx+cJGN/XxsIEcWUzXalXolgq7eFU5tC1t07m9ObHJezdZ4gWxOLIk0uF
	 sGMH1dQwzqG17cpInLVLyu4PWinRv/1EO3LK28PeiOrnt3icIsmbLfsvCZeSqgvQNr
	 5GznVPqtslp1owzYfW9xGHK7YvaUPJpBhzsppiD/LCm+OrPz3zxaL2D3VL5CT8VXGY
	 3KCjkABzWQJqw==
Date: Fri, 27 Aug 2021 12:43:50 +0200
From: "?ukasz Majewski" <lukma@denx.de>
To: Anibal Limon <anibal.limon@linaro.org>
Cc: yocto@lists.yoctoproject.org, Adrian Freihofer
 <adrian.freihofer@siemens.com>
Subject: Re: [PATCH v2 ptest-runner 2/2] main: Do not return number of failed tests when calling ptest-runner
Message-ID: <20210827124350.71c00d33@ktm>
In-Reply-To: <20210817123812.18075-2-lukma@denx.de>
References: <20210817123812.18075-1-lukma@denx.de>
	<20210817123812.18075-2-lukma@denx.de>
Organization: denx.de
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
X-Groupsio-MsgNum: 54579
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_//2Dyv7m7.wDI8uBY1P2a=f9"; protocol="application/pgp-signature"

--Sig_//2Dyv7m7.wDI8uBY1P2a=f9
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Anibal,

> Up till now ptest-runner2 returns number of failed tests with its
> exit status code. Such use case is not recommended [1] and may cause
> issues when there are more than 256 tests to be executed.
>=20
> To alleviate this issue the number of total tests with number of
> failed ones is printed before exit. To be more specific - failure of
> tests (one or more) causes ptest-runner to provide exit code of 1.
>=20
> One can test this change with executing:
> ./ptest-runner -d tests/data fail

Gentle ping on this patch.

>=20
> Links:
> [1] -
> https://www.gnu.org/software/libc/manual/html_node/Exit-Status.html
>=20
> Signed-off-by: Lukasz Majewski <lukma@denx.de>
> ---
> Changes for v2:
> - When number of failed tests is N, the ptest-runner returns value of
> 1 to indicate error in the execution
> ---
>  main.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/main.c b/main.c
> index 890bc6a..bcec844 100644
> --- a/main.c
> +++ b/main.c
> @@ -220,6 +220,9 @@ main(int argc, char *argv[])
>  		ptest_list_remove(run, opts.exclude[i], 1);
> =20
>  	rc =3D run_ptests(run, opts, argv[0], stdout, stderr);
> +	fprintf(stdout, "TOTAL: %d FAIL: %d\n",
> ptest_list_length(run), rc);
> +	if (rc > 0)
> +		rc =3D 1;
> =20
>  	ptest_list_free_all(&run);
> =20




Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--Sig_//2Dyv7m7.wDI8uBY1P2a=f9
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAmEoweYACgkQAR8vZIA0
zr0QRAgAqdgM8jQIEtM3/TyNkkVvkjqOYazz2XBIIO4fmTon3kzYswuaQZ3dvEl7
mHJfRhMkuhmK+n/2sJjVGpI/T4Brf8tO24tuls+9rKxBrWkFqhhxct6s2F+lyFJy
PhYqL/3wMHKHoMPqcHPNzAEIcVDK15fakWm0skbGVi1iwTorPKiYUIaw33H18ytB
pPSZbXlURTaDgp3kVMk/cNYidsxoPLGwvP2SBlm0KwRMrctcOp0A0LJoqDcJbpRB
zReahcoKjPxifNDj06q9g4p0nL8gs5h7vORBIWlO5oVsS0G03vkZuzU6S7f2LmSg
i9VpEZxxLbS46VVyJoRTPRHMQCvtEQ==
=nCx+
-----END PGP SIGNATURE-----

--Sig_//2Dyv7m7.wDI8uBY1P2a=f9--
