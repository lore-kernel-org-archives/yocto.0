Subject: Unable to add gdbserver to the Yocto build #yocto
To: yocto@lists.yoctoproject.org
From: ashutosh.naik@gmail.com
X-Originating-Location: Windsor, England, GB (79.66.207.132)
X-Originating-Platform: Linux Chrome 92
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 12 Aug 2021 07:28:10 -0700
Message-ID: <nFHq.1628778490742042939.wQz0@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jxhduJsfrrYtDSfpcBB7"

--jxhduJsfrrYtDSfpcBB7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I added the following to EXTRA_IMAGE_FEATURES inside my local.conf,

>=20
> EXTRA_IMAGE_FEATURES =3D "debug-tweaks tools-debug"
> PACKAGECONFIG_remove_pn-gdb =3D "readline"
>=20

I also tried to add the gdbserver package explicitly by adding this to conf=
/local.conf:

>=20
> IMAGE_INSTALL_append =3D " gdbserver"
>=20

However, the build failed with the following error:

>=20
> Collected errors:
> * Solver encountered 1 problem(s):
> * Problem 1/1:
> *=C2=A0 =C2=A0- nothing provides gdbserver needed by
> packagegroup-core-tools-debug-1.0-r3.all
> *
> * Solution 1:
> *=C2=A0 =C2=A0- do not ask to install a package providing
> packagegroup-core-tools-debug
>=20

Would appreciate any help, as I am struggling with this issue for over a da=
y

Thanks
Ash

--jxhduJsfrrYtDSfpcBB7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>&nbsp;</div>
<div>I added the following to EXTRA_IMAGE_FEATURES inside my local.conf,&nb=
sp;</div>
<div>&nbsp;</div>
<blockquote>
<div>EXTRA_IMAGE_FEATURES =3D "debug-tweaks tools-debug"</div>
<div>PACKAGECONFIG_remove_pn-gdb =3D "readline"</div>
</blockquote>
<div>&nbsp;</div>
<div>I also tried to add the gdbserver package explicitly by adding this to=
 conf/local.conf:</div>
<div>&nbsp;</div>
<blockquote>
<div>IMAGE_INSTALL_append =3D " gdbserver"</div>
</blockquote>
<div>&nbsp;</div>
<div>However, the build failed with the following error:</div>
<div>&nbsp;</div>
<blockquote>
<div>Collected errors:</div>
<div>&nbsp;* Solver encountered 1 problem(s):</div>
<div>&nbsp;* Problem 1/1:</div>
<div>&nbsp;*&nbsp; &nbsp;- nothing provides gdbserver needed by packagegrou=
p-core-tools-debug-1.0-r3.all</div>
<div>&nbsp;*&nbsp;</div>
<div>&nbsp;* Solution 1:</div>
<div>&nbsp;*&nbsp; &nbsp;- do not ask to install a package providing packag=
egroup-core-tools-debug</div>
</blockquote>
<div>&nbsp;</div>
<div>Would appreciate any help, as I am struggling with this issue for over=
 a day</div>
<div>&nbsp;</div>
<div>Thanks</div>
<div>Ash</div>

--jxhduJsfrrYtDSfpcBB7--
