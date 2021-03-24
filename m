Subject: Re: Quectel EG25-G LTE modem
To: yocto@lists.yoctoproject.org
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
X-Originating-Location: Tamasi, Tolna megye, HU (84.1.252.39)
X-Originating-Platform: Linux Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 Mar 2021 04:52:10 -0700
References: <9685e2a612a17ae37567840e3417aba7@herrie.org>
In-Reply-To: <9685e2a612a17ae37567840e3417aba7@herrie.org>
Message-ID: <22743.1616586730705617446@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qc30ZadkW1vm906slyWB"

--qc30ZadkW1vm906slyWB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks,

I managed to compile it in the meantime with this recipe:

DESCRIPTION =3D "Quectel-CM"

SECTION =3D "quectel"

LICENSE=3D"CLOSED"

SRC_URI =3D "file://files/* "

TARGET_CC_ARCH +=3D "${LDFLAGS}"

do_compile() {
oe_runmake
}

do_install() {
oe_runmake install 'DESTDIR=3D${D}'

}
--
Zolee

--qc30ZadkW1vm906slyWB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks,<br /><br />I managed to compile it in the meantime with this recipe=
:<br /><br /><em>DESCRIPTION =3D "Quectel-CM"</em><br /><br /><em>SECTION =
=3D "quectel"</em><br /><br /><em>LICENSE=3D"CLOSED"</em><br /><br /><br /=
><em>SRC_URI =3D "file://files/* "</em><br /><br /><em>TARGET_CC_ARCH +=3D =
"${LDFLAGS}"</em><br /><br /><br /><em>do_compile() {</em><br /><em>&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oe_runmake</em><br /><em>}</em><b=
r /><br /><em>do_install() {</em><br /><em>&nbsp;&nbsp; &nbsp;oe_runmake in=
stall 'DESTDIR=3D${D}'</em><br /><br /><em>}</em><br />-- <br />Zolee

--qc30ZadkW1vm906slyWB--
