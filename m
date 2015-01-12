Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85743E00968; Mon, 12 Jan 2015 12:01:47 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86211E00970
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 12:01:33 -0800 (PST)
Received: from svr-orw-fem-03.mgc.mentorg.com ([147.34.97.39])
	by relay1.mentorg.com with esmtp 
	id 1YAlB7-0007Ci-AS from Joe_MacDonald@mentor.com ;
	Mon, 12 Jan 2015 12:01:33 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-03.mgc.mentorg.com
	(147.34.97.39) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 12 Jan 2015 12:01:32 -0800
Received: by burninator (Postfix, from userid 1000)	id 871445809F6; Mon, 12
	Jan 2015 15:01:29 -0500 (EST)
Date: Mon, 12 Jan 2015 15:01:29 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <flihp@twobit.us>
Message-ID: <20150112200129.GI6167@mentor.com>
References: <1419032809-29879-1-git-send-email-flihp@twobit.us>
MIME-Version: 1.0
In-Reply-To: <1419032809-29879-1-git-send-email-flihp@twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][meta-selinux] parted: Use wildcard for version number in bbappend.
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
X-List-Received-Date: Mon, 12 Jan 2015 20:01:47 -0000
X-Groupsio-MsgNum: 22948
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ed/6oDxOLijJh8b0"
Content-Disposition: inline

--ed/6oDxOLijJh8b0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged this too.

-J.

[[PATCH][meta-selinux] parted: Use wildcard for version number in bbappend.=
] On 14.12.19 (Fri 23:46) flihp@twobit.us wrote:

> From: Philip Tricca <flihp@twobit.us>
>=20
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>  recipes-extended/parted/parted_%.bbappend   |    3 +++
>  recipes-extended/parted/parted_3.1.bbappend |    3 ---
>  2 files changed, 3 insertions(+), 3 deletions(-)
>  create mode 100644 recipes-extended/parted/parted_%.bbappend
>  delete mode 100644 recipes-extended/parted/parted_3.1.bbappend
>=20
> diff --git a/recipes-extended/parted/parted_%.bbappend b/recipes-extended=
/parted/parted_%.bbappend
> new file mode 100644
> index 0000000..366fdf5
> --- /dev/null
> +++ b/recipes-extended/parted/parted_%.bbappend
> @@ -0,0 +1,3 @@
> +PR .=3D ".2"
> +
> +inherit enable-selinux
> diff --git a/recipes-extended/parted/parted_3.1.bbappend b/recipes-extend=
ed/parted/parted_3.1.bbappend
> deleted file mode 100644
> index 366fdf5..0000000
> --- a/recipes-extended/parted/parted_3.1.bbappend
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -PR .=3D ".2"
> -
> -inherit enable-selinux
--=20
-Joe MacDonald.
:wq

--ed/6oDxOLijJh8b0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUtCgZAAoJEEn8ffcsOfaWufwIAI1yfYfZ5gEuLExafNyDAvTc
T0FzHCIlSlRBeVCFYXptR6vsFHt16PXzw0Hew2NNFvfCZvV6Wb/WswDyDMoMEb2c
pQnnj2zUFitPw8IelRtknfhBPkEWmyi2Jj9vZWlh7G1uY3aXxDukGL8nuLl2WoKT
xFOVlFBZrnO0AVfqdX1VPGtYeqUDg2mYui7Bx7xunCvi1ejPpAivzjfi/gbVMjD0
+J3XLkzV7nLIoUcbl/eC+nnqjg6o9/0lcExT6IeOvzEYXVf3ByA9e0qiqAM9P2/i
dIn/vdt46lJQLF4i9KQQn1rhw7emSHcELMiHvbzJp7saXuLBv8QzlH06r5eVO9o=
=ReLU
-----END PGP SIGNATURE-----

--ed/6oDxOLijJh8b0--
