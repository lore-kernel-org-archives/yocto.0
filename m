Subject: #yocto [meta-raspberrypi] Unused memory never used
To: yocto@lists.yoctoproject.org
From: markus4dev@gmail.com
X-Originating-Location: Rimbo, Stockholm, SE (195.178.177.158)
X-Originating-Platform: Mac Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 17 Mar 2020 07:45:16 -0700
Message-ID: <aJc0.1584456316433735060.D9MZ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="FmYmo6LXD5VuYmfipDnk"

--FmYmo6LXD5VuYmfipDnk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi!

I am building a solution on top of raspberrypi 3a+. I am having problem th=
at around 50% of available memory never gets used by the node applications =
and instead the kswapd kicks in and after a while the rpi doesn=C2=B4t resp=
ond anymore. I seems that 50% of the available memory is locked. I have tri=
ed the apps on the raspbian buster image and the memory is allocated as exp=
ected.

My yocto setup is like this:

- meta-oe
- meta-python
- meta-multimedia
- meta-networking
- meta-raspberrypi
- meta-mender-core
- meta-mender-raspberrypi
- my-custom-layer

I have added a little swap file (4MB) just in case kswapd needs it (my goa=
l is to remove that since I don=C2=B4t want to get my SD card destroyed). I=
 have added gpu_mem=3D16 to restrict memory allocation from GPU. I don't us=
e the camera (not activated VIDEO_CAMERA =3D "1")

What am I missing?

Regards,
Markus

--FmYmo6LXD5VuYmfipDnk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi!<br /><br />I am building a solution on top of raspberrypi 3a+. I am hav=
ing problem that around 50% of available memory never gets used by the node=
 applications and instead the kswapd kicks in and after a while the rpi doe=
sn&acute;t respond anymore. I seems that 50% of the available memory is loc=
ked. I have tried the apps on the raspbian buster image and the memory is a=
llocated as expected.&nbsp;&nbsp;<br /><br />My yocto setup is like this:<b=
r /><br />
<div>- meta-oe</div>
<div>- meta-python</div>
<div>- meta-multimedia</div>
<div>- meta-networking</div>
<div>- meta-raspberrypi</div>
<div>- meta-mender-core</div>
<div>- meta-mender-raspberrypi<br />- my-custom-layer</div>
<br />I have added a little swap file (4MB) just in case kswapd needs it (=
my goal is to remove that since I don&acute;t want to get my SD card destro=
yed). I have added gpu_mem=3D16 to restrict memory allocation from GPU. I d=
on't use the camera (not activated <span class=3D"n" style=3D"color: #40404=
0; font-family: SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono',=
 'Courier New', Courier, monospace; font-size: 12px;">VIDEO_CAMERA</span><s=
pan style=3D"background-color: #f5f5f5; color: #404040; font-family: SFMono=
-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', Courie=
r, monospace; font-size: 12px;"> </span><span class=3D"o" style=3D"font-fam=
ily: SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier N=
ew', Courier, monospace; font-size: 12px; color: #666666;">=3D</span><span =
style=3D"background-color: #f5f5f5; color: #404040; font-family: SFMono-Reg=
ular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', Courier, m=
onospace; font-size: 12px;"> </span><span class=3D"s2" style=3D"font-family=
: SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New'=
, Courier, monospace; font-size: 12px; color: #4070a0;">"1")</span><br /><b=
r />What am I missing?&nbsp;<br /><br />Regards,<br />Markus

--FmYmo6LXD5VuYmfipDnk--
