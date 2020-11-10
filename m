Subject: python3-psycopg2cffi DEPENDS error cffi
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (197.27.81.144)
X-Originating-Platform: Linux Firefox 82
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 10 Nov 2020 05:23:09 -0800
Message-ID: <sd9w.1605014589683022175.fL1s@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LROpzXKZVTBRye60DEXk"

--LROpzXKZVTBRye60DEXk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

HI All,
I created a recipe with pipoe for python3-psycopg2cffi when compiling this=
 error occured:

>=20
> ERROR: Do not try to fetch `cffi>=3D1.0' for building. Please add its na=
tive
> recipe to DEPENDS.

I created a recipe for python3-cffi and I made it native with BBCLASSEXTEN=
D =3D "native" and it depends also on python3-pycparser which is already na=
tive and exist.
Then I added DEPENDS =3D "python3-cffi" to python3-psycopg2cffi recipe but=
 failed with same error, I tried to rename the python3-cffi to just cffi bu=
t same error.

What I'm missing ?
Thanks ,Talel

--LROpzXKZVTBRye60DEXk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

HI All,<br />I created a recipe with pipoe for python3-psycopg2cffi when co=
mpiling this error occured:<br />
<blockquote>ERROR: Do not try to fetch `cffi&gt;=3D1.0' for building. Plea=
se add its native recipe to DEPENDS.</blockquote>
I created a recipe for python3-cffi and I made it native with BBCLASSEXTEN=
D =3D "native" and it depends also on python3-pycparser which is already na=
tive and exist.<br />Then I added DEPENDS =3D "python3-cffi" to python3-psy=
copg2cffi recipe but failed with same error, I tried to rename the python3-=
cffi to just cffi but same error.<br /><br />What I'm missing ?<br />Thanks=
 ,Talel

--LROpzXKZVTBRye60DEXk--
