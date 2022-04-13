Return-Path: <tomasz.zyjewski@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9730C47093
	for <webhook@archiver.kernel.org>; Wed, 13 Apr 2022 15:48:07 +0000 (UTC)
Subject: Re: Yocto Kernel building
To: yocto@lists.yoctoproject.org
From: "tomzy" <tomasz.zyjewski@3mdeb.com>
X-Originating-Location: Warsaw, Mazovia, PL (84.10.27.202)
X-Originating-Platform: Linux Firefox 99
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 13 Apr 2022 03:36:14 -0700
References: <6bRo.1649842734627600476.zBxh@lists.yoctoproject.org>
In-Reply-To: <6bRo.1649842734627600476.zBxh@lists.yoctoproject.org>
Message-ID: <22827.1649846174423979427@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="iArrh4VsFNfndLD3PnYs"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Apr 2022 15:48:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56763

--iArrh4VsFNfndLD3PnYs
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> Hello,I was trying to build a kernel for layerscape ls1046ardb setup.I
> referred the=C2=A0meta-freescale/recipes-kernel/linux/linux-qoriq_5.4.bb =
file
> from dunfell branch.Build configuration:
> Yocto branch : dunfell
> Required kernel source : https://source.codeaurora.org/quic/femto5G/fsm/e=
xternal/qoriq-components/linux_4.19-rt/commit/?h=3DAPSS.FSM.6.6-00194-FSM10=
056.0&id=3D74700acb31e369495da22b4bbfd9e3f4315fc74a
>=20
> SRC_rev : 74700acb31e369495da22b4bbfd9e3f4315fc74a (
> https://source.codeaurora.org/quic/femto5G/fsm/external/qoriq-components/=
linux_4.19-rt/commit/?h=3DAPSS.FSM.6.6-00194-FSM10056.0&id=3D74700acb31e369=
495da22b4bbfd9e3f4315fc74a
> )
> SRC branch: APSS.FSM.6.6
>=20
> Here I have created separate layer and added my files under *<my_layer_na=
me>/recipe-kernel/linux/linux-qoriq-rt_4.19.bb*
> path
>=20

It is better to use [include file]( https://github.com/Freescale/meta-frees=
cale/blob/dunfell/recipes-kernel/linux/linux-qoriq.inc )
in similar way the
[linux-qoriq_5.4.bb]( https://github.com/Freescale/meta-freescale/blob/dunf=
ell/recipes-kernel/linux/linux-qoriq_5.4.bb ) does it.

So the ` *linux-qoriq-rt_4.19.bb`* should be

```

LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dbbea815ee2795b2f4230826c0c6b8814=
"

LINUX_VERSION =3D "4.19.90"

SRC_URI =3D "https://source.codeaurora.org/quic/femto5G/fsm/external/qoriq-=
components/linux_4.19-rt;branch=3DAPSS.FSM.6.6 \
"
SRCREV =3D "74700acb31e369495da22b4bbfd9e3f4315fc74a"

require recipes-kernel/linux/linux-qoriq.inc

```
LINUX_VERSION can be get from linux_4.19-rt repo. Please let us know it thi=
s helps.

