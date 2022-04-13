Return-Path: <Rohithraj.Bhaskara@ril.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 740ECC3A589
	for <webhook@archiver.kernel.org>; Wed, 13 Apr 2022 15:48:07 +0000 (UTC)
Subject: Yocto Kernel building 
To: yocto@lists.yoctoproject.org
From: Rohithraj.Bhaskara@ril.com
X-Originating-Location: Bengaluru, Karnataka, IN (157.50.5.212)
X-Originating-Platform: Windows Chrome 92
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 13 Apr 2022 02:38:54 -0700
Message-ID: <6bRo.1649842734627600476.zBxh@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cEGncHthVY8tY5SJvNLa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Apr 2022 15:48:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56762

--cEGncHthVY8tY5SJvNLa
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I was trying to build a kernel for layerscape ls1046ardb setup.
I referred the=C2=A0meta-freescale/recipes-kernel/linux/linux-qoriq_5.4.bb =
file from dunfell branch.

Build configuration:
Yocto branch : dunfell
Required kernel source : https://source.codeaurora.org/quic/femto5G/fsm/ext=
ernal/qoriq-components/linux_4.19-rt/commit/?h=3DAPSS.FSM.6.6-00194-FSM1005=
6.0&id=3D74700acb31e369495da22b4bbfd9e3f4315fc74a
SRC_rev : 74700acb31e369495da22b4bbfd9e3f4315fc74a ( https://source.codeaur=
ora.org/quic/femto5G/fsm/external/qoriq-components/linux_4.19-rt/commit/?h=
=3DAPSS.FSM.6.6-00194-FSM10056.0&id=3D74700acb31e369495da22b4bbfd9e3f4315fc=
74a )
SRC branch: APSS.FSM.6.6

Here I have created separate layer and added my files under *<my_layer_name=
>/recipe-kernel/linux/linux-qoriq-rt_4.19.bb* path

i nherit kernel qoriq_build_64bit_kernel siteinfo
inherit fsl-kernel-localversion

SUMMARY =3D "Linux Kernel for NXP QorIQ platforms"
SECTION =3D "kernel"
LICENSE =3D "GPLv2"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dbbea815ee2795b2f4230826c0c6b8814=
"

SRC_URI =3D "https://source.codeaurora.org/quic/femto5G/fsm/external/qoriq-=
components/linux_4.19-rt;branch=3DAPSS.FSM.6.6 \
"
SRCREV =3D "74700acb31e369495da22b4bbfd9e3f4315fc74a"

SRC_URI[sha256sum] =3D "ddb8e5defcdaec9ce8cbe39d157f58a369decf7c1028cddaa61=
86343b7f09c2b"

S =3D "${WORKDIR}/git"

DEPENDS_append =3D " libgcc"
# not put Images into /boot of rootfs, install kernel-image if needed
RDEPENDS_${KERNEL_PACKAGE_NAME}-base =3D ""

KERNEL_CC_append =3D " ${TOOLCHAIN_OPTIONS}"
KERNEL_LD_append =3D " ${TOOLCHAIN_OPTIONS}"
KERNEL_EXTRA_ARGS +=3D "LOADADDR=3D${UBOOT_ENTRYPOINT}"

ZIMAGE_BASE_NAME =3D "zImage-${PKGE}-${PKGV}-${PKGR}-${MACHINE}-${DATETIME}=
"
ZIMAGE_BASE_NAME[vardepsexclude] =3D "DATETIME"

SCMVERSION ?=3D "y"
LOCALVERSION =3D ""

FILES_${KERNEL_PACKAGE_NAME}-image +=3D "/boot/zImage*"
COMPATIBLE_MACHINE =3D "(qoriq)"

When I try to build the kernel I am encountered with below errors,

>=20
> ERROR: linux-qoriq-rt-4.19-r0 do_populate_lic: QA Issue: linux-qoriq-rt:
> LIC_FILES_CHKSUM points to an invalid file:
> /home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_odsc=
3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linu=
x/linux-qoriq-rt/4.19-r0/git/COPYING
> [license-checksum]
> ERROR: linux-qoriq-rt-4.19-r0 do_populate_lic: Fatal QA errors found,
> failing task.
> ERROR: Logfile of failure stored in:
> /home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_odsc=
3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linu=
x/linux-qoriq-rt/4.19-r0/temp/log.do_populate_lic.44895
>=20
> ERROR: Task
> (/home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_ods=
c3_ibtb_sku2_board/build/poky/build/../meta-rjio_bsp/recipes-kernel/linux/l=
inux-qoriq-rt_4.19.bb:do_populate_lic)
> failed with exit code '1'
> ERROR: linux-qoriq-rt-4.19-r0 do_preconfigure: Execution of
> '/home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_ods=
c3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-lin=
ux/linux-qoriq-rt/4.19-r0/temp/run.do_preconfigure.44894'
> failed with exit code 1:
> /home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_odsc=
3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linu=
x/linux-qoriq-rt/4.19-r0/temp/run.do_preconfigure.44894:
> line 120:
> /home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_odsc=
3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linu=
x/linux-qoriq-rt/4.19-r0/defconfig:
> No such file or directory
> WARNING:
> /home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_odsc=
3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linu=
x/linux-qoriq-rt/4.19-r0/temp/run.do_preconfigure.44894:1
> exit 1 from 'sed -e "${CONF_SED_SCRIPT}" <
> '/home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_ods=
c3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-lin=
ux/linux-qoriq-rt/4.19-r0/defconfig'
> >>
> '/home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_ods=
c3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-lin=
ux/linux-qoriq-rt/4.19-r0/build/.config''
>=20
>=20

