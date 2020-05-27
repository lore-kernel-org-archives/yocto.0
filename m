Subject: #apt #linux #yocto #raspberrypi., apt, gcc, sudo not present
To: yocto@lists.yoctoproject.org
From: "Siddhartha V" <Siddhuvgowda.18695@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (157.45.225.73)
X-Originating-Platform: Linux Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 27 May 2020 03:06:22 -0700
Message-ID: <AWwo.1590573982221245323.TyTi@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9ZXc53UUHhQE8sZ8D9G4"

--9ZXc53UUHhQE8sZ8D9G4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I built the image for Raspberrypi3B+ board. But when boot the board gcc, a=
pt, sudo were not there. Actually only the poweron and poweroff and few bas=
ic commnds like, ls, mkdir, whoami were working. May I konw what wrong I di=
d while building please.

I am using yocto warrior. I used *" bitbake core-image- base "* command fo=
r building.

*My bblayers.conf is as below:*

# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.co=
nf
# changes incompatibly
POKY_BBLAYERS_CONF_VERSION =3D "2"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
/home/siddhu/Documents/yocto/sources/poky/meta \
/home/siddhu/Documents/yocto/sources/poky/meta-poky \
/home/siddhu/Documents/yocto/sources/poky/meta-yocto-bsp \
/home/siddhu/Documents/yocto/sources/meta-openembedded/meta-oe \
/home/siddhu/Documents/yocto/sources/meta-openembedded/meta-multimedia \
/home/siddhu/Documents/yocto/sources/meta-openembedded/meta-python \
/home/siddhu/Documents/yocto/sources/meta-openembedded/meta-networking \
/home/siddhu/Documents/yocto/sources/meta-openembedded/meta-filesystems \
/home/siddhu/Documents/yocto/sources/meta-raspberrypi \
"

*My local.conf file I have added the below details:*

MACHINE ??=3D "raspberrypi3"
PACKAGE_CLASSES ?=3D "package_rpm"
CONF_VERSION =3D "1"
IMAGE_FEATURES +=3D "ssh-server-dropbear"

--9ZXc53UUHhQE8sZ8D9G4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />&nbsp; I built the image for Raspberrypi3B+ board. But wh=
en boot the board gcc, apt, sudo were not there. Actually only the poweron =
and poweroff and few basic commnds like, ls, mkdir, whoami were working. Ma=
y I konw what wrong I did while building please.<br /><br />I am using yoct=
o warrior. I used <strong>"<span style=3D"font-family: Consolas, Menlo, Mon=
aco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Ve=
ra Sans Mono', 'Courier New', monospace; font-size: 15px; white-space: pre;=
 background-color: #f9f9f9;">bitbake core-image-</span><span class=3D"hljs-=
keyword" style=3D"font-family: Consolas, Menlo, Monaco, 'Lucida Console', '=
Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Courier =
New', monospace; font-size: 15px; white-space: pre;">base</span>"</strong> =
command for building.<br /><br /><strong>My bblayers.conf is as below:</str=
ong><br /><br />
<div># POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblaye=
rs.conf</div>
<div># changes incompatibly</div>
<div>POKY_BBLAYERS_CONF_VERSION =3D "2"</div>
<div>&nbsp;</div>
<div>BBPATH =3D "${TOPDIR}"</div>
<div>BBFILES ?=3D ""</div>
<div>&nbsp;</div>
<div>BBLAYERS ?=3D " \</div>
<div>&nbsp; /home/siddhu/Documents/yocto/sources/poky/meta \</div>
<div>&nbsp; /home/siddhu/Documents/yocto/sources/poky/meta-poky \</div>
<div>&nbsp; /home/siddhu/Documents/yocto/sources/poky/meta-yocto-bsp \</di=
v>
<div>&nbsp; /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-oe=
 \</div>
<div>&nbsp; /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-mu=
ltimedia \</div>
<div>&nbsp; /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-py=
thon \</div>
<div>&nbsp; /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-ne=
tworking \</div>
<div>&nbsp; /home/siddhu/Documents/yocto/sources/meta-openembedded/meta-fi=
lesystems \</div>
<div>&nbsp; /home/siddhu/Documents/yocto/sources/meta-raspberrypi \</div>
<div>&nbsp; "<br /><br /><strong>My local.conf file I have added the below=
 details:</strong><br /><br /><span style=3D"color: #24292e; font-family: -=
apple-system, BlinkMacSystemFont, 'Segoe UI', Helvetica, Arial, sans-serif,=
 'Apple Color Emoji', 'Segoe UI Emoji';">MACHINE ??=3D "raspberrypi3"<br />=
</span><span style=3D"color: #24292e; font-family: -apple-system, BlinkMacS=
ystemFont, 'Segoe UI', Helvetica, Arial, sans-serif, 'Apple Color Emoji', '=
Segoe UI Emoji';">PACKAGE_CLASSES ?=3D "package_rpm"<br /></span>CONF_VERSI=
ON =3D "1"<br />IMAGE_FEATURES +=3D "ssh-server-dropbear"</div>

--9ZXc53UUHhQE8sZ8D9G4--
