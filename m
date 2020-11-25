Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by mx.groups.io with SMTP id smtpd.web08.6860.1606312460056570299
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Nov 2020 05:54:20 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: collabora.com, ip: 46.235.227.227, mailfrom: adrian.ratiu@collabora.com)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 5CE311F4543E
From: "Ioan-Adrian Ratiu" <adi@adirat.com>
To: yocto@lists.yoctoproject.org
Cc: Armin Kuster <akuster808@gmail.com>
Subject: [meta-security][PATCH] tpm2-pkcs11: build and package python tools
Date: Wed, 25 Nov 2020 15:54:00 +0200
Message-Id: <20201125135400.212388-1-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 .../tpm2-pkcs11/tpm2-pkcs11_1.4.0.bb          | 25 +++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.4.0.bb b/met=
a-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.4.0.bb
index 4865733..6beb67a 100644
--- a/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.4.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-pkcs11/tpm2-pkcs11_1.4.0.bb
@@ -4,7 +4,7 @@ SECTION =3D "security/tpm"
 LICENSE =3D "BSD-2-Clause"
 LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D0fc19f620a102768d6dbd1e7166e7=
8ab"
=20
-DEPENDS =3D "autoconf-archive pkgconfig dstat sqlite3 openssl libtss2-de=
v tpm2-tools libyaml"
+DEPENDS =3D "autoconf-archive pkgconfig dstat sqlite3 openssl libtss2-de=
v tpm2-tools libyaml python3-setuptools-native"
=20
 SRC_URI =3D "git://github.com/tpm2-software/tpm2-pkcs11.git;branch=3D1.X=
 \
            file://bootstrap_fixup.patch \
@@ -14,10 +14,31 @@ SRCREV =3D "78bbf6a0237351830d0c3923b25ba0b57ae0b7e9"
=20
 S =3D "${WORKDIR}/git"
=20
-inherit autotools-brokensep pkgconfig
+inherit autotools-brokensep pkgconfig python3native
=20
 do_configure_prepend () {
     ${S}/bootstrap
 }
=20
+do_compile_append() {
+    cd ${S}/tools
+    python3 setup.py build
+}
+
+do_install_append() {
+    cd ${S}/tools
+    export PYTHONPATH=3D"${D}${PYTHON_SITEPACKAGES_DIR}"
+    ${PYTHON_PN} setup.py install --root=3D"${D}" --prefix=3D"${prefix}"=
 --install-lib=3D"${PYTHON_SITEPACKAGES_DIR}" --optimize=3D1 --skip-build
+
+    sed -i -e "s:${PYTHON}:${USRBINPATH}/env ${PYTHON_PN}:g" "${D}${bind=
ir}"/tpm2_ptool
+}
+
 RDEPNDS_${PN} =3D "tpm2-tools"
+
+PACKAGES =3D+ "${PN}-tools"
+RDEPENDS_${PN}-tools +=3D "${PYTHON_PN}-setuptools ${PYTHON_PN}-pyyaml $=
{PYTHON_PN}-cryptography ${PYTHON_PN}-pyasn1-modules"
+
+FILES_${PN}-tools =3D "\
+    ${bindir}/tpm2_ptool \
+    ${libdir}/${PYTHON_DIR}/* \
+"
--=20
2.29.2

