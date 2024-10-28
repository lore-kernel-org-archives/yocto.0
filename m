Return-Path: <marcus.flyckt@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 207C7D13588
	for <webhook@archiver.kernel.org>; Mon, 28 Oct 2024 10:06:50 +0000 (UTC)
Subject: Issue with devtool modify u-boot
To: yocto@lists.yoctoproject.org
From: "Marcus Flyckt" <marcus.flyckt@gmail.com>
X-Originating-Location: =?UTF-8?B?S2FybHNrb2dhLCDDlnJlYnJvIENvdW50eSwgU0U=?= (195.22.86.94)
X-Originating-Platform: Linux Chrome 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 28 Oct 2024 03:06:40 -0700
Message-ID: <9xvw.1730110000326406420.vKNg@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="w7DALyKcVWsaCS2lDZlO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Oct 2024 10:06:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64152

--w7DALyKcVWsaCS2lDZlO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I encountered an issue with `do_config` when using `devtool modify` on `u-b=
oot-imx`.

```
[...]
| cp: cannot stat '[...]/u-boot-imx/2024.04/build/imx8mp_wl400s_defconfig/.=
config': No such file or directory
| WARNING: exit code 1 from a shell command.
ERROR: Task ([...]/sources/poky/../meta-freescale/recipes-bsp/u-boot/u-boot=
-imx_2024.04.bb:do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 963 tasks of which 962 didn't need to be rer=
un and 1 failed.
Summary: 1 task failed:
[...]/sources/poky/../meta-freescale/recipes-bsp/u-boot/u-boot-imx_2024.04.=
bb:do_configure
Summary: There was 1 ERROR message, returning a non-zero exit code
```

The issue seems to originate from the following lines in `workspace/appends=
/u-boot-imx_2024.04.bbappend`:

```
do_configure:append() {
if [ ${@oe.types.boolean(d.getVar("KCONFIG_CONFIG_ENABLE_MENUCONFIG"))} =3D=
 True ]; then
cp ${KCONFIG_CONFIG_ROOTDIR}/.config ${S}/.config.baseline
ln -sfT ${KCONFIG_CONFIG_ROOTDIR}/.config ${S}/.config.new
fi
}
```

For some reason `KCONFIG_CONFIG_ROOTDIR` does not point to the correct dire=
ctory. It gets its value in `uboot-config.bbclass`:

```
if len(ubootconfig) =3D=3D 1:
d.setVar('KCONFIG_CONFIG_ROOTDIR', os.path.join(d.getVar("B"), d.getVar("UB=
OOT_MACHINE").strip()))
```

So the main issue is that B gets expanded in this expression, and then late=
r B gets changed by `externalsrc.bbclass`. `d.getVar("B", False)` does not =
solve the issue, however the following change does

```
diff --git a/meta/classes-recipe/uboot-config.bbclass b/meta/classes-recipe=
/uboot-config.bbclass
index e55fc38b7c..28d5545b27 100644
--- a/meta/classes-recipe/uboot-config.bbclass
+++ b/meta/classes-recipe/uboot-config.bbclass
@@ -141,7 +141,7 @@ python () {
raise bb.parse.SkipRecipe("The selected UBOOT_CONFIG key %s has no match in=
 %s." % (ubootconfig, ubootconfigflags.keys()))

if len(ubootconfig) =3D=3D 1:
- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d.setVar('KCONFIG_=
CONFIG_ROOTDIR', os.path.join(d.getVar("B"), d.getVar("UBOOT_MACHINE").stri=
p()))
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d.setVar('KCONFIG_=
CONFIG_ROOTDIR', os.path.join("${B}", d.getVar("UBOOT_MACHINE").strip()))
else:
# Disable menuconfig for multiple configs
d.setVar('KCONFIG_CONFIG_ENABLE_MENUCONFIG', "false")
```

I'm not sure that this is the correct way to fix this problem though. But i=
f it is I'm happy to send a patch.

Kind regards
Marcus

--w7DALyKcVWsaCS2lDZlO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>I encountered an issue with `do_config` when using `devtool modify` on=
 `u-boot-imx`.</div>
