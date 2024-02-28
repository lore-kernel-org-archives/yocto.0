Return-Path: <patrick.huesmann@desy.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 693A1C47DD9
	for <webhook@archiver.kernel.org>; Wed, 28 Feb 2024 13:17:44 +0000 (UTC)
Subject: Re: [yocto] dnf/libsolv vs. package feed with commit hashes in version strings
To: Alexander Kanavin <alex.kanavin@gmail.com>,yocto@lists.yoctoproject.org
From: patrick.huesmann@desy.de
X-Originating-Location: Hamburg, Free and Hanseatic City of Hamburg, DE (84.162.109.92)
X-Originating-Platform: Linux Firefox 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 28 Feb 2024 05:17:35 -0800
References: <CANNYZj9rFXDjEUY6yzePKnVzwOA3YUPytYoZhORb8zae1nBjfw@mail.gmail.com>
In-Reply-To: <CANNYZj9rFXDjEUY6yzePKnVzwOA3YUPytYoZhORb8zae1nBjfw@mail.gmail.com>
Message-ID: <31790.1709126255869582131@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6jXPRGRdsd5ih7aHwO6m"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 13:17:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62635

--6jXPRGRdsd5ih7aHwO6m
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Great! This was exactly the bit of information I was missing.

The recipe in question puts a hardcoded "git0" there; I have to make it int=
eract with PRSERV somehow.

Thanks,
Patrick

--6jXPRGRdsd5ih7aHwO6m
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Great! This was exactly the bit of information I was missing.<br /><br /=
>The recipe in question puts a hardcoded "git0" there; I have to make it in=
teract with PRSERV somehow.<br /><br />Thanks,<br />Patrick</p>

--6jXPRGRdsd5ih7aHwO6m--

