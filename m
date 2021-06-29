Subject: Yocto build isnot Booting up on board zc702 #gatesgarth #linux #yocto
To: yocto@lists.yoctoproject.org
From: "shoaib akhtar" <m.shoaibakhtar98@gmail.com>
X-Originating-Location: Muzaffarabad, Azad Jammu and Kashmir, PK (59.103.180.55)
X-Originating-Platform: Linux Firefox 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 28 Jun 2021 23:02:35 -0700
Message-ID: <WQyj.1624946555328053729.Urcg@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="3CYYsBN5LGYuM394L4V8"

--3CYYsBN5LGYuM394L4V8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

i have tried to build yocto image.=C2=A0 And it compiled successfully witho=
ut any error but when am trying to BOOT them it didnt prompt any error mess=
age my BBlayer.conf is shown below

# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.co=
nf
# changes incompatibly
POKY_BBLAYERS_CONF_VERSION =3D "2"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
/media/vmnrtc/Drive/poky/meta \
/media/vmnrtc/Drive/poky/meta- poky \
/media/vmnrtc/Drive/poky/meta- yocto-bsp \
/media/vmnrtc/Drive/poky/meta- xilinx/meta-xilinx-bsp \
/media/vmnrtc/Drive/poky/meta- openembedded/meta-oe \
/media/vmnrtc/Drive/poky/meta- openembedded/meta-python \
/media/vmnrtc/Drive/poky/meta- xilinx/meta-xilinx-standalone \
/media/vmnrtc/Drive/poky/meta- xilinx-tools \
/media/vmnrtc/Drive/poky/ build/meta-networking \
"

MY files in image directories

boot.bin
boot.bin-zc702-zynq7
boot.bin-zc702-zynq7-v2020.01- xilinx-v2020.2+gitAUTOINC+ bb4660c33a-r0
boot.scr
core-image-minimal-zc702- zynq7-20210629031233.qemuboot. conf
core-image-minimal-zc702- zynq7-20210629031233.rootfs. cpio
core-image-minimal-zc702- zynq7-20210629031233.rootfs. cpio.gz.u-boot
core-image-minimal-zc702- zynq7-20210629031233.rootfs. manifest
core-image-minimal-zc702- zynq7-20210629031233.rootfs. tar.gz
core-image-minimal-zc702- zynq7-20210629031233.testdata. json
core-image-minimal-zc702- zynq7.cpio
core-image-minimal-zc702- zynq7.cpio.gz.u-boot
core-image-minimal-zc702- zynq7.manifest
core-image-minimal-zc702- zynq7.qemuboot.conf
core-image-minimal-zc702- zynq7.tar.gz
core-image-minimal-zc702- zynq7.testdata.json
modules--5.4+git0+62ea514294- r0-zc702-zynq7-20210622034511. tgz
modules-zc702-zynq7.tgz
pxeboot
pxelinux.cfg
u-boot.elf
u-boot.img
u-boot-xlnx-AUTOINC+ bb4660c33a.elf
u-boot-xlnx-initial-env
u-boot-xlnx-initial-env-zc702- zynq7
u-boot-xlnx-initial-env-zc702- zynq7-v2020.01-xilinx-v2020.2+ gitAUTOINC+b=
b4660c33a-r0
u-boot-zc702-zynq7.elf
u-boot-zc702-zynq7.img
u-boot-zc702-zynq7-v2020.01- xilinx-v2020.2+gitAUTOINC+ bb4660c33a-r0.img
u-boot-zynq-scr--1.0-r0.scr
uEnv.txt
uImage
uImage--5.4+git0+62ea514294- r0-zc702-zynq7-20210622034511. bin
uImage-zc702-zynq7.bin
zImage
zImage--5.4+git0+62ea514294- r0-zc702-zynq7-20210622034511. bin
zImage-zc702-zynq7.bin
zynq-zc702--5.4+git0+ 62ea514294-r0-zc702-zynq7- 20210622034511.dtb
zynq-zc702.dtb
zynq-zc702-zc702-zynq7.dtb

what should i do to BOOT my yocto build image on zc702 board

--3CYYsBN5LGYuM394L4V8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<table class=3D"cf gJ" cellpadding=3D"0">
<tbody>
<div class=3D"aCi"><img id=3D":mj_13-e" class=3D"ajn" style=3D"background-=
color: #cccccc;" src=3D"https://lh3.googleusercontent.com/a-/AOh14GgVnDJ8st=
sXSsYliC9MGMxoKTKiokxQCN-mNQgs=3Ds40" name=3D":mj" data-hovercard-id=3D"m.s=
hoaibakhtar98@gmail.com" data-name=3D"shoaib akhtar" aria-hidden=3D"true" /=
></div>
<tr class=3D"acZ">
<td class=3D"gF gK">&nbsp;</td>
<td class=3D"gH bAk">&nbsp;</td>
</tr>
<tr class=3D"acZ">
<td class=3D"gH">&nbsp;</td>
<td class=3D"gH acX bAm" rowspan=3D"2">&nbsp;</td>
</tr>
<tr class=3D"acZ xD">
<td colspan=3D"3">
<table class=3D"cf adz" cellpadding=3D"0">
<tbody>
<tr>
<td class=3D"ady">&nbsp;</td>
</tr>
</tbody>
</table>
</td>
</tr>
<div id=3D":15r" class=3D"ii gt">
<div id=3D":16i" class=3D"a3s aiL ">
<div dir=3D"ltr">
<div>i have tried to build yocto image.&nbsp; And it compiled successfully=
 without any error but when am trying to BOOT them it didnt prompt any erro=
