Return-Path: <devireddy.t@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73033C19F2E
	for <webhook@archiver.kernel.org>; Thu, 27 Feb 2025 07:46:57 +0000 (UTC)
Subject: Regarding plymouth splash screen boot animation image not showing
To: yocto@lists.yoctoproject.org
From: devireddy.t@mindteck.com
X-Originating-Location: Bengaluru, Karnataka, IN (14.142.4.2)
X-Originating-Platform: Linux Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 26 Feb 2025 23:46:52 -0800
Message-ID: <UA30.1740642412973715082.mDY9@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="80GDOMByXro0aIS2Dbd8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Feb 2025 07:46:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64883

--80GDOMByXro0aIS2Dbd8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I am using raspberrypi3 board and my requirement is boot animation using pl=
ymouth .
i already have plymouth in openembeeded layer so i add the plymouth.bbappen=
d file in my custom layer
i added the .plymouth file and image under files directory

plymouth_%.bbappend
FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
SRC_URI:append =3D " \
file://spinner.plymouth \
file://rasppi_fixed_converted.png \
"
do_install:append() {
install -d ${D}${datadir}/plymouth/themes/spinner
install -m 0644 ${WORKDIR}/spinner.plymouth ${D}${datadir}/plymouth/themes/=
spinner/
install -m 0644 ${WORKDIR}/rasppi_fixed_converted.png ${D}${datadir}/plymou=
th/themes/spinner/
# Set default theme
#echo "spinner" > ${D}${sysconfdir}/plymouth/plymouthd.conf
install -d ${D}${sysconfdir}/plymouth
echo =C2=A0"[Daemon]\nTheme=3Dspinner" > ${D}${sysconfdir}/plymouth/plymout=
hd.conf
}
DEPENDS +=3D "libpng"
EXTRA_OECONF +=3D "--enable-png"
PLYMOUTH_THEMES =3D " spinner"
# Set the default theme to "spinner"
PACKAGES +=3D "plymouth-theme-spinner"
#FILES:plymouth-theme-spinner +=3D "${datadir}/plymouth/themes/spinner/"
FILES:plymouth-theme-spinner +=3D "${datadir}/plymouth/themes/spinner/ ${sy=
sconfdir}/plymouth/plymouthd.conf"
PACKAGES +=3D "plymouth-utils"
FILES:${PN}-utils =3D "${bindir}/plymouth-set-default-theme ${bindir}/plymo=
uth"

spinner.plymouth
[Plymouth Theme]
Name=3DSpinner
Description=3DAdoption of official Spinner Theme for TorizonCore.
ModuleName=3Dtwo-step
[two-step]
Font=3DCantarell 12
TitleFont=3DCantarell Light 30
ImageDir=3D/usr/share/plymouth/themes/spinner
#ImageDir=3D${datadir}/plymouth/themes/spinner
DialogHorizontalAlignment=3D.5
DialogVerticalAlignment=3D.382
TitleHorizontalAlignment=3D.5
TitleVerticalAlignment=3D.382
HorizontalAlignment=3D.5
VerticalAlignment=3D.7
WatermarkHorizontalAlignment=3D.5
WatermarkVerticalAlignment=3D.45
Transition=3Dnone
TransitionDuration=3D0.0
BackgroundStartColor=3D0x000000
BackgroundEndColor=3D0x000000
ProgressBarBackgroundColor=3D0x606060
ProgressBarForegroundColor=3D0xffffff
MessageBelowAnimation=3Dtrue
[updates]
SuppressMessages=3Dtrue
ProgressBarShowPercentComplete=3Dtrue
UseProgressBar=3Dtrue
_Title=3DInstalling Updates...
_SubTitle=3DDo not turn off your computer
[system-upgrade]
SuppressMessages=3Dtrue
ProgressBarShowPercentComplete=3Dtrue
UseProgressBar=3Dtrue
_Title=3DUpgrading System...
_SubTitle=3DDo not turn off your computer
[firmware-upgrade]
SuppressMessages=3Dtrue
ProgressBarShowPercentComplete=3Dtrue
UseProgressBar=3Dtrue
UseFirmwareBackground=3Dtrue
_Title=3DUpgrading Firmware...
_SubTitle=3DDo not turn off your computer
~

