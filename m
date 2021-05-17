Subject: python3-dlib linking issue #yocto #zeus #python
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (197.27.97.125)
X-Originating-Platform: Linux Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 17 May 2021 13:11:53 -0700
Message-ID: <MNtp.1621282313749398858.eK5V@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ZBfwXOOT3EQpBiUaWXGA"

--ZBfwXOOT3EQpBiUaWXGA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,
I'm trying to bitbake a recipe for python3-dlib (the python API).
Here is the recipe:

SUMMARY =3D "A toolkit for making real world machine learning and data ana=
lysis applications"
HOMEPAGE =3D "https://github.com/davisking/dlib"
LICENSE =3D "Boost-Software"
LIC_FILES_CHKSUM =3D "file://dlib/LICENSE.txt;md5=3D2c7a3fa82e66676005cd4e=
e2608fd7d2 \
file://dlib/external/pybind11/LICENSE;md5=3Dbeb87117af69fd10fbf9fb14c22a2e=
62 \
file://dlib/external/libpng/LICENSE;md5=3D243135ddedf702158f9170807cbcfb66=
 \
file://docs/docs/license.xml;md5=3D2e6ff4080dcb217d4d300b90e9aabb5b \
file://examples/LICENSE_FOR_EXAMPLE_PROGRAMS.txt;md5=3D57eee82829ed297e23d=
84de5f905afee \
file://examples/video_frames/license.txt;md5=3D127ee508b60a6be9dea8af3b441=
993dc \
file://python_examples/LICENSE_FOR_EXAMPLE_PROGRAMS.txt;md5=3D064f53ab40ea=
2b6a4bba1324149e4fde"

SRC_URI =3D "git://github.com/davisking/dlib.git;protocol=3Dhttps"
PV =3D "1.0+git${SRCPV}"
SRCREV =3D "3b794540baeabbcd033b544230401967106d5483"
S =3D "${WORKDIR}/git"
inherit setuptools3
DEPENDS +=3D "python3 cmake-native"
FILES_${PN}-dev +=3D "${libdir}/cmake/dlib"
EXTRA_OECMAKE +=3D "-DDLIB_NO_GUI_SUPPORT=3DON -DBUILD_SHARED_LIBS=3DON -D=
DLIB_USE_CUDA=3DOFF"
------

When I try to bitbake it, I get a linking issue with ld telling me that li=
bnsl.so in wrong format:

[100%] Linking CXX shared module /media/talel/data/menzu-zeus/ttdemo/tmp/w=
ork/aarch64-poky-linux/python3-dlib/1.0+gitAUTOINC+3b794540ba-r0/git/build/=
lib.linux-x86_64-3.7/dlib.cpython-37m-aarch64-linux-gnu.so
| /media/talel/data/menzu-zeus/ttdemo/tmp/work/aarch64-poky-linux/python3-=
dlib/1.0+gitAUTOINC+3b794540ba-r0/recipe-sysroot-native/usr/bin/aarch64-pok=
y-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/ld: /=
media/talel/data/menzu-zeus/ttdemo/tmp/work/aarch64-poky-linux/python3-dlib=
/1.0+gitAUTOINC+3b794540ba-r0/recipe-sysroot-native/usr/lib/libnsl.so: erro=
r adding symbols: file in wrong format
| collect2: error: ld returned 1 exit status

Did anyone make it work? Or does anyone know how to solve the problem?

Thanks,
Talel

--ZBfwXOOT3EQpBiUaWXGA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br />I'm trying to bitbake a recipe for python3-dlib (the python AP=
I).<br />Here is the recipe:<br /><br />
<div>SUMMARY =3D "A toolkit for making real world machine learning and dat=
a analysis applications"</div>
<div>HOMEPAGE =3D "https://github.com/davisking/dlib"</div>
<div>LICENSE =3D "Boost-Software"</div>
<div>LIC_FILES_CHKSUM =3D "file://dlib/LICENSE.txt;md5=3D2c7a3fa82e6667600=
5cd4ee2608fd7d2 \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 file://dlib/external/pybind11/LICENSE;md5=3Dbeb87117af69fd10fbf9fb14c22a2e=
62 \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 file://dlib/external/libpng/LICENSE;md5=3D243135ddedf702158f9170807cbcfb66=
 \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 file://docs/docs/license.xml;md5=3D2e6ff4080dcb217d4d300b90e9aabb5b \</div=
>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 file://examples/LICENSE_FOR_EXAMPLE_PROGRAMS.txt;md5=3D57eee82829ed297e23d=
84de5f905afee \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 file://examples/video_frames/license.txt;md5=3D127ee508b60a6be9dea8af3b441=
993dc \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 file://python_examples/LICENSE_FOR_EXAMPLE_PROGRAMS.txt;md5=3D064f53ab40ea=
2b6a4bba1324149e4fde"</div>
<div>&nbsp;</div>
<div>SRC_URI =3D "git://github.com/davisking/dlib.git;protocol=3Dhttps"</d=
iv>
<div>PV =3D "1.0+git${SRCPV}"</div>
<div>SRCREV =3D "3b794540baeabbcd033b544230401967106d5483"</div>
<div>S =3D "${WORKDIR}/git"</div>
<div>inherit setuptools3</div>
<div>DEPENDS +=3D "python3 cmake-native"</div>
<div>FILES_${PN}-dev +=3D "${libdir}/cmake/dlib"</div>
<div>EXTRA_OECMAKE +=3D "-DDLIB_NO_GUI_SUPPORT=3DON -DBUILD_SHARED_LIBS=3D=
ON -DDLIB_USE_CUDA=3DOFF"<br />------<br /><br />When I try to bitbake it, =
I get a linking issue with ld telling me that libnsl.so in wrong format:<br=
 /><br />
<div>[100%] Linking CXX shared module /media/talel/data/menzu-zeus/ttdemo/=
tmp/work/aarch64-poky-linux/python3-dlib/1.0+gitAUTOINC+3b794540ba-r0/git/b=
uild/lib.linux-x86_64-3.7/dlib.cpython-37m-aarch64-linux-gnu.so</div>
<div>| /media/talel/data/menzu-zeus/ttdemo/tmp/work/aarch64-poky-linux/pyt=
hon3-dlib/1.0+gitAUTOINC+3b794540ba-r0/recipe-sysroot-native/usr/bin/aarch6=
4-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/9.2.0/=
ld: /media/talel/data/menzu-zeus/ttdemo/tmp/work/aarch64-poky-linux/python3=
-dlib/1.0+gitAUTOINC+3b794540ba-r0/recipe-sysroot-native/usr/lib/libnsl.so:=
 error adding symbols: file in wrong format</div>
<div>| collect2: error: ld returned 1 exit status<br /><br />Did anyone ma=
ke it work? Or does anyone know how to solve the problem?<br /><br />Thanks=
,<br />Talel</div>
</div>

--ZBfwXOOT3EQpBiUaWXGA--
