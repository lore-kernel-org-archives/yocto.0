Return-Path: <gary@missionsecure.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00F6CC6FD18
	for <webhook@archiver.kernel.org>; Wed, 19 Apr 2023 16:08:31 +0000 (UTC)
Subject: #kernelmodule #kirkstone Kernel configuration fragment overriden by netfilter.cfg
To: yocto@lists.yoctoproject.org
From: "Gary Huband" <gary@missionsecure.com>
X-Originating-Location: Charlottesville, Virginia, US (216.197.64.240)
X-Originating-Platform: Linux Firefox 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 19 Apr 2023 09:08:25 -0700
Message-ID: <aUiG.1681920505834787285.VbRh@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0xlGdrgwEBXmxG8NpIfx"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Apr 2023 16:08:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59737

--0xlGdrgwEBXmxG8NpIfx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm using kirkstone and meta-intel for a build.=C2=A0 I have a few kernel c=
onfiguration fragments but one of the fragment files, modbusbs.cfg, is not =
applied.

I created each fragment with
bitbake -c menuconfig virtual/kernel
bitbake -c diffconfig virtual/kernel
Then copied fragment.cfg to my layer.

The files in my layer:

linux-intel_%.bbappend:
*FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"*

*SRC_URI +=3D "\*
*file://i2c-dev.cfg \*
*file://modbusfw.cfg \*
*file://vlan.cfg \*
*"*

i2c-dev.cfg:
*CONFIG_I2C_CHARDEV=3Dy*

modbusfw.cfg:
*CONFIG_NETFILTER_XTABLES=3Dy*
*CONFIG_IP_NF_IPTABLES=3Dy*

vlan.cfg:
*CONFIG_MRP=3Dy*
*CONFIG_VLAN_8021Q=3Dy*
*CONFIG_VLAN_8021Q_MVRP=3Dy*

The i2c-dev.cfg and vlan.cfg are applied, but modbusfw.cfg is not.

Part of merge_config_build.log:

Value of CONFIG_I2C_CHARDEV is redefined by fragment .kernel-meta/configs/v=
5.15/standard/./i2c-dev.cfg:
Previous value: CONFIG_I2C_CHARDEV=3Dm
New value: CONFIG_I2C_CHARDEV=3Dy

Merging .kernel-meta/configs/v5.15/standard/./modbusfw.cfg
Value of CONFIG_IP_NF_IPTABLES is redefined by fragment .kernel-meta/config=
s/v5.15/standard/./modbusfw.cfg:
Previous value: CONFIG_IP_NF_IPTABLES=3Dm
New value: CONFIG_IP_NF_IPTABLES=3Dy

Merging .kernel-meta/configs/v5.15/standard/./vlan.cfg
Value of CONFIG_VLAN_8021Q is redefined by fragment .kernel-meta/configs/v5=
.15/standard/./vlan.cfg:
Previous value: CONFIG_VLAN_8021Q=3Dm
New value: CONFIG_VLAN_8021Q=3Dy

Merging .kernel-meta/configs/v5.15/standard/cfg/virtio.cfg
Merging .kernel-meta/configs/v5.15/standard/features/netfilter/netfilter.cf=
g
Value of CONFIG_NETFILTER_XTABLES is redefined by fragment .kernel-meta/con=
figs/v5.15/standard/features/netfilter/netfilter.cfg:
Previous value: CONFIG_NETFILTER_XTABLES=3Dy
New value: CONFIG_NETFILTER_XTABLES=3Dm

Value of CONFIG_IP_NF_IPTABLES is redefined by fragment .kernel-meta/config=
s/v5.15/standard/features/netfilter/netfilter.cfg:
Previous value: CONFIG_IP_NF_IPTABLES=3Dy
New value: CONFIG_IP_NF_IPTABLES=3Dm

So my modbusfw.cfg is being overriden by netfilter.cfg.

Any suggestions to fix this?

Thanks

Gary

