Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08F24E00993; Mon, 12 Jan 2015 12:01:31 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0443AE0098E
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 12:01:16 -0800 (PST)
Received: from svr-orw-fem-03.mgc.mentorg.com ([147.34.97.39])
	by relay1.mentorg.com with esmtp 
	id 1YAlAp-00071d-L7 from Joe_MacDonald@mentor.com ;
	Mon, 12 Jan 2015 12:01:15 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-03.mgc.mentorg.com
	(147.34.97.39) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 12 Jan 2015 12:01:14 -0800
Received: by burninator (Postfix, from userid 1000)	id C74255809F6; Mon, 12
	Jan 2015 15:01:11 -0500 (EST)
Date: Mon, 12 Jan 2015 15:01:11 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <flihp@twobit.us>
Message-ID: <20150112200111.GH6167@mentor.com>
References: <1419032854-29911-1-git-send-email-flihp@twobit.us>
MIME-Version: 1.0
In-Reply-To: <1419032854-29911-1-git-send-email-flihp@twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][meta-selinux] cronie: Use wildcard for version number in bbappend.
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
X-List-Received-Date: Mon, 12 Jan 2015 20:01:31 -0000
X-Groupsio-MsgNum: 22947
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Encpt1P6Mxii2VuT"
Content-Disposition: inline

--Encpt1P6Mxii2VuT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks Philip.

-J.

[[PATCH][meta-selinux] cronie: Use wildcard for version number in bbappend.=
] On 14.12.19 (Fri 23:47) flihp@twobit.us wrote:

> From: Philip Tricca <flihp@twobit.us>
>=20
> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>  recipes-extended/cronie/cronie_%.bbappend      |    3 +++
>  recipes-extended/cronie/cronie_1.4.11.bbappend |    3 ---
>  2 files changed, 3 insertions(+), 3 deletions(-)
>  create mode 100644 recipes-extended/cronie/cronie_%.bbappend
>  delete mode 100644 recipes-extended/cronie/cronie_1.4.11.bbappend
>=20
> diff --git a/recipes-extended/cronie/cronie_%.bbappend b/recipes-extended=
/cronie/cronie_%.bbappend
> new file mode 100644
> index 0000000..a398bec
> --- /dev/null
> +++ b/recipes-extended/cronie/cronie_%.bbappend
> @@ -0,0 +1,3 @@
> +PR .=3D ".2"
> +
> +inherit with-selinux with-audit
> diff --git a/recipes-extended/cronie/cronie_1.4.11.bbappend b/recipes-ext=
ended/cronie/cronie_1.4.11.bbappend
> deleted file mode 100644
> index a398bec..0000000
> --- a/recipes-extended/cronie/cronie_1.4.11.bbappend
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -PR .=3D ".2"
> -
> -inherit with-selinux with-audit
--=20
-Joe MacDonald.
:wq

--Encpt1P6Mxii2VuT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUtCgHAAoJEEn8ffcsOfaWwWcH/2T202bqjoPGoSJfqw1+x9Z4
ypQEfW8iNjxiSBwPSNGkMUoMvQoac/pPHhfKch9ghKA1h7Nj4GMRgiUhTEKc8V25
+BfGF74zt5ZPmeCyhunDB3cDT0kXZGt04C0YmeT+6Xc0pXNt564la1oIIhfGxilD
71trrnLhDzEOETMOYIpMEN2nTx68jnH6iU/+QpPaG8SXkz7HyFjlj35tWG1axlsU
JmDbWd3NFrLY6IOZd8pZQzdD2Bkfny/4I0j2fu4KkS0cBFH9Jpv/ol7NfjsQxZAV
dzJ5GJvqt0lHrpxSwGDBTRT335M/7HsdBuUZke+QWOMscWCM8ceLZ0lPOijpkcw=
=KF3g
-----END PGP SIGNATURE-----

--Encpt1P6Mxii2VuT--
