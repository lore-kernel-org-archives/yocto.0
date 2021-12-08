Return-Path: <chiefsleepyeye@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 364EFC433F5
	for <webhook@archiver.kernel.org>; Wed,  8 Dec 2021 20:06:51 +0000 (UTC)
Subject: Trouble building core-image-minimal-initramfs for j7-evm target #grub
To: yocto@lists.yoctoproject.org
From: chiefsleepyeye@gmail.com
X-Originating-Location: Madison, Wisconsin, US (24.159.236.186)
X-Originating-Platform: Windows Chrome 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 08 Dec 2021 12:06:49 -0800
Message-ID: <aWF7.1638994009874195161.QmeU@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="o546g8LyHQlSbHFicDOx"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Dec 2021 20:06:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55520

--o546g8LyHQlSbHFicDOx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm on the "dunfell" branch and trying to build core-image-minimal-initramf=
s for a j7-evm target.=C2=A0 When I do that I get the following error:

>=20
> * Solver encountered 1 problem(s):
> * Problem 1/1:
> *=C2=A0 =C2=A0- nothing provides grub needed by
> initramfs-module-install-1.0-r1.aarch64
> *
> * Solution 1:
> *=C2=A0 =C2=A0- do not ask to install a package providing initramfs-modul=
e-install
>=20

If I build for the genericx86-64 target it builds successfully.=C2=A0 I thi=
nk the problem is with it needing "grub" for the j7-evm target because I do=
n't believe grub is needed nor built for that target.=C2=A0 The bootloader =
in that case is u-boot.=C2=A0 Is there something I need to do to tell it th=
e bootloader is u-boot rather than grub maybe?=C2=A0 Anyone have any ideas =
and/or guidance?=C2=A0 Thanks in advance.

Mike

--o546g8LyHQlSbHFicDOx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm on the "dunfell" branch and trying to build core-image-minimal-initramf=
s for a j7-evm target.&nbsp; When I do that I get the following error:<br /=
><br />
<blockquote>
<div>&nbsp;* Solver encountered 1 problem(s):</div>
<div>&nbsp;* Problem 1/1:</div>
<div>&nbsp;*&nbsp; &nbsp;- nothing provides grub needed by initramfs-module=
-install-1.0-r1.aarch64</div>
<div>&nbsp;*</div>
<div>&nbsp;* Solution 1:</div>
<div>&nbsp;*&nbsp; &nbsp;- do not ask to install a package providing initra=
mfs-module-install</div>
</blockquote>
<div>If I build for the genericx86-64 target it builds successfully.&nbsp; =
I think the problem is with it needing "grub" for the j7-evm target because=
 I don't believe grub is needed nor built for that target.&nbsp; The bootlo=
ader in that case is u-boot.&nbsp; Is there something I need to do to tell =
it the bootloader is u-boot rather than grub maybe?&nbsp; Anyone have any i=
deas and/or guidance?&nbsp; Thanks in advance.<br /><br />Mike</div>

--o546g8LyHQlSbHFicDOx--

