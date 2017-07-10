Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 395BDE00BB6; Mon, 10 Jul 2017 10:27:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD591E00B76
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 10:27:25 -0700 (PDT)
Received: by mail-pf0-f181.google.com with SMTP id c73so53259147pfk.2
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 10:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=0OK1tgMRkrT6dtHf45DJ0IR7miiP1qmu4PonAKiJIM0=;
	b=WbQUKKY3Varuyn+LHyNJKXgHiZYl4p/QjHW7qcrb287BpE0iIISLm+N/kYGT8dFZwe
	hq+PXaOqhh/6U8ouQxJNgT+uHfPlN7jBkU9gBAN3vb1qRAqEgk3FMdp5K/6X+EMyc8fI
	PFaBTpBINkMgi2SLr83GmJGrj68AyiDwTMS491qoKBTsG80ZvFobyvNkAYSKrmJqJnGd
	LmX01vGtGzLHXK2ivn/GfOhcmcD6StEFpTRbw6BsNJETaDnakCPQSZs6PbAGxyaSqCp/
	RJ5XkRdHSDj1HGJHEA7WFoPhtMrU98054KACoGgKOS76mOm+zL04GjJ9AkqX0aVviSmK
	aaNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=0OK1tgMRkrT6dtHf45DJ0IR7miiP1qmu4PonAKiJIM0=;
	b=owKCl78N7qcl/riFIP0O7FqrBTaE78SWMwiky8GMSiwReVQVY7ey+vqCxcmF+j6UqH
	dQ0eVfr9wIhzJ7N12TgyKB42HP6rXm2SisVmgW/5zK0oWTXhV58/XOQc6xGDNKesbLoh
	+byJOrpk8EdbEjnxKPhF91BcEGB5DtFci7kpucCS+EOJIAqy+Sh7LhqvjpzQdR7G04iw
	JHqE32Ez7+KzGfXJ65M4usJG9M8oBNcqhXwkLULDHPSmjSscwlSxfNxBpaiMZ6os2leC
	Un2pRrSOjsPrU10C8PO2KOjmyOszhyR/G26AGOe5G6QANRRUWpYxSeyL9akORjbUjSHN
	xBuw==
X-Gm-Message-State: AIVw110bE8WTgLeJx+4yQ7JA3sLe45ldS/1RaSB9iAqu/qfrSrli9jof
	DMIBDi2TwTab/JWlPOs=
X-Received: by 10.84.197.69 with SMTP id m63mr8418146pld.109.1499707644598;
	Mon, 10 Jul 2017 10:27:24 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:916c:598f:a4d5:4c49?
	([2601:646:8882:b8c:916c:598f:a4d5:4c49])
	by smtp.gmail.com with ESMTPSA id
	c62sm22252163pfb.93.2017.07.10.10.27.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Jul 2017 10:27:23 -0700 (PDT)
To: =?UTF-8?Q?Dr._Matthias_Sch=c3=b6pfer?= <Matthias.Schoepfer@ithinx.io>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <63EFF8D6B0566D4E82DEBC3D979C491383D59D8A@SW-VM-02.kelle.grp>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <67d4a2ee-6ca3-23cd-ff11-d4a05e9cb205@gmail.com>
Date: Mon, 10 Jul 2017 10:27:17 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:54.0)
	Gecko/20100101 Thunderbird/54.0
MIME-Version: 1.0
In-Reply-To: <63EFF8D6B0566D4E82DEBC3D979C491383D59D8A@SW-VM-02.kelle.grp>
Subject: Re: License missing coreutils when creating /usr/share/licenses and bbappend
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
X-List-Received-Date: Mon, 10 Jul 2017 17:27:28 -0000
X-Groupsio-MsgNum: 36980
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="EX7cAPxgdOJ0obN23jrl7PWjPnmMJIa3g"

--EX7cAPxgdOJ0obN23jrl7PWjPnmMJIa3g
Content-Type: multipart/mixed; boundary="Jo7sewwQXtFhVFpBh1guPCQ6RxJDCsUQu";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: =?UTF-8?Q?Dr._Matthias_Sch=c3=b6pfer?= <Matthias.Schoepfer@ithinx.io>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <67d4a2ee-6ca3-23cd-ff11-d4a05e9cb205@gmail.com>
Subject: Re: [yocto] License missing coreutils when creating
 /usr/share/licenses and bbappend
References: <63EFF8D6B0566D4E82DEBC3D979C491383D59D8A@SW-VM-02.kelle.grp>
In-Reply-To: <63EFF8D6B0566D4E82DEBC3D979C491383D59D8A@SW-VM-02.kelle.grp>

--Jo7sewwQXtFhVFpBh1guPCQ6RxJDCsUQu
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 7/10/17 9:19 AM, Dr. Matthias Sch=C3=B6pfer wrote:
> Hi!
>=20
> We are using yocto / openembedded (pyro). I use:
>=20
> COPY_LIC_MANIFEST =3D "1"
> COPY_LIC_DIRS =3D "1"
> LICENSE_CREATE_PACKAGE =3D "1"
>=20
> to generate a /usr/share/licenses and /usr/share/common-licenses
> respectively. But unfortunately, the coreutils subdirectory is empty.
>=20
> I use a bbappend file containing only:
>=20
> ALTERNATIVE_PRIORITY =3D "40"
> ALTERNATIVE_PRIORITY[od] =3D "100"
>=20
> such that only od gets installed (remaining functionality by busybox).
>=20
> Any hints on how to get the license info in there as well?!

you might have to check if od is getting installed from coreutils or
some other package is providing it.

>=20
> Regards,
>=20
>     Matthias
>=20
>=20
>=20
>=20
>=20
> i.A. Dr.-Ing. Matthias Sch=C3=B6pfer  |  ithinx GmbH  |  Software Engin=
eer
> Phone: +49 (221) 99589-332  |  Fax: +49 (221) 99589-199
> Address: ithinx GmbH  |  Butzweilerhof Allee 4  |  50829 Cologne  |  Ge=
rmany
> E-Mail: Matthias.Schoepfer@ithinx.io  |  Website: www.ithinx.io
> Registered Office: Cologne  |  District court: Marburg  |  HRB 6749
> Managing Director: Christian Faust
>=20
> This e-mail may contain confidential and/or privileged information. if =
you are not the intended recipient (or have received this e-mail in error=
) please
> notifiy the sender immediately and destroy this e-mail. Any unautohrize=
d copying, disclosure or distribution of the material in this e-mail is s=
trictly forbidden.
>=20
> We like trees. Please consider the environment before printing this e-m=
ail. Thank you.
>=20



--Jo7sewwQXtFhVFpBh1guPCQ6RxJDCsUQu--

--EX7cAPxgdOJ0obN23jrl7PWjPnmMJIa3g
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAlljuPoACgkQuwUzVZGdMxQ98QCfefhI39ZlFLhKW/t0z277MzsC
WRMAoIq9aSEOy61mL6Jt/ABeD8otmHj7
=sJDZ
-----END PGP SIGNATURE-----

--EX7cAPxgdOJ0obN23jrl7PWjPnmMJIa3g--
