Return-Path: <martin.leduc@luminator.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 755B0C25B08
	for <webhook@archiver.kernel.org>; Wed, 17 Aug 2022 10:26:54 +0000 (UTC)
Subject: #linux #kirkstone #yocto x86_64 machine bootloader 
To: yocto@lists.yoctoproject.org
From: "Martin Leduc" <martin.leduc@luminator.com>
X-Originating-Location: Drummondville, Quebec, CA (184.144.158.143)
X-Originating-Platform: Windows Chrome 104
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 17 Aug 2022 03:26:47 -0700
Message-ID: <8oPB.1660732007703703292.u2t4@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="GHh83DIp48W7KSOAu5mC"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Aug 2022 10:26:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57857

--GHh83DIp48W7KSOAu5mC
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi community,

I'm wondering how to manage the bootloader files contents in a X86_64 machi=
ne and if those files have a relation with the WKS.in file.

By doing a bitbake -e <my_image> I can't figure out which variables are inv=
olved into the=C2=A0bootimg-efi.py (./poky/scripts/lib/wic/plugins/source/b=
ootimg-efi.py), which recipe call or start this scripts and the ENV variabl=
es used by the script.

The main goal is to rename "title boot" by anything else without having to =
add a recipe to replace the boot file at the do_rootfs stage.

Any information/instructions will be appreciated and I didn't find any info=
rmation into the MEGA Manual on this topic.=C2=A0 I'm probably blind =F0=9F=
=98=81=F0=9F=98=81

BR,

Martin

--GHh83DIp48W7KSOAu5mC
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi community,<br /><br />I'm wondering how to manage the bootloader files c=
ontents in a X86_64 machine and if those files have a relation with the WKS=
.in file.<br /><br />By doing a bitbake -e &lt;my_image&gt; I can't figure =
out which variables are involved into the&nbsp;bootimg-efi.py (./poky/scrip=
ts/lib/wic/plugins/source/bootimg-efi.py), which recipe call or start this =
scripts and the ENV variables used by the script.<br /><br />The main goal =
is to rename "title boot" by anything else without having to add a recipe t=
o replace the boot file at the do_rootfs stage.<br /><br />Any information/=
instructions will be appreciated and I didn't find any information into the=
 MEGA Manual on this topic.&nbsp; I'm probably blind =F0=9F=98=81=F0=9F=98=
=81<br /><br />BR,<br /><br />Martin

--GHh83DIp48W7KSOAu5mC--

