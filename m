Subject: Re: Incrementally building constantly changing application source in a workflow-friendly way with #yocto
To: yocto@lists.yoctoproject.org
From: "Pieter Smith" <smipi01@gmail.com>
X-Originating-Location: Eindhoven, North Brabant, NL (194.171.252.117)
X-Originating-Platform: Windows Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 14 Feb 2020 01:52:03 -0800
References: <CANNYZj9myYbCLMAv-4xrQUVdOWLhfwn7HZNzj4s2S511Qq4rrQ@mail.gmail.com>
In-Reply-To: <CANNYZj9myYbCLMAv-4xrQUVdOWLhfwn7HZNzj4s2S511Qq4rrQ@mail.gmail.com>
Message-ID: <11386.1581673923440714232@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zcn2ktGouUQOj03gNEi7"

--zcn2ktGouUQOj03gNEi7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Alex,

I tried this, but still cannot get it set-up so that the sources are fetch=
ed. I have the following directory structure in my repo:

=E2=94=9C=E2=94=80=E2=94=80 conf
=E2=94=82=C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 layer.conf
=E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT
=E2=94=9C=E2=94=80=E2=94=80 README
=E2=94=9C=E2=94=80=E2=94=80 recipes-images
=E2=94=82=C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 my-image
=E2=94=82=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 my-image.b=
b
=E2=94=9C=E2=94=80=E2=94=80 recipes-my-application
=E2=94=82=C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 my-application
=E2=94=82=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 my-applica=
tion_1.0.bb
=E2=94=94=E2=94=80=E2=94=80 src
=E2=94=9C=E2=94=80=E2=94=80 my-application.c
=E2=94=9C=E2=94=80=E2=94=80 secrets.c
=E2=94=94=E2=94=80=E2=94=80 secrets.h

None of the following in my-application_1.0.bb succeeds in fetching the so=
urce:

SRC_URI =3D "file://../src/*"
SRC_URI =3D "file://../src/"
SRC_URI =3D "file://src/*"
SRC_URI =3D "file://src/"

What am I missing?

--zcn2ktGouUQOj03gNEi7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Thanks Alex,<br /><br />I tried this, but still cannot get it set-up so =
that the sources are fetched. I have the following directory structure in m=
y repo:</p>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 8=
pt;">=E2=94=9C=E2=94=80=E2=94=80 conf</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 8=
pt;">=E2=94=82&nbsp; &nbsp;=E2=94=94=E2=94=80=E2=94=80 layer.conf</span></d=
iv>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 8=
pt;">=E2=94=9C=E2=94=80=E2=94=80 COPYING.MIT</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 8=
pt;">=E2=94=9C=E2=94=80=E2=94=80 README</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 8=
pt;">=E2=94=9C=E2=94=80=E2=94=80 recipes-images</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 8=
pt;">=E2=94=82&nbsp; &nbsp;=E2=94=94=E2=94=80=E2=94=80 my-image</span></div=
>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 8=
pt;">=E2=94=82&nbsp; &nbsp; &nbsp; &nbsp;=E2=94=94=E2=94=80=E2=94=80 my-ima=
ge.bb</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 8=
pt;">=E2=94=9C=E2=94=80=E2=94=80 recipes-my-application</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 8=
pt;">=E2=94=82&nbsp; &nbsp;=E2=94=94=E2=94=80=E2=94=80 my-application</span=
></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 8=
pt;">=E2=94=82&nbsp; &nbsp; &nbsp; &nbsp;=E2=94=94=E2=94=80=E2=94=80 my-app=
lication_1.0.bb</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 8=
pt;">=E2=94=94=E2=94=80=E2=94=80 src</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 8=
pt;">&nbsp; &nbsp; =E2=94=9C=E2=94=80=E2=94=80 my-application.c</span></div=
>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 8=
pt;">&nbsp; &nbsp; =E2=94=9C=E2=94=80=E2=94=80 secrets.c</span></div>
<div><span style=3D"font-family: courier_newregular, courier; font-size: 8=
pt;">&nbsp; &nbsp; =E2=94=94=E2=94=80=E2=94=80 secrets.h</span></div>
<div><br />None of the following in my-application_1.0.bb succeeds in fetc=
hing the source:<br /><br />SRC_URI =3D "file://../src/*"<br />SRC_URI =3D =
"file://../src/"<br />SRC_URI =3D "file://src/*"<br />SRC_URI =3D "file://s=
rc/"<br /><br />What am I missing?</div>
<div>&nbsp;</div>

--zcn2ktGouUQOj03gNEi7--
