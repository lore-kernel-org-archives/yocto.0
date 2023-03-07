Return-Path: <sebastianpetersen84@yahoo.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A0F5C6FA99
	for <webhook@archiver.kernel.org>; Tue,  7 Mar 2023 20:48:15 +0000 (UTC)
Subject: [meta-raspberrypi] Enable Libcamera
To: yocto@lists.yoctoproject.org
From: "punctuation" <sebastianpetersen84@yahoo.dk>
X-Originating-Location: Kongens Lyngby, Capital Region, DK (82.211.213.148)
X-Originating-Platform: Windows Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 07 Mar 2023 12:48:08 -0800
Message-ID: <OaQ6.1678222088687535044.x2D8@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="T9qaCQ0ySBlREUFEm4ec"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Mar 2023 20:48:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59362

--T9qaCQ0ySBlREUFEm4ec
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear community,

I am using yocto for my embedded image for a compute module 4. A camera sen=
sor is connected to the CM4 and the camera module is loaded correctly as I =
can use v4l2-ctl to write frames.

However, libcamera is not able to find the camera when I use the "cam -l" a=
pp.
I include libcamera using:

IMAGE_INSTALL +=3D "libcamera"

Am I missing something? I haven't been able to find any documentation on li=
bcamera in yocto.

Kind regards

--T9qaCQ0ySBlREUFEm4ec
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Dear community,<br /><br />I am using yocto for my embedded image for a =
compute module 4. A camera sensor is connected to the CM4 and the camera mo=
dule is loaded correctly as I can use v4l2-ctl to write frames.&nbsp;</p>
<p>However, libcamera is not able to find the camera when I use the "cam -l=
" app.<br />I include libcamera using:</p>
<p>IMAGE_INSTALL +=3D "libcamera"<br /><br />Am I missing something? I have=
n't been able to find any documentation on libcamera in yocto.</p>
<p>Kind regards</p>
<p>&nbsp;</p>

--T9qaCQ0ySBlREUFEm4ec--

