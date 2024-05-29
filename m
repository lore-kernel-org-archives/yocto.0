Return-Path: <lukas.weiss@janitza.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D345BC25B75
	for <webhook@archiver.kernel.org>; Wed, 29 May 2024 16:13:10 +0000 (UTC)
Subject: Re: [yocto] Bad lib symlink in Host SDK
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: =?UTF-8?B?THVrYXMgV2Vpw58=?= <lukas.weiss@janitza.de>
X-Originating-Location: =?UTF-8?B?S2FybHNydWhlLCBCYWRlbi1Xw7xydHRlbWJlcmcsIERF?= (77.179.240.151)
X-Originating-Platform: Linux Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 29 May 2024 09:13:09 -0700
References: <CANNYZj9nYyaTk164KYdCxXbcf6snvgCKseS-_sUzxcktSiAb9Q@mail.gmail.com>
In-Reply-To: <CANNYZj9nYyaTk164KYdCxXbcf6snvgCKseS-_sUzxcktSiAb9Q@mail.gmail.com>
Message-ID: <27121.1716999189293869730@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7JydLksZKi7wfTn7S5AZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 16:13:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63231

--7JydLksZKi7wfTn7S5AZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hallo Alexander,

how can i see if the link is broken on build or packaging? Since the path o=
f the broken link can't be known on build process (it was entered in instal=
l process of SDK sh installer), i will not be able to find it somewhere in =
logs or env. It must be some kind of variable that is used here, but i have=
 no idea which one. Note that the broken link os not only the wrong directo=
ry depth - the parent-dir dots only lead to /home/admin/sdk (not root).

Since we use host SDK not only for tests, but also for partial "Simulations=
" with real devices connected, qemu is not the best choice. The pain is jus=
t on another end.

--7JydLksZKi7wfTn7S5AZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hallo Alexander,&nbsp;<br /><br />how can i see if the link is broken on=
 build or packaging? Since the path of the broken link can't be known on bu=
ild process (it was entered in install process of SDK sh installer), i will=
 not be able to find it somewhere in logs or env. It must be some kind of v=
ariable that is used here, but i have no idea which one. Note that the brok=
en link os not only the wrong directory depth - the parent-dir dots only le=
ad to /home/admin/sdk (not root).</p>
<p>Since we use host SDK not only for tests, but also for partial "Simulati=
ons" with real devices connected, qemu is not the best choice. The pain is =
just on another end.</p>

--7JydLksZKi7wfTn7S5AZ--

