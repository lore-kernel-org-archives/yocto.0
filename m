Return-Path: <rprronadrit@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D08CD0C5FB
	for <webhook@archiver.kernel.org>; Fri, 25 Oct 2024 10:24:47 +0000 (UTC)
Subject: sources/poky/meta/recipes-kernel/perf/perf.bb:do_compile) failed with exit code '1'
To: yocto@lists.yoctoproject.org
From: "RAVIKUMAR RONAD" <rprronadrit@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (122.171.18.41)
X-Originating-Platform: Windows Chrome 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 25 Oct 2024 03:24:43 -0700
Message-ID: <L0FD.1729851883206053358.YL1F@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rdknTmp9DTsXgk7Yf1V6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 10:24:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64125

--rdknTmp9DTsXgk7Yf1V6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Experts,

I'm currently working on the BSP images for an i.MX6ULL processor-based cus=
tom embedded board. I've created the machine file for the respective board,=
 & I'm trying to create a QT6 feature image. For this, I used the following=
 configuration and executed the command:

DISTRO=3Dfslc-xwayland MACHINE=3Dimx6ull-versa256 source calixto-setup-rele=
ase.sh -b build-xwayland

$bitbake imx-image-full"

Release: kirkstone
Used Host machine for Build: Server PowerEdge T1440 with 24.04 OS

But, I got the following issue:

*Output:*
*ERROR: Task (/home/calixto_admin/calixto-yocto-bsp/sources/poky/meta/recip=
es-kernel/perf/perf.bb:do_compile) failed with exit code '1'

* How to debug the perf.bb file ? is there any dependency do i need to add =
or remove for this ? so

Could someone please help me resolve this issue?

Thanks & Regards,

Ravikumar

--rdknTmp9DTsXgk7Yf1V6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"box-sizing: border-box; margin: 0px 0px 15px; color: #333f48; f=
ont-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-=
variant-ligatures: normal; font-variant-caps: normal; font-weight: 300; let=
ter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-t=
ransform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; white-space: normal; background-color: #ffffff; text-decoration-thicknes=
s: initial; text-decoration-style: initial; text-decoration-color: initial;=
">Dear Experts,</p>
<p style=3D"box-sizing: border-box; margin: 0px 0px 15px; color: #333f48; f=
ont-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-=
variant-ligatures: normal; font-variant-caps: normal; font-weight: 300; let=
ter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-t=
ransform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; white-space: normal; background-color: #ffffff; text-decoration-thicknes=
s: initial; text-decoration-style: initial; text-decoration-color: initial;=
">I'm currently working on the BSP images for an i.MX6ULL processor-based c=
ustom embedded board. I've created the machine file for the respective boar=
d, &amp; I'm trying to create a QT6 feature image. For this, I used the fol=
lowing configuration and executed the command:</p>
<pre class=3D"lia-code-sample  language-markup" style=3D"box-sizing: border=
-box; overflow: auto; font-family: Consolas, Monaco, 'Andale Mono', 'Ubuntu=
 Mono', monospace; font-size: 15px; display: block; padding: 13px; margin: =
0.5em 0px; line-height: 1.71429; word-break: break-all; overflow-wrap: brea=
k-word; color: #000000; background: #f5f2f0; border: 1px solid #cccccc; bor=
der-radius: 5px; tab-size: 4; hyphens: none; white-space: pre-wrap; text-sh=
adow: #ffffff 0px 1px; box-shadow: none; font-style: normal; font-variant-l=
igatures: normal; font-variant-caps: normal; font-weight: 300; letter-spaci=
ng: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform:=
 none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-d=
ecoration-thickness: initial; text-decoration-style: initial; text-decorati=
on-color: initial;"><code class=3D" language-markup" style=3D"box-sizing: b=
order-box; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; =
font-size: inherit; padding: 0px; color: inherit; background-color: transpa=
rent; border-radius: 0px; white-space: pre-wrap;">DISTRO=3Dfslc-xwayland MA=
CHINE=3Dimx6ull-versa256 source calixto-setup-release.sh -b build-xwayland

$bitbake imx-image-full"</code></pre>
<p style=3D"box-sizing: border-box; margin: 0px 0px 15px; color: #333f48; f=
ont-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-=
variant-ligatures: normal; font-variant-caps: normal; font-weight: 300; let=
ter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-t=
ransform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; white-space: normal; background-color: #ffffff; text-decoration-thicknes=
s: initial; text-decoration-style: initial; text-decoration-color: initial;=
">Release: kirkstone&nbsp;<br />Used Host machine for Build: Server PowerEd=
ge T1440 with 24.04 OS&nbsp;</p>
<p style=3D"box-sizing: border-box; margin: 0px 0px 15px; color: #333f48; f=
ont-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-=
variant-ligatures: normal; font-variant-caps: normal; font-weight: 300; let=
ter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-t=
ransform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; white-space: normal; background-color: #ffffff; text-decoration-thicknes=
s: initial; text-decoration-style: initial; text-decoration-color: initial;=
">But, I got the following issue:</p>
<p style=3D"box-sizing: border-box; margin: 0px 0px 15px; color: #333f48; f=
ont-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-=
variant-ligatures: normal; font-variant-caps: normal; font-weight: 300; let=
ter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-t=
ransform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; white-space: normal; background-color: #ffffff; text-decoration-thicknes=
s: initial; text-decoration-style: initial; text-decoration-color: initial;=
"><strong style=3D"box-sizing: border-box; font-weight: bold;">Output:</str=
ong><br style=3D"box-sizing: border-box;" /><strong style=3D"box-sizing: bo=
rder-box; font-weight: bold;">ERROR: Task (/home/calixto_admin/calixto-yoct=
o-bsp/sources/poky/meta/recipes-kernel/perf/perf.bb:do_compile) failed with=
 exit code '1'<br /><br /><br /></strong>How to debug the perf.bb file ? is=
 there any dependency do i need to add or remove for this ? so&nbsp;</p>
<p style=3D"box-sizing: border-box; margin: 0px 0px 15px; color: #333f48; f=
ont-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-=
variant-ligatures: normal; font-variant-caps: normal; font-weight: 300; let=
ter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-t=
ransform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; white-space: normal; background-color: #ffffff; text-decoration-thicknes=
s: initial; text-decoration-style: initial; text-decoration-color: initial;=
">Could someone please help me resolve this issue?<br /><br />Thanks &amp; =
Regards,</p>
<p style=3D"box-sizing: border-box; margin: 0px 0px 15px; color: #333f48; f=
ont-family: Poppins, sans-serif; font-size: 16px; font-style: normal; font-=
variant-ligatures: normal; font-variant-caps: normal; font-weight: 300; let=
ter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-t=
ransform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0p=
x; white-space: normal; background-color: #ffffff; text-decoration-thicknes=
s: initial; text-decoration-style: initial; text-decoration-color: initial;=
">Ravikumar</p>

--rdknTmp9DTsXgk7Yf1V6--

