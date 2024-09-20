Return-Path: <poornesh.g@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DECF58CE
	for <webhook@archiver.kernel.org>; Fri, 20 Sep 2024 05:37:37 +0000 (UTC)
Subject: Missing  opencv files in toolchain #yocto
To: yocto@lists.yoctoproject.org
From: "Poornesh G ( India - Bangalore )" <poornesh.g@mindteck.com>
X-Originating-Location: Bengaluru, Karnataka, IN (14.142.4.2)
X-Originating-Platform: Linux Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 19 Sep 2024 22:37:29 -0700
Message-ID: <EKvd.1726810649653198891.VFZo@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ziErQMI5hIt2O7nVmFFW"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Sep 2024 05:37:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63869

--ziErQMI5hIt2O7nVmFFW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings !

I have added *opencv* into my yocto build using *"IMAGE_INSTALL:append =3D =
" opencv"* and could successfully able to build my target image.
But after building toolchain using *"bitbake meta-toolchain-qt5"* I not get=
ting opencv related files in toolchian.

Please help me with the procedure to include *opencv into my toolchain*.

Thanks

--ziErQMI5hIt2O7nVmFFW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Greetings !</div>
<div>&nbsp;</div>
<div>I have added <strong>opencv</strong> into my yocto build using <strong=
>"IMAGE_INSTALL:append =3D " opencv"</strong> and could successfully able t=
o build my target image.</div>
<div>But after building toolchain using <strong>"bitbake meta-toolchain-qt5=
" </strong>I not getting opencv related files in toolchian.</div>
<div>&nbsp;</div>
<div>Please help me with the procedure to include<strong> opencv into my to=
olchain</strong>.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Thanks&nbsp;</div>

--ziErQMI5hIt2O7nVmFFW--

