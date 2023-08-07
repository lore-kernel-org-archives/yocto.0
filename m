Return-Path: <dini.michele@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F90EB64DD
	for <webhook@archiver.kernel.org>; Mon,  7 Aug 2023 07:07:41 +0000 (UTC)
Subject: Timescaledb-toolkit issue #rust
To: yocto@lists.yoctoproject.org
From: dini.michele@gmail.com
X-Originating-Location: Sassuolo, Emilia-Romagna, IT (151.67.175.182)
X-Originating-Platform: Linux Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 07 Aug 2023 00:07:33 -0700
Message-ID: <V0kT.1691392053458149531.vrIQ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="P5kL9zIKUMaXhrnx9He2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Aug 2023 07:07:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60721

--P5kL9zIKUMaXhrnx9He2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm trying to add a recipe for timebasedb-toolkit from https://github.com/t=
imescale/timescaledb-toolkit , but I'm not very experienced with Rust.

I added meta-rust (just to have configuration for Rust 1.66.1) and installe=
d cargo-bitbake. I successfully generated the base recipe and tried to buil=
d it. However it fails in the do_compile step.

Before building the package, this configuration is required:

cargo install --version '=3D0.9.7' --force cargo-pgrx

cargo pgrx init --pg14 pg_config

However, I don't know how to implement such "pre-configuration" to the reci=
pe. Tried to add the commands in do_compile:prepend() and also re-writing t=
he do_compile inserting those commands without luck.

Any hint?

I'm using Kirkstore, Raspberrypi CM4 platform, 64bit

Thank you very much

--P5kL9zIKUMaXhrnx9He2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p>
<p>I'm trying to add a recipe for timebasedb-toolkit from <a href=3D"https:=
//github.com/timescale/timescaledb-toolkit" target=3D"_blank" rel=3D"noopen=
er">https://github.com/timescale/timescaledb-toolkit</a>&nbsp;, but I'm not=
 very experienced with Rust.</p>
<p>I added meta-rust (just to have configuration for Rust 1.66.1) and insta=
lled cargo-bitbake. I successfully generated the base recipe and tried to b=
uild it. However it fails in the do_compile step.</p>
<p>Before building the package, this configuration is required:<br /><br />=
<span style=3D"font-family: courier_newregular, courier;">cargo install --v=
ersion '=3D0.9.7' --force cargo-pgrx</span></p>
<p><span style=3D"font-family: courier_newregular, courier;">cargo pgrx ini=
t --pg14 pg_config</span></p>
<p>&nbsp;</p>
<p>However, I don't know how to implement such "pre-configuration" to the r=
ecipe. Tried to add the commands in do_compile:prepend() and also re-writin=
g the do_compile inserting those commands without luck.</p>
<p>Any hint?<br /><br /></p>
<p>I'm using Kirkstore, Raspberrypi CM4 platform, 64bit</p>
<p>Thank you very much</p>

--P5kL9zIKUMaXhrnx9He2--

