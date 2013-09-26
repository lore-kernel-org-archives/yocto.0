Return-Path: <diego.gonzalez@horus.es>
Received: from correo.horus.es (correo.horus.es [2.139.157.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63CE0E01637
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 01:14:21 -0700 (PDT)
Received: from horus27 (127.0.0.1) by horus27 (Axigen) with ESMTPSA id 1657CD; 
	Thu, 26 Sep 2013 10:14:15 +0200
Received: from [172.30.250.254] by horus.es with HTTP;
	Thu, 26 Sep 2013 10:14:15 +0200
From: Diego Gonzalez <diego.gonzalez@horus.es>
Date: Thu, 26 Sep 2013 10:14:15 +0200
X-Mailer: Axigen WebMail
To: yocto@yoctoproject.org
Message-ID: <1380183255689466500@horus.es>
Importance: Normal
MIME-Version: 1.0
X-AxigenVirus-Level: 1
X-AxigenSpam-Level: 6
Subject: Gstreamer mfw_isink
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 26 Sep 2013 08:14:24 -0000
Content-Type: multipart/alternative;
	boundary="===axigen=2295045613682705478358131940253947767513=axigen==="

--===axigen=2295045613682705478358131940253947767513=axigen===
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hello,

I'm working with gstreamer using fsl-image-gui  and I tried  the next tutor=
ial (Multi-Overlay) https://community.freescale.com/docs/DOC-93788  . Howev=
er when I try to use mfw_isink,  gstreamer tells me :

WARNING: erroneous pipeline: no element "mfw_isink"

So if I inspect (gst-inspect | grep "isink"), you'll see this element is no=
t installed:

alsa:  alsasink: Audio sink (ALSA)
soup:  souphttpclientsink: HTTP client sink
xvimagesink:  xvimagesink: Video sink
playback:  playsink: Player Sink
gio:  giosink: GIO sink
gio:  giostreamsink: GIO stream sink
autodetect:  autovideosink: Auto video sink
autodetect:  autoaudiosink: Auto audio sink
v4lsink.imx:  mfw_v4lsink: v4l2 video sink
coreelements:  fakesink: Fake Sink
coreelements:  fdsink: Filedescriptor Sink
coreelements:  filesink: File Sink
tcp:  tcpclientsink: TCP client sink
tcp:  tcpserversink: TCP server sink
tcp:  multifdsink: Multi filedescriptor sink
fbdevsink:  fbdevsink: fbdev video sink

How can I add it ? =20

Regards,

Diego Gonz=C3=A1lez Gonz=C3=A1lez

diego.gonzalez@horus.es

--===axigen=2295045613682705478358131940253947767513=axigen===
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html><head><style id=3D"axi-htmleditor-style" type=3D"text/css">p { margin=
: 0px; }</style></head><body style=3D"font-size: 10pt; font-family: Arial; =
background-image: none; background-repeat: repeat; background-attachment: f=
ixed;">Hello,<br><br>I'm working with gstreamer using fsl-image-gui&nbsp; a=
nd I tried&nbsp; the next tutorial (Multi-Overlay) https://community.freesc=
ale.com/docs/DOC-93788&nbsp; . However when I try to use <span style=3D"col=
or: #000000;"><strong>mfw_isink,&nbsp; </strong>gstreamer tells me :<br><br=
>WARNING: erroneous pipeline: no element "mfw_isink"<br><br>So if I inspect=
 (gst-inspect | grep "isink"), you'll see this element is not installed:<br=
><br></span><div class=3D"x-axi-signature">alsa:&nbsp; alsasink: Audio sink=
 (ALSA)<br>soup:&nbsp; souphttpclientsink: HTTP client sink<br>xvimagesink:=
&nbsp; xvimagesink: Video sink<br>playback:&nbsp; playsink: Player Sink<br>=
gio:&nbsp; giosink: GIO sink<br>gio:&nbsp; giostreamsink: GIO stream sink<b=
r>autodetect:&nbsp; autovideosink: Auto video sink<br>autodetect:&nbsp; aut=
oaudiosink: Auto audio sink<br>v4lsink.imx:&nbsp; mfw_v4lsink: v4l2 video s=
ink<br>coreelements:&nbsp; fakesink: Fake Sink<br>coreelements:&nbsp; fdsin=
k: Filedescriptor Sink<br>coreelements:&nbsp; filesink: File Sink<br>tcp:&n=
bsp; tcpclientsink: TCP client sink<br>tcp:&nbsp; tcpserversink: TCP server=
 sink<br>tcp:&nbsp; multifdsink: Multi filedescriptor sink<br>fbdevsink:&nb=
sp; fbdevsink: fbdev video sink<br><br>How can I add it ?&nbsp; <br><strong=
></strong><div class=3D"x-axi-signature" style=3D"; font-size: 10pt; font-f=
amily: Arial;"><br>Regards,<br><br>Diego Gonz=C3=A1lez Gonz=C3=A1lez<br><br=
><div style=3D"text-align: left;"><a id=3D"ext-gen5000" href=3D"mailto:enri=
que.fernandez@horus.es">diego.gonzalez@horus.es</a></div></div></div></body=
></html>

--===axigen=2295045613682705478358131940253947767513=axigen===--
