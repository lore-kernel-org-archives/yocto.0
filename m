Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D2F7E00D08; Wed, 23 Jan 2019 22:47:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5632DE00D05
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 22:47:36 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x0O6lVK4009091
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 23 Jan 2019 22:47:31 -0800 (PST)
Received: from pek-khao-d2 (147.11.105.123) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Wed, 23 Jan 2019 22:47:30 -0800
Date: Thu, 24 Jan 2019 14:45:32 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: "Srinivasan, Raja" <rsrinivasan@abiomed.com>
Message-ID: <20190124064532.GJ28115@pek-khao-d2>
References: <fc7d34e702ed47bfa017034365edbec7@USDVREX02.abiomed.com>
MIME-Version: 1.0
In-Reply-To: <fc7d34e702ed47bfa017034365edbec7@USDVREX02.abiomed.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Originating-IP: [147.11.105.123]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: wic utility
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
X-List-Received-Date: Thu, 24 Jan 2019 06:47:37 -0000
X-Groupsio-MsgNum: 43887
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mFHiwr52TKrxpkjc"
Content-Disposition: inline

--mFHiwr52TKrxpkjc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 23, 2019 at 04:39:07PM +0000, Srinivasan, Raja wrote:
> I am using wic 0.2.0 from the rocko build.
>=20
> =20
>=20
> wic cp file wifile:part/path
>=20
> =20
>=20
> appears to succeed (no errors reported).
>=20
> =20
>=20
> But when I perform wic ls I don=E2=80=99t find the file in the target.
>=20
> =20
>=20
> Are there any switches the I should be using?

It seems that it works fine on the master branch.
    $ wic ls tmp/deploy/images/beaglebone-yocto/core-image-sato-beaglebone-=
yocto.wic:2
    debugfs 1.43.5 (04-Aug-2017)
          2   40755 (2)      0      0    4096 23-Jan-2019 14:04 .
          2   40755 (2)      0      0    4096 23-Jan-2019 14:04 ..
         11   40700 (2)      0      0   16384 23-Jan-2019 14:04 lost+found
         12   40755 (2)      0      0    4096 23-Jan-2019 13:56 lib
        456   40755 (2)      0      0    4096 23-Jan-2019 13:43 dev
        457   40555 (2)      0      0    4096 23-Jan-2019 13:43 proc
        458   40755 (2)      0      0    4096 23-Jan-2019 13:43 media
        459   40755 (2)      0      0    4096 23-Jan-2019 14:04 boot
        465   40755 (2)      0      0    4096 23-Jan-2019 14:03 mnt
        467   40755 (2)      0      0    4096 23-Jan-2019 13:57 usr
       9582   40755 (2)      0      0    4096 23-Jan-2019 13:56 var
       9639   40555 (2)      0      0    4096 23-Jan-2019 13:43 sys
       9640   40755 (2)      0      0    4096 23-Jan-2019 14:04 etc
      10373   40755 (2)      0      0    4096 23-Jan-2019 14:03 sbin
      10437   40755 (2)      0      0    4096 23-Jan-2019 13:43 run
      10438   41777 (2)      0      0    4096 23-Jan-2019 13:43 tmp
      10439   40755 (2)      0      0    4096 23-Jan-2019 14:03 home
      10441   40755 (2)      0      0    4096 23-Jan-2019 14:03 bin
    $ wic cp a.txt tmp/deploy/images/beaglebone-yocto/core-image-sato-beagl=
ebone-yocto.wic:2
    $ wic ls tmp/deploy/images/beaglebone-yocto/core-image-sato-beaglebone-=
yocto.wic:2
    debugfs 1.43.5 (04-Aug-2017)
          2   40755 (2)      0      0    4096 23-Jan-2019 14:04 .
          2   40755 (2)      0      0    4096 23-Jan-2019 14:04 ..
         11   40700 (2)      0      0   16384 23-Jan-2019 14:04 lost+found
         12   40755 (2)      0      0    4096 23-Jan-2019 13:56 lib
        456   40755 (2)      0      0    4096 23-Jan-2019 13:43 dev
        457   40555 (2)      0      0    4096 23-Jan-2019 13:43 proc
        458   40755 (2)      0      0    4096 23-Jan-2019 13:43 media
        459   40755 (2)      0      0    4096 23-Jan-2019 14:04 boot
        465   40755 (2)      0      0    4096 23-Jan-2019 14:03 mnt
        467   40755 (2)      0      0    4096 23-Jan-2019 13:57 usr
       9582   40755 (2)      0      0    4096 23-Jan-2019 13:56 var
       9639   40555 (2)      0      0    4096 23-Jan-2019 13:43 sys
       9640   40755 (2)      0      0    4096 23-Jan-2019 14:04 etc
      10373   40755 (2)      0      0    4096 23-Jan-2019 14:03 sbin
      10437   40755 (2)      0      0    4096 23-Jan-2019 13:43 run
      10438   41777 (2)      0      0    4096 23-Jan-2019 13:43 tmp
      10439   40755 (2)      0      0    4096 23-Jan-2019 14:03 home
      10441   40755 (2)      0      0    4096 23-Jan-2019 14:03 bin
      10514  100644 (1)      0      0       4 24-Jan-2019 14:23 a.txt

There should be no change for the Disk.copy() function between rocko and ma=
ster
branch. Anyway could you have a try on the latest master branch?

Thanks,
Kevin

>=20
> =20
>=20
> Thanks for any pointers, srini
>=20
>=20
> =E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=
=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=
=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=
=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=
=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=
=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=
=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81
>=20
> CONFIDENTIALITY NOTICE: This email message and any attachments are confid=
ential
> and may be privileged and are meant to be read by the intended recipient =
only.
> If you are not the intended recipient, please notify sender immediately a=
nd
> destroy all copies of this message and any attachments without reading or
> disclosing their contents. Thank you
>=20
>=20
>=20

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--mFHiwr52TKrxpkjc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEHc6qFoLCZqgJD98Zk1jtMN6usXEFAlxJXwwACgkQk1jtMN6u
sXHYdQf+Pu2jZ9b90NBXFZwSCJgz/z/QjDch1Brycl4ZT/pmvVvqlSXVWUCognrb
IDGW+VUuDH63tbqtqxC9M+OIBmBSwTA61w2SeTbX3HZ52ZP3TVK9JAZ92HQb0U1p
HC4S+OAAQlSehkEDzz5fHsIJvYuhvYo+AECSZMHRdyA0Q+t4ovcr1w4HnGQfaPGZ
EgNapJXXYqcElUBFTco8UQrHWWW4aKQFm62advFlMJvzSyfMnT+kSxNF6xUugUld
X4eB5w38pq5OFhtgaGuJZebcgJ5bigDAi9rQfGwmfyER+DzxwodGttw2aVNZCG9X
xTsKJE8cqsxewXBrnO8RKJNVRFwsew==
=DSMM
-----END PGP SIGNATURE-----

--mFHiwr52TKrxpkjc--
