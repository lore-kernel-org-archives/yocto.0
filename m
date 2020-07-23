Subject: Re: NO INTERNET ENVIRONMENT - USING PREMIRROR fails -> gstreamer1.0_1.12.2.bb:do_unpack failed due to a fetch issue
To: yocto@lists.yoctoproject.org
From: baranarman@gmail.com
X-Originating-Location: Ankara, TR (92.45.88.58)
X-Originating-Platform: Linux Firefox 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 23 Jul 2020 05:56:31 -0700
References: <CA+chaQdedfpH70Yj7CO5A4hZuCmffN+yh0Hr0yiQsywaS3D5AA@mail.gmail.com>
In-Reply-To: <CA+chaQdedfpH70Yj7CO5A4hZuCmffN+yh0Hr0yiQsywaS3D5AA@mail.gmail.com>
Message-ID: <3944.1595508991982084564@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QzdKzFhac6e7gSwEzyRo"

--QzdKzFhac6e7gSwEzyRo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Martin=C2=A0 sorry that am im not quite sure if i get you right

gstreamer1.0_1.12.2.bb is below

"
require gstreamer1.0.inc

LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D6762ed442b3822387a51c92d928ead0=
d \
file://gst/gst.h;beginline=3D1;endline=3D21;md5=3De059138481205ee2c6fc1c07=
9c016d0d"

SRC_URI =3D " \
http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-${PV}.tar.xz \
file://0001-configure-Add-switches-for-enabling-disabling-libdw-.patch \
"
SRC_URI[md5sum] =3D "4748860621607ffd96244fb79c86c238"
SRC_URI[sha256sum] =3D "9fde3f39a2ea984f9e07ce09250285ce91f6e3619d186889f7=
5b5154ecf994ba"

S =3D "${WORKDIR}/gstreamer-${PV}"

"
I have no git repo. so how shall i set the "common" git repo?
And also how can i set SRCREV + SRCREV_FORMAT for it

I am quite new so can you be little bit more specific.

Regards.

--QzdKzFhac6e7gSwEzyRo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<br />Martin&nbsp; sorry that am im not quite sure if i get you right<br />=
<br />gstreamer1.0_1.12.2.bb is below<br /><br />"<br />require gstreamer1.=
0.inc<br /><br />LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D6762ed442b38223=
87a51c92d928ead0d \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://gst=
/gst.h;beginline=3D1;endline=3D21;md5=3De059138481205ee2c6fc1c079c016d0d"<b=
r /><br />SRC_URI =3D " \<br />&nbsp;&nbsp;&nbsp; http://gstreamer.freedesk=
top.org/src/gstreamer/gstreamer-${PV}.tar.xz \<br />&nbsp;&nbsp;&nbsp; file=
://0001-configure-Add-switches-for-enabling-disabling-libdw-.patch \<br />"=
<br />SRC_URI[md5sum] =3D "4748860621607ffd96244fb79c86c238"<br />SRC_URI[s=
ha256sum] =3D "9fde3f39a2ea984f9e07ce09250285ce91f6e3619d186889f75b5154ecf9=
94ba"<br /><br />S =3D "${WORKDIR}/gstreamer-${PV}"<br /><br />"<br />I hav=
e no git repo. so how shall i set the "common" git repo?<br />And also how =
can i set SRCREV + SRCREV_FORMAT for it <br /><br />I am quite new so can y=
ou be little bit more specific. <br /><br />Regards.

--QzdKzFhac6e7gSwEzyRo--
