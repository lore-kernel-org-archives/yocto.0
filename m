Subject: Re: NO INTERNET ENVIRONMENT - USING PREMIRROR fails -> gstreamer1.0_1.12.2.bb:do_unpack failed due to a fetch issue
To: yocto@lists.yoctoproject.org
From: baranarman@gmail.com
X-Originating-Location: Ankara, TR (92.45.88.58)
X-Originating-Platform: Linux Firefox 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 23 Jul 2020 06:36:49 -0700
References: <CA+chaQcmBGrTGBe-G_HmZqr9RQEp9+8VYufSfCgv=jWuhCzpEw@mail.gmail.com>
In-Reply-To: <CA+chaQcmBGrTGBe-G_HmZqr9RQEp9+8VYufSfCgv=jWuhCzpEw@mail.gmail.com>
Message-ID: <3944.1595511409254609404@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cLmGa3V7RdCWkuyOSSuf"

--cLmGa3V7RdCWkuyOSSuf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

a search under the source shown that there is a suspicious file
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer=
1.0_1.12.%.bbappend

I guess this recipe is appending something to "gstreamer1.0_1.12.2.bb" but=
 i am not sure. How can be sure that this recipe is in effect ???

The recipe has the following content:
"
# Use i.MX fork of GST for customizations
GST1.0_SRC ?=3D "gitsm://source.codeaurora.org/external/imx/gstreamer.git;=
protocol=3Dhttps"
SRCBRANCH =3D "imx-1.12.x"

SRC_URI_remove_imx =3D "http://gstreamer.freedesktop.org/src/gstreamer/gst=
reamer-${PV}.tar.xz "
SRC_URI_append_imx =3D " ${GST1.0_SRC};branch=3D${SRCBRANCH}"
SRCREV_imx =3D "cca1ebf223bd423ed5fc21031014ee1f3ce497a1"

EXTRA_AUTORECONF =3D ""

DEPENDS +=3D " elfutils"

# Unrecognised options, need to remove them
EXTRA_OECONF_remove =3D " --disable-docbook --disable-trace"

S_imx =3D "${WORKDIR}/git"

"

--cLmGa3V7RdCWkuyOSSuf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

a search under the source shown that there is a suspicious file<br />./meta=
-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0_1.1=
2.%.bbappend<br /><br />I guess this recipe is appending something to "gstr=
eamer1.0_1.12.2.bb" but i am not sure. How can be sure that this recipe is =
in effect ???<br /><br />The recipe has the following content:<br />"<br />=
# Use i.MX fork of GST for customizations<br />GST1.0_SRC ?=3D "gitsm://sou=
rce.codeaurora.org/external/imx/gstreamer.git;protocol=3Dhttps"<br />SRCBRA=
NCH =3D "imx-1.12.x"<br /><br />SRC_URI_remove_imx =3D "http://gstreamer.fr=
eedesktop.org/src/gstreamer/gstreamer-${PV}.tar.xz "<br />SRC_URI_append_im=
x =3D " ${GST1.0_SRC};branch=3D${SRCBRANCH}"<br />SRCREV_imx =3D "cca1ebf22=
3bd423ed5fc21031014ee1f3ce497a1"<br /><br />EXTRA_AUTORECONF =3D ""<br /><b=
r />DEPENDS +=3D " elfutils"<br /><br /># Unrecognised options, need to rem=
ove them<br />EXTRA_OECONF_remove =3D " --disable-docbook --disable-trace"<=
br /><br />S_imx =3D "${WORKDIR}/git"<br /><br />"<br />

--cLmGa3V7RdCWkuyOSSuf--