Can anyone please guide me to build the kernel successfully?

Thank you

--cEGncHthVY8tY5SJvNLa
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I was trying to build a kernel for layerscape ls1046ardb =
setup.<br />I referred the&nbsp;meta-freescale/recipes-kernel/linux/linux-q=
oriq_5.4.bb file from dunfell branch.<br /><br />Build configuration:<br />
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric:=
 inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-siz=
e: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetica, sans=
-serif; vertical-align: baseline; color: black;"><em>Yocto branch</em>: dun=
fell<br /><em>Required kernel source</em>:&nbsp;<a id=3D"LPlnk430261" style=
=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; =
font-variant-east-asian: inherit; font-stretch: inherit; line-height: inher=
it; vertical-align: baseline; background-color: #ffffff;" href=3D"https://s=
ource.codeaurora.org/quic/femto5G/fsm/external/qoriq-components/linux_4.19-=
rt/commit/?h=3DAPSS.FSM.6.6-00194-FSM10056.0&amp;id=3D74700acb31e369495da22=
b4bbfd9e3f4315fc74a" target=3D"_blank" rel=3D"noopener noreferrer" data-aut=
h=3D"NotApplicable" data-linkindex=3D"0">https://source.codeaurora.org/quic=
/femto5G/fsm/external/qoriq-components/linux_4.19-rt/commit/?h=3DAPSS.FSM.6=
.6-00194-FSM10056.0&amp;id=3D74700acb31e369495da22b4bbfd9e3f4315fc74a</a><b=
r />
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric:=
 inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-siz=
e: 12pt; line-height: inherit; vertical-align: baseline;"><em>SRC_rev :&nbs=
p;</em><a style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; v=
ertical-align: baseline; background-color: white !important;" href=3D"https=
://source.codeaurora.org/quic/femto5G/fsm/external/qoriq-components/linux_4=
.19-rt/commit/?h=3DAPSS.FSM.6.6-00194-FSM10056.0&amp;id=3D74700acb31e369495=
da22b4bbfd9e3f4315fc74a" target=3D"_blank" rel=3D"noopener noreferrer" data=
-auth=3D"NotApplicable" data-linkindex=3D"1">74700acb31e369495da22b4bbfd9e3=
f4315fc74a</a><br /><em>SRC branch:</em>&nbsp;APSS.FSM.6.6<br /><br />Here =
I have created separate layer and added my files under&nbsp;<strong><em>&lt=
;my_layer_name&gt;/recipe-kernel/linux/linux-qoriq-rt_4.19.bb</em></strong>=
&nbsp;path&nbsp;<br /><br /></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric:=
 inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-siz=
e: 12pt; line-height: inherit; vertical-align: baseline;">
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric:=
 inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-siz=
e: 12pt; line-height: inherit; vertical-align: baseline;"><span style=3D"ma=
rgin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseli=
ne; color: inherit;">&nbsp;</span></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric:=
 inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-siz=
e: 12pt; line-height: inherit; vertical-align: baseline;"><span style=3D"ma=
rgin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseli=
ne; color: inherit;"><span style=3D"margin: 0px; padding: 0px; border: 0px;=
 font: inherit; vertical-align: baseline; color: inherit;">i<em>nherit kern=
