Subject: Install SDK with yocto
To: yocto@lists.yoctoproject.org
From: daniel_herrmann22@web.de
X-Originating-Location: Heidelberg, Baden-Württemberg, DE (92.74.25.68)
X-Originating-Platform: Linux Firefox 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 28 Jul 2021 14:12:53 -0700
Message-ID: <DIPV.1627506773075229417.iDOw@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="eleKsl2Ri5k4bLKNzwuA"

--eleKsl2Ri5k4bLKNzwuA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I am new to yocto and have some problems by installing a SDK with yocto fo=
r AArch64.
The SDK you can find here: https://www.baumer.com/ch/de/produktubersicht/i=
ndustriekameras-bildverarbeitung/software/baumer-gapi-sdk/linux-arm/c/14178

It comes with a debian package and a tar.gz file.
The tar is like this:
include/sdk-folder/header-files
lib/sdk-folder/lib-files
etc..

*Question 1: What is the best way to install this with yocto ?*

*1. I tried to install the deb package like this with no success:*

DEPENDS +=3D " dpkg-native "

SRC_URI +=3D " \
file://baumer-gapi-sdk-linux-v2.11.0-gcc-5.4-aarch64.deb.zip \
"

do_install_append() {
touch ${STAGING_DIR_NATIVE}/var/lib/dpkg/status
${STAGING_BINDIR_NATIVE}/dpkg --instdir=3D${D}/ \
--admindir=3D${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
-i ${WORKDIR}/baumer-gapi-sdk-linux-v2.11.0-gcc-5.4-aarch64.deb
}
*Question 2: Is this a good way with dpkg, when host and target architectu=
re are different ?*

*2. I tried to install the tar.gz file like this also with no sucess:*

# Use local tarball
SRC_URI =3D "file://${BP}.tar.gz"

S =3D "${WORKDIR}"

inherit bin_package

#For Error: libraries are added by mutiple providers
EXCLUDE_FROM_SHLIBS =3D "1"

#For Warning: was already stripped (precompiled sources)
INSANE_SKIP_${PN} =3D "ldflags"
INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"
INHIBIT_PACKAGE_STRIP =3D "1"

do_install() {
cp -r "${WORKDIR}/include ${D}/include
...
}
The way I thought here, is to extract and copy each file to the target ins=
ide do_install..

*It would be very helpful when you could give me some hints for the best w=
ay to installing this package*
*Thanks*

--eleKsl2Ri5k4bLKNzwuA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />I am new to yocto and have some problems by installing a SDK with =
yocto for AArch64. <br />The SDK you can find here: <a href=3D"https://www.=
baumer.com/ch/de/produktubersicht/industriekameras-bildverarbeitung/softwar=
e/baumer-gapi-sdk/linux-arm/c/14178" target=3D"_blank" rel=3D"noopener">htt=
ps://www.baumer.com/ch/de/produktubersicht/industriekameras-bildverarbeitun=
g/software/baumer-gapi-sdk/linux-arm/c/14178</a><br /><br />It comes with a=
 debian package and a tar.gz file.<br />The tar is like this:
<div style=3D"padding-left: 30px;">include/sdk-folder/header-files</div>
<div style=3D"padding-left: 30px;">lib/sdk-folder/lib-files</div>
<div style=3D"padding-left: 30px;">etc..</div>
<br /><br /><strong>Question 1: What is the best way to install this with =
yocto ?</strong> <br /><br /><strong>1. I tried to install the deb package =
like this with no success:</strong><br /><br />DEPENDS +=3D " dpkg-native "=
<br /><br />SRC_URI +=3D " \<br />&nbsp;&nbsp;&nbsp; file://baumer-gapi-sdk=
-linux-v2.11.0-gcc-5.4-aarch64.deb.zip \<br />"<br /><br />do_install_appen=
d() {<br />&nbsp;&nbsp;&nbsp; touch ${STAGING_DIR_NATIVE}/var/lib/dpkg/stat=
us<br />&nbsp;&nbsp;&nbsp; ${STAGING_BINDIR_NATIVE}/dpkg --instdir=3D${D}/ =
\<br />&nbsp;&nbsp;&nbsp; --admindir=3D${STAGING_DIR_NATIVE}/var/lib/dpkg/ =
\<br />&nbsp;&nbsp;&nbsp;&nbsp; -i ${WORKDIR}/baumer-gapi-sdk-linux-v2.11.0=
-gcc-5.4-aarch64.deb<br />}<br /><strong>Question 2: Is this a good way wit=
h dpkg, when host and target architecture are different ?</strong> <br /><b=
r /><br /><strong>2. I tried to install the tar.gz file like this also with=
 no sucess:</strong><br /><br /># Use local tarball<br />SRC_URI =3D "file:=
//${BP}.tar.gz"<br /><br />S =3D "${WORKDIR}"<br /><br />inherit bin_packag=
e<br /><br />#For Error: libraries are added by mutiple providers<br />EXCL=
UDE_FROM_SHLIBS =3D "1"<br /><br />#For Warning: was already stripped (prec=
ompiled sources)<br />INSANE_SKIP_${PN} =3D "ldflags"<br />INHIBIT_PACKAGE_=
DEBUG_SPLIT =3D "1"<br />INHIBIT_PACKAGE_STRIP =3D "1"<br /><br />do_instal=
l() {<br />&nbsp; &nbsp; cp -r "${WORKDIR}/include ${D}/include<br />&nbsp;=
&nbsp;&nbsp; ...&nbsp;&nbsp; <br />}<br />The way I thought here, is to ext=
ract and copy each file to the target inside do_install..<br /><br /><stron=
g>It would be very helpful when you could give me some hints for the best w=
ay to installing this package</strong> <br /><strong>Thanks</strong>

--eleKsl2Ri5k4bLKNzwuA--
