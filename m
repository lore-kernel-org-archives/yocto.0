Subject: Re: Coreutils missing in Yocto 2.6.3 sdk
To: yocto@lists.yoctoproject.org
From: "Agnes Amreetha Joseph Arulraj" <agnes.amree@hcl.com>
X-Originating-Location: Chennai, Tamil Nadu, IN (192.8.229.10)
X-Originating-Platform: Windows Chrome 78
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 25 Nov 2019 03:31:52 -0800
References: <25849.1574432430807569686@lists.yoctoproject.org>
In-Reply-To: <25849.1574432430807569686@lists.yoctoproject.org>
Message-ID: <14119.1574681512473022801@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="HTfr2enhtXTKU8pqrvvs"

--HTfr2enhtXTKU8pqrvvs
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alessio,

Thank you for the reply.

We have added TOOLCHAIN_TARGET_TASK +=3D =E2=80=9Ccoreutils=E2=80=9D in co=
re-image-sato.bbappend file. We have added below lines in =E2=80=9Cpackageg=
roup-base.bbappend=E2=80=9D

RDEPENDS_packagegroup-base-extended =3D " \

coreutils \

coreutils-dbg \

coreutils-doc=C2=A0\

"

We have added =E2=80=9C IMAGE_INSTALL_append=C2=A0 =3D " coreutils" =E2=80=
=
=9C in template.conf file.

Files in coreutils-dbg and coreutils-doc are coming in SDK. But bin=E2=80=
=99s in coreutils are missing, for yocto 2.6.3.

Same we have followed for yocto 2.2.4, All coreutils binaries in bundling =
in SDK.
Is there anything else, we need to add in Yocto 2.6.3, to get the coreutil=
s bin in the final sdk?

Regards,
Agnes

--HTfr2enhtXTKU8pqrvvs
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alessio,<br/><br/>Thank you for the reply.<br/>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">We have added TOOLCHA=
IN_TARGET_TASK +=3D =E2=80=9Ccoreutils=E2=80=9D in core-image-sato.bbappend=
 file. We have added below lines in =E2=80=9Cpackagegroup-base.bbappend=E2=
=80=9D</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">RDEPENDS_packagegroup=
-base-extended =3D &#34; \</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <spa=
n lang=3D"FR">coreutils \</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"FR">=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0coreutils-dbg \</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"FR">=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0coreutils-doc=C2=A0\</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"FR">=C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">We have added =E2=80=
=9C IMAGE_INSTALL_append=C2=A0 =3D &#34; coreutils&#34; =E2=80=9C in templ=
ate.conf file.</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Files in coreutils-db=
g and coreutils-doc are coming in SDK. But bin=E2=80=99s in coreutils are m=
issing, for yocto 2.6.3.</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Same we have followed=
 for yocto 2.2.4, All coreutils binaries in bundling in SDK.<br/>Is there a=
nything else, we need to add in Yocto 2.6.3, to get the coreutils bin in th=
e final sdk?<br/><br/>Regards,<br/>Agnes</p>

--HTfr2enhtXTKU8pqrvvs--
