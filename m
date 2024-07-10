Return-Path: <philip.dawson@datapath.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D3A8C3DA45
	for <webhook@archiver.kernel.org>; Wed, 10 Jul 2024 10:52:30 +0000 (UTC)
Subject: Common Kernel and Rootfs builds for multiple devices with different device trees
To: yocto@lists.yoctoproject.org
From: philip.dawson@datapath.co.uk
X-Originating-Location: Paddington, England, GB (212.69.51.233)
X-Originating-Platform: Windows Firefox 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 10 Jul 2024 03:52:26 -0700
Message-ID: <yEAa.1720608746953032896.RB58@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dYAKuVs6bkkJFX73gj81"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 10:52:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63452

--dYAKuVs6bkkJFX73gj81
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Sorry if this isn't a sensible question - I'm not quite familiar enough wit=
h Yocto to be sure if what I'm asking for is sensible/possible.

I'm currently building yocto (Through Xilinx Petalinux) for 4 related devic=
es and am looking to see if we can generate a single kernel and single root=
fs image for each board.
At the moment each board builds as a separate Petalinux project and the com=
bined build of all 4 takes a long time and the resulting images take up a l=
ot of disk space.

Currently I'm not sure it's possible as there is a dependency chain from de=
vice tree -> kernel -> modules/drivers -> our custom software. This means t=
he images are always different and the sstate cache for the kernel/drivers/=
custom software is only valid for the board it's built against.

Is there a way we can build one kernel for all four images even though they=
 will all need different device trees?

Am I even asking the right question here?

Best Regards,
Phil Dawson

--dYAKuVs6bkkJFX73gj81
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div class=3D"x_elementToProof" style=3D"border: 0px; font-style: normal; f=
ont-variant-ligatures: normal; font-variant-caps: normal; font-variant-nume=
ric: inherit; font-variant-east-asian: inherit; font-variant-alternates: in=
herit; font-variant-position: inherit; font-weight: 400; font-stretch: inhe=
rit; font-size: 12pt; line-height: inherit; font-family: Aptos, Aptos_Embed=
dedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #000000; letter-spacing: normal; orphans: 2; text-align: st=
art; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; background-color: #fff=
fff; text-decoration-thickness: initial; text-decoration-style: initial; te=
xt-decoration-color: initial;">Hi,<br /><br />Sorry if this isn't a sensibl=
e question - I'm not quite familiar enough with Yocto to be sure if what I'=
m asking for is sensible/possible.<br /><br />I'm currently building yocto =
(Through Xilinx Petalinux) for 4 related devices and am looking to see if w=
e can generate a single kernel and single rootfs image for each board.</div=
>
<div class=3D"x_elementToProof" style=3D"border: 0px; font-style: normal; f=
ont-variant-ligatures: normal; font-variant-caps: normal; font-variant-nume=
ric: inherit; font-variant-east-asian: inherit; font-variant-alternates: in=
herit; font-variant-position: inherit; font-weight: 400; font-stretch: inhe=
rit; font-size: 12pt; line-height: inherit; font-family: Aptos, Aptos_Embed=
dedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #000000; letter-spacing: normal; orphans: 2; text-align: st=
art; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; background-color: #fff=
fff; text-decoration-thickness: initial; text-decoration-style: initial; te=
xt-decoration-color: initial;">At the moment each board builds as a separat=
e Petalinux project and the combined build of all 4 takes a long time and t=
he resulting images take up a lot of disk space.</div>
<div class=3D"x_elementToProof" style=3D"border: 0px; font-style: normal; f=
ont-variant-ligatures: normal; font-variant-caps: normal; font-variant-nume=
ric: inherit; font-variant-east-asian: inherit; font-variant-alternates: in=
herit; font-variant-position: inherit; font-weight: 400; font-stretch: inhe=
rit; font-size: 12pt; line-height: inherit; font-family: Aptos, Aptos_Embed=
dedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #000000; letter-spacing: normal; orphans: 2; text-align: st=
art; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; background-color: #fff=
fff; text-decoration-thickness: initial; text-decoration-style: initial; te=
xt-decoration-color: initial;">&nbsp;</div>
<div class=3D"x_elementToProof" style=3D"border: 0px; font-style: normal; f=
ont-variant-ligatures: normal; font-variant-caps: normal; font-variant-nume=
ric: inherit; font-variant-east-asian: inherit; font-variant-alternates: in=
herit; font-variant-position: inherit; font-weight: 400; font-stretch: inhe=
rit; font-size: 12pt; line-height: inherit; font-family: Aptos, Aptos_Embed=
dedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #000000; letter-spacing: normal; orphans: 2; text-align: st=
art; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; background-color: #fff=
fff; text-decoration-thickness: initial; text-decoration-style: initial; te=
xt-decoration-color: initial;">Currently I'm not sure it's possible as ther=
e is a dependency chain from device tree -&gt; kernel -&gt; modules/drivers=
 -&gt; our custom software. This means the images are always different and =
