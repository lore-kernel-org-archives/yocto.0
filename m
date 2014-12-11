Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09A41E0087C; Wed, 10 Dec 2014 16:47:23 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A965E0080C
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 16:47:15 -0800 (PST)
Received: from svr-orw-fem-03.mgc.mentorg.com ([147.34.97.39])
	by relay1.mentorg.com with esmtp 
	id 1XyruT-0007PW-Ua from Joe_MacDonald@mentor.com ;
	Wed, 10 Dec 2014 16:47:13 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-03.mgc.mentorg.com
	(147.34.97.39) with Microsoft SMTP Server id 14.3.181.6;
	Wed, 10 Dec 2014 16:47:13 -0800
Received: by burninator (Postfix, from userid 1000)	id 667505833D3; Wed, 10
	Dec 2014 19:47:13 -0500 (EST)
Date: Wed, 10 Dec 2014 19:47:13 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Li xin <lixin.fnst@cn.fujitsu.com>
Message-ID: <20141211004713.GC4102@mentor.com>
References: <1418200430-2173-1-git-send-email-lixin.fnst@cn.fujitsu.com>
MIME-Version: 1.0
In-Reply-To: <1418200430-2173-1-git-send-email-lixin.fnst@cn.fujitsu.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-cgl][PATCH] samhain: add new recipe
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
X-List-Received-Date: Thu, 11 Dec 2014 00:47:23 -0000
X-Groupsio-MsgNum: 22583
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="WplhKdTI2c8ulnbP"
Content-Disposition: inline

--WplhKdTI2c8ulnbP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[yocto] [meta-cgl][PATCH] samhain: add new recipe] On 14.12.10 (Wed 16:33)=
 Li xin wrote:

> Samhain is an open source file integrity and intrusion detection
> system for Unix that uses cryptographic checksums of files to
> detect modifications, and allows you to trace: what changes have
> occured in your system, when these changes have occured, and who
> was logged into the system at the respective time.

