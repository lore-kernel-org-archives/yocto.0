Return-Path: <electronicconsult1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C1EDC77B75
	for <webhook@archiver.kernel.org>; Tue, 23 May 2023 10:36:19 +0000 (UTC)
Subject: Re: [meta-raspberrypi] [meta-qt6] Building qt6 on rpi4
To: yocto@lists.yoctoproject.org
From: "Electronic Consult" <electronicconsult1@gmail.com>
X-Originating-Location: Dublin, Leinster, IE (188.141.96.236)
X-Originating-Platform: Linux Firefox 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 23 May 2023 03:36:18 -0700
References: <CAGUWaEHdxYXe_UT6gVVmb9vKVaQKcJYtbaeU-LPO3hkmCYCmBA@mail.gmail.com>
In-Reply-To: <CAGUWaEHdxYXe_UT6gVVmb9vKVaQKcJYtbaeU-LPO3hkmCYCmBA@mail.gmail.com>
Message-ID: <2433.1684838178751889591@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Ag4vNMzMuWs2pv1QkFFF"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 May 2023 10:36:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60094

--Ag4vNMzMuWs2pv1QkFFF
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Looks like I've got a solution. My qtbase_git.bbappend now contains:

DISTRO_FEATURES:remove:rpi =3D " x11 wayland"
PACKAGECONFIG:append:rpi =3D " accessibility eglfs fontconfig gles2 linuxfb=
 tslib gbm"

& this now results in an output of bitbake -v -c configure qtbase

EGL .................................... yes
OpenVG ................................. no
OpenGL:
Desktop OpenGL ....................... no
OpenGL ES 2.0 ........................ yes
OpenGL ES 3.0 ........................ yes
OpenGL ES 3.1 ........................ yes
OpenGL ES 3.2 ........................ yes
Vulkan ................................. yes
Session Management ..................... yes
Features used by QPA backends:
evdev .................................. yes
libinput ............................... yes
HiRes wheel support in libinput ........ yes
INTEGRITY HID .......................... no
mtdev .................................. no
tslib .................................. yes
xkbcommon .............................. yes
X11 specific:
XLib ................................. yes
XCB Xlib ............................. yes
EGL on X11 ........................... yes
xkbcommon-x11 ........................ yes
xcb-sm ............................... no
QPA backends:
DirectFB ............................... no
EGLFS .................................. yes
EGLFS details:
EGLFS OpenWFD ........................ no
EGLFS i.Mx6 .......................... no
EGLFS i.Mx6 Wayland .................. no
EGLFS RCAR ........................... no
EGLFS EGLDevice ...................... yes
EGLFS GBM ............................ yes
EGLFS VSP2 ........................... no
EGLFS Mali ........................... no
EGLFS Raspberry Pi ................... no
*EGLFS X11 ............................ yes*
LinuxFB ................................ yes
VNC .................................... yes
VK_KHR_display ......................... yes

Which is fairly close to the Qt setup (from here ( https://doc.qt.io/qt-6/c=
onfigure-linux-device.html ) ) of:

EGL .................................... yes
OpenGL:
 Desktop OpenGL ....................... no
 OpenGL ES 2.0 ........................ yes
 OpenGL ES 3.0 ........................ yes
...
evdev .................................. yes
libinput ............................... yes
...
EGLFS .................................. yes
EGLFS details:
 EGLFS OpenWFD ........................ no
 EGLFS i.Mx6 .......................... no
 EGLFS i.Mx6 Wayland .................. no
 EGLFS RCAR ........................... no
 EGLFS EGLDevice ...................... yes
 EGLFS GBM ............................ yes
 EGLFS VSP2 ........................... no
 EGLFS Mali ........................... no
 EGLFS Raspberry Pi ................... no
 *EGLFS X11 ............................ no*
LinuxFB ................................ yes

The only difference is EGLFS X11, how does one remove that?

--Ag4vNMzMuWs2pv1QkFFF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div>Looks like I've got a solution. My qtbase_git.bbappend now contains:</=
div>
<div>&nbsp;</div>
<div>DISTRO_FEATURES:remove:rpi =3D " x11 wayland"<br />PACKAGECONFIG:appen=
d:rpi =3D " accessibility eglfs fontconfig gles2 linuxfb tslib gbm"</div>
<div>&nbsp;</div>
<div>&amp; this now results in an output of bitbake -v -c configure qtbase<=
/div>
<div>&nbsp;</div>
<div>&nbsp;</div>
&nbsp; &nbsp;EGL ..............................<wbr />...... yes<br />&nbsp=
; OpenVG ..............................<wbr />... no<br />&nbsp; OpenGL:<br=
 />&nbsp; &nbsp; Desktop OpenGL ....................... no<span class=3D"im=
