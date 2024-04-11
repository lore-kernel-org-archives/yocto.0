Return-Path: <linusnilsson@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 294ADC4345F
	for <webhook@archiver.kernel.org>; Thu, 11 Apr 2024 14:36:47 +0000 (UTC)
Subject: Re: [yocto] Correct way for multiple recipes to install files in the same directory
To: linusnilsson@hotmail.com, yocto@lists.yoctoproject.org
From: linusnilsson@hotmail.com
X-Originating-Location: Bromma, Stockholm County, SE (212.181.123.98)
X-Originating-Platform: Windows Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 11 Apr 2024 07:36:44 -0700
References: <28425.1712839079294002919@lists.yoctoproject.org>
In-Reply-To: <28425.1712839079294002919@lists.yoctoproject.org>
Message-ID: <31389.1712846204288201855@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="FEAU06GkAYESPd1teCWi"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Apr 2024 14:36:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62919

--FEAU06GkAYESPd1teCWi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

After adding
chmod 700 ${D}/${sysconfdir}/polkit-1/rules.d
chown polkit:root ${D}/${sysconfdir}/polkit-1/rules.d
to the disk-automount recipe I get error with chown not knowing about the p=
olkit user, even though I've added polkit to both DEPENDS and RDEPENDS of d=
isk-automount recipe so now I've got figure out how to make it aware that t=
he user polkit exists.

--FEAU06GkAYESPd1teCWi
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

After adding<br /><code>chmod 700 ${D}/${sysconfdir}/polkit-1/rules.d<br />=
chown polkit:root ${D}/${sysconfdir}/polkit-1/rules.d</code><br />to the di=
sk-automount recipe I get error with chown not knowing about the polkit use=
r, even though I've added polkit to both DEPENDS and RDEPENDS of disk-autom=
ount recipe so now I've got figure out how to make it aware that the user p=
olkit exists.

--FEAU06GkAYESPd1teCWi--

