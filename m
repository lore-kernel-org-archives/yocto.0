Subject: Install headers to /usr/include/
To: yocto@lists.yoctoproject.org
From: majid.nasiry65@gmail.com
X-Originating-Location: Zanjan, IR (89.47.196.86)
X-Originating-Platform: Windows Chrome 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 12 Sep 2020 02:58:04 -0700
Message-ID: <S7DH.1599904684034190186.Nbaq@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="IytUvSZvTQNh4TMVwKK3"

--IytUvSZvTQNh4TMVwKK3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi
I have a recipe for a library. It install .so files correctly but headers =
not installed. It can install files any where except /usr/inclue/ directory=
.
>=20
>=20
> SUMMARY =3D "An=C2=A0open=C2=A0source=C2=A0library=C2=A0for=C2=A0DNP3"
> HOMEPAGE =3D "http://dnp3.github.io/"
> SECTION =3D "libs"
> DEPENDS =3D ""
> LICENSE =3D "Apache-2.0"
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D3b83ef96387f14655fc854ddc3c6b=
d57"
>=20
>=20
> SRCREV =3D "639edaf1a5d2d74bc04efdd9ddf165bc14a06390"
> SRC_URI =3D "git://github.com/dnp3/opendnp3.git;branch=3Drelease"
>=20
> S =3D " ${WORKDIR} /git"
>=20
> EXTRA_OECMAKE +=3D "-DNP3_TLS=3DON"
>=20
> do_install_append (){
> install=C2=A0-d ${D}${includedir}
> cp=C2=A0-r ${S} /cpp/lib/include/opendnp3 ${D}${includedir}
> }
>=20
> FILES_${PN} +=3D " ${includedir} "
>=20
> inherit cmake
>=20

Where is my mistake?
Thanks.

>=20
>=20
>

--IytUvSZvTQNh4TMVwKK3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi<br />I have a recipe for a library. It install .so files correctly but h=
eaders not installed. It can install files any where except /usr/inclue/ di=
rectory.&nbsp;
<blockquote>
<div style=3D"color: #d4d4d4; background-color: #1e1e1e; font-family: Cons=
olas, 'Courier New', monospace; line-height: 19px; white-space: pre;">
<div><span style=3D"color: #9cdcfe;">SUMMARY</span>&nbsp;=3D&nbsp;<span st=
yle=3D"color: #ce9178;">"An&nbsp;open&nbsp;source&nbsp;library&nbsp;for&nbs=
p;DNP3"</span></div>
<div><span style=3D"color: #9cdcfe;">HOMEPAGE</span>&nbsp;=3D&nbsp;<span s=
tyle=3D"color: #ce9178;">"http://dnp3.github.io/"</span></div>
<div><span style=3D"color: #9cdcfe;">SECTION</span>&nbsp;=3D&nbsp;<span st=
yle=3D"color: #ce9178;">"libs"</span></div>
<div><span style=3D"color: #9cdcfe;">DEPENDS</span>&nbsp;=3D&nbsp;<span st=
yle=3D"color: #ce9178;">""</span></div>
<div><span style=3D"color: #9cdcfe;">LICENSE</span>&nbsp;=3D&nbsp;<span st=
yle=3D"color: #ce9178;">"Apache-2.0"</span></div>
<div><span style=3D"color: #9cdcfe;">LIC_FILES_CHKSUM</span>&nbsp;=3D&nbsp=
;<span style=3D"color: #ce9178;">"file://LICENSE;md5=3D3b83ef96387f14655fc8=
54ddc3c6bd57"</span></div>
<br /><br />
<div><span style=3D"color: #9cdcfe;">SRCREV</span>&nbsp;=3D&nbsp;<span sty=
le=3D"color: #ce9178;">"639edaf1a5d2d74bc04efdd9ddf165bc14a06390"</span></d=
iv>
<div><span style=3D"color: #9cdcfe;">SRC_URI</span>&nbsp;=3D&nbsp;<span st=
yle=3D"color: #ce9178;">"git://github.com/dnp3/opendnp3.git;branch=3Dreleas=
e"</span>&nbsp;</div>
<br />
<div><span style=3D"color: #9cdcfe;">S</span>&nbsp;=3D&nbsp;<span style=3D=
"color: #ce9178;">"</span><span style=3D"color: #569cd6;">${WORKDIR}</span>=
<span style=3D"color: #ce9178;">/git"</span></div>
<br />
<div><span style=3D"color: #9cdcfe;">EXTRA_OECMAKE</span>&nbsp;+=3D&nbsp;<=
span style=3D"color: #ce9178;">"-DNP3_TLS=3DON"</span></div>
<br />
<div><span style=3D"color: #dcdcaa;">do_install_append</span>(){</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;install&nbsp;-d&nbsp;<span style=3D"color: #9=
cdcfe;">${D}${includedir}</span></div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;cp&nbsp;-r&nbsp;<span style=3D"color: #9cdcfe=
;">${S}</span>/cpp/lib/include/opendnp3&nbsp;<span style=3D"color: #9cdcfe;=
">${D}${includedir}</span></div>
<div>}</div>
<br />
<div><span style=3D"color: #9cdcfe;">FILES_${PN}</span>&nbsp;+=3D&nbsp;<sp=
an style=3D"color: #ce9178;">"</span><span style=3D"color: #569cd6;">${incl=
udedir}</span><span style=3D"color: #ce9178;">"</span></div>
<br /><span style=3D"color: #c586c0;">inherit</span>&nbsp;cmake</div>
</blockquote>
Where is my mistake?&nbsp;<br />Thanks.<br /><br />
<blockquote>
<div style=3D"color: #d4d4d4; background-color: #1e1e1e; font-family: Cons=
olas, 'Courier New', monospace; line-height: 19px; white-space: pre;">&nbsp=
;</div>
</blockquote>

--IytUvSZvTQNh4TMVwKK3--
