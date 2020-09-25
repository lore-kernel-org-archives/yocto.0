Subject: setup.py no such file or directory
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: Zriba-Village, Gouvernorat de Nabeul, TN (41.226.168.190)
X-Originating-Platform: Linux Firefox 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 25 Sep 2020 08:12:11 -0700
Message-ID: <wZbD.1601046731917768605.B1ZA@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NRoRRg8yE3p4YLMiGhqj"

--NRoRRg8yE3p4YLMiGhqj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Community,

I have a python module which I downloaded from github containing a setup.p=
y as all python modules.
When I create a recipe with devtool it compiles correctly with no problem,=
 but when I copy paste the same recipe source from workspace recipes to an =
official meta recipe I got this error :
>=20
>=20
> /media/talel/data/menzu-zeus/menzu/tmp/work/aarch64-poky-linux/python3-w=
irepas_messaging/1.4.0-r0/recipe-sysroot-native/usr/bin/python3-native/pyth=
on3:
> can't open file 'setup.py': [Errno 2] No such file or directory

Here is the recipe by devtool:

##############

SUMMARY =3D "Wirepas gateway transport service that connects the local dbu=
s to a remote MQTT broker."
HOMEPAGE =3D "https://github.com/wirepas/gateway"
LICENSE =3D "Apache"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dcb6bb17b0d0cca188339074207e9f4d=
8"
SRC_URI =3D "file:///media/talel/data/multigate/multigate/meta-wirepas/rec=
ipes-wirepas/wirepas-gateway/files/wirepas_gateway-${PV}/wp-gateway.zip"
inherit setuptools3
RDEPENDS_${PN} +=3D "python3-pyyaml python3-grpcio python3-paho-mqtt pytho=
n3-pydbus"
RDEPENDS_${PN} +=3D "python3-core python3-datetime python3-io python3-json=
 python3-logging python3-netclient python3-paho-mqtt python3-pydbus python3=
-pygobject python3-pyyaml python3-threading"
DEPENDS +=3D "systemd"

##############

I copy paste the same recipe source to a recipe under meta-wirepas/recipes=
-wirepas of mine, and copied the SRC_URI =3D "file:///media/talel/data/mult=
igate/multigate/meta-wirepas/recipes-wirepas/wirepas-gateway/files/wirepas_=
gateway-${PV}/wp-gateway.zip" zip file under "files", and I got the error.

I don't know what is the difference, I think devtool created the recipe wi=
th .bbappend containing :

inherit externalsrc
EXTERNALSRC =3D "/media/talel/data/menzu-zeus/menzu/workspace/sources/wire=
pas-gateway"
EXTERNALSRC_BUILD =3D "/media/talel/data/menzu-zeus/menzu/workspace/source=
s/wirepas-gateway"

######

Is it the source of the problem, or how can I fix the issue ?

Thanks, Talel

--NRoRRg8yE3p4YLMiGhqj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Community,<br /><br />I have a python module which I downloaded from git=
hub containing a setup.py as all python modules.<br />When I create a recip=
e with devtool it compiles correctly with no problem, but when I copy paste=
 the same recipe source from workspace recipes to an official meta recipe I=
 got this error :
<blockquote>/media/talel/data/menzu-zeus/menzu/tmp/work/aarch64-poky-linux=
/python3-wirepas_messaging/1.4.0-r0/recipe-sysroot-native/usr/bin/python3-n=
ative/python3: can't open file 'setup.py': [Errno 2] No such file or direct=
ory</blockquote>
Here is the recipe by devtool:<br /><br />##############<br /><br />SUMMAR=
Y =3D "Wirepas gateway transport service that connects the local dbus to a =
remote MQTT broker."<br />HOMEPAGE =3D "https://github.com/wirepas/gateway"=
<br />LICENSE =3D "Apache"<br />LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D=
cb6bb17b0d0cca188339074207e9f4d8"<br />SRC_URI =3D "file:///media/talel/dat=
a/multigate/multigate/meta-wirepas/recipes-wirepas/wirepas-gateway/files/wi=
repas_gateway-${PV}/wp-gateway.zip"<br />inherit setuptools3<br />RDEPENDS_=
${PN} +=3D "python3-pyyaml python3-grpcio python3-paho-mqtt python3-pydbus"=
<br />RDEPENDS_${PN} +=3D "python3-core python3-datetime python3-io python3=
-json python3-logging python3-netclient python3-paho-mqtt python3-pydbus py=
thon3-pygobject python3-pyyaml python3-threading"<br />DEPENDS +=3D "system=
d"<br /><br />##############<br /><br />I copy paste the same recipe source=
 to a recipe under meta-wirepas/recipes-wirepas of mine, and copied the SRC=
_URI =3D "file:///media/talel/data/multigate/multigate/meta-wirepas/recipes=
-wirepas/wirepas-gateway/files/wirepas_gateway-${PV}/wp-gateway.zip" zip fi=
le under "files", and I got the error.<br /><br />I don't know what is the =
difference, I think devtool created the recipe with .bbappend containing :<=
br /><br />inherit externalsrc<br />EXTERNALSRC =3D "/media/talel/data/menz=
u-zeus/menzu/workspace/sources/wirepas-gateway"<br />EXTERNALSRC_BUILD =3D =
"/media/talel/data/menzu-zeus/menzu/workspace/sources/wirepas-gateway"<br /=
><br />######<br /><br />Is it the source of the problem, or how can I fix =
the issue ? <br /><br />Thanks, Talel<br /><br /><br /><br />

--NRoRRg8yE3p4YLMiGhqj--
