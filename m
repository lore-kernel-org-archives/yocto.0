Subject: nativesdk recipe fails to find cmake config file from another recipe/dependency #sdk
To: yocto@lists.yoctoproject.org
From: "Armando Hernandez" <j.armandohernandez.j@gmail.com>
X-Originating-Location: (62.4.90.5)
X-Originating-Platform: Linux Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 21 Feb 2020 05:44:07 -0800
Message-ID: <NKHr.1582292647502040528.ikPU@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qEdAjRShhfvWbvmsxJMG"

--qEdAjRShhfvWbvmsxJMG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have two recipes (let's call them "recipe-A" and "recipe-B").
Both recipes extend the nativesdk class.
recipe-B depends on recipe-A
When building both recipes for target, everything goes well without any is=
sues.
When building the nativesdk corresponding recipes, recipe-B fails during t=
he task do_configure due to the fact that cmake cannot find the package con=
figuration that corresponds to recipe-A.

On recipe-A.bbappend I have the following lines (recipe-A cmake config fil=
e "CommonAPIConfig.cmake" is located under /usr/lib/cmake/CommonAPI):
FILES_${PN}-dev_append_class-nativesdk =3D " ${includedir_native} ${libdir=
_native}"
BBCLASSEXTEND =3D "nativesdk"

Since suche cmake config files was not found, I created a recipe-B.bbappen=
d file with the following content:
EXTRA_OECMAKE_append_class-nativesdk +=3D "-DCMAKE_PREFIX_PATH:PATH=3D${li=
bdir_native}/cmake/CommonAPI"

But I keep getting the same error.

Any hints?

Thank you in advance!

Armando Hernandez.

--qEdAjRShhfvWbvmsxJMG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I have two recipes (let's call them "recipe-A" and "recip=
e-B").<br />Both recipes extend the nativesdk class.<br />recipe-B depends =
on recipe-A<br />When building both recipes for target, everything goes wel=
l without any issues.<br />When building the nativesdk corresponding recipe=
s, recipe-B fails during the task do_configure due to the fact that cmake c=
annot find the package configuration that corresponds to recipe-A.<br /><br=
 />On recipe-A.bbappend I have the following lines (recipe-A cmake config f=
ile "CommonAPIConfig.cmake" is located under /usr/lib/cmake/CommonAPI):
<div style=3D"padding-left: 30px;">FILES_${PN}-dev_append_class-nativesdk =
=
=3D " ${includedir_native} ${libdir_native}"</div>
<div style=3D"padding-left: 30px;">BBCLASSEXTEND =3D "nativesdk"</div>
<br />Since suche cmake config files was not found, I created a recipe-B.b=
bappend file with the following content:<br />
<div style=3D"padding-left: 30px;">EXTRA_OECMAKE_append_class-nativesdk +=
=3D "-DCMAKE_PREFIX_PATH:PATH=3D${libdir_native}/cmake/CommonAPI"</div>
<div><br /><br />But I keep getting the same error.<br /><br />Any hints?<=
br /><br />Thank you in advance!<br /><br />Armando Hernandez.</div>

--qEdAjRShhfvWbvmsxJMG--
