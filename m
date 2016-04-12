Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F4DDE00CAF; Tue, 12 Apr 2016 07:05:15 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28AE0E00C15
	for <yocto@yoctoproject.org>; Tue, 12 Apr 2016 07:05:11 -0700 (PDT)
Received: from svr-orw-fem-04.mgc.mentorg.com ([147.34.97.41])
	by relay1.mentorg.com with esmtp 
	id 1apywI-0001Mu-Ln from Joe_MacDonald@mentor.com ;
	Tue, 12 Apr 2016 07:05:10 -0700
Received: from burninator (147.34.91.1) by svr-orw-fem-04.mgc.mentorg.com
	(147.34.97.41) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 12 Apr 2016 07:05:09 -0700
Received: by burninator (Postfix, from userid 1000)	id 82605580482; Tue, 12
	Apr 2016 10:05:08 -0400 (EDT)
Date: Tue, 12 Apr 2016 10:05:08 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: wenzong fan <wenzong.fan@windriver.com>
Message-ID: <20160412140507.GA7154@mentor.com>
References: <1459729295-79553-1-git-send-email-flihp@twobit.us>
	<1459729295-79553-3-git-send-email-flihp@twobit.us>
	<57076B89.20404@windriver.com> <20160411125433.GA4693@mentor.com>
	<570C71B6.2010808@twobit.us> <570C8D7E.8040804@windriver.com>
MIME-Version: 1.0
In-Reply-To: <570C8D7E.8040804@windriver.com>
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
X-List-Received-Date: Tue, 12 Apr 2016 14:05:15 -0000
X-Groupsio-MsgNum: 29384
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="SUOF0GtieIMvvwua"
Content-Disposition: inline

--SUOF0GtieIMvvwua
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Philip / Wenzong,

[Re: [yocto] [meta-selinux][PATCH 2/3] Integrate selinux-config into refpol=
icy_common.] On 16.04.12 (Tue 13:54) wenzong fan wrote:

