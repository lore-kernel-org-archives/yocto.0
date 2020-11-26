Subject: Use of USERADD_PACKAGES with out recipe package files
To: yocto@lists.yoctoproject.org
From: andrew.loader@nz.abb.com
X-Originating-Location: Glen Iris, Victoria, AU (103.111.183.63)
X-Originating-Platform: Windows Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 25 Nov 2020 19:21:21 -0800
Message-ID: <iKnI.1606360881941674696.AYmG@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ey3Una5SMxRvhqCvlPlp"

--ey3Una5SMxRvhqCvlPlp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have for an image append which I would like to add some users to but I do=
 not want to add any files as part of the package
so I=C2=A0 have a layer which contains a recipe called user-config-0.1.bb =
which has a useradd package USERADD_PACKAGES =3D " ${PN}-user-sys "=C2=A0 .=
 then I have a USERADD_PARAM_${PN}-user-sys =3D " .."
which adds some users not shown and I also have an add group param as well=
 not shown
I declare the package as=C2=A0 PACKAGES +=3D "${PN}-user-sys" but do not s=
et the package files because i do not want any
and in my image bbappend file I install the package=C2=A0 IMAGE_INSTALL_ap=
pend +=3D "user-config-user-sys"
The recipe builds but does not create a package and the do-rootfs cannot f=
ind the package=C2=A0 and fails with

No match for argument: user-config-user-sys
Error: Unable to find a match

well that seems to be the meaningful part I guess

How do i get yocto to generate a package which only contains user group cr=
eation part which can then be installed in my image
I have added uses and groups before with files with out a problem, also th=
is is greatly simplified but still shows the core problem

--ey3Una5SMxRvhqCvlPlp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have for an image append which I would like to add some users to but I do=
 not want to add any files as part of the package<br />so I&nbsp; have a la=
yer which contains a recipe called user-config-0.1.bb which has a useradd p=
ackage USERADD_PACKAGES =3D " ${PN}-user-sys "&nbsp; . then I have a USERAD=
D_PARAM_${PN}-user-sys =3D " .."<br />which adds some users not shown and I=
 also have an add group param as well not shown<br />I declare the package =
as&nbsp; PACKAGES +=3D "${PN}-user-sys" but do not set the package files be=
cause i do not want any&nbsp;<br />and in my image bbappend file I install =
the package&nbsp; IMAGE_INSTALL_append +=3D "user-config-user-sys"&nbsp;<br=
 />The recipe builds but does not create a package and the do-rootfs cannot=
 find the package&nbsp; and fails with<br /><br />
<div>No match for argument: user-config-user-sys</div>
<div>Error: Unable to find a match<br /><br />well that seems to be the me=
aningful part I guess<br /><br />How do i get yocto to generate a package w=
hich only contains user group creation part which can then be installed in =
my image<br />I have added uses and groups before with files with out a pro=
blem, also this is greatly simplified but still shows the core problem&nbsp=
;<br /><br /></div>

--ey3Una5SMxRvhqCvlPlp--
