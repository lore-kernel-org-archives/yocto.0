Subject: Help creating zeek recipe #yocto
To: yocto@lists.yoctoproject.org
From: gary@missionsecure.com
X-Originating-Location: Charlottesville, Virginia, US (216.197.64.240)
X-Originating-Platform: Linux Firefox 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 03 Jul 2020 14:22:40 -0700
Message-ID: <cqNm.1593811360865000924.aM66@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ZfFd3nDW5p0VgI17w3ZM"

--ZfFd3nDW5p0VgI17w3ZM
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I would like to create a recipe for zeek (a network security monitoring too=
l, https://zeek.org/). It fails while compiling because it cannot find a ex=
ecutable that it needs to install called binpac.=C2=A0 binpac is included i=
n the zeek repo and is normally built as part of the zeek build.=C2=A0 I've=
 created a recipe for binpac and included the native class and included bin=
pac-native in the zeek recipe.=C2=A0 The binpac-native builds.

binpac_git.bb

SUMMARY =3D "BinPAC is a high level language for describing protocol parse=
rs and generates C++ code."
HOMEPAGE =3D "https://github.com/zeek/binpac"

LICENSE =3D "Unknown"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D5139995cafc8b5273b85dd8bab50985=
5"

SRC_URI =3D "git://git@github.com/zeek/binpac.git;protocol=3Dssh"

# Modify these as desired
PV =3D "0.55-8+git${SRCPV}"
SRCREV =3D "9c3211ff121ddc677d0ed8bd3a85783f87921cce"

BBCLASSEXTEND =3D "native"

DEPENDS +=3D "bison-native \
flex-native \
"
S =3D "${WORKDIR}/git"

inherit distutils

zeek_3.1.4.bb:
# Zeek
# Install reference:
# https://docs.zeek.org/en/current/install/install.html
SRC_URI =3D "https://download.zeek.org/zeek-${PV}.tar.gz"
SRC_URI[md5sum] =3D "b9d82fbd4964ea2d49c31653726d0dc0"
SRC_URI[sha256sum] =3D "d72b8bcba0def6ba93b650d6f25896d9326ee0b02113b80696=
f47b08bd73e964"

<lots of license lines>

DEPENDS =3D "\
binpac-native \
bifcl-native \
swig-native \
bison-native \
flex-native \
sed \
libpcap \
zlib \
openssl \
"

RDEPENDS_${PN} +=3D "\
bash \
python \
libpcap \
openssl \
bind \
zlib \
"

inherit cmake pythonnative

# So that cmake can find sed
OECMAKE_FIND_ROOT_PATH_MODE_PROGRAM =3D "BOTH"
# Specify any options you want to pass to cmake using EXTRA_OECMAKE:
EXTRA_OECMAKE =3D ""

--ZfFd3nDW5p0VgI17w3ZM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I would like to create a recipe for zeek (a network security monitoring too=
l, <a href=3D"https://zeek.org/)" target=3D"_blank" rel=3D"noopener">https:=
//zeek.org/)</a>. It fails while compiling because it cannot find a executa=
ble that it needs to install called binpac.&nbsp; binpac is included in the=
 zeek repo and is normally built as part of the zeek build.&nbsp; I've crea=
ted a recipe for binpac and included the native class and included binpac-n=
ative in the zeek recipe.&nbsp; The binpac-native builds.<br /><br />binpac=
_git.bb<br /><br /><span style=3D"font-family: courier_newregular, courier;=
">SUMMARY =3D "BinPAC is a high level language for describing protocol pars=
ers and generates C++ code."<br />HOMEPAGE =3D "https://github.com/zeek/bin=
pac"<br /><br />LICENSE =3D "Unknown"<br />LIC_FILES_CHKSUM =3D "file://COP=
YING;md5=3D5139995cafc8b5273b85dd8bab509855"<br /><br />SRC_URI =3D "git://=
git@github.com/zeek/binpac.git;protocol=3Dssh"<br /><br /># Modify these as=
 desired<br />PV =3D "0.55-8+git${SRCPV}"<br />SRCREV =3D "9c3211ff121ddc67=
7d0ed8bd3a85783f87921cce"<br /><br />BBCLASSEXTEND =3D "native"<br /><br />=
DEPENDS +=3D "bison-native \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; flex-native \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "<br />S =3D "${WORKDIR}/git"<br /><br />inh=
erit distutils<br /><br />zeek_3.1.4.bb:<br /># Zeek<br /># Install referen=
ce:<br /># <a href=3D"https://docs.zeek.org/en/current/install/install.html=
" target=3D"_blank" rel=3D"noopener">https://docs.zeek.org/en/current/insta=
ll/install.html</a><br />SRC_URI =3D "https://download.zeek.org/zeek-${PV}.=
tar.gz"<br />SRC_URI[md5sum] =3D "b9d82fbd4964ea2d49c31653726d0dc0"<br />SR=
C_URI[sha256sum] =3D "d72b8bcba0def6ba93b650d6f25896d9326ee0b02113b80696f47=
b08bd73e964"<br /><br />&lt;lots of license lines&gt;<br /><br />DEPENDS =
=3D "\<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b=
inpac-native \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; bifcl-native \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; swig-native \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; bison-native \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; flex-native \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; sed \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; libpcap \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; zlib \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; openssl \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; "<br /><br />RDEPENDS_${PN} +=3D "\<br />&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; bash \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; python \<b=
r />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; libpcap \<br />&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp; openssl \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bind \<br />&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; zlib \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "<b=
r /><br /><br />inherit cmake pythonnative<br /><br /># So that cmake can f=
ind sed<br />OECMAKE_FIND_ROOT_PATH_MODE_PROGRAM =3D "BOTH"<br /># Specify =
any options you want to pass to cmake using EXTRA_OECMAKE:<br />EXTRA_OECMA=
KE =3D ""<br /><br /></span>

--ZfFd3nDW5p0VgI17w3ZM--