and in local.conf
LICENSE_FLAGS_ACCEPTED:append =3D " commercial"
IMAGE_INSTALL:append =3D " ffmpeg"
IMAGE_FEATURES +=3D " splash"
PACKAGECONFIG:append:pn-plymouth =3D " drm gtk initrd pango png"
IMAGE_INSTALL:append =3D " plymouth plymouth-set-default-theme plymouth-the=
me-spinner dracut libpng"
#APPEND +=3D " quiet splash vt.global_cursor_default=3D0 plymouth.ignore-se=
rial-consoles"
PREFERRED_PROVIDER_virtual/boot-splash =3D "plymouth"

APPEND +=3D " quiet splash plymouth.ignore-serial-consoles vt.global_cursor=
_default=3D0 console=3Dtty1"
#APPEND +=3D " quiet splash vt.global_cursor_default=3D0"
DISTRO_FEATURES:append =3D " framebuffer"
IMAGE_INSTALL:append =3D " weston weston-init"
LICENSE_FLAGS_ACCEPTED:append =3D " synaptics-killswitch"

DISTRO_FEATURES:append =3D " systemd usrmerge pam plymouth"
VIRTUAL-RUNTIME_init_manager =3D "systemd"

after the flash i run the command plymouthd&&plymouth --show-splash=C2=A0 i=
t is showing the loading symbol and when i run the plymouth --quit it is co=
mming out from the splash screen

--80GDOMByXro0aIS2Dbd8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>I am using raspberrypi3 board and my requirement is boot animation usi=
ng plymouth .</div>
<div>i already have plymouth in openembeeded layer so i add the plymouth.bb=
append file in my custom layer</div>
<div>i added the .plymouth file and image under files directory</div>
<div>&nbsp;</div>
<div>plymouth_%.bbappend</div>
<div>
<div>FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"</div>
<div>SRC_URI:append =3D " \<br />&nbsp; &nbsp; file://spinner.plymouth \<br=
 />&nbsp; &nbsp; file://rasppi_fixed_converted.png \<br />"</div>
