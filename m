Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E48DC28B20
	for <webhook@archiver.kernel.org>; Wed,  2 Apr 2025 03:51:47 +0000 (UTC)
Subject: Replace Bash with Busybox 
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (14.98.167.76)
X-Originating-Platform: Linux Firefox 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Apr 2025 20:51:46 -0700
Message-ID: <aHB5.1743565906612897283.clRm@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="f5nzVPSjb6m6m2xSPzyY"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Apr 2025 03:51:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65053

--f5nzVPSjb6m6m2xSPzyY
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I want to upgrade my BusyBox version from 1.31 to 1.35 and replace Bash wit=
h BusyBox. How can I accomplish this task? Can anyone provide guidance? Thi=
s would be helpful for me.

I am managing this as described below, but I am still unsure whether this c=
hange will work or not

PREFERRED_VERSION_busybox =3D "1.35.0"
IMAGE_INSTALL +=3D "busybox"
VIRTUAL-RUNTIME_shell =3D "busybox"
IMAGE_INSTALL_remove =3D "bash"

Regards,
Sateesh

--f5nzVPSjb6m6m2xSPzyY
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Team,</div>
<div>&nbsp;</div>
<div>I want to upgrade my BusyBox version from 1.31 to 1.35 and replace Bas=
h with BusyBox. How can I accomplish this task? Can anyone provide guidance=
? This would be helpful for me.</div>
<div>&nbsp;</div>
<div>I am managing this as described below, but I am still unsure whether t=
his change will work or not</div>
<div>&nbsp;</div>
<div>PREFERRED_VERSION_busybox =3D "1.35.0"</div>
<div>IMAGE_INSTALL +=3D "busybox"<br />VIRTUAL-RUNTIME_shell =3D "busybox"<=
br />IMAGE_INSTALL_remove =3D "bash"</div>
<div>&nbsp;</div>
<div>Regards,</div>
<div>Sateesh</div>

--f5nzVPSjb6m6m2xSPzyY--

