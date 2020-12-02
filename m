Subject: How to write custom recipe to install AWS C SDK from github #dunfell #linux #yocto
To: yocto@lists.yoctoproject.org
From: vijayrakeshmunganda@gmail.com
X-Originating-Location: IN (164.164.95.9)
X-Originating-Platform: Windows Chrome 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 02 Dec 2020 02:02:39 -0800
Message-ID: <ed8Q.1606903359819273417.jd39@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="W4YUWnirQuccGgPE8byz"

--W4YUWnirQuccGgPE8byz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to write a recipe to install AWS SDK into the build(https://git=
hub.com/aws/aws-iot-device-sdk-embedded-C), but I complete don't know how t=
o do it. Based on online example https://github.com/joaocfernandes/Learn-Yo=
cto/blob/master/develop/Recipe-CMake.md I have written my recipe file and d=
ownload the sdk into files folder of my recipe. When I run build do_configu=
re got failed.

SUMMARY =3D "AWS IoT SDK EMBEDDED C"
SECTION =3D "examples"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0b=
cf8506ecda2f7b4f302"

SRC_URI =3D "file://CMakeLists.txt"

S =3D "${WORKDIR}"

inherit cmake

EXTRA_OECMAKE =3D ""

I know it is wrong, but kindly please someone help to write it correctly, =
thank you.

Thanks & Regards,
VR

--W4YUWnirQuccGgPE8byz
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I'm trying to write a recipe to install AWS SDK into the bui=
ld(https://github.com/aws/aws-iot-device-sdk-embedded-C), but I complete do=
n't know how to do it. Based on online example&nbsp;<a href=3D"https://gith=
ub.com/joaocfernandes/Learn-Yocto/blob/master/develop/Recipe-CMake.md" targ=
et=3D"_blank" rel=3D"noopener">https://github.com/joaocfernandes/Learn-Yoct=
o/blob/master/develop/Recipe-CMake.md</a>&nbsp;I have written my recipe fil=
e and download the sdk into files folder of my recipe. When I run build do_=
configure got failed.<br />
<div><br />SUMMARY =3D "AWS IoT SDK EMBEDDED C"</div>
<div>SECTION =3D "examples"</div>
<div>LICENSE =3D "MIT"</div>
<div>LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade6=
98e0bcf8506ecda2f7b4f302"</div>
<div>&nbsp;</div>
<div>SRC_URI =3D "file://CMakeLists.txt"</div>
<div>&nbsp;</div>
<div>S =3D "${WORKDIR}"</div>
<div>&nbsp;</div>
<div>inherit cmake</div>
<div>&nbsp;</div>
<div>EXTRA_OECMAKE =3D ""</div>
<br />I know it is wrong, but kindly please someone help to write it corre=
ctly, thank you.<br /><br />Thanks &amp; Regards,<br />VR

--W4YUWnirQuccGgPE8byz--
