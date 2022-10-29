Return-Path: <nikitagupta2509@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAFF4C38A02
	for <webhook@archiver.kernel.org>; Sat, 29 Oct 2022 11:38:27 +0000 (UTC)
Subject: Apply Patching #dunfell #patch #yocto #raspberrypi #linux #kernel
To: yocto@lists.yoctoproject.org
From: "Nikita Gupta" <nikitagupta2509@gmail.com>
X-Originating-Location: Lucknow, Uttar Pradesh, IN (49.36.211.96)
X-Originating-Platform: Linux Chrome 105
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 29 Oct 2022 04:38:26 -0700
Message-ID: <jD2p.1667043506225622597.BAL8@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4oQx4K2i6efmONyDaTqh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 29 Oct 2022 11:38:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58436

--4oQx4K2i6efmONyDaTqh
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
* I put that patch file in yocto/meta-mylayer/recipes-kernel/linux/linux-yo=
cto.
* And given patch file's path in=C2=A0yocto/meta-mylayer/recipes-kernel/lin=
ux/linux-yocto_4.12.bbappend by following lines

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
SRC_URI_append=C2=A0 =3D "file://patch-5.4.70-rt40.patch"
( As described in above document) ( https://docs.yoctoproject.org/3.1.20/ke=
rnel-dev/kernel-dev-common.html#using-traditional-kernel-development-to-pat=
ch-the-kernel ) )

when i am trying to bake my recipe : bitbake core-image-base then following=
 error is showing

Loading cache: 100% |############################################| Time: 0:=
00:01
Loaded 3004 entries from dependency cache.
ERROR: No recipes available for:
/home/nikita/yocto/meta-mylayer/recipes-kernel/linux/linux-yocto_4.12.bbapp=
end

Summary: There was 1 ERROR message shown, returning a non-zero exit code.

Can anyone please suggest me how can i apply rt-patch in my raspberry-image=
 with above method by solving corrensponding error.

Thanks in advance
Nikita Gupta

~

--4oQx4K2i6efmONyDaTqh
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
<li>I put that patch file in yocto/meta-mylayer/recipes-kernel/linux/linux-=
yocto.</li>
<li>And given patch file's path in&nbsp;yocto/meta-mylayer/recipes-kernel/l=
inux/linux-yocto_4.12.bbappend by following lines</li>
</ul>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; FILESEXTRAPATHS_prepend :=3D "${T=
HISDIR}/${PN}:"
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; SRC_URI_append&nbsp; =3D "fi=
le://patch-5.4.70-rt40.patch"<br />(<a href=3D"https://docs.yoctoproject.or=
g/3.1.20/kernel-dev/kernel-dev-common.html#using-traditional-kernel-develop=
ment-to-patch-the-kernel" target=3D"_blank" rel=3D"noopener">As described i=
n above document)</a>)<br /><br />when i am trying to bake my recipe : bitb=
ake core-image-base then following error is showing&nbsp;<br /><br />
<div>Loading cache: 100% |############################################| Tim=
e: 0:00:01</div>
<div>Loaded 3004 entries from dependency cache.</div>
<div>ERROR: No recipes available for:</div>
<div>&nbsp; /home/nikita/yocto/meta-mylayer/recipes-kernel/linux/linux-yoct=
o_4.12.bbappend</div>
<div>&nbsp;</div>
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.<br /><br />Can anyone please suggest me how can i apply rt-patch in my =
raspberry-image with above method by solving corrensponding error.<br /><br=
 />Thanks in advance<br />Nikita Gupta</div>
<div>&nbsp;</div>
</div>
<div>~&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;</div>

--4oQx4K2i6efmONyDaTqh--