> On 04/12/2016 11:55 AM, Philip Tricca wrote:
> >Hello,
> >
> >On 04/11/2016 05:54 AM, Joe MacDonald wrote:
> >>>This causes do_populate_sysroot error if build two or more types of
> >>>refpolicy:
> >>>
> >>>$ bitbake refpolicy-minimum && bitbake refpolicy-mls
> >>>
> >>>ERROR: refpolicy-mls-git-r0 do_populate_sysroot: The recipe refpolicy-=
mls is
> >>>trying to install files into a shared area when those files already ex=
ist.
> >>>Those files and their manifest location are:
> >>
> >>I think this was always the intent with the series Philip submitted last
> >>week (for reference, the thread is
> >>https://www.mail-archive.com/yocto@yoctoproject.org/msg28530.html).
> >>Isn't this (part of) the expected behaviour of the virtual provider
> >>mechanism?
> >
> >This is the question I think we need to figure out. My understanding
> >(quite possibly wrong) is that the virtual provider stuff would prevent
> >the installation of more than one provider. I hadn't considered the
> >implications for the sysroot.
> >
> >Is the ability to install multiple providers in the sysroot expected? I
> >imagine that this problem must have been solved before in another
> >package with virtual providers that install the same file. I'm happy to
> >doing some digging here but if anyone knows of a good example I'd
> >appreciate a pointer.
> >
> >>We did discuss what it would mean to be trying out multiple
> >>policies on a system at the same time and at the time it seemed like the
> >>"just works" angle was more important than "buffet style" when it came
> >>to providing policy on the image.
> >
> >I guess the thing I like the most about setting the policy package up as
> >a virtual package is the ability to select the policy type as a distro
> >config. The virtual provider seemed like a natural fit as it's a pattern
> >that similar packages (kernel etc) use extensively.
> >
> >>It might be worth considering extending the changes to only do some
> >>install steps at, say, do_rootfs but I don't know if that even makes
> >>sense, this is really the first I've thought of it.  I think Philip's
> >>original changes are good, though, for our maintenance and for clients
> >>of meta-selinux.
> >
> >There may be a middle ground and I think that would be leaving the
> >configuration file as a separate package. Personally I liked the idea of
> >rolling the config file into the policy package as it was always a bit
> >awkward requiring coordination of some variables across the policy and
> >the config package which made it a bit brittle.
> >
> >Wenzong: A few questions: What's your use case for building multiple
> >policy packages? Would you suggest just backing out the removal of the
> >config package or the whole virtual provider thing?
>=20
> Hi Philip,
>=20
> The virtual provider is OK, just restore the config package is the simple=
st
> ways for fixing such issue I think.
>=20
> My use cases include:
> a. update refpolicy and build each type to make sure patch/build/install
> work;

That's not necessarily an argument against the change ...

> b. run world build with meta-selinux layer.

=2E.. but I think this is.  Or, rather, I think what we have now makes more
sense from an end-user perspective, that your image wouldn't have more
than a single policy installed at a time and that if you tried to install
multiple policies for nearly everyone this represents a mistake and
undesirable behaviour so warnings / errors are appropriate.

But if this is breaking world builds with yocto+meta-selinux, that's
something I'd like to repair.  Though I'm surprised that what we have
right now would break the world builds.  Philip / Wenzong / Mark:  Do you
have publicly-accessible world builds right now?  I don't and I don't have
world builds for yocto+meta-selinux on my autobuilder, but I'll go set one
up if you don't have one.

-J.

>=20
> Thanks
> Wenzong
>=20
> >
> >Thanks,
> >Philip
> >
> >>>/buildarea/raid5/wfan/yocto/builds/selinux_sysvinit/tmp/sysroots/qemux=
86-64/etc/selinux/sepolgen.conf
> >>>  Matched in manifest-qemux86-64-refpolicy-minimum.populate_sysroot
> >>>
> >>>/buildarea/raid5/wfan/yocto/builds/selinux_sysvinit/tmp/sysroots/qemux=
86-64/etc/selinux/config
> >>>  Matched in manifest-qemux86-64-refpolicy-minimum.populate_sysroot
> >>>
> >>>/buildarea/raid5/wfan/yocto/builds/selinux_sysvinit/tmp/sysroots/qemux=
86-64/sysroot-providers/virtual_refpolicy
> >>>  Matched in manifest-qemux86-64-refpolicy-minimum.populate_sysroot
> >>>Please verify which recipe should provide the above files.
> >>>
> >>>Philip,
> >>>
> >>>Can you consider to withdraw the integration?
> >>>
> >>>Thanks
> >>>Wenzong
> >>>
> >>>On 04/04/2016 08:21 AM, Philip Tricca wrote:
> >>>>With the virutal package there's no need for a separate recipe to bui=
ld
> >>>>the config. This can be generated and included as part of the policy
> >>>>package.
> >>>>
> >>>>Signed-off-by: Philip Tricca <flihp@twobit.us>
> >>>>---
> >>>>  .../packagegroups/packagegroup-core-selinux.bb     |  1 -
> >>>>  .../packagegroups/packagegroup-selinux-minimal.bb  |  1 -
> >>>>  recipes-security/refpolicy/refpolicy_common.inc    | 30 +++++++++++=
+++--
> >>>>  recipes-security/selinux/selinux-config_0.1.bb     | 40 -----------=
-----------
> >>>>  4 files changed, 28 insertions(+), 44 deletions(-)
> >>>>  delete mode 100644 recipes-security/selinux/selinux-config_0.1.bb
> >>>>
> >>>>diff --git a/recipes-security/packagegroups/packagegroup-core-selinux=
=2Ebb b/recipes-security/packagegroups/packagegroup-core-selinux.bb
> >>>>index 62c5a76..c6d22b7 100644
> >>>>--- a/recipes-security/packagegroups/packagegroup-core-selinux.bb
> >>>>+++ b/recipes-security/packagegroups/packagegroup-core-selinux.bb
> >>>>@@ -22,7 +22,6 @@ RDEPENDS_${PN} =3D " \
> >>>>  	packagegroup-selinux-policycoreutils \
> >>>>  	setools \
> >>>>  	setools-console \
> >>>>-	selinux-config \
> >>>>  	selinux-autorelabel \
> >>>>  	selinux-init \
> >>>>  	selinux-labeldev \
> >>>>diff --git a/recipes-security/packagegroups/packagegroup-selinux-mini=
mal.bb b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
> >>>>index 87ae686..451ae8b 100644
> >>>>--- a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
> >>>>+++ b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
> >>>>@@ -21,7 +21,6 @@ RDEPENDS_${PN} =3D "\
> >>>>  	policycoreutils-semodule \
> >>>>  	policycoreutils-sestatus \
> >>>>  	policycoreutils-setfiles \
> >>>>-	selinux-config \
> >>>>  	selinux-labeldev \
> >>>>  	virtual/refpolicy \
> >>>>  "
> >>>>diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipe=
s-security/refpolicy/refpolicy_common.inc
> >>>>index ba887e4..305675f 100644
> >>>>--- a/recipes-security/refpolicy/refpolicy_common.inc
> >>>>+++ b/recipes-security/refpolicy/refpolicy_common.inc
> >>>>@@ -1,3 +1,5 @@
> >>>>+DEFAULT_ENFORCING ??=3D "enforcing"
> >>>>+
> >>>>  SECTION =3D "base"
> >>>>  LICENSE =3D "GPLv2"
> >>>>
> >>>>@@ -14,7 +16,8 @@ SRC_URI +=3D "file://customizable_types \
> >>>>
> >>>>  S =3D "${WORKDIR}/refpolicy"
> >>>>
> >>>>-FILES_${PN} =3D " \
> >>>>+CONFFILES_${PN} +=3D "${sysconfdir}/selinux/config"
> >>>>+FILES_${PN} +=3D " \
> >>>>  	${sysconfdir}/selinux/${POLICY_NAME}/ \
> >>>>  	${datadir}/selinux/${POLICY_NAME}/*.pp \
> >>>>  	${localstatedir}/lib/selinux/${POLICY_NAME}/ \
> >>>>@@ -25,7 +28,6 @@ FILES_${PN}-dev =3D+ " \
> >>>>  "
> >>>>
> >>>>  DEPENDS +=3D "checkpolicy-native policycoreutils-native m4-native"
> >>>>-RDEPENDS_${PN} +=3D "selinux-config"
> >>>>
> >>>>  PACKAGE_ARCH =3D "${MACHINE_ARCH}"
> >>>>
> >>>>@@ -137,13 +139,37 @@ install_misc_files () {
> >>>>  	oe_runmake 'DESTDIR=3D${D}' 'prefix=3D${D}${prefix}' install-heade=
rs
> >>>>  }
> >>>>
> >>>>+install_config () {
> >>>>+	echo "\
> >>>>+# This file controls the state of SELinux on the system.
> >>>>+# SELINUX=3D can take one of these three values:
> >>>>+#     enforcing - SELinux security policy is enforced.
> >>>>+#     permissive - SELinux prints warnings instead of enforcing.
> >>>>+#     disabled - No SELinux policy is loaded.
> >>>>+SELINUX=3D${DEFAULT_ENFORCING}
> >>>>+# SELINUXTYPE=3D can take one of these values:
> >>>>+#     standard - Standard Security protection.
> >>>>+#     mls - Multi Level Security protection.
> >>>>+#     targeted - Targeted processes are protected.
> >>>>+#     mcs - Multi Category Security protection.
> >>>>+SELINUXTYPE=3D${POLICY_TYPE}
> >>>>+" > ${WORKDIR}/config
> >>>>+	install -d ${D}/${sysconfdir}/selinux
> >>>>+	install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
> >>>>+}
> >>>>+
> >>>>  do_install () {
> >>>>  	prepare_policy_store
> >>>>  	rebuild_policy
> >>>>  	install_misc_files
> >>>>+	install_config
> >>>>  }
> >>>>
> >>>>  do_install_append(){
> >>>>  	# While building policies on target, Makefile will be searched fro=
m SELINUX_DEVEL_PATH
> >>>>  	echo "SELINUX_DEVEL_PATH=3D${datadir}/selinux/${POLICY_NAME}/inclu=
de" > ${D}${sysconfdir}/selinux/sepolgen.conf
> >>>>  }
> >>>>+
> >>>>+sysroot_stage_all_append () {
> >>>>+	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}
> >>>>+}
> >>>>diff --git a/recipes-security/selinux/selinux-config_0.1.bb b/recipes=
-security/selinux/selinux-config_0.1.bb
> >>>>deleted file mode 100644
> >>>>index e902e98..0000000
> >>>>--- a/recipes-security/selinux/selinux-config_0.1.bb
> >>>>+++ /dev/null
> >>>>@@ -1,40 +0,0 @@
> >>>>-DEFAULT_ENFORCING ??=3D "enforcing"
> >>>>-
> >>>>-SUMMARY =3D "SELinux configuration"
> >>>>-DESCRIPTION =3D "\
> >>>>-SELinux configuration files for Yocto. \
> >>>>-"
> >>>>-
> >>>>-SECTION =3D "base"
> >>>>-LICENSE =3D "MIT"
> >>>>-LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9=
cfbcb788c80a0384361b4de20420"
> >>>>-PR =3D "r4"
> >>>>-
> >>>>-S =3D "${WORKDIR}"
> >>>>-
> >>>>-CONFFILES_${PN} +=3D "${sysconfdir}/selinux/config"
> >>>>-
> >>>>-PACKAGE_ARCH =3D "${MACHINE_ARCH}"
> >>>>-
> >>>>-do_install () {
> >>>>-	echo "\
> >>>>-# This file controls the state of SELinux on the system.
> >>>>-# SELINUX=3D can take one of these three values:
> >>>>-#     enforcing - SELinux security policy is enforced.
> >>>>-#     permissive - SELinux prints warnings instead of enforcing.
> >>>>-#     disabled - No SELinux policy is loaded.
> >>>>-SELINUX=3D${DEFAULT_ENFORCING}
> >>>>-# SELINUXTYPE=3D can take one of these values:
> >>>>-#     standard - Standard Security protection.
> >>>>-#     mls - Multi Level Security protection.
> >>>>-#     targeted - Targeted processes are protected.
> >>>>-#     mcs - Multi Category Security protection.
> >>>>-SELINUXTYPE=3D${@d.getVar("PREFERRED_PROVIDER_virtual/refpolicy", Fa=
lse)[len("refpolicy-"):]}
> >>>>-" > ${WORKDIR}/config
> >>>>-	install -d ${D}/${sysconfdir}/selinux
> >>>>-	install -m 0644 ${WORKDIR}/config ${D}/${sysconfdir}/selinux/
> >>>>-}
> >>>>-
> >>>>-sysroot_stage_all_append () {
> >>>>-	sysroot_stage_dir ${D}${sysconfdir} ${SYSROOT_DESTDIR}${sysconfdir}
> >>>>-}
> >>>>
> >>
> >
> >

--=20
-Joe MacDonald.
:wq

--SUOF0GtieIMvvwua
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJXDQCQAAoJEEn8ffcsOfaW6KcH/1vAbnFBW9zptbB64oWR2i8K
4R+TGbCJDAqM+tcW6h2Vuln87ftrkdTNLAsIZcVPDfdAgn2dXk3UkR4k1+MgJJgW
qDqJP+2CjJ3fqQqnAuOzg3AedZQGhd4p+n3h5xkkF4oYj87d8QriI1f12OB6OF1z
Z8jfiUpmzVxqgBKmHUEV+pDX9bd1t3AQr7SqYEU+pMe38nQlB7YN1wbbgaJQoMit
nGWvYQhfEmSotIiTSpVgfSYCOF0Zh6mk8F1Hu1HEdjduVeg06VJNH9tr4LYFHLQw
zuYlL1BumHUIUUGiu+SXAJ4fL1gdIPyU0cDVreWd9BbyQlljrQRQ/UJpxLYYCXk=
=B9DC
-----END PGP SIGNATURE-----

--SUOF0GtieIMvvwua--
