Return-Path: <philip.dawson@datapath.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24307D358F1
	for <webhook@archiver.kernel.org>; Thu, 29 Jan 2026 09:50:56 +0000 (UTC)
Subject: Re: [yocto] System device tree, AMD EDF, custom board
To: "Sergei Nikulov" <sergey.nikulov@gmail.com>, yocto@lists.yoctoproject.org
From: philip.dawson@datapath.co.uk
X-Originating-Location: Milton Keynes, England, GB (212.69.51.233)
X-Originating-Platform: Windows Firefox 147
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 29 Jan 2026 01:50:49 -0800
References: <g06F.1769608737933360301.CF5c@lists.yoctoproject.org> <CAE7Ac0D9xT6KDqr4NgM5mX95Z6aNhv46JNw+dGDqh4VdnseVsw@mail.gmail.com> <1007393.1769627915286057389@lists.yoctoproject.org> <CAE7Ac0Bx2CTE0Q60yGy+birEsmk4pZcZ_Et7Qi0N3CBbAPgw_g@mail.gmail.com>
In-Reply-To: <CAE7Ac0Bx2CTE0Q60yGy+birEsmk4pZcZ_Et7Qi0N3CBbAPgw_g@mail.gmail.com>
Message-ID: <1014278.1769680249495232637@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WjFFLAkl5NZB1klI3x1l"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Jan 2026 09:50:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66204

--WjFFLAkl5NZB1klI3x1l
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Pierre,

I'm not an expert on this but have been going through the migration an olde=
r Petalinux to Scarthgap and SDTgen recently.
If you find you don't get the right answers here you could also try posting=
 on the meta-xilinx subgroup - they've helped me a lot before.

The answer may depend on how you are configuring your PL, is it as part of =
boot.bin or is it configured later in U-Boot/Linux?
Relatedly do you have a single device tree for Linux with PS and PL parts i=
n or is it split into two, a base device tree for PS and a device tree over=
lay for PL?
(Do you supply the -g/--gen-pl-overlay argument to gen-machine-conf?)

In our case we have PL configured in U-boot, and use a device tree overlay =
for the PL applied after Linux has booted.

For extra bits we need in the PS/base device tree we use "set_dt_param -use=
r_dts <path to dsti file>" in the tcl file we pass to sdtgen.

This doesn't work for nodes in the PL though - after discussing our situati=
on with AMD we were advised to create a Yocto recipe which takes the pl.dts=
i output of gen-machine-conf
and combines it with our own dtsi for the extra parts, compiling it into a =
dtbo which we load via a systemd service as Linux starts.

Hope this helps a bit, happy to dig deeper if it sounds right for your situ=
ation.

Best Regards,
Phil Dawson

--WjFFLAkl5NZB1klI3x1l
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Pierre,<br /><br />I'm not an expert on this but have been going th=
rough the migration an older Petalinux to Scarthgap and SDTgen recently.</d=
iv>
<div>If you find you don't get the right answers here you could also try po=
sting on the meta-xilinx subgroup - they've helped me a lot before.</div>
<div>&nbsp;</div>
<div>The answer may depend on how you are configuring your PL, is it as par=
t of boot.bin or is it configured later in U-Boot/Linux?</div>
<div>Relatedly do you have a single device tree for Linux with PS and PL pa=
rts in or is it split into two, a base device tree for PS and a device tree=
 overlay for PL?</div>
<div>(Do you supply the -g/--gen-pl-overlay argument to gen-machine-conf?)<=
/div>
<div>&nbsp;</div>
<div>In our case we have PL configured in U-boot, and use a device tree ove=
rlay for the PL applied after Linux has booted.</div>
<div>&nbsp;</div>
<div>For extra bits we need in the PS/base device tree we use "set_dt_param=
 -user_dts &lt;path to dsti file&gt;" in the tcl file we pass to sdtgen.</d=
iv>
<div>&nbsp;</div>
<div>This doesn't work for nodes in the PL though - after discussing our si=
tuation with AMD we were advised to create a Yocto recipe which takes the p=
l.dtsi output of gen-machine-conf</div>
<div>and combines it with our own dtsi for the extra parts, compiling it in=
to a dtbo which we load via a systemd service as Linux starts.</div>
<div>&nbsp;</div>
<div>Hope this helps a bit, happy to dig deeper if it sounds right for your=
 situation.</div>
<div>&nbsp;</div>
<div>Best Regards,</div>
<div>Phil Dawson</div>

--WjFFLAkl5NZB1klI3x1l--

