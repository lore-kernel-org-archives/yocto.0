Return-Path: <renato.mendes.pes@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C058C4167B
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 21:33:07 +0000 (UTC)
Subject: Re: [yocto] Wireless interface (wlan) not shown on Raspberry Pi Zero W
To: Khem Raj <raj.khem@gmail.com>,yocto@lists.yoctoproject.org
From: "Renato Mendes" <renato.mendes.pes@gmail.com>
X-Originating-Location: Petrópolis, Rio de Janeiro, BR (170.254.80.206)
X-Originating-Platform: Mac Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 15 Dec 2023 13:32:58 -0800
References: <CAMKF1spSzo-CfFSW0ELCXOoiBeV=Zf7jmtJ=FM5Yr0n2qmgvVQ@mail.gmail.com>
In-Reply-To: <CAMKF1spSzo-CfFSW0ELCXOoiBeV=Zf7jmtJ=FM5Yr0n2qmgvVQ@mail.gmail.com>
Message-ID: <24207.1702675978544113217@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KO5yK14KsryLAiwxF1Pf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 21:33:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61922

--KO5yK14KsryLAiwxF1Pf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So Khem, that's what I've done:

*Load from git and backport:*

git clone -b kirkstone git://git.yoctoproject.org/poky ./src/poky
git clone -b kirkstone git://git.openembedded.org/meta-openembedded ./src/m=
eta-openembedded

git clone -b kirkstone git://git.yoctoproject.org/meta-raspberrypi ./src/me=
ta-raspberrypi
git checkout master
git checkout kiskstone
git cherry-pick master
Auto-merging docs/extra-build-config.md
Auto-merging recipes-bsp/bootfiles/rpi-cmdline.bb
[kirkstone a900a5e] rpi-cmdline, rpi-u-boot-src: Support USB boot
Author: Harunobu Kurokawa <harunobu.kurokawa.dn@renesas.com>
Date: Fri May 5 14:49:51 2023 +0900
Committer: quadfloor <quadfloor@yocto.quadfloor.com>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly. Run the
following command and follow the instructions in your editor to edit
your configuration file:

git config --global --edit

After doing this, you may fix the identity used for this commit with:

git commit --amend --reset-author

4 files changed, 24 insertions(+), 3 deletions(-)

*Configuration:*

After that, rebuilt with the short configuration:

MACHINE =3D "raspberrypi0-wifi"
SERIAL_CONSOLE =3D ""
DISABLE_RPI_BOOT_LOGO =3D "1"
DISABLE_OVERSCAN =3D "1"
DISABLE_SPLASH =3D "1"
BOOT_DELAY =3D "0"
GPU_MEM_256 =3D "128"
GPU_MEM_512 =3D "196"
GPU_MEM_1024 =3D "396"
PACKAGE_CLASSES =3D "package_ipk"
DISTRO_FEATURES:append =3D " wifi "
IMAGE_INSTALL:append =3D " linux-firmware-bcm43430 wpa-supplicant"
IMAGE_FSTYPES =3D "tar.bz2 ext4 rpi-sdimg"
SDIMG_ROOTFS_TYPE =3D "ext4"

$ cat bblayers.conf
# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.con=
f
# changes incompatibly
POKY_BBLAYERS_CONF_VERSION =3D "2"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
/home/quadfloor/release_1/src/poky/meta \
/home/quadfloor/release_1/src/poky/meta-poky \
/home/quadfloor/release_1/src/poky/meta-yocto-bsp \
/home/quadfloor/release_1/src/meta-openembedded/meta-oe \
/home/quadfloor/release_1/src/meta-openembedded/meta-python \
/home/quadfloor/release_1/src/meta-openembedded/meta-multimedia \
/home/quadfloor/release_1/src/meta-openembedded/meta-networking \
/home/quadfloor/release_1/src/meta-raspberrypi \
"

*Result:
* $ ifcofing -a -> Only lo interface, no wlan

$ dmesg | grep brcmfmac shows nothing....
$ dmesg | grep wlan shows nothing....

$ lsmod
Module=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Size=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Used=C2=A0 by
nfsd=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A045=
4656=C2=A0 =C2=A0 11

So, basically the same....

Am I doing the backport correctly? Maybe config file problems?

Thanks for supporting...

--KO5yK14KsryLAiwxF1Pf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So Khem, that's what I've done:<br /><br /><strong>Load from git and backpo=
rt:</strong><br /><span style=3D"white-space-collapse: preserve;"><br />git=
 clone -b kirkstone git://git.yoctoproject.org/poky ./src/poky</span><br st=
