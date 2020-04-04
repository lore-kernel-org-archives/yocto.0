Subject: Zeus - Post Build folder corruption #yocto
To: yocto@lists.yoctoproject.org
From: "Joel Winarske" <joel.winarske@gmail.com>
X-Originating-Location: Seattle, Washington, US (71.212.126.150)
X-Originating-Platform: Linux Firefox 74
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 03 Apr 2020 21:40:44 -0700
Message-ID: <9WRZ.1585975244346687298.cmsV@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="r8b8Fm1tyngOyFGFAJy8"

--r8b8Fm1tyngOyFGFAJy8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Has anyone seen this post build?=C2=A0 Where there are folders created of r=
andom items?=C2=A0 Some folders have a path deep of 5+.

joel@hammer:/media/joel/SolidState/rpi/rpi4-64$ ls
'!=3D' =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 'os.path.join('\'''
bitbake-cookerdaemon.log =C2=A0'os.path.normpath(d.getVar('\''S'\''))'
cache =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 'os.path.normpath(d.getVar('\''WORKDIR'\''))'
conf =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0''\''patches'\'')}'
'${@d.getVar('\''S'\'')' =C2=A0 =C2=A0sstate-cache
else =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 tmp
if

--r8b8Fm1tyngOyFGFAJy8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"gmail-iw">Has anyone seen this post build?&nbsp; Where there ar=
e folders created of random items?&nbsp; Some folders have a path deep of 5=
+.</p>
<div>&nbsp;</div>
<div>joel@hammer:/media/joel/SolidState/rpi/rpi4-64$ ls<br />'!=3D' &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 'os.=
path.join('\'''<br />&nbsp;bitbake-cookerdaemon.log &nbsp;'os.path.normpath=
(d.getVar('\''S'\''))'<br />&nbsp;cache &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 'os.path.normpath(d.getVar('\''WORKDIR'\=
''))'<br />&nbsp;conf &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;''\''patches'\'')}'<br />'${@d.getVar('\''S'\'')' &n=
bsp; &nbsp;sstate-cache<br />&nbsp;else &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; tmp<br />&nbsp;if</div>

--r8b8Fm1tyngOyFGFAJy8--