--0xlGdrgwEBXmxG8NpIfx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<br />I'm using kirkstone and meta-intel for a build.&nbsp; I have a few ke=
rnel configuration fragments but one of the fragment files, modbusbs.cfg, i=
s not applied.<br /><br />I created each fragment with<br />bitbake -c menu=
config virtual/kernel<br />bitbake -c diffconfig virtual/kernel<br />Then c=
opied fragment.cfg to my layer.<br /><br />The files in my layer:<br /><br =
/>linux-intel_%.bbappend:<br /><strong>FILESEXTRAPATHS:prepend :=3D "${THIS=
DIR}/${PN}:"</strong><br /><br /><strong>SRC_URI +=3D "\</strong><br /><str=
ong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file=
://i2c-dev.cfg \</strong><br /><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://modbusfw.cfg \</strong><br /><strong>=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://v=
lan.cfg \</strong><br /><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; "</strong><br /><br />i2c-dev.cfg:<br /><strong>CONFIG_I2=
C_CHARDEV=3Dy</strong><br /><br />modbusfw.cfg:<br /><strong>CONFIG_NETFILT=
ER_XTABLES=3Dy</strong><br /><strong>CONFIG_IP_NF_IPTABLES=3Dy</strong><br =
/><br />vlan.cfg:<br /><strong>CONFIG_MRP=3Dy</strong><br /><strong>CONFIG_=
VLAN_8021Q=3Dy</strong><br /><strong>CONFIG_VLAN_8021Q_MVRP=3Dy</strong><br=
 /><br />The i2c-dev.cfg and vlan.cfg are applied, but modbusfw.cfg is not.=
<br /><br />Part of merge_config_build.log:<br /><br />Value of CONFIG_I2C_=
CHARDEV is redefined by fragment .kernel-meta/configs/v5.15/standard/./i2c-=
dev.cfg:<br />Previous value: CONFIG_I2C_CHARDEV=3Dm<br />New value: CONFIG=
_I2C_CHARDEV=3Dy<br /><br />Merging .kernel-meta/configs/v5.15/standard/./m=
odbusfw.cfg<br />Value of CONFIG_IP_NF_IPTABLES is redefined by fragment .k=
ernel-meta/configs/v5.15/standard/./modbusfw.cfg:<br />Previous value: CONF=
IG_IP_NF_IPTABLES=3Dm<br />New value: CONFIG_IP_NF_IPTABLES=3Dy<br /><br />=
Merging .kernel-meta/configs/v5.15/standard/./vlan.cfg<br />Value of CONFIG=
_VLAN_8021Q is redefined by fragment .kernel-meta/configs/v5.15/standard/./=
vlan.cfg:<br />Previous value: CONFIG_VLAN_8021Q=3Dm<br />New value: CONFIG=
_VLAN_8021Q=3Dy<br /><br />Merging .kernel-meta/configs/v5.15/standard/cfg/=
virtio.cfg<br />Merging .kernel-meta/configs/v5.15/standard/features/netfil=
ter/netfilter.cfg<br />Value of CONFIG_NETFILTER_XTABLES is redefined by fr=
agment .kernel-meta/configs/v5.15/standard/features/netfilter/netfilter.cfg=
:<br />Previous value: CONFIG_NETFILTER_XTABLES=3Dy<br />New value: CONFIG_=
NETFILTER_XTABLES=3Dm<br /><br />Value of CONFIG_IP_NF_IPTABLES is redefine=
d by fragment .kernel-meta/configs/v5.15/standard/features/netfilter/netfil=
ter.cfg:<br />Previous value: CONFIG_IP_NF_IPTABLES=3Dy<br />New value: CON=
FIG_IP_NF_IPTABLES=3Dm<br /><br />So my modbusfw.cfg is being overriden by =
netfilter.cfg.<br /><br />Any suggestions to fix this?<br /><br />Thanks<br=
 /><br />Gary

--0xlGdrgwEBXmxG8NpIfx--

