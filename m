Subject: Re: python3-psycopg2cffi DEPENDS error cffi
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (197.27.81.144)
X-Originating-Platform: Linux Firefox 82
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 10 Nov 2020 05:39:49 -0800
References: <20201110132526.fzp74psoeflsbn5r@qschulz>
In-Reply-To: <20201110132526.fzp74psoeflsbn5r@qschulz>
Message-ID: <2067.1605015589112897892@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="VDKHph8qOE70jdHNfKTG"

--VDKHph8qOE70jdHNfKTG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

HI,
That's what I did exactly, but failed with the same error.
Here is the python3-cffi-native recipe:

SUMMARY =3D "Foreign Function Interface for Python calling C code."
HOMEPAGE =3D "http://cffi.readthedocs.org"
AUTHOR =3D "Armin Rigo, Maciej Fijalkowski <python-cffi@googlegroups.com>"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D5677e2fdbf7cdda61d6dd2b57df547b=
f"
SRC_URI =3D "https://files.pythonhosted.org/packages/cb/ae/380e33d621ae301=
770358eb11a896a34c34f30db188847a561e8e39ee866/cffi-1.14.3.tar.gz"
SRC_URI[md5sum] =3D "c2a47ffd5d183b193ac8ed3414dcfd07"
SRC_URI[sha256sum] =3D "f92f789e4f9241cd262ad7a555ca2c648a98178a953af117ef=
7fad46aa1d5591"
S =3D "${WORKDIR}/cffi-1.14.3"
RDEPENDS_${PN} =3D "python3-pycparser"
BBCLASSEXTEND =3D "native"
inherit setuptools3

and here is python3-psycopg2cffi recipe

SUMMARY =3D ".. image:: https://travis-ci.org/chtd/psycopg2cffi.svg?branch=
=
=3Dmaster"
HOMEPAGE =3D "http://github.com/chtd/psycopg2cffi"
AUTHOR =3D "Konstantin Lopuhin <konstantin.lopuhin@chtd.ru>"
LICENSE =3D "LGPL-2.0"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dedf147a599198440160215f8111f5bc=
f"
SRC_URI =3D "https://files.pythonhosted.org/packages/95/50/5b94b81a57948ce=
0350559aad8c20d250ff3b87868a5615efcc79704ba49/psycopg2cffi-2.8.1.tar.gz"
SRC_URI[md5sum] =3D "f67394d47803dab8a481402754bf83a1"
SRC_URI[sha256sum] =3D "fcaa4d5477a8205b33e8e9e6707a5c331a0f5d7f4af354529b=
6564377b678079"
S =3D "${WORKDIR}/psycopg2cffi-2.8.1"
DEPENDS =3D "python3-cffi-native"
RDEPENDS_${PN} =3D ""
inherit setuptools3

--VDKHph8qOE70jdHNfKTG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

HI,<br />That's what I did exactly, but failed with the same error.<br />He=
re is the python3-cffi-native recipe:<br /><br />SUMMARY =3D "Foreign Funct=
ion Interface for Python calling C code."<br />HOMEPAGE =3D "http://cffi.re=
adthedocs.org"<br />AUTHOR =3D "Armin Rigo, Maciej Fijalkowski &lt;python-c=
ffi@googlegroups.com&gt;"<br />LICENSE =3D "MIT"<br />LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3D5677e2fdbf7cdda61d6dd2b57df547bf"<br />SRC_URI =3D "h=
ttps://files.pythonhosted.org/packages/cb/ae/380e33d621ae301770358eb11a896a=
34c34f30db188847a561e8e39ee866/cffi-1.14.3.tar.gz"<br />SRC_URI[md5sum] =3D=
 "c2a47ffd5d183b193ac8ed3414dcfd07"<br />SRC_URI[sha256sum] =3D "f92f789e4f=
9241cd262ad7a555ca2c648a98178a953af117ef7fad46aa1d5591"<br />S =3D "${WORKD=
IR}/cffi-1.14.3"<br />RDEPENDS_${PN} =3D "python3-pycparser"<br />BBCLASSEX=
TEND =3D "native"<br />inherit setuptools3<br /><br />and here is python3-p=
sycopg2cffi recipe<br /><br />SUMMARY =3D ".. image:: https://travis-ci.org=
/chtd/psycopg2cffi.svg?branch=3Dmaster"<br />HOMEPAGE =3D "http://github.co=
m/chtd/psycopg2cffi"<br />AUTHOR =3D "Konstantin Lopuhin &lt;konstantin.lop=
uhin@chtd.ru&gt;"<br />LICENSE =3D "LGPL-2.0"<br />LIC_FILES_CHKSUM =3D "fi=
le://LICENSE;md5=3Dedf147a599198440160215f8111f5bcf"<br />SRC_URI =3D "http=
s://files.pythonhosted.org/packages/95/50/5b94b81a57948ce0350559aad8c20d250=
ff3b87868a5615efcc79704ba49/psycopg2cffi-2.8.1.tar.gz"<br />SRC_URI[md5sum]=
 =3D "f67394d47803dab8a481402754bf83a1"<br />SRC_URI[sha256sum] =3D "fcaa4d=
5477a8205b33e8e9e6707a5c331a0f5d7f4af354529b6564377b678079"<br />S =3D "${W=
ORKDIR}/psycopg2cffi-2.8.1"<br />DEPENDS =3D "python3-cffi-native"<br />RDE=
PENDS_${PN} =3D ""<br />inherit setuptools3<br /><br />

--VDKHph8qOE70jdHNfKTG--
