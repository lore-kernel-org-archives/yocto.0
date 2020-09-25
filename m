Subject: sd-bus.h not found when compiling #yocto
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (193.95.99.62)
X-Originating-Platform: Linux Firefox 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 25 Sep 2020 02:08:17 -0700
Message-ID: <BA1A.1601024897483922946.J5j4@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="I2D2ihKzNH3F63cIC198"

--I2D2ihKzNH3F63cIC198
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,
I'm trying to create a recipe for wirepas_gateway , it is a python project=
, but it uses systemd dbus , and there is a .c file that includes=C2=A0 #in=
clude <systemd/sd-bus.h>
I tried to add "systemd" and "libsystemd" to RDPENDS, but same error keeps=
 showing :

>=20
> dbus_c.c:9:10: fatal error: systemd/sd-bus.h: No such file or directory|=
=
=C2=A0=C2=A0
> 9 | #include <systemd/sd-bus.h>

Here is my recipe:
>=20
> SUMMARY =3D "Wirepas gateway transport service that connects the local d=
bus
> to a remote MQTT broker."

>=20
> HOMEPAGE =3D "https://github.com/wirepas/gateway"

>=20
> LICENSE =3D "Apache"

>=20
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dcb6bb17b0d0cca188339074207e9f=
4d8"

>=20
> SRC_URI =3D
> "file:///home/talel/Desktop/wirepas_gateway-${PV}/wp-gateway.zip"

>=20
> inherit setuptools3

>=20
> RDEPENDS_${PN} +=3D "libsystemd python3-pyyaml python3-grpcio
> python3-paho-mqtt python3-pydbus python3-wirepas_messaging"

>=20
> RDEPENDS_${PN} +=3D "python3-core python3-datetime python3-io python3-js=
on
> python3-logging python3-netclient python3-paho-mqtt python3-pygobject
> python3-pyyaml python3-threading"

How can I solve the issue ?

Thanks, Talel

--I2D2ihKzNH3F63cIC198
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br />I'm trying to create a recipe for wirepas_gateway , it is a py=
thon project, but it uses systemd dbus , and there is a .c file that includ=
es&nbsp; #include &lt;systemd/sd-bus.h&gt;<br />I tried to add "systemd" an=
d "libsystemd" to RDPENDS, but same error keeps showing : <br />
<blockquote>dbus_c.c:9:10: fatal error: systemd/sd-bus.h: No such file or =
directory|&nbsp;&nbsp;&nbsp;&nbsp; 9 | #include &lt;systemd/sd-bus.h&gt;</b=
lockquote>
Here is my recipe:
<blockquote>SUMMARY =3D "Wirepas gateway transport service that connects t=
he local dbus to a remote MQTT broker."</blockquote>
<blockquote>HOMEPAGE =3D "https://github.com/wirepas/gateway"</blockquote>
<blockquote>LICENSE =3D "Apache"</blockquote>
<blockquote>LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dcb6bb17b0d0cca18833=
9074207e9f4d8"</blockquote>
<blockquote>SRC_URI =3D "file:///home/talel/Desktop/wirepas_gateway-${PV}/=
wp-gateway.zip"</blockquote>
<blockquote>inherit setuptools3</blockquote>
<blockquote>RDEPENDS_${PN} +=3D "libsystemd python3-pyyaml python3-grpcio =
python3-paho-mqtt python3-pydbus python3-wirepas_messaging"</blockquote>
<blockquote>RDEPENDS_${PN} +=3D "python3-core python3-datetime python3-io =
python3-json python3-logging python3-netclient python3-paho-mqtt python3-py=
gobject python3-pyyaml python3-threading"</blockquote>
<br />How can I solve the issue ? <br /><br />Thanks, Talel

--I2D2ihKzNH3F63cIC198--