>=20
>=20
>=20
>=20
>=20
> i nherit kernel qoriq_build_64bit_kernel siteinfo
> inherit fsl-kernel-localversion
>=20
> SUMMARY =3D "Linux Kernel for NXP QorIQ platforms"
> SECTION =3D "kernel"
> LICENSE =3D "GPLv2"
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dbbea815ee2795b2f4230826c0c6b88=
14"
>=20
> SRC_URI =3D
> "https://source.codeaurora.org/quic/femto5G/fsm/external/qoriq-components=
/linux_4.19-rt;branch=3DAPSS.FSM.6.6
> \
> "
> SRCREV =3D "74700acb31e369495da22b4bbfd9e3f4315fc74a"
>=20
> SRC_URI[sha256sum] =3D
> "ddb8e5defcdaec9ce8cbe39d157f58a369decf7c1028cddaa6186343b7f09c2b"
>=20
> S =3D "${WORKDIR}/git"
>=20
> DEPENDS_append =3D " libgcc"
> # not put Images into /boot of rootfs, install kernel-image if needed
> RDEPENDS_${KERNEL_PACKAGE_NAME}-base =3D ""
>=20
> KERNEL_CC_append =3D " ${TOOLCHAIN_OPTIONS}"
> KERNEL_LD_append =3D " ${TOOLCHAIN_OPTIONS}"
> KERNEL_EXTRA_ARGS +=3D "LOADADDR=3D${UBOOT_ENTRYPOINT}"
>=20
> ZIMAGE_BASE_NAME =3D "zImage-${PKGE}-${PKGV}-${PKGR}-${MACHINE}-${DATETIM=
E}"
>=20
> ZIMAGE_BASE_NAME[vardepsexclude] =3D "DATETIME"
>=20
> SCMVERSION ?=3D "y"
> LOCALVERSION =3D ""
>=20
> FILES_${KERNEL_PACKAGE_NAME}-image +=3D "/boot/zImage*"
> COMPATIBLE_MACHINE =3D "(qoriq)"
>=20
>=20
>=20
> When I try to build the kernel I am encountered with below errors,
>=20
>> ERROR: linux-qoriq-rt-4.19-r0 do_populate_lic: QA Issue: linux-qoriq-rt:
>> LIC_FILES_CHKSUM points to an invalid file:
>> /home/rancore/rohit/git_pull/rgbbbuildscripts/build
>>=20
>>=20
>=20
>=20

Looks like there is a problem with finding lic file, it may be that S point=
s to incorrect path.

>=20
>=20
>> /rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_=
ibtb_sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/git/COPYING
>> [license-checksum]
>> ERROR: linux-qoriq-rt-4.19-r0 do_populate_lic: Fatal QA errors found,
>> failing task.
>> ERROR: Logfile of failure stored in:
>> /home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_ods=
c3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-lin=
ux/linux-qoriq-rt/4.19-r0/temp/log.do_populate_lic.44895
>>=20
>> ERROR: Task
>> (/home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_od=
sc3_ibtb_sku2_board/build/poky/build/../meta-rjio_bsp/recipes-kernel/linux/=
linux-qoriq-rt_4.19.bb:do_populate_lic)
>> failed with exit code '1'
>> ERROR: linux-qoriq-rt-4.19-r0 do_preconfigure: Execution of
>> '/home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_od=
sc3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-li=
nux/linux-qoriq-rt/4.19-r0/temp/run.do_preconfigure.44894'
>> failed with exit code 1:
>> /home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_ods=
c3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-lin=
ux/linux-qoriq-rt/4.19-r0/temp/run.do_preconfigure.44894:
>> line 120:
>> /home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_ods=
c3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-lin=
ux/linux-qoriq-rt/4.19-r0/defconfig:
>> No such file or directory
>> WARNING:
>> /home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_ods=
c3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-lin=
ux/linux-qoriq-rt/4.19-r0/temp/run.do_preconfigure.44894:1
>> exit 1 from 'sed -e "${CONF_SED_SCRIPT}" <
>> '/home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_od=
sc3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-li=
nux/linux-qoriq-rt/4.19-r0/defconfig'
>> >>
>> '/home/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_od=
sc3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-li=
nux/linux-qoriq-rt/4.19-r0/build/.config''
>>=20
>>=20
>=20
> Can anyone please guide me to build the kernel successfully?
>=20
> Thank you
>=20

Regards,
Tomasz =C5=BByjewski
Embedded Systems Engineer
GPG: 5C495EA3EBEECA59
https://3mdeb.com | @3mdeb_com

