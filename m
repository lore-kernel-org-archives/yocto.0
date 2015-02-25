Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BCD5E00754; Wed, 25 Feb 2015 07:14:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF95BE00546
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 07:14:44 -0800 (PST)
Received: from svr-orw-fem-05.mgc.mentorg.com ([147.34.97.43])
	by relay1.mentorg.com with esmtp 
	id 1YQdff-0001ZK-Iv from Joe_MacDonald@mentor.com 
	for yocto@yoctoproject.org; Wed, 25 Feb 2015 07:14:43 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-05.mgc.mentorg.com
	(147.34.97.43) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 25 Feb 2015 07:14:43 -0800
Received: by burninator (Postfix, from userid 1000)	id 8B5B4580C40; Wed, 25
	Feb 2015 10:14:47 -0500 (EST)
Date: Wed, 25 Feb 2015 10:14:47 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <yocto@yoctoproject.org>
Message-ID: <20150225151447.GI8949@mentor.com>
References: <1424877224-3418-1-git-send-email-joe_macdonald@mentor.com>
MIME-Version: 1.0
In-Reply-To: <1424877224-3418-1-git-send-email-joe_macdonald@mentor.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [meta-selinux][PATCH] python: use wildcard for verison
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
X-List-Received-Date: Wed, 25 Feb 2015 15:14:45 -0000
X-Groupsio-MsgNum: 23749
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="N8NGGaQn1mzfvaPg"
Content-Disposition: inline

--N8NGGaQn1mzfvaPg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I will, of course, actually spell-check the commit log before committing
anything.

-J.

[[yocto] [meta-selinux][PATCH] python: use wildcard for verison] On 15.02.2=
5 (Wed 10:13) Joe MacDonald wrote:

> The current python bbappend doesn't include any patches, so it's
> reasonable to move to a wildcard for the version.
>=20
> Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
> ---
>  recipes-devtools/python/{python_2.7.3.bbappend =3D> python_%.bbappend} |=
 2 --
>  1 file changed, 2 deletions(-)
>  rename recipes-devtools/python/{python_2.7.3.bbappend =3D> python_%.bbap=
pend} (92%)
>=20
> diff --git a/recipes-devtools/python/python_2.7.3.bbappend b/recipes-devt=
ools/python/python_%.bbappend
> similarity index 92%
> rename from recipes-devtools/python/python_2.7.3.bbappend
> rename to recipes-devtools/python/python_%.bbappend
> index b8447e9..9eefd2d 100644
> --- a/recipes-devtools/python/python_2.7.3.bbappend
> +++ b/recipes-devtools/python/python_%.bbappend
> @@ -1,5 +1,3 @@
> -PR .=3D ".1"
> -
>  inherit selinux
>  # If selinux enabled, disable handlers to rw command history file
>  FILESEXTRAPATHS_prepend :=3D "${@target_selinux(d, '${THISDIR}/${PN}:')}"
> --=20
> 1.9.1
>=20
--=20
-Joe MacDonald.
:wq

--N8NGGaQn1mzfvaPg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJU7ebnAAoJEEn8ffcsOfaWoxQIAIWJCcqFAGSp63AhFuh1DOC7
xtEtFaATk6uu0Wxmw4qC60lT0U3vfLaJbhMjKlv6UBVCMfLWolXFhW5yQ6/Q0qya
uGstfLALrcyXsffBhz5kg6koIOn5rge8bgHJONFpDxh5FjsHqTBZGJMW2m/64RFV
8ivBhgUY3ub+CQijlQmBWCA5TEPqaOtH930oOzk7vYo2h/tgVsQpZR/wMxZQRTkC
ae8jB6Ka902Jjz43GLkU1Zk529WCZxggbpwnexQajx2LiBKMWxkgl96l5w/wLoDF
VcNIwbY5X1LafRc5VqQ1qK0key92TSMtFQyBWjS0ilR5mtiDqO5Ry9+1eul2upU=
=ETkZ
-----END PGP SIGNATURE-----

--N8NGGaQn1mzfvaPg--
