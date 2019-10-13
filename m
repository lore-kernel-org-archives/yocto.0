Return-Path: <guilhem@saurel.me>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81188E00DB5; Sun, 13 Oct 2019 03:00:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SUBJ_OBFU_PUNCT_FEW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [217.70.178.242 listed in list.dnswl.org]
	* 0.7 SUBJ_OBFU_PUNCT_FEW Possible punctuation-obfuscated Subject:
	header
X-Greylist: delayed 1529 seconds by postgrey-1.32 at yocto-www;
	Sun, 13 Oct 2019 03:00:19 PDT
Received: from mslow2.mail.gandi.net (mslow2.mail.gandi.net [217.70.178.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FC0FE00D4E
	for <yocto@yoctoproject.org>; Sun, 13 Oct 2019 03:00:19 -0700 (PDT)
Received: from relay1-d.mail.gandi.net (unknown [217.70.183.193])
	by mslow2.mail.gandi.net (Postfix) with ESMTP id 7D18E3AFBEC
	for <yocto@yoctoproject.org>; Sun, 13 Oct 2019 09:30:09 +0000 (UTC)
X-Originating-IP: 92.245.144.139
Received: from localhost (unknown [92.245.144.139])
	(Authenticated sender: guilhem@saurel.me)
	by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 5164D24000A;
	Sun, 13 Oct 2019 09:30:07 +0000 (UTC)
Date: Sun, 13 Oct 2019 11:30:04 +0200
From: Guilhem Saurel <guilhem.saurel@laas.fr>
To: yocto@yoctoproject.org
Message-ID: <20191013093004.zxzgukocmkrliu42@laas.fr>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
Subject: download.yoctoproject.org - Certificate expired
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
X-List-Received-Date: Sun, 13 Oct 2019 10:00:21 -0000
X-Groupsio-MsgNum: 46917
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w5cbhw7oysboaecp"
Content-Disposition: inline

--w5cbhw7oysboaecp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi,

The certificate installed on https://download.yoctoproject.org expired about 4
days ago. Is anyone else experiencing the same issue? Is a new certificate going
to be installed ?

Thanks,
Guilhem.

--w5cbhw7oysboaecp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEmxp5Bl0vK4BsilocfSrNr0ZTzygFAl2i7psACgkQfSrNr0ZT
zygLUxAAqMI9YhJh7wlsFa0ESIGY9tR6PSm0KDEozmZfkwoa4IKEgJmCDY5LxnWF
VODW21/rmpGXZV4Y3zIdSa87fBUZ1kArRq1FBJZtcRbaeotXB/nS6M4ssunEe4BH
XAoPzkHmpWuCfXxmT8/2MVg/R/szB9OFosFAo5yAjJSdz3dE8A3IcY8t4YKdBFMh
yH/Q9pjQUfH7ARVYRQyxbWsZWvMIyF/FTt96zQFZq5n2vnTjAMjAl4ok1KAkQsn1
yFmnq1cHy/Q54sSXyyVSg/fEr7yMY6SZ/PEgga1DX6b4eVSxVpv6ZxdzRM/T0qdN
YBupeWn9oXHj9mX4Czagr0JzDkmVHobRFMy2hR1bu0jJzwkeTIC2WctVVVIHqD8U
chF4XM2tI8b7uR5/qxUn8r5LgFEcqYt8bywkETcHG3dgBHeoGAm014dUwMeRnqVC
wcsRFrBGyII3UGztNL0TnOnkvezecqNhIWK4zRpoco5O+TP85deXa/4GVNKUwJ3E
u7ydosnN20mh+T6GlqPARvj6107JQV0LBrDV6R5ZADv9UGGENnJubZA05kLlgZ4f
uQOVpSWmmsWJJRuyl/2E31wxp4Yu4apj77GUhwhIA5gwGK8v5xCigh3mWEqzucid
6tBLC/04PAhKZwnSJrNMsbd0QmrLUsNcHtt0oAXljDmlCqwEpMQ=
=kkMB
-----END PGP SIGNATURE-----

--w5cbhw7oysboaecp--
