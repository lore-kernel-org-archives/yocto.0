Return-Path: <f.cervigni@neoncomputing.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B8F6FF885A
	for <webhook@archiver.kernel.org>; Mon,  4 May 2026 14:05:09 +0000 (UTC)
Subject: Re: [yocto] Simple solution to create a non-root partition image?
To: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>, yocto@lists.yoctoproject.org
From: "Francesco Cervigni" <f.cervigni@neoncomputing.com>
X-Originating-Location: =?UTF-8?B?QmVsbGV5LCBSaMO0bmUtQWxwZXMsIEZS?= (109.23.119.167)
X-Originating-Platform: Linux Firefox 150
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 04 May 2026 07:05:08 -0700
References: <9e2ba2a4-9aee-4676-b623-c811a0a7292a@rootcommit.com> <684BE1E8-500C-4169-B5AF-C72E064F28E8@siliconbladeconsultants.com> <627ed8e4-0cf9-453a-8b8e-f54e9de564aa@rootcommit.com>
In-Reply-To: <627ed8e4-0cf9-453a-8b8e-f54e9de564aa@rootcommit.com>
Message-ID: <1413912.1777903508617953529@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4K9IcBL1g7PDEIHxrNKX"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 May 2026 14:05:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66475

--4K9IcBL1g7PDEIHxrNKX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Michael,

Would a non-yocto process, so non-wic, approach might still be relevant as =
generic inspiration ?
There is a part of the script of Photonicat2 router image creation (Rockchi=
p rk3568, Debian, not my code) that I have looked at often.

In a pretty readable and straightforward sequence of lines it assembles the=
 disk with the use of sfdisk + manual adiddtions via dd . (that whole small=
 repo is very explicit and simple in what it does, good read imho)
https://github.com/photonicat/rockchip_rk3568_linux_mainline/blob/master/bu=
ild-image-custom-rootfs-full.sh#L57

What caught my eyes, also, is that in that case sfdisk is used declarativel=
y, where the partition description is kept separatedly at https://github.co=
m/photonicat/rockchip_rk3568_linux_mainline/blob/master/scripts/photonicat-=
disk-parts-full.sfdisk allowing for easier extension, as the .wic ones.

Furthermore:=C2=A0In regards to 'moving the files' from folder to the parti=
tion, that code uses explicit 'mount' steps. Although via ' guestfish ' fro=
m red-hat one could make it with more idiomatic one-liners (it mounts inter=
nally via libguestfs, also can explore images interactively, very nice exam=
ples are available. Warning: I have used guestfish only for non-roofs parti=
tions, where file rights are simpler.)

I agree that the wic approach is probably the more Yocto-aligned one for th=
e final solution, as it is the tool of choice, adding these examples more a=
s references for CLI image manipulation/debugging.

Have a great day,

Francesco Cervigni
Neoncomputing
Embedded IIoT - Chambery, France
f.cervigni@neoncomputing.com

--4K9IcBL1g7PDEIHxrNKX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Michael,</div>
<div>&nbsp;</div>
<div>Would a non-yocto process, so non-wic, approach might still be relevan=
t as generic inspiration ?</div>
<div>There is a part of the script of Photonicat2 router image creation (Ro=
ckchip rk3568, Debian, not my code) that I have looked at often.</div>
<div>&nbsp;</div>
<div>In a pretty readable and straightforward sequence of lines it assemble=
s the disk with the use of sfdisk + manual adiddtions via dd . (that whole =
small repo is very explicit and simple in what it does, good read imho)&nbs=
p;</div>
<div>&nbsp;
<div><a href=3D"https://github.com/photonicat/rockchip_rk3568_linux_mainlin=
e/blob/master/build-image-custom-rootfs-full.sh#L57" target=3D"_blank" rel=
=3D"noopener">https://github.com/photonicat/rockchip_rk3568_linux_mainline/=
blob/master/build-image-custom-rootfs-full.sh#L57</a></div>
</div>
<div>&nbsp;</div>
<div>What caught my eyes, also, is that in that case <em>sfdisk</em> is use=
d declaratively, where the partition description is kept separatedly at <a =
href=3D"https://github.com/photonicat/rockchip_rk3568_linux_mainline/blob/m=
aster/scripts/photonicat-disk-parts-full.sfdisk" target=3D"_blank" rel=3D"n=
oopener">https://github.com/photonicat/rockchip_rk3568_linux_mainline/blob/=
master/scripts/photonicat-disk-parts-full.sfdisk</a> allowing for easier ex=
tension, as the .wic ones.</div>
<div>&nbsp;</div>
<div>Furthermore:&nbsp;In regards to 'moving the files' from folder to the =
partition, that code uses explicit 'mount' steps. Although via '<em>guestfi=
sh</em>' from red-hat one could make it with more idiomatic one-liners (it =
mounts internally via libguestfs, also can explore images interactively, ve=
ry nice examples are available. Warning: I have used guestfish only for non=
-roofs partitions, where file rights are simpler.)&nbsp;</div>
<div>&nbsp;</div>
<div>I agree that the wic approach is probably the more Yocto-aligned one f=
or the final solution, as it is the tool of choice, adding these examples m=
ore as references for CLI image manipulation/debugging.&nbsp;</div>
<div>&nbsp;</div>
<div>Have a great day,&nbsp;</div>
<div>&nbsp;</div>
<div>Francesco Cervigni</div>
<div>Neoncomputing</div>
<div>Embedded IIoT - Chambery, France</div>
<div>f.cervigni@neoncomputing.com</div>
<div>&nbsp;</div>

--4K9IcBL1g7PDEIHxrNKX--

