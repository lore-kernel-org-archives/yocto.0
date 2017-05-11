Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44D11E00B51; Thu, 11 May 2017 05:53:00 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C6E8E00AF8
	for <yocto@yoctoproject.org>; Thu, 11 May 2017 05:52:56 -0700 (PDT)
Received: from svr-orw-fem-05.mgc.mentorg.com ([147.34.97.43])
	by relay1.mentorg.com with esmtp 
	id 1d8naS-0002P5-1Y from Joe_MacDonald@mentor.com ;
	Thu, 11 May 2017 05:52:56 -0700
Received: from burninator (147.34.91.1) by svr-orw-fem-05.mgc.mentorg.com
	(147.34.97.43) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 11 May 2017 05:52:55 -0700
Received: by burninator (Postfix, from userid 1000)	id 4CAD458036E; Thu, 11
	May 2017 08:52:55 -0400 (EDT)
Date: Thu, 11 May 2017 08:52:55 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Dengke Du <dengke.du@windriver.com>
Message-ID: <20170511125254.GC7226@mentor.com>
References: <1494467319-199585-1-git-send-email-dengke.du@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1494467319-199585-1-git-send-email-dengke.du@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH V5] rpm: modify the rpm bbappend file to suitable for rpm4
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
X-List-Received-Date: Thu, 11 May 2017 12:53:00 -0000
X-Groupsio-MsgNum: 35961
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="xB0nW4MQa6jZONgY"
Content-Disposition: inline

--xB0nW4MQa6jZONgY
Content-Type: multipart/mixed; boundary="R+My9LyyhiUvIEro"
Content-Disposition: inline

--R+My9LyyhiUvIEro
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[meta-selinux][PATCH V5] rpm: modify the rpm bbappend file to suitable for=
 rpm4] On 17.05.10 (Wed 21:48) Dengke Du wrote:

> Changed in V5:
> 	Let the subject more clear.
>=20
> Changed in V4:
> 	Make the comments more clear.
> Changed in V3:
> 	Rebase the patch on the latest master branch.
>=20
> Delete the does not exist files when run task do_package.
>=20
> Signed-off-by: Dengke Du <dengke.du@windriver.com>
> ---
>  recipes-devtools/rpm/rpm_%.bbappend | 4 ----
>  1 file changed, 4 deletions(-)

I'll merge this and modify the commit log myself, but please note this
still isn't what I was asking for in the attached.  All of the "Changed
in..." lines should be after the --- line in your email.

-J.

>=20
> diff --git a/recipes-devtools/rpm/rpm_%.bbappend b/recipes-devtools/rpm/r=
pm_%.bbappend
> index 199a7e4..9f3ec90 100644
> --- a/recipes-devtools/rpm/rpm_%.bbappend
> +++ b/recipes-devtools/rpm/rpm_%.bbappend
> @@ -1,8 +1,4 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> =20
> -FILES_${PN} +=3D "${libdir}/rpm/bin/spooktool \
> -                ${libdir}/rpm/bin/semodule \
> -               "
> -
>  inherit with-selinux
>  PACKAGECONFIG[selinux] =3D "${WITH_SELINUX},${WITHOUT_SELINUX},libsemana=
ge,"
--=20
-Joe MacDonald.
:wq

--R+My9LyyhiUvIEro
Content-Type: message/rfc822
Content-Disposition: inline

Date: Wed, 10 May 2017 08:22:06 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Dengke Du <dengke.du@windriver.com>
CC: <mark.hatle@windriver.com>, <yocto@yoctoproject.org>
Subject: Re: [yocto] [meta-selinux][PATCH V3] rpm: modify the rpm bbappend
 file to suitable for rpm4
Message-ID: <20170510122206.GC24456@mentor.com>
References: <20170510070330.43118-1-dengke.du@windriver.com>
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yLVHuoLXiP9kZBkt"
Content-Disposition: inline
In-Reply-To: <20170510070330.43118-1-dengke.du@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
MIME-Version: 1.0

--yLVHuoLXiP9kZBkt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[yocto] [meta-selinux][PATCH V3] rpm: modify the rpm bbappend file to suit=
able for rpm4] On 17.05.10 (Wed 03:03) Dengke Du wrote:

