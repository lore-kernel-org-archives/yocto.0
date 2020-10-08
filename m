Subject: Re: Only index.html is cloned in private repo clone recipe #yocto
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (193.95.99.62)
X-Originating-Platform: Linux Firefox 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 08 Oct 2020 04:48:38 -0700
References: <CAAnfSTshcSvkcabVBW31SwHH=CsCQAiH7Gynid_WyUSX+7Nq2A@mail.gmail.com>
In-Reply-To: <CAAnfSTshcSvkcabVBW31SwHH=CsCQAiH7Gynid_WyUSX+7Nq2A@mail.gmail.com>
Message-ID: <4450.1602157718616894452@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="TYDCv7Io7tHM7H4nG34a"

--TYDCv7Io7tHM7H4nG34a
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the support,
Here what I tried and it worked:

>=20
>=20
>=20
>=20
> *BRANCH =3D "master"*
> *PROTOCOL =3D "http"
> * *SRCREPO =3D "gitlab.tools.comp.local/comp/sense/sense_frontend.git"
> * *SRC_URI =3D "git://${* **SRCREPO}* ; protocol=3D${PROTOCOL};
> branch=3D${BRANCH}"
> * *SRCREV =3D "${AUTOREV}"*
>=20
>=20

And now everything is fetched and then unpacked into ${S}/git correctly.

Thanks, Talel

--TYDCv7Io7tHM7H4nG34a
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Thanks for the support,<br />Here what I tried and it worked:</p>
<blockquote>
<p><br /><strong>BRANCH =3D "master"</strong><br /><strong>PROTOCOL =3D "h=
ttp"<br /></strong><strong>SRCREPO =3D "gitlab.tools.comp.local/comp/sense/=
sense_frontend.git"<br /></strong><strong>SRC_URI =3D "git://${</strong><st=
rong><strong>SRCREPO}</strong>; protocol=3D${PROTOCOL}; branch=3D${BRANCH}"=
<br /></strong><strong>SRCREV =3D "${AUTOREV}"</strong></p>
</blockquote>
And now everything is fetched and then unpacked into ${S}/git correctly.<b=
r /><br />Thanks, Talel

--TYDCv7Io7tHM7H4nG34a--