the sstate cache for the kernel/drivers/custom software is only valid for t=
he board it's built against.</div>
<div class=3D"x_elementToProof" style=3D"border: 0px; font-style: normal; f=
ont-variant-ligatures: normal; font-variant-caps: normal; font-variant-nume=
ric: inherit; font-variant-east-asian: inherit; font-variant-alternates: in=
herit; font-variant-position: inherit; font-weight: 400; font-stretch: inhe=
rit; font-size: 12pt; line-height: inherit; font-family: Aptos, Aptos_Embed=
dedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #000000; letter-spacing: normal; orphans: 2; text-align: st=
art; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; background-color: #fff=
fff; text-decoration-thickness: initial; text-decoration-style: initial; te=
xt-decoration-color: initial;">&nbsp;</div>
<div class=3D"x_elementToProof" style=3D"border: 0px; font-style: normal; f=
ont-variant-ligatures: normal; font-variant-caps: normal; font-variant-nume=
ric: inherit; font-variant-east-asian: inherit; font-variant-alternates: in=
herit; font-variant-position: inherit; font-weight: 400; font-stretch: inhe=
rit; font-size: 12pt; line-height: inherit; font-family: Aptos, Aptos_Embed=
dedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #000000; letter-spacing: normal; orphans: 2; text-align: st=
art; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; background-color: #fff=
fff; text-decoration-thickness: initial; text-decoration-style: initial; te=
xt-decoration-color: initial;">Is there a way we can build one kernel for a=
ll four images even though they will all need different device trees?<br />=
<br />Am I even asking the right question here?</div>
<div class=3D"x_elementToProof" style=3D"border: 0px; font-style: normal; f=
ont-variant-ligatures: normal; font-variant-caps: normal; font-variant-nume=
ric: inherit; font-variant-east-asian: inherit; font-variant-alternates: in=
herit; font-variant-position: inherit; font-weight: 400; font-stretch: inhe=
rit; font-size: 12pt; line-height: inherit; font-family: Aptos, Aptos_Embed=
dedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #000000; letter-spacing: normal; orphans: 2; text-align: st=
art; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; background-color: #fff=
fff; text-decoration-thickness: initial; text-decoration-style: initial; te=
xt-decoration-color: initial;">&nbsp;</div>
<div class=3D"x_elementToProof" style=3D"border: 0px; font-style: normal; f=
ont-variant-ligatures: normal; font-variant-caps: normal; font-variant-nume=
ric: inherit; font-variant-east-asian: inherit; font-variant-alternates: in=
herit; font-variant-position: inherit; font-weight: 400; font-stretch: inhe=
rit; font-size: 12pt; line-height: inherit; font-family: Aptos, Aptos_Embed=
dedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #000000; letter-spacing: normal; orphans: 2; text-align: st=
art; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; background-color: #fff=
fff; text-decoration-thickness: initial; text-decoration-style: initial; te=
xt-decoration-color: initial;">Best Regards,</div>
<div class=3D"x_elementToProof" style=3D"border: 0px; font-style: normal; f=
ont-variant-ligatures: normal; font-variant-caps: normal; font-variant-nume=
ric: inherit; font-variant-east-asian: inherit; font-variant-alternates: in=
herit; font-variant-position: inherit; font-weight: 400; font-stretch: inhe=
rit; font-size: 12pt; line-height: inherit; font-family: Aptos, Aptos_Embed=
dedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #000000; letter-spacing: normal; orphans: 2; text-align: st=
art; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; white-space: normal; background-color: #fff=
fff; text-decoration-thickness: initial; text-decoration-style: initial; te=
xt-decoration-color: initial;">Phil Dawson</div>

--dYAKuVs6bkkJFX73gj81--

