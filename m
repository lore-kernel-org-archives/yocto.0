Return-Path: <poornesh.g@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9EDFC433EF
	for <webhook@archiver.kernel.org>; Wed, 20 Jul 2022 10:17:25 +0000 (UTC)
Subject: Providing Read/Write permission to "etc" in Read only Rootfile system
 #zeus #yocto #zeus
To: yocto@lists.yoctoproject.org
From: poornesh.g@mindteck.com
X-Originating-Location: Bengaluru, Karnataka, IN (106.196.19.127)
X-Originating-Platform: Linux Firefox 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 20 Jul 2022 03:17:24 -0700
Message-ID: <r8dI.1658312244795452078.mtgZ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="h1KkgEcHEMkoWGUXht5s"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Jul 2022 10:17:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57592

--h1KkgEcHEMkoWGUXht5s
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings !

I am working on NXP's i.MX6UL SoC and I have successfully built a Read-only=
 Rootfile system through Yocto.
Now I am having a requirement of making only "/etc" as Read & Writable .
So , Can any one suggest me the procedure for making only "/etc" directory =
as Read & Writable and by keeping rest (/usr , /lib , /bin , ..) as Read-on=
ly=C2=A0 through Yocto .

Thanks in Advance

--h1KkgEcHEMkoWGUXht5s
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings !<br /><br />I am working on NXP's i.MX6UL SoC and I have success=
fully built a Read-only Rootfile system through Yocto.<br />Now I am having=
 a requirement of making only "/etc" as Read &amp; Writable .<br />So , Can=
 any one suggest me the procedure for making only "/etc" directory as Read =
&amp; Writable and by keeping rest (/usr , /lib , /bin , ..) as Read-only&n=
bsp; through Yocto .<br /><br />Thanks in Advance

--h1KkgEcHEMkoWGUXht5s--

