Return-Path: <kristian@klausen.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92787C433EF
	for <webhook@archiver.kernel.org>; Mon, 27 Sep 2021 11:39:35 +0000 (UTC)
Received: from mail.klausen.dk (mail.klausen.dk [157.90.24.29])
 by mx.groups.io with SMTP id smtpd.web08.30142.1632742773434266368
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Sep 2021 04:39:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@klausen.dk
 header.s=dkim header.b=U2cxV8cN;
 spf=pass (domain: klausen.dk, ip: 157.90.24.29,
 mailfrom: kristian@klausen.dk)
From: Kristian Klausen <kristian@klausen.dk>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=klausen.dk; s=dkim;
	t=1632742770;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=zv+mRTk7A3xG9vBs/jlsawaVUr/wv/OpmpIOkP1F6ZI=;
	b=U2cxV8cNkcBiyCD5o/DtW36vDG+jiGXe6xZp/GBadzputC0xXxI0pJUuTFSSU2My60eMkj
	ovnvgIoDCgRA8nzxEHztmmQCHwB3r/QBO0OZNiGiRf+w1UffAfymd/0Kk3Vr9bZn4wfjo0
	c5qY6chY4wIEYnftBJAAXqcI66rkKog=
To: yocto@lists.yoctoproject.org
Cc: Kristian Klausen <kristian@klausen.dk>
Subject: [meta-security][PATCH] swtpm: update to 0.6.1
Date: Mon, 27 Sep 2021 13:39:27 +0200
Message-Id: <20210927113927.31896-1-kristian@klausen.dk>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Sep 2021 11:39:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54876

swtpm no longer depends on Python[1] so the dependencies have been
removed.

"inherit perlnative" has been added due to (in oe-core):
deda455b3c ("bitbake.conf: drop pod2man from hosttools")

Some leftover dependencies have also been removed, ex: tpm-tools
required in the past by swtpm_setup.sh (<0.4.0)[2].

[1] https://github.com/stefanberger/swtpm/issues/437
[2] https://github.com/stefanberger/swtpm/commit/eee8cb5dfb13f87140dddda3=
8f65bf61aff19508

Signed-off-by: Kristian Klausen <kristian@klausen.dk>
---
 .../swtpm/swtpm-wrappers-native.bb            | 12 ++++------
 .../swtpm/{swtpm_0.5.2.bb =3D> swtpm_0.6.1.bb}  | 23 ++++++++-----------
 2 files changed, 14 insertions(+), 21 deletions(-)
 rename meta-tpm/recipes-tpm/swtpm/{swtpm_0.5.2.bb =3D> swtpm_0.6.1.bb} (=
72%)

diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm-wrappers-native.bb b/meta-t=
pm/recipes-tpm/swtpm/swtpm-wrappers-native.bb
index 644f3ac..bb93374 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm-wrappers-native.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm-wrappers-native.bb
@@ -1,6 +1,6 @@
 SUMMARY =3D "SWTPM - OpenEmbedded wrapper scripts for native swtpm tools=
"
 LICENSE =3D "MIT"
-DEPENDS =3D "swtpm-native tpm-tools-native net-tools-native"
+DEPENDS =3D "swtpm-native"
=20
 inherit native
=20
@@ -14,23 +14,19 @@ do_create_wrapper () {
     for i in `find ${bindir} ${base_bindir} ${sbindir} ${base_sbindir} -=
name 'swtpm*' -perm /+x -type f`; do
         exe=3D`basename $i`
         case $exe in
-            swtpm_setup.sh)
+            swtpm_setup)
                 cat >${WORKDIR}/swtpm_setup_oe.sh <<EOF
 #! /bin/sh
 #
-# Wrapper around swtpm_setup.sh which adds parameters required to
+# Wrapper around swtpm_setup which adds parameters required to
 # run the setup as non-root directly from the native sysroot.
=20
 PATH=3D"${bindir}:${base_bindir}:${sbindir}:${base_sbindir}:\$PATH"
 export PATH
=20
-# tcsd only allows to be run as root or tss. Pretend to be root...
-exec env ${FAKEROOTENV} ${FAKEROOTCMD} swtpm_setup.sh --config ${STAGING=
_DIR_NATIVE}/etc/swtpm_setup.conf "\$@"
+exec swtpm_setup --config ${STAGING_DIR_NATIVE}/etc/swtpm_setup.conf "\$=
@"
 EOF
                 ;;
