Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6466BE00A54; Tue,  2 Apr 2019 05:07:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39B04E00950
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 05:07:33 -0700 (PDT)
Received: from svr-orw-mbx-08.mgc.mentorg.com ([147.34.90.208])
	by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	id 1hBICS-0004sl-4y from Joe_MacDonald@mentor.com ;
	Tue, 02 Apr 2019 05:07:32 -0700
Received: from SVR-ORW-MBX-09.mgc.mentorg.com (147.34.90.209) by
	svr-orw-mbx-08.mgc.mentorg.com (147.34.90.208) with Microsoft SMTP
	Server (TLS) id 15.0.1320.4; Tue, 2 Apr 2019 05:07:29 -0700
Received: from burninator2.cal.mentorg.com (147.34.91.1) by
	SVR-ORW-MBX-09.mgc.mentorg.com (147.34.90.209) with Microsoft SMTP
	Server id
	15.0.1320.4 via Frontend Transport; Tue, 2 Apr 2019 05:07:29 -0700
Received: by burninator2.cal.mentorg.com (Postfix, from userid 5844)
	id D5F9428A1344; Tue,  2 Apr 2019 08:07:28 -0400 (EDT)
Date: Tue, 2 Apr 2019 08:07:28 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Yi Zhao <yi.zhao@windriver.com>
Message-ID: <20190402120728.GB21281@mentor.com>
References: <1554166451-14076-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
In-Reply-To: <1554166451-14076-1-git-send-email-yi.zhao@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-800 http://www.vim.org
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] selinux: remove git version
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
X-List-Received-Date: Tue, 02 Apr 2019 12:07:34 -0000
X-Groupsio-MsgNum: 44594
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TRYliJ5NKNqkz5bu"
Content-Disposition: inline

--TRYliJ5NKNqkz5bu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Yi,

I'm in the process of updating a big portion of the meta-selinux layer,
starting with the policy and working outward.  I am planning to update
these packages (and likely merge this) but I'm not merging your patch
yet until everything else is sorted out.

Just wanted to follow up with you so you knew what was happening.

-J.

[[meta-selinux][PATCH] selinux: remove git version] On 19.04.02 (Tue 08:54)=
 Yi Zhao wrote:

