Return-Path: <renato.mendes.pes@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83660C4167B
	for <webhook@archiver.kernel.org>; Wed,  6 Dec 2023 21:50:01 +0000 (UTC)
Subject: How to handle user network configuration on a OTA environment
To: yocto@lists.yoctoproject.org
From: "Renato Mendes" <renato.mendes.pes@gmail.com>
X-Originating-Location: Petrópolis, Rio de Janeiro, BR (170.254.80.219)
X-Originating-Platform: Mac Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 06 Dec 2023 13:49:53 -0800
Message-ID: <25Sg.1701899393685537223.7B9d@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="oH7AxkTGdNzUDtNBGaDA"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 21:50:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61819

--oH7AxkTGdNzUDtNBGaDA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Using a Raspberry Pi Zero W, I have build an image with the following layer=
s:

# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.con=
f
# changes incompatibly
POKY_BBLAYERS_CONF_VERSION =3D "2"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
/home/release_1/src/poky/meta \
/home/release_1/src/poky/meta-poky \
/home/release_1/src/poky/meta-yocto-bsp \
/home/release_1/src/meta-openembedded/meta-oe \
/home/release_1/src/meta-openembedded/meta-python \
/home/release_1/src/meta-openembedded/meta-multimedia \
/home/release_1/src/meta-openembedded/meta-networking \
/home/release_1/src/meta-raspberrypi \
/home/release_1/src/meta-mender/meta-mender-core \
/home/release_1/src/meta-mender/meta-mender-raspberrypi \
"

I'm using Mender for OTA.

The image is fine and runs Yocto Distro at my Raspi.

As this is my first project using OTA, I'm now about to setup networking. I=
've build a custom captive portal using Nodejs what will allow user to choo=
se the WiFi network.

Here is the logic I need:
a) If there is network configuration stored (in a file, ie), device goes to=
 Access Point mode with fixed IP (ex: 192.168.0.1). Then the user will conn=
ect, choose WiFi network and save it to a file

b) If there is WiFi configuration, will connect automatically

c) If user reset the device (a physical push button), the WiFi configuratio=
n is erased and device goes back to (a) mode

My questions are how to exactly handle the desired scenario. My doubts:

a) How will the device knows on boot if there is a network configuration fi=
le to load

b) How can the device choose between AP ou WiFi mode based on the existance=
 of the given file

c) How will this file behave on a OTA update (Mender.io says, must be store=
d at /media/ directory to be preserved on updates)

Thanks for helping... I've read several different articles for some days an=
d I'm very confused on where to start from...

--oH7AxkTGdNzUDtNBGaDA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Using a Raspberry Pi Zero W, I have build an image with the following layer=
s:<br /><br />
<div style=3D"color: #cccccc; background-color: #1f1f1f; font-family: Menlo=
, Monaco, 'Courier New', monospace; font-size: 12px; line-height: 18px; whi=
te-space: pre;">
<div><span style=3D"color: #6a9955;"># POKY_BBLAYERS_CONF_VERSION is increa=
sed each time build/conf/bblayers.conf</span></div>
<div><span style=3D"color: #6a9955;"># changes incompatibly</span></div>
<div>POKY_BBLAYERS_CONF_VERSION =3D <span style=3D"color: #ce9178;">"2"</sp=
an></div>
<br />
<div>BBPATH =3D <span style=3D"color: #ce9178;">"${TOPDIR}"</span></div>
<div>BBFILES ?=3D <span style=3D"color: #ce9178;">""</span></div>
<br />
<div>BBLAYERS ?=3D <span style=3D"color: #ce9178;">" \</span></div>
<div><span style=3D"color: #ce9178;"> /home/release_1/src/poky/meta \</span=
></div>
<div><span style=3D"color: #ce9178;"> /home/release_1/src/poky/meta-poky \<=
/span></div>
<div><span style=3D"color: #ce9178;"> /home/release_1/src/poky/meta-yocto-b=
sp \</span></div>
<div><span style=3D"color: #ce9178;"> /home/release_1/src/meta-openembedded=
/meta-oe \</span></div>
<div><span style=3D"color: #ce9178;"> /home/release_1/src/meta-openembedded=
/meta-python \</span></div>
<div><span style=3D"color: #ce9178;"> /home/release_1/src/meta-openembedded=
/meta-multimedia \</span></div>
<div><span style=3D"color: #ce9178;"> /home/release_1/src/meta-openembedded=
/meta-networking \</span></div>
<div><span style=3D"color: #ce9178;"> /home/release_1/src/meta-raspberrypi =
\</span></div>
<div><span style=3D"color: #ce9178;"> /home/release_1/src/meta-mender/meta-=
mender-core \</span></div>
<div><span style=3D"color: #ce9178;"> /home/release_1/src/meta-mender/meta-=
mender-raspberrypi \</span></div>
<div><span style=3D"color: #ce9178;"> "</span></div>
</div>
<br />I'm using Mender for OTA.<br /><br />The image is fine and runs Yocto=
 Distro at my Raspi.<br /><br />As this is my first project using OTA, I'm =
now about to setup networking. I've build a custom captive portal using Nod=
ejs what will allow user to choose the WiFi network.<br /><br />Here is the=
 logic I need:<br />a) If there is network configuration stored (in a file,=
 ie), device goes to Access Point mode with fixed IP (ex: 192.168.0.1). The=
n the user will connect, choose WiFi network and save it to a file<br /><br=
 />b) If there is WiFi configuration, will connect automatically<br /><br /=
>c) If user reset the device (a physical push button), the WiFi configurati=
on is erased and device goes back to (a) mode<br /><br />My questions are h=
ow to exactly handle the desired scenario. My doubts:<br /><br />a) How wil=
l the device knows on boot if there is a network configuration file to load=
<br /><br />b) How can the device choose between AP ou WiFi mode based on t=
he existance of the given file&nbsp;<br /><br />c) How will this file behav=
e on a OTA update (Mender.io says, must be stored at /media/ directory to b=
e preserved on updates)<br /><br />Thanks for helping... I've read several =
different articles for some days and I'm very confused on where to start fr=
om...<br />

--oH7AxkTGdNzUDtNBGaDA--