-            swtpm_setup)
-                true
-                ;;
             *)
                 cat >${WORKDIR}/${exe}_oe.sh <<EOF
 #! /bin/sh
diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb b/meta-tpm/recipes=
-tpm/swtpm/swtpm_0.6.1.bb
similarity index 72%
rename from meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
rename to meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
index 912e939..807c02b 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.5.2.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
@@ -3,14 +3,11 @@ LICENSE =3D "BSD-3-Clause"
 LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dfe8092c832b71ef20dfe4c6d3decb=
3a8"
 SECTION =3D "apps"
=20
-DEPENDS =3D "libtasn1 coreutils-native expect socat glib-2.0 net-tools-n=
ative libtpm libtpm-native"
+# coreutils-native and net-tools-native are reportedly only required for=
 the tests
+DEPENDS =3D "libtasn1 coreutils-native expect socat glib-2.0 net-tools-n=
ative libtpm json-glib"
=20
-# configure checks for the tools already during compilation and
-# then swtpm_setup needs them at runtime
-DEPENDS:append =3D " tpm-tools-native expect-native socat-native python3=
-pip-native python3-cryptography-native"
-
-SRCREV =3D "e59c0c1a7b4c8d652dbb280fd6126895a7057464"
-SRC_URI =3D "git://github.com/stefanberger/swtpm.git;branch=3Dstable-0.5=
 \
+SRCREV =3D "98187d24fe14851653a7c46eb16e9c5f0b9beaa1"
+SRC_URI =3D "git://github.com/stefanberger/swtpm.git;branch=3Dstable-0.6=
 \
            file://ioctl_h.patch \
            file://oe_configure.patch \
            "
@@ -19,7 +16,7 @@ PE =3D "1"
 S =3D "${WORKDIR}/git"
=20
 PARALLEL_MAKE =3D ""
-inherit autotools pkgconfig python3native
+inherit autotools pkgconfig perlnative
=20
 TSS_USER=3D"tss"
 TSS_GROUP=3D"tss"
@@ -28,7 +25,10 @@ PACKAGECONFIG ?=3D "openssl"
 PACKAGECONFIG +=3D "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '=
selinux', '', d)}"
 PACKAGECONFIG +=3D "${@bb.utils.contains('BBFILE_COLLECTIONS', 'filesyst=
ems-layer', 'cuse', '', d)}"
 PACKAGECONFIG[openssl] =3D "--with-openssl, --without-openssl, openssl"
-PACKAGECONFIG[gnutls] =3D "--with-gnutls, --without-gnutls, gnutls"
+# expect, bash, tpm2-pkcs11-tools (tpm2_ptool), tpmtool and certtool is
+# used by swtpm-create-tpmca (the last two is provided by gnutls)
+# gnutls is required by: swtpm-create-tpmca, swtpm-localca and swtpm_cer=
t
+PACKAGECONFIG[gnutls] =3D "--with-gnutls, --without-gnutls, gnutls, gnut=
ls, expect bash tpm2-pkcs11-tools"
 PACKAGECONFIG[selinux] =3D "--with-selinux, --without-selinux, libselinu=
x"
 PACKAGECONFIG[cuse] =3D "--with-cuse, --without-cuse, fuse"
 PACKAGECONFIG[seccomp] =3D "--with-seccomp, --without-seccomp, libseccom=
p"
@@ -41,14 +41,11 @@ USERADD_PARAM:${PN} =3D "--system -g ${TSS_GROUP} --h=
ome-dir  \
     --no-create-home  --shell /bin/false ${BPN}"
=20
=20
-PACKAGES =3D+ "${PN}-python"
-FILES:${PN}-python =3D "${PYTHON_SITEPACKAGES_DIR}"
-
 PACKAGE_BEFORE_PN =3D "${PN}-cuse"
 FILES:${PN}-cuse =3D "${bindir}/swtpm_cuse"
=20
 INSANE_SKIP:${PN}   +=3D "dev-so"
=20
-RDEPENDS:${PN} =3D "libtpm expect socat bash tpm-tools python3 python3-c=
ryptography python3-twisted"
+RDEPENDS:${PN} =3D "libtpm"
=20
 BBCLASSEXTEND =3D "native nativesdk"
--=20
2.25.1


