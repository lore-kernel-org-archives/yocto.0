Return-Path: <sebastianpetersen84@yahoo.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA0BAC7EE23
	for <webhook@archiver.kernel.org>; Mon, 27 Feb 2023 16:56:43 +0000 (UTC)
Subject: Including custom camera driver and libcamera in yocto image for raspberry pi 4 raspberrypi
To: yocto@lists.yoctoproject.org
From: "punctuation" <sebastianpetersen84@yahoo.dk>
X-Originating-Location: Norrebro, Capital Region, DK (87.116.45.4)
X-Originating-Platform: Linux Firefox 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Feb 2023 08:56:41 -0800
Message-ID: <WxLb.1677517001045656777.nUB1@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="OQPhDlgtpE8O55ovQFRI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Feb 2023 16:56:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59311

--OQPhDlgtpE8O55ovQFRI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Yocto community

I have a custom camera driver and device tree that I include in my Yocto bu=
ild for a raspberry pi 4 along with Libcamera.

The camera module has been tested on a RPi with Raspbian OS and it works fi=
ne there. I have a custom camera_helper and tuning file, that also works as=
 intended (tested using the Libcamera cam app to stream to display).

The camera module seems to be loaded correctly through the Yocto image on t=
he raspberry pi 4, as it is listed using "lsmod" and video0 is also there u=
sing v4l2-ctl commands.

But using the cam app "cam -l" to list camera modules, it returns no camera=
 modules are found. I include Libcamera as such:

IMAGE_INSTALL +=3D "libcamera"

And I use an append file to copy my meson build file for the camera helper =
and tuning file along with the files themselves:

FILESEXTRAPATHS:prepend :=3D " ${THISDIR} /files:"

SRC_URI +=3D "file://camHelper/cam_helper_myCam.cpp \
file://camHelper/meson.build \
file://tuningFile/ myCam.json \
file://tuningFile/meson.build"

do_configure:append() {
cp $ {WORKDIR} / camHelper / cam_helper_myCam.cpp $ {S} / src / ipa / raspb=
errypi /
cp $ {WORKDIR} / camHelper / meson.build $ {S} / src / ipa / raspberrypi /
cp $ {WORKDIR} / tuningFile / myCam.json $ {S} / src / ipa / raspberrypi / =
data /
cp $ {WORKDIR} / tuningFile / meson.build $ {S} / src / ipa / raspberrypi /=
 data /
}

I see that the files appear in the correct location in my build, but for so=
me reason Libcamera doesn't find my camera device. Is there something I am =
missing in my configuration file?

Kind regards

--OQPhDlgtpE8O55ovQFRI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Dear Yocto community<br /><br />I have a custom camera driver and device=
 tree that I include in my Yocto build for a raspberry pi 4 along with Libc=
amera.</p>
<p>The camera module has been tested on a RPi with Raspbian OS and it works=
 fine there. I have a custom camera_helper and tuning file, that also works=
 as intended (tested using the Libcamera cam app to stream to display).<br =
/><br />The camera module seems to be loaded correctly through the Yocto im=
age on the raspberry pi 4, as it is listed using "lsmod" and video0 is also=
 there using v4l2-ctl commands.<br /><br />But using the cam app "cam -l" t=
o list camera modules, it returns no camera modules are found. I include Li=
bcamera as such:</p>
<p>IMAGE_INSTALL +=3D "libcamera"<br /><br />And I use an append file to co=
py my meson build file for the camera helper and tuning file along with the=
 files themselves:</p>
<div style=3D"color: #ffffff; background-color: #1f1f1f; font-family: 'Droi=
d Sans Mono', 'monospace', monospace; font-weight: normal; font-size: 14px;=
 line-height: 19px; white-space: pre;">
<div><span style=3D"color: #9cdcfe;">FILESEXTRAPATHS:prepend</span><span st=
yle=3D"color: #ffffff;"> </span><span style=3D"color: #d4d4d4;">:=3D</span>=
<span style=3D"color: #ffffff;"> </span><span style=3D"color: #ce9178;">"</=
span><span style=3D"color: #569cd6;">${THISDIR}</span><span style=3D"color:=
 #ce9178;">/files:"</span></div>