<div>do_install:append() {<br />&nbsp; &nbsp; install -d ${D}${datadir}/ply=
mouth/themes/spinner<br />&nbsp; &nbsp; install -m 0644 ${WORKDIR}/spinner.=
plymouth ${D}${datadir}/plymouth/themes/spinner/<br />&nbsp; &nbsp; install=
 -m 0644 ${WORKDIR}/rasppi_fixed_converted.png ${D}${datadir}/plymouth/them=
es/spinner/<br />&nbsp; &nbsp; &nbsp; # Set default theme<br />&nbsp; &nbsp=
; #echo "spinner" &gt; ${D}${sysconfdir}/plymouth/plymouthd.conf<br />&nbsp=
; &nbsp; install -d ${D}${sysconfdir}/plymouth<br />&nbsp; &nbsp; echo &nbs=
p;"[Daemon]\nTheme=3Dspinner" &gt; ${D}${sysconfdir}/plymouth/plymouthd.con=
f<br />}</div>
<div>DEPENDS +=3D "libpng"<br />EXTRA_OECONF +=3D "--enable-png"<br />PLYMO=
UTH_THEMES =3D " spinner"</div>
<div># Set the default theme to "spinner"<br />PACKAGES +=3D "plymouth-them=
e-spinner"</div>
<div>#FILES:plymouth-theme-spinner +=3D "${datadir}/plymouth/themes/spinner=
/"<br />FILES:plymouth-theme-spinner +=3D "${datadir}/plymouth/themes/spinn=
er/ ${sysconfdir}/plymouth/plymouthd.conf"</div>
<div>PACKAGES +=3D "plymouth-utils"<br />FILES:${PN}-utils =3D "${bindir}/p=
lymouth-set-default-theme ${bindir}/plymouth"</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>spinner.plymouth</div>
<div>
<div>[Plymouth Theme]<br />Name=3DSpinner<br />Description=3DAdoption of of=
ficial Spinner Theme for TorizonCore.<br />ModuleName=3Dtwo-step</div>
<div>[two-step]<br />Font=3DCantarell 12<br />TitleFont=3DCantarell Light 3=
0<br />ImageDir=3D/usr/share/plymouth/themes/spinner<br />#ImageDir=3D${dat=
adir}/plymouth/themes/spinner<br />DialogHorizontalAlignment=3D.5<br />Dial=
ogVerticalAlignment=3D.382<br />TitleHorizontalAlignment=3D.5<br />TitleVer=
ticalAlignment=3D.382<br />HorizontalAlignment=3D.5<br />VerticalAlignment=
=3D.7<br />WatermarkHorizontalAlignment=3D.5<br />WatermarkVerticalAlignmen=
t=3D.45<br />Transition=3Dnone<br />TransitionDuration=3D0.0<br />Backgroun=
dStartColor=3D0x000000<br />BackgroundEndColor=3D0x000000<br />ProgressBarB=
ackgroundColor=3D0x606060<br />ProgressBarForegroundColor=3D0xffffff<br />M=
essageBelowAnimation=3Dtrue</div>
<div>[updates]<br />SuppressMessages=3Dtrue<br />ProgressBarShowPercentComp=
lete=3Dtrue<br />UseProgressBar=3Dtrue<br />_Title=3DInstalling Updates...<=
br />_SubTitle=3DDo not turn off your computer</div>
<div>[system-upgrade]<br />SuppressMessages=3Dtrue<br />ProgressBarShowPerc=
entComplete=3Dtrue<br />UseProgressBar=3Dtrue<br />_Title=3DUpgrading Syste=
m...<br />_SubTitle=3DDo not turn off your computer</div>
<div>[firmware-upgrade]<br />SuppressMessages=3Dtrue<br />ProgressBarShowPe=
rcentComplete=3Dtrue<br />UseProgressBar=3Dtrue<br />UseFirmwareBackground=
=3Dtrue<br />_Title=3DUpgrading Firmware...<br />_SubTitle=3DDo not turn of=
f your computer<br />~ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;&nbsp;</div>
<div>&nbsp;</div>
<div>and in local.conf</div>
<div>
<div>LICENSE_FLAGS_ACCEPTED:append =3D " commercial"<br />IMAGE_INSTALL:app=
end =3D " ffmpeg"<br />IMAGE_FEATURES +=3D " splash"</div>
<div>PACKAGECONFIG:append:pn-plymouth =3D " drm gtk initrd pango png"</div>
<div>IMAGE_INSTALL:append =3D " plymouth plymouth-set-default-theme plymout=
h-theme-spinner dracut libpng"<br />#APPEND +=3D " quiet splash vt.global_c=
ursor_default=3D0 plymouth.ignore-serial-consoles"<br />PREFERRED_PROVIDER_=
virtual/boot-splash =3D "plymouth"</div>
<div><br />APPEND +=3D " quiet splash plymouth.ignore-serial-consoles vt.gl=
obal_cursor_default=3D0 console=3Dtty1"<br />#APPEND +=3D " quiet splash vt=
.global_cursor_default=3D0"<br />DISTRO_FEATURES:append =3D " framebuffer"<=
br />IMAGE_INSTALL:append =3D " weston weston-init"</div>
<div>LICENSE_FLAGS_ACCEPTED:append =3D " synaptics-killswitch"</div>
<div><br />DISTRO_FEATURES:append =3D " systemd usrmerge pam plymouth"<br /=
>VIRTUAL-RUNTIME_init_manager =3D "systemd"</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>after the flash i run the command plymouthd&amp;&amp;plymouth --show-s=
plash&nbsp; it is showing the loading symbol and when i run the plymouth --=
quit it is comming out from the splash screen&nbsp;</div>
</div>
</div>
</div>

--80GDOMByXro0aIS2Dbd8--

