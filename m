Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 728EBE00B58; Thu, 15 Jun 2017 22:58:47 -0700 (PDT)
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
	*      [209.85.192.169 listed in list.dnswl.org]
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4297AE00A9B
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 22:58:43 -0700 (PDT)
Received: by mail-pf0-f169.google.com with SMTP id x63so17992529pff.3
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 22:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=JaFZ/cw3/32K2z2DiSfg5wIAgILiDb+z2AF7AFnUuBo=;
	b=o/ua8CztwUsfNJ7xbs6cpU/odCEEFbD152+goNAaExrQynxZ/p2B7KvDZsVV9ZDBrD
	CrbrK/eAyNokGxw+9ov81EMFW0vHmK2B87UgUQSzh5aqbdGkwnbrcZ6+GylBW97zwR3K
	Ovi6JbRa3KgwvXpr26vwUrX4zU+zh49wXaiKiwgBZFr8WBtrDIViIyWwlnfqYv4e8LDD
	utyftJ42ZKVPghUUaJENze1mCJ5sP7Trw69bUdGvDPZaFQ6+g3vudancYbgQkQOxmQrz
	xq8nDPpfmgqkIB1CcLxDRXEczjkDHTf93WH3oZ/kIq+O3FFwAlWMDua1+uI3aaMbUYbW
	j/AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=JaFZ/cw3/32K2z2DiSfg5wIAgILiDb+z2AF7AFnUuBo=;
	b=ZwonuXDQIV5S0gdi7uZ2dl0fK1ofTg+Uivg8dYYIIztfwKdM/n4N73fyVyUgJwC/Dc
	bwcHYVfiD02rMpFfVcpwEAFKFTUeDf3tphC9DMKp7AlJeKcZKaDkH0oB6hgcbUpsqCFU
	1l/mYnQDzkLz4DTajgwIv+JGc/WFyfwwfsk7wY5yXqM2LpKMKBTEDsZRSCPrykpy0lYb
	9ARPOA+f5Ca+RsNLybQKdUnJes/hMvFyUCvjbtLubsLafmHDrML+1MA+deVZu1qbxvkI
	h7BYnjdUDhxsgGyrL9vKm/v0kPjsChAky6GgrQF+Us8+VVl/nK75PP7GPDWU3OMckDys
	WAlg==
X-Gm-Message-State: AKS2vOxgcnYw74MX49C4MuZbtoRryZJslX+f2HWlJ8VuhxHCeVTNAx29
	3n058xTjNSNHu36eu9A=
X-Received: by 10.99.178.16 with SMTP id x16mr9235976pge.220.1497592722723;
	Thu, 15 Jun 2017 22:58:42 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:745f:c6ab:d92d:5f3f?
	([2601:646:8882:b8c:745f:c6ab:d92d:5f3f])
	by smtp.gmail.com with ESMTPSA id i2sm1983274pfe.89.2017.06.15.22.58.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 15 Jun 2017 22:58:41 -0700 (PDT)
To: Franck Furic <f.furic@madelin-sa.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <0CF626E6464FB94BB209647252516D85832DF9@srv-exchange.madelin.fr>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <6107fcea-69d9-bc3c-7f44-a2e3f7178045@gmail.com>
Date: Thu, 15 Jun 2017 22:58:32 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:54.0)
	Gecko/20100101 Thunderbird/54.0
MIME-Version: 1.0
In-Reply-To: <0CF626E6464FB94BB209647252516D85832DF9@srv-exchange.madelin.fr>
Subject: Re: Build my Yocto edison image
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
X-List-Received-Date: Fri, 16 Jun 2017 05:58:47 -0000
X-Groupsio-MsgNum: 36605
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="BoMmEHlGXJq6SNeeGPSn54X0nkTOAf4B7"

--BoMmEHlGXJq6SNeeGPSn54X0nkTOAf4B7
Content-Type: multipart/mixed; boundary="wsxTFUrn8rhCh4xCTu4HnNTjbBfepnmml";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Franck Furic <f.furic@madelin-sa.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <6107fcea-69d9-bc3c-7f44-a2e3f7178045@gmail.com>
Subject: Re: [yocto] Build my Yocto edison image
References: <0CF626E6464FB94BB209647252516D85832DF9@srv-exchange.madelin.fr>
In-Reply-To: <0CF626E6464FB94BB209647252516D85832DF9@srv-exchange.madelin.fr>

--wsxTFUrn8rhCh4xCTu4HnNTjbBfepnmml
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 6/15/17 6:30 AM, Franck Furic wrote:
> Hi,
>=20
> =20
>=20
> I have bought an Intel Edison board and I would like build my image
> including Qt Framework (meta-qt5).
>=20
> =20
>=20
> In the past, (2 years ago) I have success to compile C++ program using
> Qt by build my image with meta-qt5 I think it was 1.6.x version of yoct=
o
> project.
>=20
> =20
>=20
> Now, it=92s impossible for me to build an image including qt on yocto. =
I
> have tried many thinks in different ways but nothing at the end.
>=20
> =20
>=20
> Some people help me to do this here
> https://communities.intel.com/thread/115234.
>=20
> =20
>=20
> I have tried on dizzy branch and morty branch but i have always errors.=

>=20
> =20
>=20
> Someone can help me tell me the correct procedure to build an image
> containing meta-qt5 on any version of yocto.
>=20
> =20
>=20
> I need to develop some code with Qt Framework.

you can add the needed bits to image yourself. Like

IMAGE_INSTALL_append =3D "\
    qtbase \
    qtbase-tools \
    qtbase-fonts \
    qtbase-plugins \
    qtwebkit \
    qtwayland \
    qtwayland-plugins \
    cinematicexperience \
"

in local.conf



>=20
> =20
>=20
> =20
>=20
> Description : FranckFuric
>=20
> =20
>=20
> Description : Facebook <https://www.facebook.com/madelin.sa.france>=20
> Description : youtube-logo
> <https://www.youtube.com/user/MADELINSA49>    Site web :
> www.madelin-sa.com <http://www.madelin-sa.com/>  |  E-boutique :
> www.storemadelin-sa.com <http://www.storemadelin-sa.com/>
>=20
> _______________________________________________________________________=
_______________________
>=20
> Ce message contient des informations confidentielles ou appartenant =E0=
 la
> soci=E9t=E9 MADELIN SA et est =E9tabli =E0 l'attention  exclusive de se=
s
> destinataires.
>=20
> Toute divulgation, utilisation, diffusion ou reproduction (totale ou
> partielle) de ce message, ou des informations qu'il contient, doit =EAt=
re
> pr=E9alablement autoris=E9e.
>=20
> Si vous n'=EAtes pas destinataire de ce message, merci de le d=E9truire=

> imm=E9diatement et d'avertir l'exp=E9diteur de l'erreur de distribution=
 et
> de la destruction du message
>=20
> =20
>=20
>=20
>=20



--wsxTFUrn8rhCh4xCTu4HnNTjbBfepnmml--

--BoMmEHlGXJq6SNeeGPSn54X0nkTOAf4B7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAllDc5AACgkQuwUzVZGdMxSVYgCcD4mSraA2hEDYjeiSt/VNFJvJ
nY0AnA0iz6H/hR2r3Y9C2eQhlGVOFxQh
=Fwcw
-----END PGP SIGNATURE-----

--BoMmEHlGXJq6SNeeGPSn54X0nkTOAf4B7--
