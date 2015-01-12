Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9F20E00906; Mon, 12 Jan 2015 12:00:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E3A6E0082D
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 12:00:26 -0800 (PST)
Received: from svr-orw-fem-03.mgc.mentorg.com ([147.34.97.39])
	by relay1.mentorg.com with esmtp 
	id 1YAlA1-0006pJ-HN from Joe_MacDonald@mentor.com ;
	Mon, 12 Jan 2015 12:00:25 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-03.mgc.mentorg.com
	(147.34.97.39) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 12 Jan 2015 12:00:24 -0800
Received: by burninator (Postfix, from userid 1000)	id B29715809F6; Mon, 12
	Jan 2015 15:00:21 -0500 (EST)
Date: Mon, 12 Jan 2015 15:00:21 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <wenzong.fan@windriver.com>
Message-ID: <20150112200021.GG6167@mentor.com>
References: <1417597113-6111-1-git-send-email-wenzong.fan@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1417597113-6111-1-git-send-email-wenzong.fan@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][meta-selinux] systemd: fix dependencies for audit, selinux
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
X-List-Received-Date: Mon, 12 Jan 2015 20:00:29 -0000
X-Groupsio-MsgNum: 22945
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZPDwMsyfds7q4mrK"
Content-Disposition: inline

--ZPDwMsyfds7q4mrK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.

-J.

[[yocto] [PATCH][meta-selinux] systemd: fix dependencies for audit, selinux=
] On 14.12.03 (Wed 03:58) wenzong.fan@windriver.com wrote:

> From: Wenzong Fan <wenzong.fan@windriver.com>
>=20
> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> ---
>  recipes-core/systemd/systemd_%.bbappend |    2 ++
>  1 file changed, 2 insertions(+)
>  create mode 100644 recipes-core/systemd/systemd_%.bbappend
>=20
> diff --git a/recipes-core/systemd/systemd_%.bbappend b/recipes-core/syste=
md/systemd_%.bbappend
> new file mode 100644
> index 0000000..8d9029b
> --- /dev/null
> +++ b/recipes-core/systemd/systemd_%.bbappend
> @@ -0,0 +1,2 @@
> +inherit enable-audit
> +inherit enable-selinux
> --=20
> 1.7.9.5
>=20
--=20
-Joe MacDonald.
:wq

--ZPDwMsyfds7q4mrK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUtCfVAAoJEEn8ffcsOfaWYZgH/1eZ+OeRLK2Gu6/skJLuYrdR
qGSECRNDc+mDElItv0nwxBBCBOTKW/To6R7xdru8bMwWW2qewqd7eoMY4mjbfPnp
ly3sEo8njhNqxM589k+rNCYydMpnL3nraW2gE1G05oBjUXz3QZQud/mmgTYkfOTT
PwNhlyVh6qqSXkrpTCMEYk+QPUzj/Zg4vGkxjRX6WxURKQsHXcemN/OUPJtrLZ5K
OoMBX4SCFP3swer2VtMjT/YNveKbXGAvfHxconVmzfgWGNzazKZ6Y/5ELK6xAhU6
DkuJk3N7a420lVWyVrcLtWaJHApMRjHivj8jRe9sqNZ+U/J2V5pU32JX2M+gc6c=
=UUV7
-----END PGP SIGNATURE-----

--ZPDwMsyfds7q4mrK--