yle=3D"white-space-collapse: preserve;" /><span style=3D"white-space-collap=
se: preserve;">git clone -b kirkstone git://git.openembedded.org/meta-opene=
mbedded ./src/meta-openembedded</span><br style=3D"white-space-collapse: pr=
eserve;" /><span style=3D"white-space-collapse: preserve;"><br />git clone =
-b kirkstone git://git.yoctoproject.org/meta-raspberrypi ./src/meta-raspber=
rypi<br /></span>git checkout master<br />git checkout kiskstone<br />git c=
herry-pick master
<div>Auto-merging docs/extra-build-config.md</div>
<div>Auto-merging recipes-bsp/bootfiles/rpi-cmdline.bb</div>
<div>[kirkstone a900a5e] rpi-cmdline, rpi-u-boot-src: Support USB boot</div=
>
<div>&nbsp;Author: Harunobu Kurokawa &lt;harunobu.kurokawa.dn@renesas.com&g=
t;</div>
<div>&nbsp;Date: Fri May 5 14:49:51 2023 +0900</div>
<div>&nbsp;Committer: quadfloor &lt;quadfloor@yocto.quadfloor.com&gt;</div>
<div>Your name and email address were configured automatically based</div>
<div>on your username and hostname. Please check that they are accurate.</d=
iv>
<div>You can suppress this message by setting them explicitly. Run the</div=
>
<div>following command and follow the instructions in your editor to edit</=
div>
<div>your configuration file:</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; git config --global --edit</div>
<div>&nbsp;</div>
<div>After doing this, you may fix the identity used for this commit with:<=
/div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; git commit --amend --reset-author</div>
<div>&nbsp;</div>
<div>&nbsp;4 files changed, 24 insertions(+), 3 deletions(-)<br /><br /><st=
rong>Configuration:</strong><br /><br />After that, rebuilt with the short =
configuration:<br /><br />
<div>MACHINE =3D "raspberrypi0-wifi"</div>
<div>SERIAL_CONSOLE =3D ""</div>
<div>DISABLE_RPI_BOOT_LOGO =3D "1"</div>
<div>DISABLE_OVERSCAN =3D "1"</div>
<div>DISABLE_SPLASH =3D "1"</div>
<div>BOOT_DELAY =3D "0"</div>
<div>GPU_MEM_256 =3D "128"</div>
<div>GPU_MEM_512 =3D "196"</div>
<div>GPU_MEM_1024 =3D "396"</div>
<div>PACKAGE_CLASSES =3D "package_ipk"</div>
<div>DISTRO_FEATURES:append =3D " wifi "</div>
<div>IMAGE_INSTALL:append =3D " linux-firmware-bcm43430 wpa-supplicant"</di=
v>
<div>IMAGE_FSTYPES =3D "tar.bz2 ext4 rpi-sdimg"</div>
<div>SDIMG_ROOTFS_TYPE =3D "ext4"</div>
<br /><br />
<div>$ cat bblayers.conf</div>
<div># POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayer=
s.conf</div>
<div># changes incompatibly</div>
<div>POKY_BBLAYERS_CONF_VERSION =3D "2"</div>
<div>&nbsp;</div>
<div>BBPATH =3D "${TOPDIR}"</div>
<div>BBFILES ?=3D ""</div>
<div>&nbsp;</div>
<div>BBLAYERS ?=3D " \</div>
<div>&nbsp; /home/quadfloor/release_1/src/poky/meta \</div>
<div>&nbsp; /home/quadfloor/release_1/src/poky/meta-poky \</div>
<div>&nbsp; /home/quadfloor/release_1/src/poky/meta-yocto-bsp \</div>
<div>&nbsp; /home/quadfloor/release_1/src/meta-openembedded/meta-oe \</div>
<div>&nbsp; /home/quadfloor/release_1/src/meta-openembedded/meta-python \</=
div>
<div>&nbsp; /home/quadfloor/release_1/src/meta-openembedded/meta-multimedia=
 \</div>
<div>&nbsp; /home/quadfloor/release_1/src/meta-openembedded/meta-networking=
 \</div>
<div>&nbsp; /home/quadfloor/release_1/src/meta-raspberrypi \</div>
<div>&nbsp; "</div>
<br /><strong>Result:<br /></strong>$ ifcofing -a -&gt; Only lo interface, =
no wlan<br /><br /><span style=3D"white-space-collapse: preserve;">$ dmesg =
| grep brcmfmac shows nothing....<br /></span><span style=3D"white-space-co=
llapse: preserve;">$ dmesg | grep wlan shows nothing....</span><br style=3D=
"white-space-collapse: preserve;" /><br />$ lsmod<br />Module&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Size&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Us=
ed&nbsp; by<br />nfsd&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp;454656&nbsp; &nbsp; 11<br /><br />So, basically the same....=
&nbsp;<br /><br />Am I doing the backport correctly? Maybe config file prob=
lems?<br /><br />Thanks for supporting...</div>

--KO5yK14KsryLAiwxF1Pf--

