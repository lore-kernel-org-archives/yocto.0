Return-Path: <myles.dear@ktechnology.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12714C47073
	for <webhook@archiver.kernel.org>; Thu,  4 Jan 2024 23:51:02 +0000 (UTC)
Subject: How to share a directory between an x86_64 host and a Yocto Dunfell guest?  #bitbake #imx8 #poky #qemu #ubuntu #yocto
To: yocto@lists.yoctoproject.org
From: "Myles Dear" <myles.dear@ktechnology.ca>
X-Originating-Location: New York, New York, US (136.144.35.218)
X-Originating-Platform: Windows Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 04 Jan 2024 15:50:52 -0800
Message-ID: <r43l.1704412252768444272.riS0@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lFxJFIlixbgdTjDZcJUd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Jan 2024 23:51:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62092

--lFxJFIlixbgdTjDZcJUd
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I successfully built my Yocto Poky 3.1.30 binary on my x86_64 build host (r=
unning Ubuntu 20.04.6 LTS) and launched via QEMU.=C2=A0 So far so good.

I now wish to share a host directory with my guest OS, but hit a limitation=
 that neither the 9pnet nor the 9pnet_virtio drivers required for sharing a=
ppear to be installed on either side.

I may be able to install these drivers on my host, but when I tried the " b=
itbake -c menuconfig virtual/kernel " command on my build host, and navigat=
ed to the File systems / Pseudo filesystems, I did not see any Plan 9 kerne=
l modules available.

Am I missing something here?=C2=A0 Is it possible to share folders between =
host and guest?

Could you recommend next steps ?

Many thanks.

--lFxJFIlixbgdTjDZcJUd
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p>
<p>I successfully built my Yocto Poky 3.1.30 binary on my x86_64 build host=
 (running Ubuntu 20.04.6 LTS) and launched via QEMU.&nbsp; So far so good.<=
br /><br />I now wish to share a host directory with my guest OS, but hit a=
 limitation that neither the 9pnet nor the 9pnet_virtio drivers required fo=
r sharing appear to be installed on either side.&nbsp;&nbsp;<br /><br />I m=
ay be able to install these drivers on my host, but when I tried the "<span=
 style=3D"font-family: courier_newregular, courier;">bitbake -c menuconfig =
virtual/kernel</span>" command on my build host, and navigated to the File =
systems / Pseudo filesystems, I did not see any Plan 9 kernel modules avail=
able.</p>
<p>Am I missing something here?&nbsp; Is it possible to share folders betwe=
en host and guest?&nbsp;</p>
<p>Could you recommend next steps ?</p>
<p>&nbsp;</p>
<p>Many thanks.</p>

--lFxJFIlixbgdTjDZcJUd--

