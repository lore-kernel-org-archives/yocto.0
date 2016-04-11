Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D991AE00D38; Mon, 11 Apr 2016 05:54:40 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47F6FE0083D
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 05:54:36 -0700 (PDT)
Received: from svr-orw-fem-04.mgc.mentorg.com ([147.34.97.41])
	by relay1.mentorg.com with esmtp 
	id 1apbMR-0006ac-ID from Joe_MacDonald@mentor.com ;
	Mon, 11 Apr 2016 05:54:35 -0700
Received: from burninator (147.34.91.1) by svr-orw-fem-04.mgc.mentorg.com
	(147.34.97.41) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 11 Apr 2016 05:54:35 -0700
Received: by burninator (Postfix, from userid 1000)	id BD8F9580616; Mon, 11
	Apr 2016 08:54:33 -0400 (EDT)
Date: Mon, 11 Apr 2016 08:54:33 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: wenzong fan <wenzong.fan@windriver.com>
Message-ID: <20160411125433.GA4693@mentor.com>
References: <1459729295-79553-1-git-send-email-flihp@twobit.us>
	<1459729295-79553-3-git-send-email-flihp@twobit.us>
	<57076B89.20404@windriver.com>
MIME-Version: 1.0
In-Reply-To: <57076B89.20404@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 2/3] Integrate selinux-config into refpolicy_common.
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
X-List-Received-Date: Mon, 11 Apr 2016 12:54:40 -0000
X-Groupsio-MsgNum: 29357
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="NzB8fVQJ5HfG6fxh"
Content-Disposition: inline

--NzB8fVQJ5HfG6fxh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Wenzong,

[Re: [yocto] [meta-selinux][PATCH 2/3] Integrate selinux-config into refpol=
icy_common.] On 16.04.08 (Fri 16:27) wenzong fan wrote:

> This causes do_populate_sysroot error if build two or more types of
> refpolicy:
>=20
> $ bitbake refpolicy-minimum && bitbake refpolicy-mls
>=20
> ERROR: refpolicy-mls-git-r0 do_populate_sysroot: The recipe refpolicy-mls=
 is
> trying to install files into a shared area when those files already exist.
> Those files and their manifest location are:

