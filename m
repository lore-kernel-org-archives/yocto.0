Return-Path: <landervanloock@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB6BC282C6
	for <webhook@archiver.kernel.org>; Mon,  3 Mar 2025 21:52:39 +0000 (UTC)
Subject: Re: [yocto] Btrfs root filesystem permission issue
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: "Lander0606" <landervanloock@gmail.com>
X-Originating-Location: Antwerp, Flanders, BE (94.110.112.215)
X-Originating-Platform: Linux Firefox 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 03 Mar 2025 13:52:29 -0800
References: <ee3d8230-dfac-4933-810c-586fff8ec0ba@gmail.com>
In-Reply-To: <ee3d8230-dfac-4933-810c-586fff8ec0ba@gmail.com>
Message-ID: <13960.1741038749845086087@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7p3RUSQ8Jdgs0xad63Eu"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Mar 2025 21:52:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64912

--7p3RUSQ8Jdgs0xad63Eu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> I have created a draft patch[1] - simplified (and not a full
> implementation), but it seems to do the job at least for btrfs-tools. It
> works for me(TM), though it doesn't always mean an awful lot - I only
> checked the generated FS with core-image-minimal, which looked what I
> expected. Would you mind giving it a try, if you have time (or anyone
> else)?
>=20
> If it works for you too, then I will write a couple of tests, and
> attempt submitting it for the real thing.
>=20
> Of course, everyone is free to try/comment... I intend to submit
> something very similar to the current patch - the sooner comments (or
> rejection) come, the better it is.
>=20
> (If no feedback comes that would discourage me, I will try to submit a
> patch around Wednesday-ish in any case, for further scrutiny...)
>=20
>=20
> Thanks
>=20
> [1]:
> https://gist.github.com/OldManYellsAtCloud/f6b6ecf37ab65db8d61ac7bed583a7=
f4
>=20
>=20

Thanks for the patch! I did have a look at the code and added it to pseudo,=
 but when creating the image, I did encounter the following error:

| DEBUG: Executing shell function do_image_btrfs
| 0+0 records in
| 0+0 records out
| 0 bytes copied, 9.021e-06 s, 0.0 kB/s
| ERROR: failed to add link for inode 262 ('/home/landervl/yocto-tegra-mast=
er/build/tmp/work/jetson_orin_nano_devkit-oe4t-linux/tegra-espimage/1.0/roo=
tfs/./EFI/BOOT/bootaa64.efi'): File exists
| ERROR: unable to traverse directory /home/landervl/yocto-tegra-master/bui=
ld/tmp/work/jetson_orin_nano_devkit-oe4t-linux/tegra-espimage/1.0/rootfs: -=
17
| ERROR: error while filling filesystem: -17

I use btrfs-tools 6.12, included in the master branch of Poky. When removin=
g the patch and cleaning the objects for pseudo, the error does not occur a=
nd the image builds fine. It's important to note that I did not clean the f=
ull build and started all over again, just removed the current sstate for p=
seudo because the full build can run for a few hours :D. I will start a cle=
an build for now to see if the issue may be gone. My machine is a NVIDIA Je=
tson Orin Nano, I use meta-tegra as BSP.

--7p3RUSQ8Jdgs0xad63Eu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>
<div>
<div id=3D"msgbody249516901" class=3D"user-content">
<div class=3D"forcebreak" dir=3D"auto" style=3D"white-space: pre-wrap;">I h=
ave created a draft patch[1] - simplified (and not a full<br />implementati=
on), but it seems to do the job at least for btrfs-tools. It<br />works for=
 me(TM), though it doesn't always mean an awful lot - I only<br />checked t=
he generated FS with core-image-minimal, which looked what I<br />expected.=
 Would you mind giving it a try, if you have time (or anyone else)?<br /><b=
r />If it works for you too, then I will write a couple of tests, and<br />=
attempt submitting it for the real thing.<br /><br />Of course, everyone is=
 free to try/comment... I intend to submit<br />something very similar to t=
he current patch - the sooner comments (or<br />rejection) come, the better=
 it is.<br /><br />(If no feedback comes that would discourage me, I will t=
ry to submit a<br />patch around Wednesday-ish in any case, for further scr=
utiny...)<br /><br /><br />Thanks<br /><br />[1]:<br /><a href=3D"https://g=
ist.github.com/OldManYellsAtCloud/f6b6ecf37ab65db8d61ac7bed583a7f4" target=
=3D"_blank" rel=3D"noopener">https://gist.github.com/OldManYellsAtCloud/f6b=
6ecf37ab65db8d61ac7bed583a7f4</a></div>
</div>
</div>
</blockquote>
<div>&nbsp;</div>
<div>Thanks for the patch! I did have a look at the code and added it to ps=
eudo, but when creating the image, I did encounter the following error:</di=
v>
<div>&nbsp;</div>
<div>| DEBUG: Executing shell function do_image_btrfs<br />| 0+0 records in=
<br />| 0+0 records out<br />| 0 bytes copied, 9.021e-06 s, 0.0 kB/s<br />|=
 ERROR: failed to add link for inode 262 ('/home/landervl/yocto-tegra-maste=
r/build/tmp/work/jetson_orin_nano_devkit-oe4t-linux/tegra-espimage/1.0/root=
fs/./EFI/BOOT/bootaa64.efi'): File exists<br />| ERROR: unable to traverse =
directory /home/landervl/yocto-tegra-master/build/tmp/work/jetson_orin_nano=
_devkit-oe4t-linux/tegra-espimage/1.0/rootfs: -17<br />| ERROR: error while=
 filling filesystem: -17</div>
<div>&nbsp;</div>
<div>I use btrfs-tools 6.12, included in the master branch of Poky. When re=
moving the patch and cleaning the objects for pseudo, the error does not oc=
cur and the image builds fine. It's important to note that I did not clean =
the full build and started all over again, just removed the current sstate =
for pseudo because the full build can run for a few hours :D. I will start =
a clean build for now to see if the issue may be gone. My machine is a NVID=
IA Jetson Orin Nano, I use meta-tegra as BSP.</div>

--7p3RUSQ8Jdgs0xad63Eu--

