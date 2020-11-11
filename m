Subject: How to create new variable in Yocto to use it in a recipe ?
To: yocto@lists.yoctoproject.org
From: "Bel Hadj Salem Talel" <bhstalel@gmail.com>
X-Originating-Location: TN (197.27.101.41)
X-Originating-Platform: Linux Firefox 82
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 11 Nov 2020 00:07:09 -0800
Message-ID: <0p5R.1605082029557571961.5t6o@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ejDmSxbLodXTlySOPlN5"

--ejDmSxbLodXTlySOPlN5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I'm not trying to export or create a variable inside a recipe because that=
's easy and not my case.
But I want to create a variable that a user can define in local.conf or in=
 other conf files and a recipe that checks the value of that variable and d=
o some stuff with it like:
python (){
a =3D d.getVar('MY_VARIABLE' or '')
}
How can I do this?
Thanks, Talel

--ejDmSxbLodXTlySOPlN5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,<br /><br />I'm not trying to export or create a variable inside a r=
ecipe because that's easy and not my case.<br />But I want to create a vari=
able that a user can define in local.conf or in other conf files and a reci=
pe that checks the value of that variable and do some stuff with it like:<b=
r />python (){<br />&nbsp;a =3D d.getVar('MY_VARIABLE' or '')<br />}<br />H=
ow can I do this?<br />Thanks, Talel

--ejDmSxbLodXTlySOPlN5--