Samhain is already in meta-security at the same version (though without
the patch you've included here.)

Since meta-cgl depends on meta-security today, I think you probably
should submit whatever updates are appropriate to the samhain recipe
to meta-security, so as to avoid duplicating / diverging recipes.

-J.

>=20
> Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
> ---
>  .../samhain/0001-Makefile.in-error-fix.patch       | 31 ++++++++++++
>  .../samhain/samhain/config-site.samhain-3.1.3      |  2 +
>  .../recipes-cgl/samhain/samhain_3.1.3.bb           | 58 ++++++++++++++++=
++++++
>  3 files changed, 91 insertions(+)
>  create mode 100644 meta-cgl-common/recipes-cgl/samhain/samhain/0001-Make=
file.in-error-fix.patch
>  create mode 100644 meta-cgl-common/recipes-cgl/samhain/samhain/config-si=
te.samhain-3.1.3
>  create mode 100644 meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb
>=20
> diff --git a/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in=
-error-fix.patch b/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefil=
e.in-error-fix.patch
> new file mode 100644
> index 0000000..cd646f6
> --- /dev/null
> +++ b/meta-cgl-common/recipes-cgl/samhain/samhain/0001-Makefile.in-error-=
fix.patch
> @@ -0,0 +1,31 @@
> +From a9ce38c56bf7072f292d685a48b912e6e59260a6 Mon Sep 17 00:00:00 2001
> +From: Li xin <lixin.fnst@cn.fujitsu.com>
> +Date: Wed, 10 Dec 2014 14:45:28 +0900
> +Subject: [PATCH] Makefile.in: error fix
> +
> +error:File '/usr/sbin/samhain' from samhain was already stripped,
> +this will prevent future debugging!
> +
> +Upstream-Status: pending
> +
> +Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
> +---
> + Makefile.in | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/Makefile.in b/Makefile.in
> +index b1904d9..000de49 100644
> +--- a/Makefile.in
> ++++ b/Makefile.in
> +@@ -54,7 +54,7 @@ selectconfig =3D @selectconfig@
> + top_builddir =3D .
> +=20
> + INSTALL =3D @INSTALL@
> +-INSTALL_PROGRAM =3D @INSTALL@ -s -m 700
> ++INSTALL_PROGRAM =3D @INSTALL@ -m 700
> + INSTALL_SHELL =3D @INSTALL@ -m 700
> + INSTALL_DATA =3D @INSTALL@ -m 600
> + INSTALL_MAN =3D @INSTALL@ -m 644
> +--=20
> +1.8.4.2
> +
> diff --git a/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samh=
ain-3.1.3 b/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain=
-3.1.3
> new file mode 100644
> index 0000000..2ce3769
> --- /dev/null
> +++ b/meta-cgl-common/recipes-cgl/samhain/samhain/config-site.samhain-3.1=
=2E3
> @@ -0,0 +1,2 @@
> +ssp_cv_lib=3Dno
> +sh_cv_va_copy=3Dyes
> diff --git a/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb b/meta-=
cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb
> new file mode 100644
> index 0000000..22c8577
> --- /dev/null
> +++ b/meta-cgl-common/recipes-cgl/samhain/samhain_3.1.3.bb
> @@ -0,0 +1,58 @@
> +SUMMARY =3D "File Integrity and Intrusion Detection System"
> +DESCRIPTION =3D "Samhain is an open source file integrity and intrusion =
detection \
> +system for Unix that uses cryptographic checksums of files to \
> +detect modifications, and allows you to trace: what changes have \
> +occured in your system, when these changes have occured, and who \
> +was logged into the system at the respective time."
> +
> +HOMEPAGE =3D "http://la-samhna.de/samhain/"
> +SECTION =3D "Filesystem"
> +
> +SRC_URI =3D "http://la-samhna.de/samhain/samhain-current.tar.gz;extract=
=3Dsamhain-3.1.3.tar.gz \
> +   file://0001-Makefile.in-error-fix.patch"
> +SRC_URI[md5sum] =3D "64572a4dbfdc8065d6e9f7ca0eab0a34"
> +SRC_URI[sha256sum] =3D "c234afaf9ba3c6b7d240858b74423f935185de66e996405b=
3016ec4a288a7e1e"
> +LICENSE =3D "GPLv2"
> +LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D8ca43cbc842c2336e835926c2166c=
28b"
> +
> +DEPENDS =3D "libpthread-stubs acl zlib attr"
> +inherit autotools-brokensep pkgconfig
> +
> +do_unpack2() {
> +    cd ${WORKDIR}
> +    tar zxvf ${PN}-${PV}.tar.gz
> +}
> +
> +S =3D "${WORKDIR}/${BP}"
> +
> +addtask unpack2 after do_unpack before do_patch
> +do_configure() {
> +    export CONFIG_SITE=3D./config-site.${BP}
> +    ./configure \
> +        --host=3D${HOST_SYS} \
> +        --build=3D${BUILD_SYS} \
> +        --prefix=3D${prefix} \
> +        --sbindir=3D${sbindir} \
> +        --mandir=3D${mandir} \
> +        --sysconfdir=3D${sysconfdir} \
> +        --localstatedir=3D${localstatedir} \
> +        --with-config-file=3D/etc/samhain/samhainrc \
> +        --with-state-dir=3D/var/samhain \
> +        --with-html-file=3D/var/samhain/samhain.html \
> +        --with-data-file=3D/var/samhain/samhain.data \
> +        --with-pid-file=3D/var/samhain/samhain.pid \
> +        --with-log-file=3D/var/samhain/samhain.log \
> +        --enable-login-watch \
> +        --disable-khide \
> +        --enable-suidcheck \
> +        --with-trusted=3D0
> +}
> +
> +do_install() {
> +    install -d -m 755 ${D}/var/samhain
> +    install -d  ${D}/${mandir}
> +    oe_runmake DESTDIR=3D${D} install-program install-man install-data
> +    chmod -R a+r ${D}/${mandir}
> +    install -d ${D}/etc/samhain
> +    install -c -m 644  samhainrc.linux ${D}/etc/samhain/samhainrc
> +}
> --=20
> 1.8.4.2
>=20
--=20
-Joe MacDonald.
:wq

--WplhKdTI2c8ulnbP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUiOmRAAoJEEn8ffcsOfaWH34H/Rrb2ScE4yLcc2pHWtysH3tU
6dwb6P0bPwyWRdtMgSjCx2cgVyD5PeaseyFWxDL7fKph0aGkVqt/WdI41UqG04kj
pLCZKw6pMaMVZ992yWyVmWXrklEd2FNmue/CRGCm5LUcTTAKpOED2AAVhqhozbeH
o8GredLpv9OiGwxwxZQwVjjUSG9KOu7Y18vxHntva5CwiNEDUSohpawlbDGoojOs
p9b/4iNs2gruVyTqC5CTCcj8CDyWHV4rmZhKnsIRgc0PGYotF56nwSwiSpIrOdkO
ZZJ9bD5ukLs3P7ljbM2QZQhyoXHLqKCeOofva/zVpXISejivrOpmqh8rPGexhq4=
=ogmP
-----END PGP SIGNATURE-----

--WplhKdTI2c8ulnbP--
