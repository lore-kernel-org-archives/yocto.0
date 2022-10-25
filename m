Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28E9BC04A95
	for <webhook@archiver.kernel.org>; Tue, 25 Oct 2022 06:29:07 +0000 (UTC)
Subject: How to enabled systemd unit files automatically using recipe?
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Sesslach, Bavaria, DE (217.24.54.203)
X-Originating-Platform: Windows Chrome 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 24 Oct 2022 23:29:02 -0700
Message-ID: <RE50.1666679342797065011.2czo@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="uaqzvUQuAyV8UzEmzw2d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Oct 2022 06:29:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58406

--uaqzvUQuAyV8UzEmzw2d
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

This might not be directly related to Yocto.

I have a systemd .path unit file that restarts the system service if the fi=
le changes. But, the path ubit file needs to be enabled once to make this w=
ork. So, my question is when I flash new image on the device will the path =
unit file enabled automatically by systemctl? Or should I do this manually =
using "systemctl enable --now *.path" ? Is there any way to make this work =
using Yocto recipe?

The custome systemd service files are installed in dir "${D}${systemd_unitd=
ir}/system/".

Thanks in advance

--uaqzvUQuAyV8UzEmzw2d
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />This might not be directly related to Yocto.<br /><br />I=
 have a systemd .path unit file that restarts the system service if the fil=
e changes. But, the path ubit file needs to be enabled once to make this wo=
rk. So, my question is when I flash new image on the device will the path u=
nit file enabled automatically by systemctl? Or should I do this manually u=
sing "systemctl enable --now *.path" ? Is there any way to make this work u=
sing Yocto recipe?<br /><br />The custome systemd service files are install=
ed in dir "${D}${systemd_unitdir}/system/".<br /><br />Thanks in advance

--uaqzvUQuAyV8UzEmzw2d--

