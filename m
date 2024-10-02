Return-Path: <philip.dawson@datapath.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87FD9CF31B0
	for <webhook@archiver.kernel.org>; Wed,  2 Oct 2024 10:22:13 +0000 (UTC)
Subject: bbappend prepend ordering with anonymous python function
To: yocto@lists.yoctoproject.org
From: philip.dawson@datapath.co.uk
X-Originating-Location: Paddington, England, GB (212.69.51.233)
X-Originating-Platform: Windows Firefox 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 02 Oct 2024 03:22:12 -0700
Message-ID: <V3Hm.1727864532625471243.Hfkh@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Gl77KtA9wQRNKhVWMRUu"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Oct 2024 10:22:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63927

--Gl77KtA9wQRNKhVWMRUu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm trying to debug an issue which seems to be caused by the order of prepe=
nd operations from bbappends with anonymous python functions.
I'm using Xilinx Petalinux tools 2023.1 version which corresponds to Yocto =
Langdale, but this feels like a generic bitbake/yocto question.

I have two layers both with device-tree.bbappend files, both of which set F=
ILESEXTRAPATHS:prepend, although sometimes through anonymous python functio=
ns. I need my layer to apply the prepend last so we have the first entry in=
 FILESEXTRAPATHS and our version of a file is found.

The ultimate purpose of this is to find our version of the "config" file wi=
th machine specific paths removed as it's stopping us from effectively shar=
ing sstate cache using a network file server.

The output from "bitbake-layers show-layers" shows that our layer has the h=
igher priority:
meta-xilinx-core =C2=A0 =C2=A0=C2=A0 <...snip...>/components/yocto/layers/m=
eta-xilinx/meta-xilinx-core =C2=A05
meta-datapath-esg=C2=A0 <...snip...>/yocto/meta-datapath-esg =C2=A09

