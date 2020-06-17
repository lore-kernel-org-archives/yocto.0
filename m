Subject: Re: Enable systemd service with unit template instance on startup
To: yocto@lists.yoctoproject.org
From: "Robert Varga" <robert.varga@getinge.com>
X-Originating-Location: Ulm, Baden-Württemberg, DE (217.240.134.124)
X-Originating-Platform: Windows Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 17 Jun 2020 05:13:33 -0700
References: <AM0PR03MB37142015675C68049E2FA92FFE9A0@AM0PR03MB3714.eurprd03.prod.outlook.com>
In-Reply-To: <AM0PR03MB37142015675C68049E2FA92FFE9A0@AM0PR03MB3714.eurprd03.prod.outlook.com>
Message-ID: <14900.1592396013932940523@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="3t1MQMdhtWZN3nTVmpLW"

--3t1MQMdhtWZN3nTVmpLW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
>=20
>=20
> Why is
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> SYSTEMD_SERVICE_${PN} =3D " \
>=20
>=20
>=20
> can@... ( can@... ) \
>=20
>=20
>=20
> "
>=20
>=20
>=20
> and not
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> SYSTEMD_SERVICE_${PN} =3D " \
>=20
>=20
>=20
> can@.service \
>=20
>=20
>=20
> "
>=20
>=20
>=20

This is because I want bitbake to create an instance of the template unit =
file (can@.service) with the parameter "can0" which is then passed to the t=
emplate unit file. This corresponds to calling following in a console.

systemctl enable can@can0.service

--3t1MQMdhtWZN3nTVmpLW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US">=
Why is</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US">=
=
=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US">=
SYSTEMD_SERVICE_${PN} =3D &#34; \</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US">=
=
=C2=A0=C2=A0</span><span lang=3D"DE"><a href=3D"mailto:can@..." target=3D"=
_blank" rel=3D"nofollow noopener"><span lang=3D"EN-US">can@...</span></a></=
span><span lang=3D"EN-US">=C2=A0\</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"DE">&#3=
4;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US">=
=
=C2=A0</span><span lang=3D"EN-US">and not</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US">=
=
=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US">=
SYSTEMD_SERVICE_${PN} =3D &#34; \</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US">=
=
=C2=A0=C2=A0<a href=3D"mailto:can@.service" target=3D"_blank" rel=3D"nofol=
low noopener">can@.service</a>=C2=A0\</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"DE">&#3=
4;<br/></span></p>
</blockquote>
This is because I want bitbake to create an instance of the template unit =
file (can@.service) with the parameter &#34;can0&#34; which is then passed =
to the template unit file. This corresponds to calling following in a conso=
le.<br/><br/>systemctl enable <a href=3D"mailto:can@can0.service" target=3D=
"_blank" rel=3D"noopener">can@can0.service</a>

--3t1MQMdhtWZN3nTVmpLW--
