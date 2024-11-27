Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41447D609C3
	for <webhook@archiver.kernel.org>; Wed, 27 Nov 2024 09:39:59 +0000 (UTC)
Subject: Re: [yocto] Disabling unused service to reduce boot time (Krikstone version)
To: "sateesh m" <sateesh0457@gmail.com>, yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: SG (163.116.193.120)
X-Originating-Platform: Linux Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 27 Nov 2024 01:39:53 -0800
References: <14717.1732697293417372320@lists.yoctoproject.org>
In-Reply-To: <14717.1732697293417372320@lists.yoctoproject.org>
Message-ID: <14717.1732700393282937209@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8gpi5IETc17JvguNnNAp"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 09:39:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64359

--8gpi5IETc17JvguNnNAp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I have tried below method

SYSTEMD_SERVICE:${PN}-avahi =3D "avahi-daemon.service"
SYSTEMD_AUTO_ENABLE:${PN}-avahi =3D "disable"

But I am unable to disable service during boot up time. I want to disable i=
t to improve my boot performance.

Regards,
Sateesh

--8gpi5IETc17JvguNnNAp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Team,</div>
<div>&nbsp;</div>
<div>I have tried below method</div>
<div>&nbsp;</div>
<div>SYSTEMD_SERVICE:${PN}-avahi =3D "avahi-daemon.service"<br />SYSTEMD_AU=
TO_ENABLE:${PN}-avahi =3D "disable"</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>But I am unable to disable service during boot up time. I want to disa=
ble it to improve my boot performance.&nbsp;</div>
<div>&nbsp;</div>
<div>Regards,</div>
<div>Sateesh</div>

--8gpi5IETc17JvguNnNAp--

