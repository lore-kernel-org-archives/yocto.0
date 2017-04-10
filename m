Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6136FE00924; Mon, 10 Apr 2017 12:53:49 -0700 (PDT)
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
	*      [209.85.192.173 listed in list.dnswl.org]
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3045E00655
	for <yocto@yoctoproject.org>; Mon, 10 Apr 2017 12:53:47 -0700 (PDT)
Received: by mail-pf0-f173.google.com with SMTP id c198so26887562pfc.1
	for <yocto@yoctoproject.org>; Mon, 10 Apr 2017 12:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=Bo9ov8vus/vKoL4KK963lcqUQoX/VtkatjVy8Pn2xbc=;
	b=McnK8DoXlyY6zy5QYVHi3vsep9yWyjv6pCrQOKXUxgFt2lQv8IrdCvcQWUG2WucNVr
	lwdIkxHJO75XEBcvd+p7uxuHL9uIS8hTIPO9BGUkYL0oY8ywLwLXaElaeN2DisU5YfUM
	OzwNf3IEUXOoT1yBHaydzNOxLI+6Yb8FwYV9uiwWpB3oUopcm44z+dep37bQSvUqByw6
	PucY/cqXCmOMYVirzLRC9czfTmtz9htp6Cj0o59ocjUdFTkA+JrE6/3D35KZnyt4gOCi
	9B+RvZoTqV3GdMxcuHEa1wpZBDC+5RwGQs28volqkDPJ+UMlaNrMcKDNDf7HJZcoaZv8
	taLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=Bo9ov8vus/vKoL4KK963lcqUQoX/VtkatjVy8Pn2xbc=;
	b=BzM9IbkZ1wTyjaRcnz1hz2zwm7dX+m1KFoZfql4Jey8iuaOQ6apX8OTLJ6PUpsY/ld
	e484XKjboFMbaB6znntFXS6clz6IAm3K4nufJj4p5KRnHvhEcCK5LNu3vlo6qaL1lEXd
	Ycsgul6o4j5ilFryo+x7lyzrW1ge8Spp6neVRFVbSNEAB73EWbPaqjRRotXNcjXxgv8V
	gLpWbuI+/B7gIxytrsNstU5mQ6Zjqa/ybRANsIDyY5iQoeLm07zQDxHySiy3LsaFW6ZR
	wCT1k9kuI8dak5BM3UwJY8bcb2Mxp+VYOOwu64LQQkiaKncAKkCwpDYsj0lnw9saCggm
	d9Kw==
X-Gm-Message-State: AFeK/H1skEtgyLaLi581S1r3hDzDHdYj3JeJ+gWlliE7Vb7mGU8eelg2e5ymbRS4955Egg==
X-Received: by 10.99.97.12 with SMTP id v12mr57940643pgb.124.1491854027148;
	Mon, 10 Apr 2017 12:53:47 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:a551:b153:de27:f516])
	by smtp.gmail.com with ESMTPSA id
	d3sm26242279pgc.37.2017.04.10.12.53.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Apr 2017 12:53:46 -0700 (PDT)
To: "Maier, Chris" <C.Maier@geze.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <2AA7D088591C49498E92D6491C58159334CCEFDD@gcxdb1.corp.geze.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <79711def-3ac3-1506-8fa5-ba874c1a830b@gmail.com>
Date: Mon, 10 Apr 2017 12:53:44 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <2AA7D088591C49498E92D6491C58159334CCEFDD@gcxdb1.corp.geze.com>
Subject: Re: Install rootfs.tar.bz2 to ${D}/home/root/
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
X-List-Received-Date: Mon, 10 Apr 2017 19:53:49 -0000
X-Groupsio-MsgNum: 35491
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="egajdNjd5kBHS3okTxaQbPr6haw8urvKl"

--egajdNjd5kBHS3okTxaQbPr6haw8urvKl
Content-Type: multipart/mixed; boundary="hbmQ5LfkcJGhip4CMkOx5RtCODbdxsbs2";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: "Maier, Chris" <C.Maier@geze.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <79711def-3ac3-1506-8fa5-ba874c1a830b@gmail.com>
Subject: Re: [yocto] Install rootfs.tar.bz2 to ${D}/home/root/
References: <2AA7D088591C49498E92D6491C58159334CCEFDD@gcxdb1.corp.geze.com>
In-Reply-To: <2AA7D088591C49498E92D6491C58159334CCEFDD@gcxdb1.corp.geze.com>

--hbmQ5LfkcJGhip4CMkOx5RtCODbdxsbs2
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 4/10/17 4:28 AM, Maier, Chris wrote:
> Hi,=20
>=20
> I want to create a deployable SD card image. My board (beaglebone based=
) boots from SD card and runs a script which copies the rootfs.tar.bz2 to=
 the flash memory.=20
> So how can I deploy a copy of the whole rootfs to ${D}/home/root?=20
> A rootfs in the rootfs, does that make sense?=20
>=20

you could write a image post processing function to do it.

> Any help is appreciated.=20
>=20
> Chris Maier
>=20
>=20
>=20
> Gesch=C3=A4ftsf=C3=BChrung: Brigitte V=C3=B6ster-Alber (Vorsitzende), A=
ndrea Alexandra Alber, Marc Alber, Florian Birkenmayer
> Vorsitzender des Aufsichtsrates: Prof. Dr. Dr. Ulli Arnold, Amtsgericht=
 Stuttgart HRB 250329, Tel: +49 7152 203 0
> GEZE GmbH, Reinhold-V=C3=B6ster-Stra=C3=9Fe 21-29, 71229 Leonberg, Germ=
any
>=20
>=20
>=20


--hbmQ5LfkcJGhip4CMkOx5RtCODbdxsbs2--

--egajdNjd5kBHS3okTxaQbPr6haw8urvKl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAljr4skACgkQuwUzVZGdMxQITwCfasVw738reUtEj9hTYFw+DG+9
j/IAn2kyRrKymxfiHGOIrDN9tKFp67RB
=72Fp
-----END PGP SIGNATURE-----

--egajdNjd5kBHS3okTxaQbPr6haw8urvKl--
