Return-Path: <menschel-d@posteo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63D2CE00D69; Mon,  4 Dec 2017 13:12:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [185.67.36.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 379 seconds by postgrey-1.32 at yocto-www;
	Mon, 04 Dec 2017 13:12:17 PST
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1603EE00D17
	for <yocto@yoctoproject.org>; Mon,  4 Dec 2017 13:12:17 -0800 (PST)
Received: from submission (posteo.de [89.146.220.130]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 9A0A520FA8
	for <yocto@yoctoproject.org>; Mon,  4 Dec 2017 22:05:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
	t=1512421556; bh=UGPTISGxyPtGQQao/blrb7AeKj0JW8OtGRdBDnx0tyQ=;
	h=From:Subject:To:Cc:Date:From;
	b=RjoLjHXz2sy2PUCKtQx4dHKP4Vc86YbPWfq2T6ggJZrWq4UneJK1ZiWSMX8EBtRf1
	DNco0XHkwulYrWzt0mVZpExxfy3iS7+DjrHJCRsJsYNWSKNG7A/4XNX+tqmnn/b3mh
	u5v4GajmDs3SCTZNmKiUJgwpt4ZN87AlPvKy3lmUiXiHirCm4EfOXW4HsUe46/tQLR
	GMkXkGSKW6FkjwuFp/CO20hHyqluK/RIJjm2cr1DrO0kLKCLifDoGR/YkZ3veB1TsB
	t6qWQvW8/ZzF3DefRzOca1q4Jy714DA/kL57upL5WPNCDsJ/QnROkewTYDwie/Sq58
	85nQ1RC11Jgng==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 3yrHTv3brkz9rxZ;
	Mon,  4 Dec 2017 22:05:55 +0100 (CET)
From: Dennis Menschel <menschel-d@posteo.de>
To: Enrico Joerns <ejo@pengutronix.de>, yocto@yoctoproject.org
References: <c8e75209-3fd2-925c-9245-3db1876b8bdc@posteo.de>
	<558509cb-5d67-fa25-29c8-2725bad6b592@gmail.com>
	<423fd5be-5867-fd62-89f6-aa7c0d5b2f57@pengutronix.de>
Message-ID: <ba9291c5-07c8-f224-a31e-12a75d9ff3a0@posteo.de>
Date: Mon, 4 Dec 2017 22:04:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <423fd5be-5867-fd62-89f6-aa7c0d5b2f57@pengutronix.de>
Subject: Re: New software layer for the barebox bootloader
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
X-List-Received-Date: Mon, 04 Dec 2017 21:12:19 -0000
X-Groupsio-MsgNum: 38978
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="qCbv37wrkgg47mrrJlQ8Ux4i4AN6FhULn"

--qCbv37wrkgg47mrrJlQ8Ux4i4AN6FhULn
Content-Type: multipart/mixed; boundary="9OkM0fU7jK4j2MEL6UOsM4GOl8bGi6P8e";
 protected-headers="v1"
From: Dennis Menschel <menschel-d@posteo.de>
To: Enrico Joerns <ejo@pengutronix.de>, yocto@yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>
Message-ID: <ba9291c5-07c8-f224-a31e-12a75d9ff3a0@posteo.de>
Subject: Re: [yocto] New software layer for the barebox bootloader
References: <c8e75209-3fd2-925c-9245-3db1876b8bdc@posteo.de>
 <558509cb-5d67-fa25-29c8-2725bad6b592@gmail.com>
 <423fd5be-5867-fd62-89f6-aa7c0d5b2f57@pengutronix.de>
In-Reply-To: <423fd5be-5867-fd62-89f6-aa7c0d5b2f57@pengutronix.de>

--9OkM0fU7jK4j2MEL6UOsM4GOl8bGi6P8e
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Enrico,

Am 04.12.2017 um 15:22 schrieb Enrico Joerns:
> [...]
>
> First of all, I also have thank you and say that it's great work you've=

> done there! At the moment there are some recipes around and it is reall=
y
> worth concentrating the efforts. You did quite a lot work on writing an=
d
> documenting recipes.
>=20
> Barebox as a bootloader is a really fundamental piece of software to
> bring up a board. Thus, from my point of view, we should push the
> recipes forward to oe-core or at least meta-oe.
>=20
> People that currently have their own layers providing barebox might ten=
d
> to keep their own layers as long as they do not see any advantages in
> using the meta-barebox layer.
> Because each added meta-layer also means a bit more complexity, having =
a
> layer for more or less a single component (that is also supported by
> other layers) might retain people from using it and this also increases=

> the threshold for using barebox at all.
>=20
> Having barebox support in oe-core will allow people to throw away all
> their custom solutions, will concentrate efforts on a single (set of)
> recipes, will allow tighter integration with other components, and the
> most important; it will ease using it and give the developers the
> opportunity to choose their bootloader more freely, depending on their
> individual hardware and software requirements.
>=20
> What do you think about that?
>=20
> [...]

I would also love to see barebox in one of the official
Yocto/OpenEmbedded layers. As already stated in the FAQ section of my
meta-barebox layer's documentation:

>> One of the goals of the meta-barebox layer is to define a clear and
>> stable interface that covers the most important features of barebox.
>> Such an interface still seems to be missing in the Yocto/OpenEmbedded
>> landscape, which also prevents barebox from gaining popularity and
>> being included in one of the official Yocto/OE layers. You can look
>> at meta-barebox as an attempt to speed up this unification process.

Integrating barebox into either oe-core or meta-oe (and thus having an
official set of BitBake variables to configure barebox) would IMHO also
increase the acceptance for BSP vendors to add barebox related variables
into their machine configuration files. That way, BSP support for both
u-boot and barebox could coexist in the same configuration files without
the need to extend them via additional layers.

Best regards,
Dennis Menschel


--9OkM0fU7jK4j2MEL6UOsM4GOl8bGi6P8e--

--qCbv37wrkgg47mrrJlQ8Ux4i4AN6FhULn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJaJbiJAAoJELoiXviItXXQ5iYP/RjrvV+qG0BivW4+IEei51BY
l56h09X8b4ABfE4QrPX6dp47IkE4SJaCAnaEECjOuJR/LIfztMLg0uP23NLLvWZ/
apinHzl152Yif7BJUmVcNOqCZegJ8oE6co0IFK+XqS1eelRoDM45BnXJJUMEgaM+
KVQPY2J1G9kYN/VhGaly7Jiddo76ZtEe8LPuveZBoS7CqAJwGGQ5opPJRv0bg+c7
Z8t8LzD9xsseY5V/r5WqVdLp9STxOuBiUFqXjcishqVPLWa8+9BU2xe7TdiPOlIs
x2lyoS3XKl5pNEhymiNVPqwF0Wk55jc2L0ZEnj+N6skUB1os7t5n3MVs4w9OeGey
QL61mmqsDY8pj/ZDNLkVQT1pxNtsMgfSzgKTjW4lh7d6kiN7XpGK7e+Ku57eTKzb
jhfYrre+VoUxYD3cGwXyVLfoATFPfLaJDCYF6bjU0/p/vt995XnIYVBNJKCeUJAM
h2mL7iv1LhJZfp43DB40ztTHsBLpHwDENtAkCpYxA0pefUMTHGbUSCO3UxPofQ7y
qR+r08Ep2ed7CHtTWu9ZY6t/yCSZBNUQy8N/+WahJHg6FaNqeb4trluwHieZnvro
ndUtkA1RX0UDVC42MmLRKiTox4G5b3jwDFy/FWyZbCOlB8QTj30UJ6b3ANCiuezm
1DacZn9eQrZihG1rbe1p
=qMsT
-----END PGP SIGNATURE-----

--qCbv37wrkgg47mrrJlQ8Ux4i4AN6FhULn--