The meta-xilinx-core layer is a dynamic layer in Xilinx's meta-petalinux la=
yer and in the layer.conf has:
BBFILES_DYNAMIC +=3D " \
<...snip...>
xilinx:${LAYERDIR}/dynamic-layers/xilinx-core/recipes-*/*/*.bb \
xilinx:${LAYERDIR}/dynamic-layers/xilinx-core/recipes-*/*/*.bbappend \
<...snip...>
"

But when looking at the FILESEXTRAPATHS variable with "bitbake-getvar -r de=
vice-tree FILESEXTRAPATHS" I can see that the lower priorty Xilinx dynamic =
layer is prepending last via the anonymous python functions so their versio=
n of the file is being found first:
# $FILESEXTRAPATHS [17 operations]
# =C2=A0 set? <...path...>/components/yocto/layers/poky/meta/conf/bitbake.c=
onf:376
# =C2=A0 =C2=A0 "__default:"
# =C2=A0 set <...path...>/components/yocto/layers/poky/meta/conf/documentat=
ion.conf:176
# =C2=A0 =C2=A0 [doc] "Extends the search path the OpenEmbedded build syste=
m uses when looking for files and patches as it processes recipes and appen=
d files."
<...snip...>
# =C2=A0 :prepend <...path...>/components/yocto/layers/meta-petalinux/dynam=
ic-layers/xilinx-core/recipes-bsp/device-tree/device-tree.bbappend:3
# =C2=A0 =C2=A0 "<...path...>/components/yocto/layers/meta-petalinux/dynami=
c-layers/xilinx-core/recipes-bsp/device-tree/files:"
<...snip...>
# =C2=A0 :prepend <...source path...>/yocto/meta-datapath-esg/recipes-bsp/d=
evice-tree/device-tree.bbappend:2
# =C2=A0 =C2=A0 "<...source path...>/yocto/meta-datapath-esg/recipes-bsp/de=
vice-tree/files:"
# =C2=A0 :prepend <...source path...>/yocto/meta-datapath-esg/recipes-bsp/d=
evice-tree/device-tree.bbappend:11
# =C2=A0 =C2=A0 "<...source path...>/yocto/meta-datapath-esg/recipes-bsp/de=
vice-tree/../../../bsps/dgc219:"
# =C2=A0 :prepend <...source path...>/yocto/meta-datapath-esg-dgc219/recipe=
s-bsp/device-tree/device-tree.bbappend:7
# =C2=A0 =C2=A0 "<...source path...>/yocto/meta-datapath-esg-dgc219/recipes=
-bsp/device-tree/files:"
# =C2=A0 prepend device-tree.bbappend:14 [__anon_18__home_phil_build_dgc219=
_release_dgc219_components_yocto_layers_meta_petalinux_dynamic_layers_xilin=
x_core_recipes_bsp_device_tree_device_tree_bbappend]
# =C2=A0 =C2=A0 "<...path...>/project-spec/configs:"
# =C2=A0 prepend device-tree.bbappend:16 [__anon_18__home_phil_build_dgc219=
_release_dgc219_components_yocto_layers_meta_petalinux_dynamic_layers_xilin=
x_core_recipes_bsp_device_tree_device_tree_bbappend]
# =C2=A0 =C2=A0 "<...path...>/components/yocto/layers/meta-xilinx/meta-xili=
nx-core/gen-machine-conf/gen-machine-scripts:"
<...snip...>

The relevant operations in the Xilinx bbappend are:
FILESEXTRAPATHS:prepend :=3D "${@'${THISDIR}/files:' \
if ((d.getVar('WITHIN_PLNX_FLOW') or '') !=3D '' and \
not d.getVar("SYSTEM_DTFILE")) else ''}"

python () {
if d.getVar("CONFIG_DISABLE"):
d.setVarFlag("do_configure", "noexec", "1")
if d.getVar("WITHIN_PLNX_FLOW") and not d.getVar("SYSTEM_DTFILE"):
d.appendVar('SRC_URI', ' file://config file://system-user.dtsi')
sysconfig_dir =3D d.getVar('SYSCONFIG_DIR') or ''
plnx_scriptspath =3D d.getVar('PLNX_SCRIPTS_PATH') or ''
if sysconfig_dir:
d.prependVar('FILESEXTRAPATHS', '%s:' % sysconfig_dir)
if plnx_scriptspath:
d.prependVar('FILESEXTRAPATHS', '%s:' % plnx_scriptspath)
d.appendVar('SRC_URI', ' file://%s' % plnx_scriptspath)
}

Is this the expected ordering? (That prepends from anonymous python functio=
ns d.prependVar() happen after VAR:prepend ignoring bbappend/layer ordering=
/priority?

Is there a way I can ensure my prepend comes last without having to BBMASK =
out the Xilinx bbappend and recreate/modify it's contents elsewhere?

Best Regards,
Phil Dawson

--Gl77KtA9wQRNKhVWMRUu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>I'm trying to debug an issue which seems to be caused by the order of =
prepend operations from bbappends with anonymous python functions.</div>
<div>I'm using Xilinx Petalinux tools 2023.1 version which corresponds to Y=
octo Langdale, but this feels like a generic bitbake/yocto question.</div>
<div>&nbsp;</div>
<div>I have two layers both with device-tree.bbappend files, both of which =
set FILESEXTRAPATHS:prepend, although sometimes through anonymous python fu=
nctions. I need my layer to apply the prepend last so we have the first ent=
ry in FILESEXTRAPATHS and our version of a file is found.</div>
<div>&nbsp;</div>
<div>The ultimate purpose of this is to find our version of the "config" fi=
le with machine specific paths removed as it's stopping us from effectively=
 sharing sstate cache using a network file server.</div>
<div>&nbsp;</div>
<div>The output from "bitbake-layers show-layers" shows that our layer has =
the higher priority:</div>
<div style=3D"padding-left: 40px;">meta-xilinx-core &nbsp; &nbsp;&nbsp; &lt=
;...snip...&gt;/components/yocto/layers/meta-xilinx/meta-xilinx-core &nbsp;=
5</div>
<div style=3D"padding-left: 40px;">meta-datapath-esg&nbsp; &lt;...snip...&g=
t;/yocto/meta-datapath-esg &nbsp;9</div>
<div style=3D"padding-left: 40px;">&nbsp;</div>
<div>The meta-xilinx-core layer is a dynamic layer in Xilinx's meta-petalin=
ux layer and in the layer.conf has:</div>
<div style=3D"padding-left: 40px;">BBFILES_DYNAMIC +=3D " \<br />&lt;...sni=
p...&gt;<br />&nbsp; &nbsp; xilinx:${LAYERDIR}/dynamic-layers/xilinx-core/r=
ecipes-*/*/*.bb \<br />&nbsp; &nbsp; xilinx:${LAYERDIR}/dynamic-layers/xili=
nx-core/recipes-*/*/*.bbappend \<br />&lt;...snip...&gt;<br />&nbsp; &nbsp;=
 "</div>
<div>&nbsp;</div>
<div>But when looking at the FILESEXTRAPATHS variable with "bitbake-getvar =
-r device-tree FILESEXTRAPATHS" I can see that the lower priorty Xilinx dyn=
amic layer is prepending last via the anonymous python functions so their v=
ersion of the file is being found first:</div>
<div style=3D"padding-left: 40px;"># $FILESEXTRAPATHS [17 operations]<br />=
# &nbsp; set? &lt;...path...&gt;/components/yocto/layers/poky/meta/conf/bit=
bake.conf:376<br /># &nbsp; &nbsp; "__default:"<br /># &nbsp; set &lt;...pa=
th...&gt;/components/yocto/layers/poky/meta/conf/documentation.conf:176<br =
/># &nbsp; &nbsp; [doc] "Extends the search path the OpenEmbedded build sys=
tem uses when looking for files and patches as it processes recipes and app=
end files."<br />&lt;...snip...&gt;<br /># &nbsp; :prepend &lt;...path...&g=
t;/components/yocto/layers/meta-petalinux/dynamic-layers/xilinx-core/recipe=
s-bsp/device-tree/device-tree.bbappend:3<br /># &nbsp; &nbsp; "&lt;...path.=
..&gt;/components/yocto/layers/meta-petalinux/dynamic-layers/xilinx-core/re=
cipes-bsp/device-tree/files:"<br />&lt;...snip...&gt;<br /># &nbsp; :prepen=
d &lt;...source path...&gt;/yocto/meta-datapath-esg/recipes-bsp/device-tree=
/device-tree.bbappend:2<br /># &nbsp; &nbsp; "&lt;...source path...&gt;/yoc=
to/meta-datapath-esg/recipes-bsp/device-tree/files:"<br /># &nbsp; :prepend=
 &lt;...source path...&gt;/yocto/meta-datapath-esg/recipes-bsp/device-tree/=
device-tree.bbappend:11<br /># &nbsp; &nbsp; "&lt;...source path...&gt;/yoc=
to/meta-datapath-esg/recipes-bsp/device-tree/../../../bsps/dgc219:"<br /># =
&nbsp; :prepend &lt;...source path...&gt;/yocto/meta-datapath-esg-dgc219/re=
cipes-bsp/device-tree/device-tree.bbappend:7<br /># &nbsp; &nbsp; "&lt;...s=
ource path...&gt;/yocto/meta-datapath-esg-dgc219/recipes-bsp/device-tree/fi=
les:"<br /># &nbsp; prepend device-tree.bbappend:14 [__anon_18__home_phil_b=
uild_dgc219_release_dgc219_components_yocto_layers_meta_petalinux_dynamic_l=
ayers_xilinx_core_recipes_bsp_device_tree_device_tree_bbappend]<br /># &nbs=
p; &nbsp; "&lt;...path...&gt;/project-spec/configs:"<br /># &nbsp; prepend =
device-tree.bbappend:16 [__anon_18__home_phil_build_dgc219_release_dgc219_c=
omponents_yocto_layers_meta_petalinux_dynamic_layers_xilinx_core_recipes_bs=
p_device_tree_device_tree_bbappend]<br /># &nbsp; &nbsp; "&lt;...path...&gt=
;/components/yocto/layers/meta-xilinx/meta-xilinx-core/gen-machine-conf/gen=
-machine-scripts:"<br />&lt;...snip...&gt;</div>
<div>&nbsp;</div>
<div>The relevant operations in the Xilinx bbappend are:</div>
<div>
<div style=3D"padding-left: 40px;">FILESEXTRAPATHS:prepend :=3D "${@'${THIS=
DIR}/files:' \<br />&nbsp; &nbsp; &nbsp; &nbsp; if ((d.getVar('WITHIN_PLNX_=
FLOW') or '') !=3D '' and \<br />&nbsp; &nbsp; &nbsp; &nbsp; not d.getVar("=
SYSTEM_DTFILE")) else ''}"</div>
<div style=3D"padding-left: 40px;">&nbsp;</div>
<div style=3D"padding-left: 40px;">python () {<br />&nbsp; &nbsp; if d.getV=
ar("CONFIG_DISABLE"):<br />&nbsp; &nbsp; &nbsp; &nbsp; d.setVarFlag("do_con=
figure", "noexec", "1")</div>
<div style=3D"padding-left: 40px;">&nbsp; &nbsp; if d.getVar("WITHIN_PLNX_F=
LOW") and not d.getVar("SYSTEM_DTFILE"):<br />&nbsp; &nbsp; &nbsp; &nbsp; d=
.appendVar('SRC_URI', ' file://config file://system-user.dtsi')<br />&nbsp;=
 &nbsp; &nbsp; &nbsp; sysconfig_dir =3D d.getVar('SYSCONFIG_DIR') or ''<br =
/>&nbsp; &nbsp; &nbsp; &nbsp; plnx_scriptspath =3D d.getVar('PLNX_SCRIPTS_P=
ATH') or ''<br />&nbsp; &nbsp; &nbsp; &nbsp; if sysconfig_dir:<br />&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; d.prependVar('FILESEXTRAPATHS', '%s:' % =
sysconfig_dir)<br />&nbsp; &nbsp; &nbsp; &nbsp; if plnx_scriptspath:<br />&=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; d.prependVar('FILESEXTRAPATHS', '%=
s:' % plnx_scriptspath)<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; d.ap=
pendVar('SRC_URI', ' file://%s' % plnx_scriptspath)<br />}</div>
</div>
<div>&nbsp;</div>
<div>Is this the expected ordering? (That prepends from anonymous python fu=
nctions d.prependVar() happen after VAR:prepend ignoring bbappend/layer ord=
ering/priority?<br /><br />Is there a way I can ensure my prepend comes las=
t without having to BBMASK out the Xilinx bbappend and recreate/modify it's=
 contents elsewhere?</div>
<div>&nbsp;</div>
<div>Best Regards,</div>
<div>Phil Dawson</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--Gl77KtA9wQRNKhVWMRUu--

