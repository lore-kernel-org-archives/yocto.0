Subject: EXTRA_OECMAKE options are ignored #sdk #yocto
To: yocto@lists.yoctoproject.org
From: "Armando Hernandez" <j.armandohernandez.j@gmail.com>
X-Originating-Location: Frankfurt am Main, Hesse, DE (62.4.90.5)
X-Originating-Platform: Linux Chrome 79
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 11 Mar 2020 03:37:58 -0700
Message-ID: <j1dc.1583923078236353137.AMYz@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="be9YywydXrWpVvxfuLcI"

--be9YywydXrWpVvxfuLcI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I built an eSDK.
Now I'm using devtool add to create a hello world recipe.
Once the recipe was in place, I added some cmake optoins via EXTRA_OECMAKE=
 in htis way:
EXTRA_OECMAKE +=3D "-DCMAKE_FIND_ROOT_PATH_MODE=3DBOTH \
-CMAKE_FIND_ROOT_PATH=3D/home/user/SDK/sysroots/x86_64-pokysdk-linux \
"

Now, the problem is that after running devtool=C2=A0 build test-hello (whe=
re test-hello is my recipe as you might have assumed), these variables are =
overwritten with other values.

How can I successfully pass the correct cmake options via EXTRA_OECMAKE on=
 the recipe?

--be9YywydXrWpVvxfuLcI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I built an eSDK.<br />Now I'm using <span style=3D"backgroun=
d-color: #ffff99;">devtool add</span> to create a hello world recipe.<br />=
Once the recipe was in place, I added some cmake optoins via&nbsp;<span sty=
le=3D"background-color: #ffff99;">EXTRA_OECMAKE</span> in htis way:<br />EX=
TRA_OECMAKE +=3D "-DCMAKE_FIND_ROOT_PATH_MODE=3DBOTH \<br />&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-CMAKE_FIND_ROOT_PATH=
=
=3D/home/user/SDK/sysroots/x86_64-pokysdk-linux \<br />&nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"<br /><br />Now, the pro=
blem is that after running <span style=3D"color: #000000; background-color:=
 #ffff99;">devtool&nbsp; build test-hello</span> (where test-hello is my re=
cipe as you might have assumed), these variables are overwritten with other=
 values.<br /><br />How can I successfully pass the correct cmake options v=
ia EXTRA_OECMAKE on the recipe?<br />

--be9YywydXrWpVvxfuLcI--
