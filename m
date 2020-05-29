Subject: Yocto,core-image-minimal for RPI4 #linux #yocto
To: yocto@lists.yoctoproject.org
From: "Pankaj  Vinadrao Joshi" <pankaj.vj@exaleapsemi.com>
X-Originating-Location: Pune, Maharashtra, IN (49.35.65.15)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 29 May 2020 00:18:24 -0700
Message-ID: <nZrM.1590736704865454092.xcuh@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xRr1gNw6QQGAkFxWOgvq"

--xRr1gNw6QQGAkFxWOgvq
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I have built the image for raspberrypi4 and i have got the following image=
s

core-image-minimal.env =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0rpi-ft5406-1-4.19.120+git0+9da67d7329-r0-raspberrypi4-=
20200521111428.dtbo
core-image-minimal-raspberrypi4-20200518130120.rootfs.ext3 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0rpi-ft5406.dtbo
core-image-minimal-raspberrypi4-20200518130120.rootfs.manifest =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rpi-ft54=
06-raspberrypi4.dtbo

core-image-minimal-raspberrypi4-20200518130120.rootfs.tar.bz2 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rpi-hwu=
p-image.env

core-image-minimal-raspberrypi4-20200518130120.rootfs.wic.bmap =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rpi-hwup=
-image-

raspberrypi4-20200521111428.rootfs.ext3

core-image-minimal-raspberrypi4-20200518130120.rootfs.wic.bz2 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rpi-hwu=
p-image-

raspberrypi4-20200521111428.rootfs.manifest

core-image-minimal-raspberrypi4-20200518130120.testdata.json =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rpi-h=
wup-image-

raspberrypi4-20200521111428.rootfs.tar.bz2

core-image-minimal-raspberrypi4.ext3 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rpi-hwup-image-=
raspberrypi4-

20200521111428.rootfs.wic.bmap

core-image-minimal-raspberrypi4.manifest =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rpi-hwup-image-raspberrypi=
4-

20200521111428.rootfs.wic.bz2

core-image-minimal-raspberrypi4.tar.bz2
core-image-minimal-raspberrypi4.testdata.json
core-image-minimal-raspberrypi4.wic.bmap

core-image-minimal-raspberrypi4.wic.bz2

and=C2=A0 i am trying to copy ** core-image-minimal-raspberrypi4.wic.bz2 *=
by using*
**
*$sudo dd if=3Dcore-image-minimal-raspberrypi4.wic.bz2 of=3D/dev/sdb*
**
but my image is not getting copied into sd card(used two sd cards ,tried f=
ormatting with FAT,Linux),i am missing anything ,do i need to copy anything=
 else with this core-image-minimal.
which extension of image i should use to bringup my RPI4??
**
Thanks!

--xRr1gNw6QQGAkFxWOgvq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric:=
 inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-siz=
e: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetica, sans=
-serif; vertical-align: baseline; color: black;">Hi,</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif; vertical-align: baseline; color: black;">I have built the image fo=
r raspberrypi4 and i have got the following images&nbsp;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif; vertical-align: baseline; color: black;">&nbsp;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif; vertical-align: baseline; color: black;">&nbsp;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif; vertical-align: baseline; color: black;"><span style=3D"margin: 0p=
x; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; colo=
r: inherit;">core-image-minimal.env &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;rpi-ft5406-1-4.19.120+git0+9da67d7329-r0-raspber=
rypi4-20200521111428.dtbo<br /></span>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">core-image-minimal-raspberrypi4-20200=
518130120.rootfs.ext3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;rpi-ft5406.dtbo</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">core-image-minimal-raspberrypi4-20200=
518130120.rootfs.manifest &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;rpi-ft5406-raspberrypi4.dtbo</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">core-image-minimal-raspberrypi4-20200=
518130120.rootfs.tar.bz2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; rpi-hwup-image.env</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">core-image-minimal-raspberrypi4-20200=
518130120.rootfs.wic.bmap &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;rpi-hwup-image-</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">raspberrypi4-20200521111428.rootfs.ex=
t3</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">core-image-minimal-raspberrypi4-20200=
518130120.rootfs.wic.bz2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; rpi-hwup-image-</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">raspberrypi4-20200521111428.rootfs.ma=
nifest</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">core-image-minimal-raspberrypi4-20200=
518130120.testdata.json &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp;rpi-hwup-image-</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">raspberrypi4-20200521111428.rootfs.ta=
r.bz2</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">core-image-minimal-raspberrypi4.ext3 =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp;rpi-hwup-image-raspberrypi4-</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">20200521111428.rootfs.wic.bmap</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">core-image-minimal-raspberrypi4.manif=
est &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;rpi-hwup-image-raspberrypi4-</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">20200521111428.rootfs.wic.bz2</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">&nbsp;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">core-image-minimal-raspberrypi4.tar.b=
z2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">core-image-minimal-raspberrypi4.testd=
ata.json&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</d=
iv>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">core-image-minimal-raspberrypi4.wic.b=
map&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;">&nbsp;</div>
<span style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vert=
ical-align: baseline; color: inherit;">core-image-minimal-raspberrypi4.wic.=
bz2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</=
span></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif; vertical-align: baseline; color: black;"><span style=3D"margin: 0p=
x; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; colo=
r: inherit;">&nbsp;</span></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif; vertical-align: baseline; color: black;">and&nbsp; i am trying to =
copy<strong>&nbsp;</strong><span style=3D"font-weight: bold;">core-image-mi=
nimal-raspberrypi4.wic.bz2</span><strong><span style=3D"margin: 0px; paddin=
g: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weigh=
t: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit=
; vertical-align: baseline; color: inherit;">&nbsp;by using</span></strong>=
</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif; vertical-align: baseline; color: black;"><strong>&nbsp;</strong></=
div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif; vertical-align: baseline; color: black;"><span style=3D"margin: 0p=
x; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; colo=
r: inherit;"><strong>$sudo dd if=3Dcore-image-minimal-raspberrypi4.wic.bz2 =
of=3D/dev/sdb&nbsp;</strong></span></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif; vertical-align: baseline; color: black;"><span style=3D"margin: 0p=
x; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; colo=
r: inherit;"><strong>&nbsp;</strong></span></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif; vertical-align: baseline; color: black;"><span style=3D"margin: 0p=
x; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; colo=
r: inherit;">but my image is not getting copied into sd card(used two sd ca=
rds ,tried formatting with FAT,Linux),i am missing anything ,do i need to c=
opy anything else with this core-image-minimal.</span></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif; vertical-align: baseline; color: black;"><span style=3D"margin: 0p=
x; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; colo=
r: inherit;">which extension of image i should use to bringup my RPI4??</sp=
an></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif; vertical-align: baseline; color: black;"><span style=3D"margin: 0p=
x; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; colo=
r: inherit;"><strong>&nbsp;</strong></span></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric=
: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetica, san=
s-serif; vertical-align: baseline; color: black;"><span style=3D"margin: 0p=
x; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; colo=
r: inherit;">Thanks!</span></div>

--xRr1gNw6QQGAkFxWOgvq--
