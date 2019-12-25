Subject: [meson][PATCH] meson: Allow for llvm-native tools to be used
To: yocto@lists.yoctoproject.org
From: fdk17@ftml.net
X-Originating-Location: Ann Arbor, Michigan, US (68.40.190.43)
X-Originating-Platform: Linux Firefox 71
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 25 Dec 2019 03:24:27 -0800
Message-ID: <l4HO.1577273067981893969.30G2@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="f1SWVKlXfJaZymc3wzl8"

--f1SWVKlXfJaZymc3wzl8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I created a bbappend to build the LLVM recipe so that all the libraries wer=
e available for use on the host.
These libraries are then used by a host/sdk tool to prepare binary files f=
or use by an application on the target.
When building our tool using meson it wasn't able to find the Yocto built =
LLLVM libraries.
This fixes the issue so meson uses the correct llvm-config tool.

Author: Fred Baksik <fred.baksik@mrcy.com>
Date:=C2=A0=C2=A0 Tue Dec 24 20:38:47 2019 -0500

meson: Allow for llvm-native tools to be used

Signed-off-by: Fred Baksik <fred.baksik@mrcy.com>

diff --git a/meta/classes/meson.bbclass b/meta/classes/meson.bbclass
index e1a13bbbf7..b5cd2ee8c4 100644
--- a/meta/classes/meson.bbclass
+++ b/meta/classes/meson.bbclass
@@ -33,6 +33,7 @@ EXTRA_OEMESON_append =3D " ${PACKAGECONFIG_CONFARGS}"
MESON_CROSS_FILE =3D ""
MESON_CROSS_FILE_class-target =3D "--cross-file ${WORKDIR}/meson.cross"
MESON_CROSS_FILE_class-nativesdk =3D "--cross-file ${WORKDIR}/meson.cross"
+MESON_CROSS_FILE_class-native =3D "--native-file ${WORKDIR}/meson.native"

def meson_array(var, d):
items =3D d.getVar(var).split()
@@ -110,6 +111,14 @@ endian =3D '${@meson_endian('TARGET', d)}'
EOF
}

+do_write_config_class-native() {
+=C2=A0=C2=A0=C2=A0 # This needs to be Py to split the args into single-el=
ement lists
+=C2=A0=C2=A0=C2=A0 cat >${WORKDIR}/meson.native <<EOF
+[binaries]
+llvm-config =3D 'llvm-config${LLVMVERSION}'
+EOF
+}
+
CONFIGURE_FILES =3D "meson.build"

meson_do_configure() {

--f1SWVKlXfJaZymc3wzl8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I created a bbappend to build the LLVM recipe so that all the libraries wer=
e available for use on the host.<br />These libraries are then used by a ho=
st/sdk tool to prepare binary files for use by an application on the target=
.<br />When building our tool using meson it wasn't able to find the Yocto =
built LLLVM libraries.<br />This fixes the issue so meson uses the correct =
llvm-config tool.<br /><br />Author: Fred Baksik &lt;fred.baksik@mrcy.com&g=
t;<br />Date:&nbsp;&nbsp; Tue Dec 24 20:38:47 2019 -0500<br /><br />&nbsp;&=
nbsp;&nbsp; meson: Allow for llvm-native tools to be used<br />&nbsp;&nbsp;=
&nbsp; <br />&nbsp;&nbsp;&nbsp; Signed-off-by: Fred Baksik &lt;fred.baksik@=
mrcy.com&gt;<br /><br />diff --git a/meta/classes/meson.bbclass b/meta/clas=
ses/meson.bbclass<br />index e1a13bbbf7..b5cd2ee8c4 100644<br />--- a/meta/=
classes/meson.bbclass<br />+++ b/meta/classes/meson.bbclass<br />@@ -33,6 +=
33,7 @@ EXTRA_OEMESON_append =3D " ${PACKAGECONFIG_CONFARGS}"<br />&nbsp;ME=
SON_CROSS_FILE =3D ""<br />&nbsp;MESON_CROSS_FILE_class-target =3D "--cross=
-file ${WORKDIR}/meson.cross"<br />&nbsp;MESON_CROSS_FILE_class-nativesdk =
=3D "--cross-file ${WORKDIR}/meson.cross"<br />+MESON_CROSS_FILE_class-nat=
ive =3D "--native-file ${WORKDIR}/meson.native"<br />&nbsp;<br />&nbsp;def =
meson_array(var, d):<br />&nbsp;&nbsp;&nbsp;&nbsp; items =3D d.getVar(var).=
split()<br />@@ -110,6 +111,14 @@ endian =3D '${@meson_endian('TARGET', d)}=
'<br />&nbsp;EOF<br />&nbsp;}<br />&nbsp;<br />+do_write_config_class-nativ=
e() {<br />+&nbsp;&nbsp;&nbsp; # This needs to be Py to split the args into=
 single-element lists<br />+&nbsp;&nbsp;&nbsp; cat &gt;${WORKDIR}/meson.nat=
ive &lt;&lt;EOF<br />+[binaries]<br />+llvm-config =3D 'llvm-config${LLVMVE=
RSION}'<br />+EOF<br />+}<br />+<br />&nbsp;CONFIGURE_FILES =3D "meson.buil=
d"<br />&nbsp;<br />&nbsp;meson_do_configure() {

--f1SWVKlXfJaZymc3wzl8--
