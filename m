Subject: #linux #dunfell How to use eclipse with autotools without yocto plugin
To: yocto@lists.yoctoproject.org
From: holzgreve@ohp.de
X-Originating-Location: Rimbach, Hesse, DE (185.189.140.137)
X-Originating-Platform: Linux Chrome 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 09 Jul 2021 00:59:14 -0700
Message-ID: <P3Us.1625817554577445703.w9fT@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="C591TKsixkpzNkIC5gFW"

--C591TKsixkpzNkIC5gFW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

we were currently upgrading our yocto system to v3.1. In the older yocto s=
ystem there was the "Yocto Eclipse Plugin" available. I saw in the changelo=
g that unfortunately that this plugin is not maintained anymore and removed=
.

From the past we got whole bunch of autotools based projects. Is it someho=
w posible to use eclipse for development and debugging keeping the projects=
 in the autotools world?

I tried using the eSDK (Following: https://www.yoctoproject.org/docs/lates=
t/mega-manual/mega-manual.html#sdk-working-projects )

Rebuilding the project from eclipse is now possible. It still complains th=
at is can run the executable but I can start debugging. I tried to setup th=
e debugger configuration like it was set up, when the "Yocto Eclipse Plugin=
" generated it. But when I try to debug the code, eclipse opens up the "Deb=
ug Perspective", also attaches to the remotly running gdbserver, but it nev=
er stops on breakpoints that were set in the eclipse GUI.

Is there any chance to use eclipse without the plugin, without converting =
all the packages to CMake or plain makefile projects?

Any hints or pointings to the right direction is appreciated.

--C591TKsixkpzNkIC5gFW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />we were currently upgrading our yocto system to v3.1. In the=
 older yocto system there was the "Yocto Eclipse Plugin" available. I saw i=
n the changelog that unfortunately that this plugin is not maintained anymo=
re and removed.<br /><br />From the past we got whole bunch of autotools ba=
sed projects. Is it somehow posible to use eclipse for development and debu=
gging keeping the projects in the autotools world?<br /><br />I tried using=
 the eSDK (Following:&nbsp;<a href=3D"https://www.yoctoproject.org/docs/lat=
est/mega-manual/mega-manual.html#sdk-working-projects" target=3D"_blank" re=
l=3D"noopener">https://www.yoctoproject.org/docs/latest/mega-manual/mega-ma=
nual.html#sdk-working-projects</a>)<br /><br />Rebuilding the project from =
eclipse is now possible. It still complains that is can run the executable =
but I can start debugging. I tried to setup the debugger configuration like=
 it was set up, when the "Yocto Eclipse Plugin" generated it. But when I tr=
y to debug the code, eclipse opens up the "Debug Perspective", also attache=
s to the remotly running gdbserver, but it never stops on breakpoints that =
were set in the eclipse GUI.<br /><br />Is there any chance to use eclipse =
without the plugin, without converting all the packages to CMake or plain m=
akefile projects?<br /><br />Any hints or pointings to the right direction =
is appreciated.

--C591TKsixkpzNkIC5gFW--
