Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
 by mx.groups.io with SMTP id smtpd.web09.9334.1632129542428886530
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Sep 2021 02:19:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@denx.de header.s=phobos-20191101 header.b=Z3A0flTB;
 spf=pass (domain: denx.de, ip: 85.214.62.61, mailfrom: lukma@denx.de)
Received: from ktm (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 4416980F03;
	Mon, 20 Sep 2021 11:18:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1632129539;
	bh=xS8aSqNXOVIesUIUkWOFCkpDzYkk3L0uW2chN5XZevE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Z3A0flTBOz6D/Ax8I4tV/J9gLXhvkMbNLGcc13tUcrhbHBPo4YYtnnAZj+O6pG2Kb
	 uX5/Hv4KKUFYYk6KWj6axFiER5BrDilSvoRgiHMOd+bZxcKzUOIwtOn+tO7G2YNGEQ
	 ifylICpjnNkV8FPuUjBTLB0mv6a0ot2cuEoxpf+Iev53vEfouc+Sdom419+Q1qVS11
	 nxwyJIeZCzt4NNdJ1HIVTX3mdw37AfcN5fMWz/MzYctyB9a/3fRI0kxU0OelinRjVd
	 6DMPXdsXSctUxnrkS2LJLN1WJuu4JgrwzceXdkhxENKvnzkfcJS/qNqQGopFi1Wdpf
	 gNZxQeiIhnQTg==
Date: Mon, 20 Sep 2021 11:18:52 +0200
From: "?ukasz Majewski" <lukma@denx.de>
To: Anibal Limon <anibal.limon@linaro.org>
Cc: yocto@lists.yoctoproject.org, Adrian Freihofer
 <adrian.freihofer@siemens.com>
Subject: Re: [PATCH v2 ptest-runner 2/2] main: Do not return number of failed tests when calling ptest-runner
Message-ID: <20210920111852.174eff07@ktm>
In-Reply-To: <20210827124350.71c00d33@ktm>
References: <20210817123812.18075-1-lukma@denx.de>
	<20210817123812.18075-2-lukma@denx.de>
	<20210827124350.71c00d33@ktm>
Organization: denx.de
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
X-Groupsio-MsgNum: 54769
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/jyo9HclGN_9002TqbTCQPt9"; protocol="application/pgp-signature"

--Sig_/jyo9HclGN_9002TqbTCQPt9
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Anibal,

> Hi Anibal,
>=20
> > Up till now ptest-runner2 returns number of failed tests with its
> > exit status code. Such use case is not recommended [1] and may cause
> > issues when there are more than 256 tests to be executed.
> >=20
> > To alleviate this issue the number of total tests with number of
> > failed ones is printed before exit. To be more specific - failure of
> > tests (one or more) causes ptest-runner to provide exit code of 1.
> >=20
> > One can test this change with executing:
> > ./ptest-runner -d tests/data fail =20
>=20
> Gentle ping on this patch.
>=20

Gentle ping on this patch.

Is it OK to be applied?

> >=20
> > Links:
> > [1] -
> > https://www.gnu.org/software/libc/manual/html_node/Exit-Status.html
> >=20
> > Signed-off-by: Lukasz Majewski <lukma@denx.de>
> > ---
> > Changes for v2:
> > - When number of failed tests is N, the ptest-runner returns value
> > of 1 to indicate error in the execution
> > ---
> >  main.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >=20
> > diff --git a/main.c b/main.c
> > index 890bc6a..bcec844 100644
> > --- a/main.c
> > +++ b/main.c
> > @@ -220,6 +220,9 @@ main(int argc, char *argv[])
> >  		ptest_list_remove(run, opts.exclude[i], 1);
> > =20
> >  	rc =3D run_ptests(run, opts, argv[0], stdout, stderr);
> > +	fprintf(stdout, "TOTAL: %d FAIL: %d\n",
> > ptest_list_length(run), rc);
> > +	if (rc > 0)
> > +		rc =3D 1;
> > =20
> >  	ptest_list_free_all(&run);
> >   =20
>=20
>=20
>=20
>=20
> Best regards,
>=20
> Lukasz Majewski
>=20
> --
>=20
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email:
> lukma@denx.de




Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--Sig_/jyo9HclGN_9002TqbTCQPt9
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAmFIUfwACgkQAR8vZIA0
zr1VxAgA3yLrwVu0p3xBYDQoIzm+XoF8QHS0Uo28KZsv36a6qiCee4uA8GpTaDBb
j0tdGAQN0HeLj5qyU/H0tF9JDHxTiVQusM5NdvRrsiU/fUz/2H2EHcyZfZ7+h058
eJnoZjS03WcZvHIrkTj6KBJe1KDHRIY6qPGXx/v+kJDJf3LiWuB1JZxM9j+3ehzx
78HfRrNdPcC813ZRYwx7Vzbua5fbEkm1Z/WtE9zb3w0BcVY8VGzG4400lwlxQXy2
vwc8bHy3Ra//99DYqliiMcSt8IWZyZio2/MibnvOvBoo/qU5BTk3Jk4/agTtHU1F
ULX95/Mb/i2HqIiSOfcGNMPETulzIg==
=t6gX
-----END PGP SIGNATURE-----

--Sig_/jyo9HclGN_9002TqbTCQPt9--
