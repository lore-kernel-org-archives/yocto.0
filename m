Subject: Upgrading a group of packages
To: yocto@lists.yoctoproject.org
From: aensminger@alltrafficsolutions.com
X-Originating-Location: Littleton, Colorado, US (24.8.24.106)
X-Originating-Platform: Linux Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 09 Jul 2020 20:30:48 -0700
Message-ID: <t6IN.1594351848506558338.oihq@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RlrpCvIuHjNtsWSYdB6m"

--RlrpCvIuHjNtsWSYdB6m
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello! I'm new to yocto, and working in an inherited system, and a first ti=
me poster, so forgive any ignorance.

I'm looking for a way to group packages together, and specify the sub-pack=
age versions such that you can upgrade them all together. My approach so fa=
r has been to create a group package, let's say in a recipe called group-on=
e_1.0.bb. This recipe has PR =3D "r1" defines RDEPENDS =3D "package-a (=3D1=
.0) package-b (=3D1.3)" as a way of making sure these are installed with th=
e specified versions. We use opkg as the package manager, so I am expecting=
 `opkg install group-one` to also install/upgrade package-a to 1.0 and pack=
age-b to 1.3, but it's not doing that. If package-b is already installed at=
 1.0, it stays at 1.0.

Is there some built-in approach to this type of organization, or some best=
-practices around the way to go about it?

Thanks much,
Alex Ensminger

--RlrpCvIuHjNtsWSYdB6m
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello! I'm new to yocto, and working in an inherited system, and a first ti=
me poster, so forgive any ignorance. <br /><br />I'm looking for a way to g=
roup packages together, and specify the sub-package versions such that you =
can upgrade them all together. My approach so far has been to create a grou=
p package, let's say in a recipe called <em>group-one_1.0.bb.&nbsp;</em> Th=
is recipe has PR =3D "r1" defines RDEPENDS =3D "package-a (=3D1.0) package-=
b (=3D1.3)" as a way of making sure these are installed with the specified =
versions. We use opkg as the package manager, so I am expecting `opkg insta=
ll group-one` to also install/upgrade package-a to 1.0 and package-b to 1.3=
, but it's not doing that. If package-b is already installed at 1.0, it sta=
ys at 1.0.<br /><br />Is there some built-in approach to this type of organ=
ization, or some best-practices around the way to go about it?<br /><br />T=
hanks much,<br />Alex Ensminger

--RlrpCvIuHjNtsWSYdB6m--
