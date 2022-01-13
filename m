Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18303C433F5
	for <webhook@archiver.kernel.org>; Thu, 13 Jan 2022 08:17:53 +0000 (UTC)
Subject: The "/etc/resolv.conf" file becomes empty after each restart #yocto
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (157.48.205.179)
X-Originating-Platform: Linux Chrome 95
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Jan 2022 00:17:51 -0800
Message-ID: <4qne.1642061871982983169.90Lq@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pgyZn9EWOXMBg1uNnKrQ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jan 2022 08:17:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55832

--pgyZn9EWOXMBg1uNnKrQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I assume it shouldn't be empty resov. conf. Manually I am updating nameserv=
er always. but when I reboot my machine it's empty. So for this, I want to =
make permanent my nameserver always. I have added packages support IMAGE_IN=
STALL_append =3D " resolvconf" but I am not able to fix this solution. Can =
anybody know this issue please guide me. How always will be automatically s=
et without manual effort?

--
Regards,
Sateesh

--pgyZn9EWOXMBg1uNnKrQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />&nbsp; &nbsp; &nbsp; &nbsp;<span style=3D"color: #4d5156; fo=
nt-family: 'Google Sans Text', arial, sans-serif; letter-spacing: 0.1px;">I=
 assume it shouldn't be&nbsp;</span><span style=3D"font-weight: bold; color=
: #5f6368; font-family: 'Google Sans Text', arial, sans-serif; letter-spaci=
ng: 0.1px;">empty resov. conf. Manually I am updating nameserver always. bu=
t when I reboot my machine it's empty. So for this, I want to make permanen=
t my nameserver always. I have added packages support IMAGE_INSTALL_append =
=3D " resolvconf"</span><span style=3D"color: #4d5156; font-family: 'Google=
 Sans Text', arial, sans-serif; letter-spacing: 0.1px;">&nbsp; but I am not=
 able to fix this solution. Can anybody know this issue please guide me. Ho=
w always will be automatically set without manual effort?<br /><br /></span=
><br />-- <br />Regards,<br />Sateesh

--pgyZn9EWOXMBg1uNnKrQ--