"><br />&nbsp; &nbsp; OpenGL ES 2.0 ........................ yes<br />&nbsp=
; &nbsp; OpenGL ES 3.0 ........................ yes<br />&nbsp; &nbsp; Open=
GL ES 3.1 ........................ yes<br />&nbsp; &nbsp; OpenGL ES 3.2 ...=
..................... yes<br />&nbsp; Vulkan ..............................=
<wbr />... yes<br />&nbsp; Session Management ..................... yes<br =
/>Features used by QPA backends:<br />&nbsp; evdev ........................=
......<wbr />.... yes<br />&nbsp; libinput ..............................<w=
br />. yes<br />&nbsp; HiRes wheel support in libinput ........ yes<br />&n=
bsp; INTEGRITY HID .......................... no<br />&nbsp; mtdev ........=
......................<wbr />.... no<br />&nbsp; tslib ....................=
..........<wbr />.... yes<br />&nbsp; xkbcommon ...........................=
... yes<br />&nbsp; X11 specific:<br />&nbsp; &nbsp; XLib .................=
.............<wbr />... yes<br />&nbsp; &nbsp; XCB Xlib ...................=
.......... yes<br />&nbsp; &nbsp; EGL on X11 ........................... ye=
s<br />&nbsp; &nbsp; xkbcommon-x11 ........................ yes<br /></span=
>&nbsp; &nbsp; xcb-sm ..............................<wbr />. no<span class=
=3D"im"><br />QPA backends:<br />&nbsp; DirectFB ..........................=
....<wbr />. no<br />&nbsp; EGLFS ..............................<wbr />....=
 yes<br />&nbsp; EGLFS details:<br />&nbsp; &nbsp; EGLFS OpenWFD ..........=
.............. no<br />&nbsp; &nbsp; EGLFS i.Mx6 ..........................=
 no<br />&nbsp; &nbsp; EGLFS i.Mx6 Wayland .................. no<br />&nbsp=
; &nbsp; EGLFS RCAR ........................... no<br /></span>&nbsp; &nbsp=
; EGLFS EGLDevice ...................... yes<br />&nbsp; &nbsp; EGLFS GBM .=
........................... yes<span class=3D"im"><span class=3D"im"><br />=
&nbsp; &nbsp; EGLFS VSP2 ........................... no<br />&nbsp; &nbsp; =
EGLFS Mali ........................... no<br />&nbsp; &nbsp; EGLFS Raspberr=
y Pi ................... no<br />&nbsp; &nbsp; <strong>EGLFS X11 ..........=
.................. yes</strong><br />&nbsp; LinuxFB .......................=
.......<wbr />.. yes<br />&nbsp; VNC ..............................<wbr />.=
..... yes<br />&nbsp; VK_KHR_display ......................... yes</span></=
span>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Which is fairly close to the Qt setup (from <a href=3D"https://doc.qt.=
io/qt-6/configure-linux-device.html" target=3D"_blank" rel=3D"noopener" dat=
a-saferedirecturl=3D"https://www.google.com/url?q=3Dhttps://doc.qt.io/qt-6/=
configure-linux-device.html&amp;source=3Dgmail&amp;ust=3D1684924515518000&a=
mp;usg=3DAOvVaw0yp0Qnrooo62IQmQIDefoQ">here</a>) of:</div>
<div>&nbsp;</div>
<div>
<pre>EGL ..............................<wbr />...... yes
OpenGL:
  Desktop OpenGL ....................... no
  OpenGL ES 2.0 ........................ yes
  OpenGL ES 3.0 ........................ yes
...
evdev ..............................<wbr />.... yes
libinput ..............................<wbr />. yes
...
EGLFS ..............................<wbr />.... yes
EGLFS details:
  EGLFS OpenWFD ........................ no
  EGLFS i.Mx6 .......................... no
  EGLFS i.Mx6 Wayland .................. no
  EGLFS RCAR ........................... no
  EGLFS EGLDevice ...................... yes
  EGLFS GBM ............................ yes
  EGLFS VSP2 ........................... no
  EGLFS Mali ........................... no
  EGLFS Raspberry Pi ................... no
  <strong>EGLFS X11 ............................ no</strong>
LinuxFB ..............................<wbr />.. yes<br /><br /></pre>
The only difference is EGLFS X11, how does one remove that?</div>
</div>

--Ag4vNMzMuWs2pv1QkFFF--

