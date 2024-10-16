Return-Path: <Jesus.JimenezSanchez@verifone.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 053BDD2A52D
	for <webhook@archiver.kernel.org>; Wed, 16 Oct 2024 15:46:38 +0000 (UTC)
Subject: wlan.ko kernel object not being built by Yocto #kernelmodule
To: yocto@lists.yoctoproject.org
From: "Jesus Jimenez Sanchez" <Jesus.JimenezSanchez@verifone.com>
X-Originating-Location: DE (195.138.223.243)
X-Originating-Platform: Linux Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 16 Oct 2024 08:46:34 -0700
Message-ID: <WIeL.1729093594096600716.n9TJ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="9zVv1FZqphzz7SpiJ4yi"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Oct 2024 15:46:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64028

--9zVv1FZqphzz7SpiJ4yi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to build the wlan.ko kernel object to enable wifi in an embedde=
d device but I haven't been able to do it so far.

I have tried having the code for Linux in a remote repository and in a repo=
sitory in my local computer. For the config file, I have a defconfig file i=
n the Yocto folder that has this:
```
CONFIG_MODULES=3Dy
...
CONFIG_WLAN=3Dy
# CONFIG_WIRELESS_WDS is not set
# CONFIG_WLAN_VENDOR_ADMTEK is not set
CONFIG_WLAN_VENDOR_ATH=3Dy
CONFIG_ATH_DEBUG=3Dy
CONFIG_ATH_TRACEPOINTS=3Dy
CONFIG_ATH5K_PCI=3Dy
CONFIG_ATH6KL=3Dy
CONFIG_ATH6KL_SDIO=3Dy
CONFIG_ATH6KL_USB=3Dy
CONFIG_ATH6KL_DEBUG=3Dy
CONFIG_ATH6KL_TRACING=3Dy
```

That file is added in the linux-msm.inc recipe with this line:
```
SRC_URI =C2=A0 +=3D " file://neo2_defconfig \"
```

With that, I have tried having the local repository with another defconfig =
which also has the `CONFIG_WLAN=3Dy` line but it didn't work. A .config in =
the local repository just returns an error during the configuration phase.

After building when there is no configuration file in the local repository,=
 there are two files I've found in the build directory that could be the co=
nfig file:
```
./tmp-glibc/work/qrbx210_rbx-linux/linux-msm/5.4.191-r0/build/.config
./tmp-glibc/work/qrbx210_rbx-linux/linux-msm/5.4.191-r0/my_defconfig
```
Both of those files have different contents, but both have the `CONFIG_WLAN=
=3Dy` line.

Every time I manage to build Linux, the wlan.ko file is missing. For trying=
 to find it I have been using `find . -name wlan.ko` and `find . -name "*wl=
an*"` but I never find anything.

Do I need to do anything else to generate this file? Do I maybe need to con=
figure something else or get some extra sources?

I am using Linux 5.4.191-r0 and I couldn't get the Yocto version, but the B=
itbake version is 2.0.0.

--9zVv1FZqphzz7SpiJ4yi
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>Hello,</div>
<div>&nbsp;</div>
<div>I am trying to build the wlan.ko kernel object to enable wifi in an em=
bedded device but I haven't been able to do it so far.</div>
<div>&nbsp;</div>
<div>I have tried having the code for Linux in a remote repository and in a=
 repository in my local computer. For the config file, I have a defconfig f=
ile in the Yocto folder that has this:<br />```<br />CONFIG_MODULES=3Dy<br =
/>...<br />CONFIG_WLAN=3Dy<br /># CONFIG_WIRELESS_WDS is not set<br /># CON=
FIG_WLAN_VENDOR_ADMTEK is not set<br />CONFIG_WLAN_VENDOR_ATH=3Dy<br />CONF=
IG_ATH_DEBUG=3Dy<br />CONFIG_ATH_TRACEPOINTS=3Dy<br />CONFIG_ATH5K_PCI=3Dy<=
br />CONFIG_ATH6KL=3Dy<br />CONFIG_ATH6KL_SDIO=3Dy<br />CONFIG_ATH6KL_USB=
=3Dy<br />CONFIG_ATH6KL_DEBUG=3Dy<br />CONFIG_ATH6KL_TRACING=3Dy<br />```</=
div>
<div>&nbsp;</div>
<div>That file is added in the linux-msm.inc recipe with this line:<br />``=
`<br />SRC_URI &nbsp; +=3D " file://neo2_defconfig \"<br />```</div>
<div>&nbsp;</div>
<div>
<div>With that, I have tried having the local repository with another defco=
nfig which also has the `CONFIG_WLAN=3Dy` line but it didn't work. A .confi=
g in the local repository just returns an error during the configuration ph=
ase.</div>
<div>&nbsp;</div>
<div>After building when there is no configuration file in the local reposi=
tory, there are two files I've found in the build directory that could be t=
he config file:<br />```<br />./tmp-glibc/work/qrbx210_rbx-linux/linux-msm/=
5.4.191-r0/build/.config<br />./tmp-glibc/work/qrbx210_rbx-linux/linux-msm/=
5.4.191-r0/my_defconfig<br />```<br />Both of those files have different co=
ntents, but both have the `CONFIG_WLAN=3Dy` line.</div>
</div>
<div>&nbsp;</div>
<div>Every time I manage to build Linux, the wlan.ko file is missing. For t=
rying to find it I have been using `find . -name wlan.ko` and `find . -name=
 "*wlan*"` but I never find anything.&nbsp;</div>
<div>&nbsp;</div>
<div>Do I need to do anything else to generate this file? Do I maybe need t=
o configure something else or get some extra sources?</div>
<div>&nbsp;</div>
<div>I am using Linux 5.4.191-r0 and I couldn't get the Yocto version, but =
the Bitbake version is 2.0.0.</div>
</div>

--9zVv1FZqphzz7SpiJ4yi--