> The git version of libselinux libsemanage libsepol checkpolicy and
> policycoreutils are far behind the master branch and now they can not
> build due to the do_patch error. The current stable 2.8 version works
> well so we can remove them.
>=20
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>  recipes-security/selinux/checkpolicy_git.bb     |  6 ------
>  recipes-security/selinux/libselinux_git.bb      | 14 --------------
>  recipes-security/selinux/libsemanage_git.bb     | 17 -----------------
>  recipes-security/selinux/libsepol_git.bb        |  8 --------
>  recipes-security/selinux/policycoreutils_git.bb |  6 ------
>  recipes-security/selinux/selinux_git.inc        | 11 -----------
>  6 files changed, 62 deletions(-)
>  delete mode 100644 recipes-security/selinux/checkpolicy_git.bb
>  delete mode 100644 recipes-security/selinux/libselinux_git.bb
>  delete mode 100644 recipes-security/selinux/libsemanage_git.bb
>  delete mode 100644 recipes-security/selinux/libsepol_git.bb
>  delete mode 100644 recipes-security/selinux/policycoreutils_git.bb
>  delete mode 100644 recipes-security/selinux/selinux_git.inc
>=20
> diff --git a/recipes-security/selinux/checkpolicy_git.bb b/recipes-securi=
ty/selinux/checkpolicy_git.bb
> deleted file mode 100644
> index 6d1d23a..0000000
> --- a/recipes-security/selinux/checkpolicy_git.bb
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -PV =3D "2.7+git${SRCPV}"
> -
> -include selinux_git.inc
> -include ${BPN}.inc
> -
> -LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
> diff --git a/recipes-security/selinux/libselinux_git.bb b/recipes-securit=
y/selinux/libselinux_git.bb
> deleted file mode 100644
> index a43b184..0000000
> --- a/recipes-security/selinux/libselinux_git.bb
> +++ /dev/null
> @@ -1,14 +0,0 @@
> -PV =3D "2.7+git${SRCPV}"
> -
> -include selinux_git.inc
> -include ${BPN}.inc
> -
> -LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D84b4d2c6ef954a2d4081e775a270d=
0d0"
> -
> -SRC_URI +=3D "\
> -	file://libselinux-drop-Wno-unused-but-set-variable.patch \
> -	file://libselinux-make-O_CLOEXEC-optional.patch \
> -	file://libselinux-make-SOCK_CLOEXEC-optional.patch \
> -	file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
> -	file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
> -	"
> diff --git a/recipes-security/selinux/libsemanage_git.bb b/recipes-securi=
ty/selinux/libsemanage_git.bb
> deleted file mode 100644
> index 2e1fdc8..0000000
> --- a/recipes-security/selinux/libsemanage_git.bb
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -PV =3D "2.7+git${SRCPV}"
> -
> -include selinux_git.inc
> -include ${BPN}.inc
> -
> -LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Da6f89e2100d9b6cdffcea4f398e37=
343"
> -
> -SRC_URI +=3D "\
> -	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
> -	file://libsemanage-fix-path-nologin.patch \
> -	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
> -	file://libsemanage-define-FD_CLOEXEC-as-necessary.patch;striplevel=3D2 \
> -	file://libsemanage-allow-to-disable-audit-support.patch \
> -	file://libsemanage-disable-expand-check-on-policy-load.patch \
> -	file://0001-src-Makefile-fix-includedir-in-libselinux.pc.patch \
> -	"
> -FILES_${PN} +=3D "/usr/libexec"
> diff --git a/recipes-security/selinux/libsepol_git.bb b/recipes-security/=
selinux/libsepol_git.bb
> deleted file mode 100644
> index f9b8010..0000000
> --- a/recipes-security/selinux/libsepol_git.bb
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -PV =3D "2.7+git${SRCPV}"
> -
> -include selinux_git.inc
> -include ${BPN}.inc
> -
> -LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Da6f89e2100d9b6cdffcea4f398e37=
343"
> -
> -SRC_URI +=3D "file://0001-src-Makefile-fix-includedir-in-libsepol.pc.pat=
ch"
> diff --git a/recipes-security/selinux/policycoreutils_git.bb b/recipes-se=
curity/selinux/policycoreutils_git.bb
> deleted file mode 100644
> index 6d1d23a..0000000
> --- a/recipes-security/selinux/policycoreutils_git.bb
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -PV =3D "2.7+git${SRCPV}"
> -
> -include selinux_git.inc
> -include ${BPN}.inc
> -
> -LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
> diff --git a/recipes-security/selinux/selinux_git.inc b/recipes-security/=
selinux/selinux_git.inc
> deleted file mode 100644
> index 9887bd1..0000000
> --- a/recipes-security/selinux/selinux_git.inc
> +++ /dev/null
> @@ -1,11 +0,0 @@
> -SRCREV =3D "1bac758bf6cf884c112b80545d5fc5b668fc7d71"
> -
> -SRC_URI =3D "git://github.com/SELinuxProject/selinux.git;protocol=3Dhttp"
> -
> -include selinux_common.inc
> -
> -# ${S} is set in selinux_common above, but we need to change it here sin=
ce the
> -# top level directory is named differently
> -S =3D "${WORKDIR}/git/${BPN}"
> -
> -DEFAULT_PREFERENCE =3D "-1"
> --=20
> 2.7.4
>=20

--TRYliJ5NKNqkz5bu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEkMd/b97HINT8/zEqSfx99yw59pYFAlyjUH8ACgkQSfx99yw5
9pZIegf/WHYqrRwn3LIHdHIlyeyOtbMyS0Q1pLZCPN1DHqkfoZJT4f/Nf0Vn/0UU
kxabhR6hnHHzYNe9RzFENiHMr0zvazHsVC02leA+3tiV0tLNGwNwXS470ZSeM1o1
AQDVlOqlV3ZqxXvBedKN1ZUgNyBNLNcMSTBpHBWfaQYkVcYO37oON2Z+sfV2V0ws
2JDBpFhXytm6xTpr9poKoNwsj9H2gX1BrOuGseSFlL1+OhtdB1ViHOhaij4kPAQ1
HuKwcyYsswVLI/Hz25KL2Qgr6WZkJ8jBJOtQdJadLHROWgZfV/YWuu5uYtm97AJO
Esk6HDTzjDBxUkc5eRFIKch4w63zYg==
=qc60
-----END PGP SIGNATURE-----

--TRYliJ5NKNqkz5bu--