el qoriq_build_64bit_kernel siteinfo</em></span></span>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>inherit fsl-kernel-localversion</e=
m></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>SUMMARY =3D "Linux Kernel for NXP =
QorIQ platforms"</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>SECTION =3D "kernel"</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>LICENSE =3D "GPLv2"</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>LIC_FILES_CHKSUM =3D "file://COPYI=
NG;md5=3Dbbea815ee2795b2f4230826c0c6b8814"</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>SRC_URI =3D "https://source.codeau=
rora.org/quic/femto5G/fsm/external/qoriq-components/linux_4.19-rt;branch=3D=
APSS.FSM.6.6 \</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>"</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>SRCREV =3D "74700acb31e369495da22b=
4bbfd9e3f4315fc74a"</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>SRC_URI[sha256sum] =3D "ddb8e5defc=
daec9ce8cbe39d157f58a369decf7c1028cddaa6186343b7f09c2b"</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>S =3D "${WORKDIR}/git"</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>DEPENDS_append =3D " libgcc"</em><=
/div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em># not put Images into /boot of roo=
tfs, install kernel-image if needed</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>RDEPENDS_${KERNEL_PACKAGE_NAME}-ba=
se =3D ""</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>KERNEL_CC_append =3D " ${TOOLCHAIN=
_OPTIONS}"</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>KERNEL_LD_append =3D " ${TOOLCHAIN=
_OPTIONS}"</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>KERNEL_EXTRA_ARGS +=3D "LOADADDR=
=3D${UBOOT_ENTRYPOINT}"</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>ZIMAGE_BASE_NAME =3D "zImage-${PKG=
E}-${PKGV}-${PKGR}-${MACHINE}-${DATETIME}"</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>ZIMAGE_BASE_NAME[vardepsexclude] =
=3D "DATETIME"</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>SCMVERSION ?=3D "y"</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>LOCALVERSION =3D ""</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; vertic=
al-align: baseline; color: inherit;"><em>FILES_${KERNEL_PACKAGE_NAME}-image=
 +=3D "/boot/zImage*"</em></div>
<span style=3D"margin: 0px; padding: 0px; border: 0px; font: inherit; verti=
cal-align: baseline; color: inherit;"><em>COMPATIBLE_MACHINE =3D "(qoriq)"<=
/em></span></div>
<br /><br /></div>
When I try to build the kernel I am encountered with below errors,<br />
<blockquote>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric:=
 inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-siz=
e: 12pt; line-height: inherit; vertical-align: baseline;"><em>ERROR: linux-=
qoriq-rt-4.19-r0 do_populate_lic: QA Issue: linux-qoriq-rt: LIC_FILES_CHKSU=
M points to an invalid file: /home/rancore/rohit/git_pull/rgbbbuildscripts/=
build/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/build/tmp/work/odsc=
3_ibtb_sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/git/COPYING [license-ch=
ecksum]</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric:=
 inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-siz=
e: 12pt; line-height: inherit; vertical-align: baseline;"><em>ERROR: linux-=
qoriq-rt-4.19-r0 do_populate_lic: Fatal QA errors found, failing task.</em>=
</div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric:=
 inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-siz=
e: 12pt; line-height: inherit; vertical-align: baseline;"><em>ERROR: Logfil=
e of failure stored in: /home/rancore/rohit/git_pull/rgbbbuildscripts/build=
/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibt=
b_sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/temp/log.do_populate_lic.448=
95</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric:=
 inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-siz=
e: 12pt; line-height: inherit; vertical-align: baseline;"><em>ERROR: Task (=
/home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_odsc3_=
ibtb_sku2_board/build/poky/build/../meta-rjio_bsp/recipes-kernel/linux/linu=
x-qoriq-rt_4.19.bb:do_populate_lic) failed with exit code '1'</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric:=
 inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-siz=
e: 12pt; line-height: inherit; vertical-align: baseline;"><em>ERROR: linux-=
qoriq-rt-4.19-r0 do_preconfigure: Execution of '/home/rancore/rohit/git_pul=
l/rgbbbuildscripts/build/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/=
build/tmp/work/odsc3_ibtb_sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/temp=
/run.do_preconfigure.44894' failed with exit code 1:</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric:=
 inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-siz=
e: 12pt; line-height: inherit; vertical-align: baseline;"><em>/home/rancore=
/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_odsc3_ibtb_sku2_boa=
rd/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linux/linux-qoriq-r=
t/4.19-r0/temp/run.do_preconfigure.44894: line 120: /home/rancore/rohit/git=
_pull/rgbbbuildscripts/build/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/p=
oky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/=
defconfig: No such file or directory</em></div>
<div style=3D"margin: 0px; padding: 0px; border: 0px; font-variant-numeric:=
 inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-siz=
e: 12pt; line-height: inherit; vertical-align: baseline;"><em>WARNING: /hom=
e/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_odsc3_ibtb=
_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linux/linu=
x-qoriq-rt/4.19-r0/temp/run.do_preconfigure.44894:1 exit 1 from 'sed -e "${=
CONF_SED_SCRIPT}" &lt; '/home/rancore/rohit/git_pull/rgbbbuildscripts/build=
/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibt=
b_sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/defconfig' &gt;&gt; '/home/r=
ancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_odsc3_ibtb_sk=
u2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linux/linux-q=
oriq-rt/4.19-r0/build/.config''</em></div>
</blockquote>
Can anyone please guide me to build the kernel successfully?<br /><br />Tha=
nk you</div>

--cEGncHthVY8tY5SJvNLa--

