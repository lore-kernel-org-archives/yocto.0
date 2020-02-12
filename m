Subject: #raspberrypi #yocto Adding delay for initiation / startup of usb connected device
To: yocto@lists.yoctoproject.org
From: markus4dev@gmail.com
X-Originating-Location: Rimbo, Stockholm, SE (195.178.177.158)
X-Originating-Platform: Mac Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 12 Feb 2020 12:44:06 -0800
Message-ID: <Ux8u.1581540246106359347.a7cx@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fYW7l50ry1iGzxgG3vLl"

--fYW7l50ry1iGzxgG3vLl
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi!

I am having problems with my raspberry pi3 a+ yocto thud build when connec=
ting a =C2=A0LTE E3372 modem. Sometimes it works but most of the times the =
startup of the LTE device interfere with services that are started ending u=
p with blocking the raspberry pi.

I want to test to delay the startup of the LTE device with kernel-paramete=
rs similar to the following.

usb-storage.delay_use=3D90

Is it possible to use the RPI_EXTRA_CONFIG variable to add a few line to c=
onfig.txt or are there any other ways to delay the initiation of the lte mo=
dem? If possible, please attach an example.

Thanks,

Markus

--fYW7l50ry1iGzxgG3vLl
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal; =
font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; lin=
e-height: normal; font-family: 'Helvetica Neue'; color: #000000;">Hi!</p>
<p class=3D"p2" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; li=
ne-height: normal; font-family: 'Helvetica Neue'; min-height: 14px; color: =
#000000;">&nbsp;</p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; li=
ne-height: normal; font-family: 'Helvetica Neue'; color: #000000;">I am hav=
ing problems with my raspberry pi3 a+ yocto thud build when connecting a &n=
bsp;LTE E3372 modem. Sometimes it works but most of the times the startup o=
f the LTE device interfere with services that are started ending up with bl=
ocking the raspberry pi.</p>
<p class=3D"p2" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; li=
ne-height: normal; font-family: 'Helvetica Neue'; min-height: 14px; color: =
#000000;">&nbsp;</p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; li=
ne-height: normal; font-family: 'Helvetica Neue'; color: #000000;">I want t=
o test to delay the startup of the LTE device with kernel-parameters simila=
r to the following.</p>
<p class=3D"p2" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; li=
ne-height: normal; font-family: 'Helvetica Neue'; min-height: 14px; color: =
#000000;">&nbsp;</p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; li=
ne-height: normal; font-family: 'Helvetica Neue'; color: #000000;">usb-stor=
age.delay_use=3D90</p>
<p class=3D"p2" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; li=
ne-height: normal; font-family: 'Helvetica Neue'; min-height: 14px; color: =
#000000;">&nbsp;</p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; li=
ne-height: normal; font-family: 'Helvetica Neue'; color: #000000;">Is it po=
ssible to use the RPI_EXTRA_CONFIG variable to add a few line to config.txt=
 or are there any other ways to delay the initiation of the lte modem? If p=
ossible, please attach an example.</p>
<p class=3D"p2" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; li=
ne-height: normal; font-family: 'Helvetica Neue'; min-height: 14px; color: =
#000000;">&nbsp;</p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; li=
ne-height: normal; font-family: 'Helvetica Neue'; color: #000000;">Thanks,<=
/p>
<p class=3D"p1" style=3D"margin-bottom: 0px; font-variant-numeric: normal;=
 font-variant-east-asian: normal; font-stretch: normal; font-size: 12px; li=
ne-height: normal; font-family: 'Helvetica Neue'; color: #000000;">Markus</=
p>

--fYW7l50ry1iGzxgG3vLl--
