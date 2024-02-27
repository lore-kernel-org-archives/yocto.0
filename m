Return-Path: <jeffrey.simons@boonedam.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23983C5478C
	for <webhook@archiver.kernel.org>; Tue, 27 Feb 2024 14:22:22 +0000 (UTC)
Subject: fitImage generation issue #kirkstone #yocto
To: yocto@lists.yoctoproject.org
From: "Jeffrey Simons" <jeffrey.simons@boonedam.com>
X-Originating-Location: Hoogkarspel, North Holland, NL (185.220.111.178)
X-Originating-Platform: Windows Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 27 Feb 2024 06:22:19 -0800
Message-ID: <6qkK.1709043739115307641.VHLP@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Feb 2024 14:22:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62622

Hello Yocto friends,

I have an issue with the generation of an fitImage with initramfs. The crea=
tion of an fitImage where a kernel and device tree are combined works,
but when I add an initramfs then the kernel creation keeps adding the fitIm=
age without the initramfs.

What I see on the debug output is the following:
-->    FILES:kernel-image-fitimage=3D"/boot/fitImage-5.4.129+g828ec42a6a32+=
p3 /boot/fitImage"

While I would expect something like:
-->    FILES:kernel-image-fitimage=3D"/boot/fitImage-my-initramfs-name-5.4.=
129+g828ec42a6a32+p3 /boot/fitImage"

Could anyone point me in the correct direction, I expect that I miss some v=
ariable that can change this behaviour. (most likely the solution is starin=
g me in the face,
but I'm blind to see it).

Thank you in advance.

--=20
With kind regards,

Jeffrey Simons

Software Engineer
Royal Boon Edam International B.V.

