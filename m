Return-Path: <nikitagupta2509@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA284C38A02
	for <webhook@archiver.kernel.org>; Sat, 29 Oct 2022 11:19:27 +0000 (UTC)
Subject: Apply Patching
To: yocto@lists.yoctoproject.org
From: "Nikita Gupta" <nikitagupta2509@gmail.com>
X-Originating-Location: Lucknow, Uttar Pradesh, IN (49.36.211.96)
X-Originating-Platform: Linux Chrome 105
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 29 Oct 2022 04:19:22 -0700
Message-ID: <m3R0.1667042362198185674.DMQf@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SRwmjWm1p58crISS8Vvx"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 29 Oct 2022 11:19:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58435

--SRwmjWm1p58crISS8Vvx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello List

i want to apply rt-patch in raspberry-pi by following ( using-traditional-k=
ernel-development-to-patch-the-kernel ( https://docs.yoctoproject.org/3.1.2=
0/kernel-dev/kernel-dev-common.html#using-traditional-kernel-development-to=
-patch-the-kernel ) ) So in order to achieve that i created my own meta-lay=
er and put that patch in bblayers. In oreder to apply patching i did follow=
ing steps .

* I downloaded patch file from ( https://cdn.kernel.org/pub/linux/kernel/pr=
ojects/rt/5.4/older/patch-5.4.70-rt40.patch.gz ) unzip and rename with ( pa=
tch-5.4.70-rt40.patch) ( https://cdn.kernel.org/pub/linux/kernel/projects/r=
t/5.4/older/patch-5.4.70-rt40.patch.gz )
* I put that file in yocto/meta-mylayer/recipes-kernel/linux/linux-yocto.
* And given patch file's path in=C2=A0yocto/meta-mylayer/recipes-kernel/lin=
ux/linux-yocto_4.12.bbappend by following lines

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
SRC_URI +=3D "file://patch-5.4.70-rt40.patch"
~

--SRwmjWm1p58crISS8Vvx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello List<br /><br />i want to apply rt-patch in raspberry-pi by following=
 (<a href=3D"https://docs.yoctoproject.org/3.1.20/kernel-dev/kernel-dev-com=
mon.html#using-traditional-kernel-development-to-patch-the-kernel" target=
=3D"_blank" rel=3D"noopener">using-traditional-kernel-development-to-patch-=
the-kernel</a>) So in order to achieve that i created my own meta-layer and=
 put that patch in bblayers. In oreder to apply patching i did following st=
eps .<br />
<ul style=3D"list-style-type: circle;">
<li>I downloaded patch file from (<a href=3D"https://cdn.kernel.org/pub/lin=
ux/kernel/projects/rt/5.4/older/patch-5.4.70-rt40.patch.gz" target=3D"_blan=
k" rel=3D"noopener">https://cdn.kernel.org/pub/linux/kernel/projects/rt/5.4=
/older/patch-5.4.70-rt40.patch.gz</a>) unzip and rename with (<a style=3D"c=
olor: #23527c; text-decoration-line: underline; outline: 0px;" href=3D"http=
s://cdn.kernel.org/pub/linux/kernel/projects/rt/5.4/older/patch-5.4.70-rt40=
.patch.gz" target=3D"_blank" rel=3D"noopener">patch-5.4.70-rt40.patch)</a><=
/li>
<li>I put that file in yocto/meta-mylayer/recipes-kernel/linux/linux-yocto.=
</li>
<li>And given patch file's path in&nbsp;yocto/meta-mylayer/recipes-kernel/l=
inux/linux-yocto_4.12.bbappend by following lines</li>
</ul>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; FILESEXTRAPATHS_prepend :=3D "${T=
HISDIR}/${PN}-${PV}:"
<div>SRC_URI +=3D "file://patch-5.4.70-rt40.patch"</div>
<div>~&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;</div>

--SRwmjWm1p58crISS8Vvx--