--iArrh4VsFNfndLD3PnYs
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>Hello,I was trying to build a kernel for layerscape ls1046ardb =
setup.I referred the&nbsp;meta-freescale/recipes-kernel/linux/linux-qoriq_5=
.4.bb file from dunfell branch.Build configuration:
<div style=3D"font-size: 12pt; font-family: Calibri, Arial, Helvetica, sans=
-serif; color: black;"><em>Yocto branch</em>: dunfell<br /><em>Required ker=
nel source</em>:&nbsp;<a id=3D"LPlnk430261" href=3D"https://source.codeauro=
ra.org/quic/femto5G/fsm/external/qoriq-components/linux_4.19-rt/commit/?h=
=3DAPSS.FSM.6.6-00194-FSM10056.0&amp;id=3D74700acb31e369495da22b4bbfd9e3f43=
15fc74a" target=3D"_blank" rel=3D"nofollow noopener">https://source.codeaur=
ora.org/quic/femto5G/fsm/external/qoriq-components/linux_4.19-rt/commit/?h=
=3DAPSS.FSM.6.6-00194-FSM10056.0&amp;id=3D74700acb31e369495da22b4bbfd9e3f43=
15fc74a</a><br />
<div style=3D"font-size: 12pt;"><em>SRC_rev :&nbsp;</em><a href=3D"https://=
source.codeaurora.org/quic/femto5G/fsm/external/qoriq-components/linux_4.19=
-rt/commit/?h=3DAPSS.FSM.6.6-00194-FSM10056.0&amp;id=3D74700acb31e369495da2=
2b4bbfd9e3f4315fc74a" target=3D"_blank" rel=3D"nofollow noopener">74700acb3=
1e369495da22b4bbfd9e3f4315fc74a</a><br /><em>SRC branch:</em>&nbsp;APSS.FSM=
.6.6<br /><br />Here I have created separate layer and added my files under=
&nbsp;<strong><em>&lt;my_layer_name&gt;/recipe-kernel/linux/linux-qoriq-rt_=
4.19.bb</em></strong>&nbsp;path&nbsp;</div>
</div>
</blockquote>
<p>It is better to use [include file](<a href=3D"https://github.com/Freesca=
le/meta-freescale/blob/dunfell/recipes-kernel/linux/linux-qoriq.inc" target=
=3D"_blank" rel=3D"noopener">https://github.com/Freescale/meta-freescale/bl=
ob/dunfell/recipes-kernel/linux/linux-qoriq.inc</a>)<br />in similar way th=
e<br />[linux-qoriq_5.4.bb](<a href=3D"https://github.com/Freescale/meta-fr=
eescale/blob/dunfell/recipes-kernel/linux/linux-qoriq_5.4.bb" target=3D"_bl=
ank" rel=3D"noopener">https://github.com/Freescale/meta-freescale/blob/dunf=
ell/recipes-kernel/linux/linux-qoriq_5.4.bb</a> ) does it.<br /><br />So th=
e `<strong><em>linux-qoriq-rt_4.19.bb`&nbsp;</em></strong>should be</p>
<p>```</p>
<p>LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dbbea815ee2795b2f4230826c0c6b8=
814"<br /><br />LINUX_VERSION =3D "4.19.90"<br /><br />SRC_URI =3D "https:/=
/source.codeaurora.org/quic/femto5G/fsm/external/qoriq-components/linux_4.1=
9-rt;branch=3DAPSS.FSM.6.6 \<br />"<br />SRCREV =3D "74700acb31e369495da22b=
4bbfd9e3f4315fc74a"<br /><br />require recipes-kernel/linux/linux-qoriq.inc=
</p>
<p>```<br />LINUX_VERSION can be get from linux_4.19-rt repo. Please let us=
 know it this helps.</p>
