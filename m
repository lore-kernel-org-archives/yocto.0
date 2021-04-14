Subject: Cannot execute nodejs
To: yocto@lists.yoctoproject.org
From: "Alessandro Tagliapietra" <tagliapietra.alessandro@gmail.com>
X-Originating-Location: Las Vegas, Nevada, US (72.207.140.105)
X-Originating-Platform: Linux Chrome 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 13 Apr 2021 23:31:21 -0700
Message-ID: <STZO.1618381881072205498.KBTw@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="igvwL4a7wuoyyLhB0ohr"

--igvwL4a7wuoyyLhB0ohr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I've installed nodejs and node-red=C2=A0 by using meta-oe and meta-iot-clo=
ud, with

IMAGE_INSTALL_append =3D " nodejs node-red bash"

it was initially working but then I've got some pseudo aborts that fixed a=
utomatically and then I saw that:
- /usr/bin/node doesn't have the +x flag
- the file is 1.1G big (however the image is 200MB)
- trying to run it says "cannot execute binary file: Exec format error"

any idea why?

Target is=C2=A0core-image-minimal with machine qemuarm.
I've checked the source of the file with `oe-pkgdata-util find-path` it ca=
me from the nodejs recipe. I've also tried bitbake -c clean nodejs and noth=
ing changed

--igvwL4a7wuoyyLhB0ohr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,<br /><br />I've installed nodejs and node-red&nbsp; by using m=
eta-oe and meta-iot-cloud, with<br /><br />IMAGE_INSTALL_append =3D " nodej=
s node-red bash"<br /><br />it was initially working but then I've got some=
 pseudo aborts that fixed automatically and then I saw that:<br />&nbsp;- /=
usr/bin/node doesn't have the +x flag<br />&nbsp;- the file is 1.1G big (ho=
wever the image is 200MB)<br />&nbsp;- trying to run it says "cannot execut=
e binary file: Exec format error"<br /><br />any idea why?<br /><br />Targe=
t is&nbsp;core-image-minimal with machine qemuarm.<br />I've checked the so=
urce of the file with `oe-pkgdata-util find-path` it came from the nodejs r=
ecipe. I've also tried bitbake -c clean nodejs and nothing changed

--igvwL4a7wuoyyLhB0ohr--