> Changed in V3:
> 	rebase the patch on the latest master branch.
>=20
> 1. change the rpm_5.4.16.bbappend to rpm_git.bbappend, this is
>    because the rpm in oe-core has become rpm4 from rpm5.
>=20
> 2. drop the patch for rpm5.
>=20
> 3. delete the does not exist files when run task do_package.
>=20
> Signed-off-by: Dengke Du <dengke.du@windriver.com>
> ---
>  recipes-devtools/rpm/{rpm_%.bbappend =3D> rpm_git.bbappend} | 4 ----
>  1 file changed, 4 deletions(-)
>  rename recipes-devtools/rpm/{rpm_%.bbappend =3D> rpm_git.bbappend} (56%)

I think I understand what you're looking to do here, but the comments
are completely unclear.  A commit log should look something like:

   rpm: move rpm recipe to rpm_git

   <explanation of the problem and how this solves it>

   Signed-off-by: Dengke Du <dengke.du@windriver.com>
   ---
   <diffstat, possibly commentary or further explanation that's not
   important to the commit log itself and explanation of what's changed
   between different versions of the patch, since this is a v3>

You can accomplish this with the --annotate flag to git-send-email and
then in your editor just ensure the revision history and additional
commentary goes after the --- line.

As for the change, deleting package contents that are no longer present
is fine, but why change % to git in the recipe name?  We moved from a
specific version number to % so we would be somewhat divorced from the
changes in oe-core, this change reverses that decision.

-J.

> diff --git a/recipes-devtools/rpm/rpm_%.bbappend b/recipes-devtools/rpm/r=
pm_git.bbappend
> similarity index 56%
> rename from recipes-devtools/rpm/rpm_%.bbappend
> rename to recipes-devtools/rpm/rpm_git.bbappend
> index 199a7e4..9f3ec90 100644
> --- a/recipes-devtools/rpm/rpm_%.bbappend
> +++ b/recipes-devtools/rpm/rpm_git.bbappend
> @@ -1,8 +1,4 @@
>  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> =20
> -FILES_${PN} +=3D "${libdir}/rpm/bin/spooktool \
> -                ${libdir}/rpm/bin/semodule \
> -               "
> -
>  inherit with-selinux
>  PACKAGECONFIG[selinux] =3D "${WITH_SELINUX},${WITHOUT_SELINUX},libsemana=
ge,"
> --=20
> 2.11.0
>=20
--=20
-Joe MacDonald.
:wq

--yLVHuoLXiP9kZBkt
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJZEwXuAAoJEEn8ffcsOfaWPkUH/A31iCjhjJ5GRCHlL6tweyIi
aZYEARAEZJPUGl6CLzUR81eqgVCPtXmOdVb6w4GBFaZ3pr4iGP+yL7p6h02k6tRW
BZwluiTgX4y/ZqHg7jnCtsBpzO/GirsKf83bnHiDzswhbI6/9qBCo+kXUb5IujEy
lbR3fNRhJy5ZLovWZC8PlRww1SJ5VnI7Z58rb9vdjGsLIXa7psXRqRksmcAf7XVn
oE77zpFl1CCsHZWQSUv4iA96jNoGeME8/CmihY3TnD1XJq7g+INGBFZWcY2S62kg
ki51cV+wLg8l/a64ZzWh0vbaWti0Dv4C75TKqwAXnyciAlSAJNohskcOZUVpG7c=
=fYpf
-----END PGP SIGNATURE-----

--yLVHuoLXiP9kZBkt--

--R+My9LyyhiUvIEro--

--xB0nW4MQa6jZONgY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJZFF6mAAoJEEn8ffcsOfaWuowIAIthoHTa/2atsI69hbVDaWgK
1RbCfavACzKQ80tA0khSvwf+UVmWYvEePRdyVH6jEXmC4rRRBiJpms1LOGPuw8Dc
0fR3qpvJfH7A7oFwKUbWj1eybObZ+HGZiVrlfxCpwHz+cXWzN0z85avG3r4SWYDh
W9nFTzHCRadqxCVA1v3weHS4rjydZTPA4R7zethjeA5gheH+dh4yV2eylBRo70o0
9PTMjU6eQ4NNi9LAYqJjA/wcsqlcV9AE+E7oSN6thpAe1yde+Fm/WuhwoTCJJKV9
3NKi8NsS5VoNulQ/XyBK/gSCMm7hx9yYQMpPnTTNcvevoraEULraSlsS0bOa92I=
=hfpB
-----END PGP SIGNATURE-----

--xB0nW4MQa6jZONgY--