I think this was always the intent with the series Philip submitted last
week (for reference, the thread is
https://www.mail-archive.com/yocto@yoctoproject.org/msg28530.html).
Isn't this (part of) the expected behaviour of the virtual provider
mechanism?  We did discuss what it would mean to be trying out multiple
policies on a system at the same time and at the time it seemed like the
"just works" angle was more important than "buffet style" when it came
to providing policy on the image.

It might be worth considering extending the changes to only do some
install steps at, say, do_rootfs but I don't know if that even makes
sense, this is really the first I've thought of it.  I think Philip's
original changes are good, though, for our maintenance and for clients
of meta-selinux.

-J.

>=20
> /buildarea/raid5/wfan/yocto/builds/selinux_sysvinit/tmp/sysroots/qemux86-=
64/etc/selinux/sepolgen.conf
>  Matched in manifest-qemux86-64-refpolicy-minimum.populate_sysroot
>=20
> /buildarea/raid5/wfan/yocto/builds/selinux_sysvinit/tmp/sysroots/qemux86-=
64/etc/selinux/config
>  Matched in manifest-qemux86-64-refpolicy-minimum.populate_sysroot
>=20
> /buildarea/raid5/wfan/yocto/builds/selinux_sysvinit/tmp/sysroots/qemux86-=
64/sysroot-providers/virtual_refpolicy
>  Matched in manifest-qemux86-64-refpolicy-minimum.populate_sysroot
> Please verify which recipe should provide the above files.
>=20
> Philip,
>=20
> Can you consider to withdraw the integration?
>=20
> Thanks
> Wenzong
>=20
> On 04/04/2016 08:21 AM, Philip Tricca wrote:
> >With the virutal package there's no need for a separate recipe to build
> >the config. This can be generated and included as part of the policy
> >package.
> >
> >Signed-off-by: Philip Tricca <flihp@twobit.us>
> >---
> >  .../packagegroups/packagegroup-core-selinux.bb     |  1 -
> >  .../packagegroups/packagegroup-selinux-minimal.bb  |  1 -
> >  recipes-security/refpolicy/refpolicy_common.inc    | 30 ++++++++++++++=
--
> >  recipes-security/selinux/selinux-config_0.1.bb     | 40 --------------=
--------
> >  4 files changed, 28 insertions(+), 44 deletions(-)
> >  delete mode 100644 recipes-security/selinux/selinux-config_0.1.bb
> >
> >diff --git a/recipes-security/packagegroups/packagegroup-core-selinux.bb=
 b/recipes-security/packagegroups/packagegroup-core-selinux.bb
> >index 62c5a76..c6d22b7 100644
> >--- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
> >+++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
> >@@ -22,7 +22,6 @@ RDEPENDS_${PN} =3D " \
> >  	packagegroup-selinux-policycoreutils \
> >  	setools \
> >  	setools-console \
> >-	selinux-config \
> >  	selinux-autorelabel \
> >  	selinux-init \
> >  	selinux-labeldev \
> >diff --git a/recipes-security/packagegroups/packagegroup-selinux-minimal=
=2Ebb b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
> >index 87ae686..451ae8b 100644
> >--- a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
> >+++ b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
> >@@ -21,7 +21,6 @@ RDEPENDS_${PN} =3D "\
> >  	policycoreutils-semodule \
> >  	policycoreutils-sestatus \
> >  	policycoreutils-setfiles \
> >-	selinux-config \
> >  	selinux-labeldev \
> >  	virtual/refpolicy \
> >  "
> >diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-s=
ecurity/refpolicy/refpolicy_common.inc
> >index ba887e4..305675f 100644
> >--- a/recipes-security/refpolicy/refpolicy_common.inc
> >+++ b/recipes-security/refpolicy/refpolicy_common.inc
> >@@ -1,3 +1,5 @@
> >+DEFAULT_ENFORCING ??=3D "enforcing"
> >+
> >  SECTION =3D "base"
> >  LICENSE =3D "GPLv2"
> >
> >@@ -14,7 +16,8 @@ SRC_URI +=3D "file://customizable_types \
> >
> >  S =3D "${WORKDIR}/refpolicy"
> >
> >-FILES_${PN} =3D " \
> >+CONFFILES_${PN} +=3D "${sysconfdir}/selinux/config"
> >+FILES_${PN} +=3D " \
> >  	${sysconfdir}/selinux/${POLICY_NAME}/ \
> >  	${datadir}/selinux/${POLICY_NAME}/*.pp \
> >  	${localstatedir}/lib/selinux/${POLICY_NAME}/ \
> >@@ -25,7 +28,6 @@ FILES_${PN}-dev =3D+ " \
> >  "
> >
> >  DEPENDS +=3D "checkpolicy-native policycoreutils-native m4-native"
> >-RDEPENDS_${PN} +=3D "selinux-config"
> >
> >  PACKAGE_ARCH =3D "${MACHINE_ARCH}"
> >
> >@@ -137,13 +139,37 @@ install_misc_files () {
> >  	oe_runmake 'DESTDIR=3D${D}' 'prefix=3D${D}${prefix}' install-headers
> >  }
> >
> >+install_config () {
> >+	echo "\
> >+# This file controls the state of SELinux on the system.
> >+# SELINUX=3D can take one of these three values:
> >+#     enforcing - SELinux security policy is enforced.
> >+#     permissive - SELinux prints warnings instead of enforcing.
> >+#     disabled - No SELinux policy is loaded.
> >+SELINUX=3D${DEFAULT_ENFORCING}
> >+# SELINUXTYPE=3D can take one of these values:
> >+#     standard - Standard Security protection.
> >+#     mls - Multi Level Security protection.
> >+#     targeted - Targeted processes are protected.
> >+#     mcs - Multi Category Security protection.
> >+SELINUXTYPE=3D${POLICY_TYPE}
> >+" > ${WORKDIR}/config
> >+	install -d ${D}/${sysconfdir}/selinux
> >+	install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
> >+}
> >+
> >  do_install () {
> >  	prepare_policy_store
> >  	rebuild_policy
> >  	install_misc_files
> >+	install_config
> >  }
> >
> >  do_install_append(){
> >  	# While building policies on target, Makefile will be searched from S=
ELINUX_DEVEL_PATH
> >  	echo "SELINUX_DEVEL_PATH=3D${datadir}/selinux/${POLICY_NAME}/include"=
 > ${D}${sysconfdir}/selinux/sepolgen.conf
> >  }
> >+
> >+sysroot_stage_all_append () {
> >+	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}
> >+}
> >diff --git a/recipes-security/selinux/selinux-config_0.1.bb b/recipes-se=
curity/selinux/selinux-config_0.1.bb
> >deleted file mode 100644
> >index e902e98..0000000
> >--- a/recipes-security/selinux/selinux-config_0.1.bb
> >+++ /dev/null
> >@@ -1,40 +0,0 @@
> >-DEFAULT_ENFORCING ??=3D "enforcing"
> >-
> >-SUMMARY =3D "SELinux configuration"
> >-DESCRIPTION =3D "\
> >-SELinux configuration files for Yocto. \
> >-"
> >-
> >-SECTION =3D "base"
> >-LICENSE =3D "MIT"
> >-LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfb=
cb788c80a0384361b4de20420"
> >-PR =3D "r4"
> >-
> >-S =3D "${WORKDIR}"
> >-
> >-CONFFILES_${PN} +=3D "${sysconfdir}/selinux/config"
> >-
> >-PACKAGE_ARCH =3D "${MACHINE_ARCH}"
> >-
> >-do_install () {
> >-	echo "\
> >-# This file controls the state of SELinux on the system.
> >-# SELINUX=3D can take one of these three values:
> >-#     enforcing - SELinux security policy is enforced.
> >-#     permissive - SELinux prints warnings instead of enforcing.
> >-#     disabled - No SELinux policy is loaded.
> >-SELINUX=3D${DEFAULT_ENFORCING}
> >-# SELINUXTYPE=3D can take one of these values:
> >-#     standard - Standard Security protection.
> >-#     mls - Multi Level Security protection.
> >-#     targeted - Targeted processes are protected.
> >-#     mcs - Multi Category Security protection.
> >-SELINUXTYPE=3D${@d.getVar("PREFERRED_PROVIDER_virtual/refpolicy", False=
)[len("refpolicy-"):]}
> >-" > ${WORKDIR}/config
> >-	install -d ${D}/${sysconfdir}/selinux
> >-	install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
> >-}
> >-
> >-sysroot_stage_all_append () {
> >-	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}
> >-}
> >

--=20
-Joe MacDonald.
:wq

--NzB8fVQJ5HfG6fxh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJXC56GAAoJEEn8ffcsOfaW6O4H/jbEklVotXl8HT3qhj0m2s+V
8D/w24HOSQ2NtGiZc6f2s0xmdWB6nHG/8Uvx+b9pZTt3efhVtu9xPf/wzklGif1J
qDuKLP7vdMJHdDM6Y6kBv9sp1LxEzSi88GWdUSQCoDEYmuTRtl0c6gu9QZK5Z4DX
tbh/5PemxMHSuLbwDg+rX8iQoO9Alb0i412RF85UiZz3OyBhjMijKmjg+IvS8Mzc
rfppiCrbGGSfMixrffAfIXJ8F0ASskYu5mYYCErVoRilnMg7IHIhy6gDmWXVOV/d
kl2cin9HQh4TKiWpSRfAK6Jtq1xrQY1eKNGfCfnEBTkHQaRThqOsefa1wsap3o4=
=En+E
-----END PGP SIGNATURE-----

--NzB8fVQJ5HfG6fxh--