<div>&nbsp;</div>
<div>```</div>
<div>[...]</div>
<div>
<div>| cp: cannot stat '[...]/u-boot-imx/2024.04/build/imx8mp_wl400s_defcon=
fig/.config': No such file or directory<br />| WARNING: exit code 1 from a =
shell command.<br />ERROR: Task ([...]/sources/poky/../meta-freescale/recip=
es-bsp/u-boot/u-boot-imx_2024.04.bb:do_configure) failed with exit code '1'=
<br />NOTE: Tasks Summary: Attempted 963 tasks of which 962 didn't need to =
be rerun and 1 failed.</div>
<div>Summary: 1 task failed:<br />&nbsp; [...]/sources/poky/../meta-freesca=
le/recipes-bsp/u-boot/u-boot-imx_2024.04.bb:do_configure<br />Summary: Ther=
e was 1 ERROR message, returning a non-zero exit code</div>
<div>```</div>
<div>&nbsp;</div>
<div>The issue seems to originate from the following lines in `workspace/ap=
pends/u-boot-imx_2024.04.bbappend`:</div>
<div>&nbsp;</div>
<div>```</div>
<div>do_configure:append() {<br />&nbsp; &nbsp; if [ ${@oe.types.boolean(d.=
getVar("KCONFIG_CONFIG_ENABLE_MENUCONFIG"))} =3D True ]; then<br />&nbsp; &=
nbsp; &nbsp; &nbsp; cp ${KCONFIG_CONFIG_ROOTDIR}/.config ${S}/.config.basel=
ine<br />&nbsp; &nbsp; &nbsp; &nbsp; ln -sfT ${KCONFIG_CONFIG_ROOTDIR}/.con=
fig ${S}/.config.new<br />&nbsp; &nbsp; fi<br />}</div>
<div>```</div>
<div>&nbsp;</div>
<div>For some reason `KCONFIG_CONFIG_ROOTDIR` does not point to the correct=
 directory. It gets its value in `uboot-config.bbclass`:</div>
<div>&nbsp;</div>
<div>```</div>
<div>if len(ubootconfig) =3D=3D 1:<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; d.setVar('KCONFIG_CONFIG_ROOTDIR', os.path.join(d.getV=
ar("B"), d.getVar("UBOOT_MACHINE").strip()))</div>
<div>```</div>
<div>&nbsp;</div>
<div>So the main issue is that B gets expanded in this expression, and then=
 later B gets changed by `externalsrc.bbclass`. `d.getVar("B", False)` does=
 not solve the issue, however the following change does</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>```</div>
<div>diff --git a/meta/classes-recipe/uboot-config.bbclass b/meta/classes-r=
ecipe/uboot-config.bbclass<br />index e55fc38b7c..28d5545b27 100644<br />--=
- a/meta/classes-recipe/uboot-config.bbclass<br />+++ b/meta/classes-recipe=
/uboot-config.bbclass<br />@@ -141,7 +141,7 @@ python () {<br />&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;raise bb.parse.SkipRecip=
e("The selected UBOOT_CONFIG key %s has no match in %s." % (ubootconfig, ub=
ootconfigflags.keys()))<br />&nbsp;<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;if len(ubootconfig) =3D=3D 1:<br />- &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;d.setVar('KCONFIG_CONFIG_ROOTDIR', os.path.j=
oin(d.getVar("B"), d.getVar("UBOOT_MACHINE").strip()))<br />+ &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;d.setVar('KCONFIG_CONFIG_ROOTDIR'=
, os.path.join("${B}", d.getVar("UBOOT_MACHINE").strip()))<br />&nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;else:<br />&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Disable menuconfig for multiple config=
s<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;d.setV=
ar('KCONFIG_CONFIG_ENABLE_MENUCONFIG', "false")</div>
<div>```</div>
<div>&nbsp;</div>
<div>I'm not sure that this is the correct way to fix this problem though. =
But if it is I'm happy to send a patch.</div>
<div>&nbsp;</div>
<div>Kind regards<br />Marcus</div>
</div>

--w7DALyKcVWsaCS2lDZlO--

