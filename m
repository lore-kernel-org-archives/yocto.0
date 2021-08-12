Subject: Dependencies between recipes
To: yocto@lists.yoctoproject.org
From: daniel_herrmann22@web.de
X-Originating-Location: Heidelberg, Baden-Württemberg, DE (92.75.204.190)
X-Originating-Platform: Linux Firefox 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 12 Aug 2021 11:27:50 -0700
Message-ID: <EUEr.1628792870556940876.S5GO@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NEsEBWcxgDkD9KYC1sbu"

--NEsEBWcxgDkD9KYC1sbu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm stucking a little bit by compiling a cmake application which has depend=
encies
on libs from another recipe.

*1)*
The recipe which provided my libs is a normal debian package which I instal=
led in yocto like this:

SRC_URI =3D "file://${BP}.deb"
S =3D "${WORKDIR}"

inherit bin_package pkgconfig

do_install() {
install -d ${D}/opt/package-name/include/
install -d ${D}/opt/package-name/lib
install -d ${D}/opt/package-name/lib/cmake
}

FILES_${PN} =3D "/opt/package-name/lib/folder"
FILES_${PN} +=3D "/opt/package-name/include/folder"

*2)*
The libs from 1) I want to use in the cmake-application

*2.1)*
*CmakeLists.txt is like this:*

cmake_minimum_required(VERSION 2.8)
project(test)
set(package_DIR /opt/package-name/lib/cmake)=C2=A0=C2=A0 #path to cmake pac=
kage -> Config.cmake
find_package(package)
add_executable(test main.cpp)
target_link_libraries(test package::lib)

*-> I dont know how to set the right path to the Config.cmake. At the momen=
t it points to the host location.*
*I have tried like this ${STAGING_DIR}/opt/... which should point to the sy=
sroot, but no success.*

*2.2)*
*Recipe for the cmake-application in short*

DEPENDS +=3D "package-name"=C2=A0=C2=A0 # package from 1)
inherit cmake
SRC_URI=3D"git://....
SRCREV =3D "...."

S =3D "${WORKDIR}/git"

do_install(){
install -d ${D}/${bindir}
install -m0755 test ${D}/${bindir}
}

FILES_${PN} =3D "/usr/bin/test"

RDEPENDS_${PN} +=3D "package-name"

When I make a sysroot from the hole image with bitbake -c populate_sdk=C2=
=A0 and I point directly to path where the Config.cmake is stored, everythi=
ngs works..
Is there any way to make it work in the yocto build process, without making=
 a explicit sysroot ?

*Thanks*

--NEsEBWcxgDkD9KYC1sbu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,&nbsp; <br /><br />I'm stucking a little bit by compiling a cmake app=
lication which has dependencies <br />on libs from another recipe. <br /><b=
r /><strong>1)</strong><br />The recipe which provided my libs is a normal =
debian package which I installed in yocto like this:<br /><br />SRC_URI =3D=
 "file://${BP}.deb"<br />S =3D "${WORKDIR}"<br /><br />inherit bin_package =
pkgconfig <br /><br />do_install() {<br />&nbsp;&nbsp; &nbsp;install -d ${D=
}/opt/package-name/include/&nbsp; <br />&nbsp;&nbsp; &nbsp;install -d ${D}/=
opt/package-name/lib<br />&nbsp;&nbsp; &nbsp;install -d ${D}/opt/package-na=
me/lib/cmake&nbsp;&nbsp;&nbsp; <br />}<br /><br />FILES_${PN} =3D "/opt/pac=
kage-name/lib/folder"<br />FILES_${PN} +=3D "/opt/package-name/include/fold=
er"<br /><br /><br /><strong>2)</strong> <br />The libs from 1) I want to u=
se in the cmake-application<br /><br /><strong>2.1)</strong><br /><strong>C=
makeLists.txt is like this:</strong><br /><br />cmake_minimum_required(VERS=
ION 2.8)<br />project(test)<br />set(package_DIR /opt/package-name/lib/cmak=
e)&nbsp;&nbsp; #path to cmake package -&gt; Config.cmake<br />find_package(=
package)<br />add_executable(test main.cpp)<br />target_link_libraries(test=
 package::lib)<br /><br /><strong>-&gt; I dont know how to set the right pa=
th to the Config.cmake. At the moment it points to the host location.</stro=
ng><br /><strong>I have tried like this ${STAGING_DIR}/opt/... which should=
 point to the sysroot, but no success.</strong> <br /><br /><br /><strong>2=
.2)</strong><br /><strong>Recipe for the cmake-application in short</strong=
><br /><br />DEPENDS +=3D "package-name"&nbsp;&nbsp; # package from 1)<br /=
>inherit cmake<br />SRC_URI=3D"git://....<br />SRCREV =3D "...."<br /><br /=
>S =3D "${WORKDIR}/git"<br /><br />do_install(){<br />&nbsp;&nbsp; &nbsp;in=
stall -d ${D}/${bindir}<br />&nbsp;&nbsp; &nbsp;install -m0755 test ${D}/${=
bindir}&nbsp;&nbsp;&nbsp; <br />}<br /><br />FILES_${PN} =3D "/usr/bin/test=
"<br /><br />RDEPENDS_${PN} +=3D "package-name"<br /><br /><br />When I mak=
e a sysroot from the hole image with bitbake -c populate_sdk&nbsp; and I po=
int directly to path where the Config.cmake is stored, everythings works.. =
<br />Is there any way to make it work in the yocto build process, without =
making a explicit sysroot ?<br /><br /><strong>Thanks</strong> <br /><br />

--NEsEBWcxgDkD9KYC1sbu--
