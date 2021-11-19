Return-Path: <lucapirozzi@protonmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1482C433EF
	for <webhook@archiver.kernel.org>; Fri, 19 Nov 2021 09:02:05 +0000 (UTC)
Subject: #yocto Remove hexdump from image
To: yocto@lists.yoctoproject.org
From: lucapirozzi@protonmail.com
X-Originating-Location: Milan, Lombardy, IT (165.225.203.47)
X-Originating-Platform: Windows Firefox 88
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 19 Nov 2021 01:02:04 -0800
Message-ID: <0GHg.1637312524635146821.KuMm@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6Xb8Vl9H12dYx8JwVM4d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Nov 2021 09:02:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55370

--6Xb8Vl9H12dYx8JwVM4d
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I'm trying to remove some application, some of them packages and other bein=
g busybox parts.

I'm trying to remove hexdump from my image and I configured every busybox d=
efconfig to have CONFIG_HEXDUMP and its REVERSE CONFIG to =3Dn.

But I'm finding hexdump in my image filesystem nevertheless.

Any help?

Thank you and Regards.

--6Xb8Vl9H12dYx8JwVM4d
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,<br /><br />I'm trying to remove some application, some of them=
 packages and other being busybox parts.<br /><br />I'm trying to remove he=
xdump from my image and I configured every busybox defconfig to have CONFIG=
_HEXDUMP and its REVERSE CONFIG to =3Dn. <br /><br />But I'm finding hexdum=
p in my image filesystem nevertheless.<br /><br />Any help?<br /><br />Than=
k you and Regards.

--6Xb8Vl9H12dYx8JwVM4d--