<blockquote>
<div style=3D"font-size: 12pt; font-family: Calibri, Arial, Helvetica, sans=
-serif; color: black;">
<div style=3D"font-size: 12pt;"><br /><br /></div>
<div style=3D"font-size: 12pt;">
<div style=3D"font-size: 12pt;"><span style=3D"font: inherit; color: inheri=
t;">&nbsp;</span></div>
<div style=3D"font-size: 12pt;"><span style=3D"font: inherit; color: inheri=
t;"><span style=3D"font: inherit; color: inherit;">i<em>nherit kernel qoriq=
_build_64bit_kernel siteinfo</em></span></span>
<div style=3D"font: inherit; color: inherit;"><em>inherit fsl-kernel-localv=
ersion</em></div>
<div style=3D"font: inherit; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"font: inherit; color: inherit;"><em>SUMMARY =3D "Linux Kernel=
 for NXP QorIQ platforms"</em></div>
<div style=3D"font: inherit; color: inherit;"><em>SECTION =3D "kernel"</em>=
</div>
<div style=3D"font: inherit; color: inherit;"><em>LICENSE =3D "GPLv2"</em><=
/div>
<div style=3D"font: inherit; color: inherit;"><em>LIC_FILES_CHKSUM =3D "fil=
e://COPYING;md5=3Dbbea815ee2795b2f4230826c0c6b8814"</em></div>
<div style=3D"font: inherit; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"font: inherit; color: inherit;"><em>SRC_URI =3D "https://sour=
ce.codeaurora.org/quic/femto5G/fsm/external/qoriq-components/linux_4.19-rt;=
branch=3DAPSS.FSM.6.6 \</em></div>
<div style=3D"font: inherit; color: inherit;"><em>"</em></div>
<div style=3D"font: inherit; color: inherit;"><em>SRCREV =3D "74700acb31e36=
9495da22b4bbfd9e3f4315fc74a"</em></div>
<div style=3D"font: inherit; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"font: inherit; color: inherit;"><em>SRC_URI[sha256sum] =3D "d=
db8e5defcdaec9ce8cbe39d157f58a369decf7c1028cddaa6186343b7f09c2b"</em></div>
<div style=3D"font: inherit; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"font: inherit; color: inherit;"><em>S =3D "${WORKDIR}/git"</e=
m></div>
<div style=3D"font: inherit; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"font: inherit; color: inherit;"><em>DEPENDS_append =3D " libg=
cc"</em></div>
<div style=3D"font: inherit; color: inherit;"><em># not put Images into /bo=
ot of rootfs, install kernel-image if needed</em></div>
<div style=3D"font: inherit; color: inherit;"><em>RDEPENDS_${KERNEL_PACKAGE=
_NAME}-base =3D ""</em></div>
<div style=3D"font: inherit; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"font: inherit; color: inherit;"><em>KERNEL_CC_append =3D " ${=
TOOLCHAIN_OPTIONS}"</em></div>
<div style=3D"font: inherit; color: inherit;"><em>KERNEL_LD_append =3D " ${=
TOOLCHAIN_OPTIONS}"</em></div>
<div style=3D"font: inherit; color: inherit;"><em>KERNEL_EXTRA_ARGS +=3D "L=
OADADDR=3D${UBOOT_ENTRYPOINT}"</em></div>
<div style=3D"font: inherit; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"font: inherit; color: inherit;"><em>ZIMAGE_BASE_NAME =3D "zIm=
age-${PKGE}-${PKGV}-${PKGR}-${MACHINE}-${DATETIME}"</em></div>
<div style=3D"font: inherit; color: inherit;"><em>ZIMAGE_BASE_NAME[vardepse=
xclude] =3D "DATETIME"</em></div>
<div style=3D"font: inherit; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"font: inherit; color: inherit;"><em>SCMVERSION ?=3D "y"</em><=
/div>
<div style=3D"font: inherit; color: inherit;"><em>LOCALVERSION =3D ""</em><=
/div>
<div style=3D"font: inherit; color: inherit;"><em>&nbsp;</em></div>
<div style=3D"font: inherit; color: inherit;"><em>FILES_${KERNEL_PACKAGE_NA=
ME}-image +=3D "/boot/zImage*"</em></div>
<span style=3D"font: inherit; color: inherit;"><em>COMPATIBLE_MACHINE =3D "=
(qoriq)"</em></span></div>
<br /><br /></div>
When I try to build the kernel I am encountered with below errors,<br />
<blockquote>
<div style=3D"font-size: 12pt;"><em>ERROR: linux-qoriq-rt-4.19-r0 do_popula=
te_lic: QA Issue: linux-qoriq-rt: LIC_FILES_CHKSUM points to an invalid fil=
e: /home/rancore/rohit/git_pull/rgbbbuildscripts/build<br /></em></div>
</blockquote>
</div>
</blockquote>
Looks like there is a problem with finding lic file, it may be that S point=
s to incorrect path.<br />
<blockquote>
<div style=3D"font-size: 12pt; font-family: Calibri, Arial, Helvetica, sans=
-serif; color: black;">
<blockquote>
<div style=3D"font-size: 12pt;"><em>/rjio/fw_main_dev_odsc3_ibtb_sku2_board=
/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linux/linux-qoriq-rt/=
4.19-r0/git/COPYING [license-checksum]</em></div>
<div style=3D"font-size: 12pt;"><em>ERROR: linux-qoriq-rt-4.19-r0 do_popula=
te_lic: Fatal QA errors found, failing task.</em></div>
<div style=3D"font-size: 12pt;"><em>ERROR: Logfile of failure stored in: /h=
ome/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_odsc3_ib=
tb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linux/li=
nux-qoriq-rt/4.19-r0/temp/log.do_populate_lic.44895</em></div>
<div style=3D"font-size: 12pt;"><em>ERROR: Task (/home/rancore/rohit/git_pu=
ll/rgbbbuildscripts/build/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky=
/build/../meta-rjio_bsp/recipes-kernel/linux/linux-qoriq-rt_4.19.bb:do_popu=
late_lic) failed with exit code '1'</em></div>
<div style=3D"font-size: 12pt;"><em>ERROR: linux-qoriq-rt-4.19-r0 do_precon=
figure: Execution of '/home/rancore/rohit/git_pull/rgbbbuildscripts/build/r=
jio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_=
sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/temp/run.do_preconfigure.44894=
' failed with exit code 1:</em></div>
<div style=3D"font-size: 12pt;"><em>/home/rancore/rohit/git_pull/rgbbbuilds=
cripts/build/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/build/tmp/wo=
rk/odsc3_ibtb_sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/temp/run.do_prec=
onfigure.44894: line 120: /home/rancore/rohit/git_pull/rgbbbuildscripts/bui=
ld/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/build/tmp/work/odsc3_i=
btb_sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/defconfig: No such file or=
 directory</em></div>
