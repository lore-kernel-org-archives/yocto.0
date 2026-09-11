Return-Path: <wanwizard@openpli.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C1ACC88E53
	for <webhook@archiver.kernel.org>; Fri, 11 Sep 2026 16:40:47 +0000 (UTC)
Subject: Re: [yocto] Hashserve OEEquivHash unihash issue
To: "Joshua Watt" <JPEWhacker@gmail.com>, yocto@lists.yoctoproject.org
From: "Harro Verton" <wanwizard@openpli.org>
X-Originating-Location: Stafford, England, GB (194.164.227.192)
X-Originating-Platform: Linux Firefox 154
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 11 Sep 2026 09:40:39 -0700
References: <p7FW.1789069372704480303.Aepi@lists.yoctoproject.org> <307014.1789069815176190258@lists.yoctoproject.org> <CAJdd5GYmUEJjWnVCYC1y_g+_0gMFASHw4M+ZjHnGBOZHTKocVw@mail.gmail.com>
In-Reply-To: <CAJdd5GYmUEJjWnVCYC1y_g+_0gMFASHw4M+ZjHnGBOZHTKocVw@mail.gmail.com>
Message-ID: <307014.1789144839597694168@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7TYVCcOvDMcH5BXeztRO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Sep 2026 16:40:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66719

--7TYVCcOvDMcH5BXeztRO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the quick reply, much appreciated !

>=20
> What this usually means is that you have two recipes that have different
> task hashes, but produce the same output so the hashserver is mapping the=
m
> together as expected. You might want to figure out why the taskhashes are
> different; if you have the .sigdata files for those hashes (look for e.g.
> "sigdata.8da90b016d0a41cac6ce46c20d8ee64d5e7af35687de43c306544508050227e8=
"
> in the stamps directory) you can diff them with bitbake-diffsigs and see
> what is actually different.

This file doesn't exist in the stamps directory, and neither does an entry =
for the hash it was changed to.

The (relevant?) build config contains:

INHERIT +=3D "rm_work"
PRSERV_HOST =3D "localhost:0"
BB_SIGNATURE_HANDLER =3D "OEEquivHash"
BB_HASHSERVE =3D "auto"

INSANE_SKIP +=3D "version-going-backwards"
ERROR_QA:remove =3D "version-going-backwards"
BUILDHISTORY_CHECKVERBACKWARDS =3D "0"
INHERIT:remove =3D "buildhistory"

If I flash the image built on both devices, I see that on the first device,=
 ffmpeg - 6.1.4-r0.0 is installed, and on the second, ffmpeg - 6.1.4-r0.1.=
=C2=A0 And as a result, the first machine shows in the "opkg list-upgradabl=
e" output "ffmpeg - 6.1.4-r0.0 - 6.1.4-r0.1". In deploy/ipks/cortexa15hf-ne=
on-vfpv4 (same for both devices), I only have the ipk for 6.1.4-r0.1.

If I build both MACHINE's a second time, new rootfs files are generated, bu=
t to my surprise, for the first device the rootfs still contains ffmpeg - 6=
.1.4-r0.0, even though that does not exist anywhere in the build tree.

I have no clue where to start looking, but something changed along the way =
in Scarthgap that "broke" this.

--7TYVCcOvDMcH5BXeztRO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Thanks for the quick reply, much appreciated !</div>
<div>
<blockquote>What this usually means is that you have two recipes that have =
different task hashes, but produce the same output so the hashserver is map=
ping them together as expected. You might want to figure out why the taskha=
shes are different; if you have the .sigdata files for those hashes (look f=
or e.g. "sigdata.8da90b016d0a41cac6ce46c20d8ee64d5e7af35687de43c30654450805=
0227e8" in the stamps directory) you can diff them with bitbake-diffsigs an=
d see what is actually different.</blockquote>
This file doesn't exist in the stamps directory, and neither does an entry =
for the hash it was changed to.</div>
<div>&nbsp;</div>
<div>The (relevant?) build config contains:<br /><br /></div>
<div>INHERIT +=3D "rm_work"<br />PRSERV_HOST =3D "localhost:0"<br />BB_SIGN=
ATURE_HANDLER =3D "OEEquivHash"<br />BB_HASHSERVE =3D "auto"</div>
<div><br />INSANE_SKIP +=3D "version-going-backwards"<br />ERROR_QA:remove =
=3D "version-going-backwards"<br />BUILDHISTORY_CHECKVERBACKWARDS =3D "0"<b=
r />INHERIT:remove =3D "buildhistory"<br /><br /></div>
<div>If I flash the image built on both devices, I see that on the first de=
vice, ffmpeg - 6.1.4-r0.0 is installed, and on the second, ffmpeg - 6.1.4-r=
0.1.&nbsp; And as a result, the first machine shows in the "opkg list-upgra=
dable" output "ffmpeg - 6.1.4-r0.0 - 6.1.4-r0.1". In deploy/ipks/cortexa15h=
f-neon-vfpv4 (same for both devices), I only have the ipk for 6.1.4-r0.1.</=
div>
<div>&nbsp;</div>
<div>If I build both MACHINE's a second time, new rootfs files are generate=
d, but to my surprise, for the first device the rootfs still contains ffmpe=
g - 6.1.4-r0.0, even though that does not exist anywhere in the build tree.=
</div>
<div>&nbsp;</div>
<div>I have no clue where to start looking, but something changed along the=
 way in Scarthgap that "broke" this.</div>

--7TYVCcOvDMcH5BXeztRO--

