Return-Path: <prvs=321dcabd4=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2B25E00847; Mon,  8 Sep 2014 02:38:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E5A2E0049D
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 02:38:08 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AqYEAJx3DVSsEApK/2dsb2JhbABZg2BXBLd+kXOHTAGBK3iEBAEEAXkFCwsNFCUPEjYGDgUbiBMDCQ0ItF4NhloBEwSNIIItB4RMBZJBgQWBSoVRAYIPh2uHCYocagEBAYFFgQcBAQE
X-IPAS-Result: AqYEAJx3DVSsEApK/2dsb2JhbABZg2BXBLd+kXOHTAGBK3iEBAEEAXkFCwsNFCUPEjYGDgUbiBMDCQ0ItF4NhloBEwSNIIItB4RMBZJBgQWBSoVRAYIPh2uHCYocagEBAYFFgQcBAQE
Date: Mon, 8 Sep 2014 11:37:58 +0200
From: Richard Leitner <richard.leitner@skidata.com>
To: jags gediya <jags.gediya@gmail.com>
Message-ID: <20140908113758.7f9dc3b6@lxbuild.skidata.net>
In-Reply-To: <CAP3RZogHv9R=+fG_e3xHeZ-L2WJgWwGMRAqi3UaBYh_dWYsDgg@mail.gmail.com>
References: <CAP3RZogHv9R=+fG_e3xHeZ-L2WJgWwGMRAqi3UaBYh_dWYsDgg@mail.gmail.com>
Organization: SKIDATA AG
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building own kernel instead of taking from git
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
X-List-Received-Date: Mon, 08 Sep 2014 09:38:16 -0000
X-Groupsio-MsgNum: 21383
Content-Type: multipart/signed; micalg=PGP-SHA1;
	boundary="Sig_/ImlPg0+V53o0pxpx4p7t+fm";
	protocol="application/pgp-signature"

--Sig_/ImlPg0+V53o0pxpx4p7t+fm
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, 8 Sep 2014 09:51:28 +0530
jags gediya <jags.gediya@gmail.com> wrote:

> I want to build my kernel source code in yocto. For that i have
> modified the required linux-imx.inc file.
>=20
> Inside that i have given kernel source directory in SRC_URI and S variabl=
e.
>=20
> Is this approach fine, or is there any better solution i can get?

I think all you need to know is available in the kernel-dev manual:
https://www.yoctoproject.org/docs/1.6.1/kernel-dev/kernel-dev.html

Generally I would prefer to copy and modify the linux-yocto custom recipe
(linux-yocto-custom.bb) like described in the manual. Furthermore creating &
working in your own layer would be a good idea.

regards,
richard

--Sig_/ImlPg0+V53o0pxpx4p7t+fm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBAgAGBQJUDXj3AAoJEA1czarIqmfYl40P/0a76aJqYtrSlmf9bP8PUwy3
MnyYwM8XYI3Wat1H06lJqcLiCWzILAyk4+4y+SCnN32YQsmHM6/XINAPOxB0NMYh
siIcZ1xT0ndtULjUXuNQnoNCDUQdvrLDv647S3cP1wA+4XPQrIW6xuIGkAb3k1hr
Q5uKNaYngPvaHsSEe2AJOlYUL1clkH1vQts/nltFTnyDrhAFhgu5g4muqXaH9tek
20iVni4/H39YsV2J8gHPmxCUlQ+12bJnhGQRyQBzizuV8pEz3gIC+rZLEEg9y3BO
xF2DaWDDVYFdI2WyEGCViUGFBOnigFofFEeLlUyGDMoUu5IHVFrAoI32L9TS/iUt
iJcBJy6E6uuar81y9iHHsU5HtmbMXN4a7okPZEfuNqCrAma0dDG3vSJXqRsFXvt8
IE4XGxhym3FuSfGOcsh5yx7xFldym2qmX/L74lqGJhi6fFor8bv3VxLLwSLb2T3A
oq78n3J0b2y+FUMMfUSeFAf3RAgYfvfZtO7bweqmSiQ9oMSDFdCOCx+KbydjfInB
7GEsPLIIYaMSOv+ZpMVUbIynyE1B5OrYv9PWbMJTWqzHR2gKqu+Th4qNz2953UIH
mfkgaWCkMsEJIckKwGQrCvCGevSWk6VaSUQW+QgQaccuvaozllcApOM8tz/OmfuD
idpbsgGbDNflxtp/lsAs
=GHdd
-----END PGP SIGNATURE-----

--Sig_/ImlPg0+V53o0pxpx4p7t+fm--
