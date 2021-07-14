Subject: Re: Sysvinit recipe with custom package group Build ERROR #dunfell
To: yocto@lists.yoctoproject.org
From: "Abdelrahman El-Gammal" <a.elgammal2019@gmail.com>
X-Originating-Location: Abu Dhabi, AE (94.56.175.42)
X-Originating-Platform: Linux Chrome 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 13 Jul 2021 23:47:34 -0700
References: <PVZb.1626245122592215796.vxy2@lists.yoctoproject.org>
In-Reply-To: <PVZb.1626245122592215796.vxy2@lists.yoctoproject.org>
Message-ID: <20247.1626245254492300567@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zJ2Vb8VXnwknkh1uIcpA"

--zJ2Vb8VXnwknkh1uIcpA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

here is the package group custom recipe:
DESCRIPTION =3D "My Custom Package groups"
inherit packagegroup

PROVIDES =3D "${PACKAGES}"
PACKAGES =3D " \
${PN}-apps \
${PN}-tools \
"

RDEPENDS_${PN}-apps =3D " \
\
demoapp \
demoappstartup \
"

RDEPENDS_${PN}-tools =3D " \
\
"

RECOMMENDS_${PN}-apps =3D " \
\
"
#RDEPENDS_qt-kiosk-browser +=3D "qtbase ogl-runtime qtwebengine"
#demoappstartup

--zJ2Vb8VXnwknkh1uIcpA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

here is the package group custom recipe:<br />
<div>DESCRIPTION =3D "My Custom Package groups"</div>
<div>inherit packagegroup</div>
<div>&nbsp;</div>
<div>PROVIDES =3D "${PACKAGES}"</div>
<div>PACKAGES =3D " \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;${PN}-apps \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;${PN}-tools \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"</div>
<div>&nbsp;</div>
<div>RDEPENDS_${PN}-apps =3D " \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;\</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; demoapp \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; demoappstartup \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; "</div>
<div>&nbsp;</div>
<div>RDEPENDS_${PN}-tools =3D " \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; \&nbsp; &nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; "</div>
<div>&nbsp;</div>
<div>RECOMMENDS_${PN}-apps =3D " \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;\</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; "</div>
<div>#RDEPENDS_qt-kiosk-browser +=3D "qtbase ogl-runtime qtwebengine"</div=
>
<div>#demoappstartup</div>

--zJ2Vb8VXnwknkh1uIcpA--