<div style=3D"font-size: 12pt;"><em>WARNING: /home/rancore/rohit/git_pull/r=
gbbbuildscripts/build/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/bui=
ld/tmp/work/odsc3_ibtb_sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/temp/ru=
n.do_preconfigure.44894:1 exit 1 from 'sed -e "${CONF_SED_SCRIPT}" &lt; '/h=
ome/rancore/rohit/git_pull/rgbbbuildscripts/build/rjio/fw_main_dev_odsc3_ib=
tb_sku2_board/build/poky/build/tmp/work/odsc3_ibtb_sku2_board-poky-linux/li=
nux-qoriq-rt/4.19-r0/defconfig' &gt;&gt; '/home/rancore/rohit/git_pull/rgbb=
buildscripts/build/rjio/fw_main_dev_odsc3_ibtb_sku2_board/build/poky/build/=
tmp/work/odsc3_ibtb_sku2_board-poky-linux/linux-qoriq-rt/4.19-r0/build/.con=
fig''</em></div>
</blockquote>
Can anyone please guide me to build the kernel successfully?<br /><br />Tha=
nk you</div>
</blockquote>
Regards,<br />Tomasz =C5=BByjewski<br />Embedded Systems Engineer<br />GPG:=
 5C495EA3EBEECA59<br />https://3mdeb.com | @3mdeb_com

--iArrh4VsFNfndLD3PnYs--