<br />
<div><span style=3D"color: #9cdcfe;">SRC_URI</span><span style=3D"color: #f=
fffff;"> </span><span style=3D"color: #d4d4d4;">+=3D</span><span style=3D"c=
olor: #ffffff;"> </span><span style=3D"color: #ce9178;">"file://camHelper/c=
am_helper_myCam.cpp \</span></div>
<div><span style=3D"color: #ce9178;"> file://camHelper/meson.build \</span>=
</div>
<div><span style=3D"color: #ce9178;"> file://tuningFile/</span><span style=
=3D"color: #ce9178;">myCam</span><span style=3D"color: #ce9178;">.json \</s=
pan></div>
<div><span style=3D"color: #ce9178;"> file://tuningFile/meson.build"</span>=
</div>
<br />
<div><span style=3D"color: #ffffff;">do_configure:append() {</span></div>
<div><span style=3D"color: #ffffff;"> cp </span><span style=3D"color: #f447=
47;">$</span><span style=3D"color: #ffffff;">{WORKDIR}</span><span style=3D=
"color: #d4d4d4;">/</span><span style=3D"color: #ffffff;">camHelper</span><=
span style=3D"color: #d4d4d4;">/</span><span style=3D"color: #ffffff;">cam_=
helper_myCam.cpp </span><span style=3D"color: #f44747;">$</span><span style=
=3D"color: #ffffff;">{S}</span><span style=3D"color: #d4d4d4;">/</span><spa=
n style=3D"color: #ffffff;">src</span><span style=3D"color: #d4d4d4;">/</sp=
an><span style=3D"color: #ffffff;">ipa</span><span style=3D"color: #d4d4d4;=
">/</span><span style=3D"color: #ffffff;">raspberrypi</span><span style=3D"=
color: #d4d4d4;">/</span></div>
<div><span style=3D"color: #ffffff;"> cp </span><span style=3D"color: #f447=
47;">$</span><span style=3D"color: #ffffff;">{WORKDIR}</span><span style=3D=
"color: #d4d4d4;">/</span><span style=3D"color: #ffffff;">camHelper</span><=
span style=3D"color: #d4d4d4;">/</span><span style=3D"color: #ffffff;">meso=
n.build </span><span style=3D"color: #f44747;">$</span><span style=3D"color=
: #ffffff;">{S}</span><span style=3D"color: #d4d4d4;">/</span><span style=
=3D"color: #ffffff;">src</span><span style=3D"color: #d4d4d4;">/</span><spa=
n style=3D"color: #ffffff;">ipa</span><span style=3D"color: #d4d4d4;">/</sp=
an><span style=3D"color: #ffffff;">raspberrypi</span><span style=3D"color: =
#d4d4d4;">/</span></div>
<div><span style=3D"color: #ffffff;"> cp </span><span style=3D"color: #f447=
47;">$</span><span style=3D"color: #ffffff;">{WORKDIR}</span><span style=3D=
"color: #d4d4d4;">/</span><span style=3D"color: #ffffff;">tuningFile</span>=
<span style=3D"color: #d4d4d4;">/</span><span style=3D"color: #ffffff;">myC=
am.json </span><span style=3D"color: #f44747;">$</span><span style=3D"color=
: #ffffff;">{S}</span><span style=3D"color: #d4d4d4;">/</span><span style=
=3D"color: #ffffff;">src</span><span style=3D"color: #d4d4d4;">/</span><spa=
n style=3D"color: #ffffff;">ipa</span><span style=3D"color: #d4d4d4;">/</sp=
an><span style=3D"color: #ffffff;">raspberrypi</span><span style=3D"color: =
#d4d4d4;">/</span><span style=3D"color: #ffffff;">data</span><span style=3D=
"color: #d4d4d4;">/</span></div>
<div><span style=3D"color: #ffffff;"> cp </span><span style=3D"color: #f447=
47;">$</span><span style=3D"color: #ffffff;">{WORKDIR}</span><span style=3D=
"color: #d4d4d4;">/</span><span style=3D"color: #ffffff;">tuningFile</span>=
<span style=3D"color: #d4d4d4;">/</span><span style=3D"color: #ffffff;">mes=
on.build </span><span style=3D"color: #f44747;">$</span><span style=3D"colo=
r: #ffffff;">{S}</span><span style=3D"color: #d4d4d4;">/</span><span style=
=3D"color: #ffffff;">src</span><span style=3D"color: #d4d4d4;">/</span><spa=
n style=3D"color: #ffffff;">ipa</span><span style=3D"color: #d4d4d4;">/</sp=
an><span style=3D"color: #ffffff;">raspberrypi</span><span style=3D"color: =
#d4d4d4;">/</span><span style=3D"color: #ffffff;">data</span><span style=3D=
"color: #d4d4d4;">/</span></div>
<div><span style=3D"color: #ffffff;">}</span></div>
</div>
<p><br />I see that the files appear in the correct location in my build, b=
ut for some reason Libcamera doesn't find my camera device. Is there someth=
ing I am missing in my configuration file?<br /><br />Kind regards</p>

--OQPhDlgtpE8O55ovQFRI--