r message my BBlayer.conf is shown below</div>
<div>&nbsp;</div>
<div><em># POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bb=
layers.conf</em><br /><em># changes incompatibly</em><br /><em>POKY_BBLAYER=
S_CONF_VERSION =3D "2"</em><br /><br /><em>BBPATH =3D "${TOPDIR}"</em><br /=
><em>BBFILES ?=3D ""</em><br /><br /><em>BBLAYERS ?=3D " \</em><br /><em>&n=
bsp; /media/vmnrtc/Drive/poky/meta \</em><br /><em>&nbsp; /media/vmnrtc/Dri=
ve/poky/meta-<wbr />poky \</em><br /><em>&nbsp; /media/vmnrtc/Drive/poky/me=
ta-<wbr />yocto-bsp \</em><br /><em>&nbsp; /media/vmnrtc/Drive/poky/meta-<w=
br />xilinx/meta-xilinx-bsp \</em><br /><em>&nbsp; /media/vmnrtc/Drive/poky=
/meta-<wbr />openembedded/meta-oe \</em><br /><em>&nbsp; /media/vmnrtc/Driv=
e/poky/meta-<wbr />openembedded/meta-python \</em><br /><em>&nbsp; /media/v=
mnrtc/Drive/poky/meta-<wbr />xilinx/meta-xilinx-standalone \</em><br /><em>=
&nbsp; /media/vmnrtc/Drive/poky/meta-<wbr />xilinx-tools \</em><br /><em>&n=
bsp; /media/vmnrtc/Drive/poky/<wbr />build/meta-networking \</em><br />&nbs=
p; "<br /><br /></div>
<div>MY files in image directories</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div><em>boot.bin</em><br /><em>boot.bin-zc702-zynq7</em><br /><em>boot.bi=
n-zc702-zynq7-v2020.01-<wbr />xilinx-v2020.2+gitAUTOINC+<wbr />bb4660c33a-r=
0</em><br /><em>boot.scr</em><br /><em>core-image-minimal-zc702-<wbr />zynq=
7-20210629031233.qemuboot.<wbr />conf</em><br /><em>core-image-minimal-zc70=
2-<wbr />zynq7-20210629031233.rootfs.<wbr />cpio</em><br /><em>core-image-m=
inimal-zc702-<wbr />zynq7-20210629031233.rootfs.<wbr />cpio.gz.u-boot</em><=
br /><em>core-image-minimal-zc702-<wbr />zynq7-20210629031233.rootfs.<wbr /=
>manifest</em><br /><em>core-image-minimal-zc702-<wbr />zynq7-2021062903123=
3.rootfs.<wbr />tar.gz</em><br /><em>core-image-minimal-zc702-<wbr />zynq7-=
20210629031233.testdata.<wbr />json</em><br /><em>core-image-minimal-zc702-=
<wbr />zynq7.cpio</em><br /><em>core-image-minimal-zc702-<wbr />zynq7.cpio.=
gz.u-boot</em><br /><em>core-image-minimal-zc702-<wbr />zynq7.manifest</em>=
<br /><em>core-image-minimal-zc702-<wbr />zynq7.qemuboot.conf</em><br /><em=
>core-image-minimal-zc702-<wbr />zynq7.tar.gz</em><br /><em>core-image-mini=
mal-zc702-<wbr />zynq7.testdata.json</em><br /><em>modules--5.4+git0+62ea51=
4294-<wbr />r0-zc702-zynq7-20210622034511.<wbr />tgz</em><br /><em>modules-=
zc702-zynq7.tgz</em><br /><em>pxeboot</em><br /><em>pxelinux.cfg</em><br />=
<em>u-boot.elf</em><br /><em>u-boot.img</em><br /><em>u-boot-xlnx-AUTOINC+<=
wbr />bb4660c33a.elf</em><br /><em>u-boot-xlnx-initial-env</em><br /><em>u-=
boot-xlnx-initial-env-zc702-<wbr />zynq7</em><br /><em>u-boot-xlnx-initial-=
env-zc702-<wbr />zynq7-v2020.01-xilinx-v2020.2+<wbr />gitAUTOINC+bb4660c33a=
-r0</em><br /><em>u-boot-zc702-zynq7.elf</em><br /><em>u-boot-zc702-zynq7.i=
mg</em><br /><em>u-boot-zc702-zynq7-v2020.01-<wbr />xilinx-v2020.2+gitAUTOI=
NC+<wbr />bb4660c33a-r0.img</em><br /><em>u-boot-zynq-scr--1.0-r0.scr</em><=
br /><em>uEnv.txt</em><br /><em>uImage</em><br /><em>uImage--5.4+git0+62ea5=
14294-<wbr />r0-zc702-zynq7-20210622034511.<wbr />bin</em><br /><em>uImage-=
zc702-zynq7.bin</em><br /><em>zImage</em><br /><em>zImage--5.4+git0+62ea514=
294-<wbr />r0-zc702-zynq7-20210622034511.<wbr />bin</em><br /><em>zImage-zc=
702-zynq7.bin</em><br /><em>zynq-zc702--5.4+git0+<wbr />62ea514294-r0-zc702=
-zynq7-<wbr />20210622034511.dtb</em><br /><em>zynq-zc702.dtb</em><br /><em=
>zynq-zc702-zc702-zynq7.dtb</em></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>what should i do to BOOT my yocto build image on zc702 board
<div class=3D"adL">&nbsp;</div>
</div>
</div>
</div>
</div>
</tbody>
</table>

--3CYYsBN5LGYuM394L4V8--
