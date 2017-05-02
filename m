Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98D96E00AE0; Tue,  2 May 2017 06:13:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3276FE00985
	for <yocto@yoctoproject.org>; Tue,  2 May 2017 06:13:46 -0700 (PDT)
Received: from svr-orw-fem-03.mgc.mentorg.com ([147.34.97.39])
	by relay1.mentorg.com with esmtp 
	id 1d5Xcf-0000W5-Gq from Joe_MacDonald@mentor.com ;
	Tue, 02 May 2017 06:13:45 -0700
Received: from burninator (147.34.91.1) by svr-orw-fem-03.mgc.mentorg.com
	(147.34.97.39) with Microsoft SMTP Server id 14.3.224.2; Tue, 2 May 2017
	06:13:44 -0700
Received: by burninator (Postfix, from userid 1000)	id 855DF5800D9; Tue,  2
	May 2017 09:13:44 -0400 (EDT)
Date: Tue, 2 May 2017 09:13:44 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <jackie.huang@windriver.com>
Message-ID: <20170502131344.GD10652@mentor.com>
References: <20170222064446.13162-1-jackie.huang@windriver.com>
MIME-Version: 1.0
In-Reply-To: <20170222064446.13162-1-jackie.huang@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] systemd: no need to inherit enable-selinux
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
X-List-Received-Date: Tue, 02 May 2017 13:13:49 -0000
X-Groupsio-MsgNum: 35847
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="q9KOos5vDmpwPx9o"
Content-Disposition: inline

--q9KOos5vDmpwPx9o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[yocto] [meta-selinux][PATCH] systemd: no need to inherit enable-selinux] =
On 17.02.22 (Wed 14:44) jackie.huang@windriver.com wrote:

> From: Jackie Huang <jackie.huang@windriver.com>
>=20
> The selinux PACKAGECONFIG is properly handled in
> the recipe in oe-core, no need to inherit the
> enable-selinux bbclass.

That might be true, but other than belt-and-suspenders, what's the
harm in this being in the recipe?  I don't necessarily think it's an
invalid change but my quick count shows ~44 instances of 'inherit
enable-selinux' and 'inherit with-selinux' in meta-selinux, why's this
one significant?

-J.

>=20
> Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
> ---
>  recipes-core/systemd/systemd_%.bbappend | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/recipes-core/systemd/systemd_%.bbappend b/recipes-core/syste=
md/systemd_%.bbappend
> index 8d9029b..f1bdaf8 100644
> --- a/recipes-core/systemd/systemd_%.bbappend
> +++ b/recipes-core/systemd/systemd_%.bbappend
> @@ -1,2 +1 @@
>  inherit enable-audit
> -inherit enable-selinux
> --=20
> 2.8.3
>=20
--=20
-Joe MacDonald.
:wq

--q9KOos5vDmpwPx9o
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJZCIYIAAoJEEn8ffcsOfaWORUIAK4f1LzSTkGR9BEPhA/2RcDx
OTRt4ppLvVdlXhKQaIA+o5LAd+gYBOIwh9HNHcxB/+LBKwMb2M4cIVfjG8LZELkh
//lZBGmHDCo5vR2fXIm9cjPNRXuKbpmO4Cu88xSlOhQO5v8E64zKEucKdEUtj2ZI
JVG8tTQI6xj/LR0jzbXUHTktuGRMGB5JE2dUSv9Tg+kytHQHfuJVvH5h9864otMA
XRXzao3/V2l7Zpr2Ki42+lFhZnVLcC0AbBD1KcXvSAtYJkP84GYlBNCaHPiNo143
XR9T2WB1N3vu8OU1zPSowzCH/n7jOiN5orW/P6IVty49mUCM0RvCPWRxb2LI/oE=
=9/jj
-----END PGP SIGNATURE-----

--q9KOos5vDmpwPx9o--
