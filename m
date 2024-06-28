Return-Path: <tpmls@email.cz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 476A4C3064D
	for <webhook@archiver.kernel.org>; Fri, 28 Jun 2024 09:52:15 +0000 (UTC)
Subject: Re: [yocto] Files are not saved to recipe-sysroot-native
To: "Evgeny Sagatov" <sagatov@ya.ru>, yocto@lists.yoctoproject.org
From: tpmls@email.cz
X-Originating-Location: Velky Tynec, Olomoucky kraj, CZ (185.199.87.254)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 28 Jun 2024 02:52:07 -0700
References: <11431719565334@mail.yandex.ru>
In-Reply-To: <11431719565334@mail.yandex.ru>
Message-ID: <8288.1719568327666900740@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="A3NYb19MrDSrQHjxpDho"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jun 2024 09:52:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63410

--A3NYb19MrDSrQHjxpDho
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Evgeny,

if I understand your issue correctly, you also need to add the INSTALL_DIR =
path to the SYSROOT_DIRS_NATIVE variable, as the "/opt" is a non-standard p=
ath in Yocto.
You already did that for the SYSROOT_DIRS variable, which is why the files =
were placed in recipe-sysroot when depending on a non-native target.

Tomas

--A3NYb19MrDSrQHjxpDho
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Evgeny,<br /><br />if I understand your issue correctly, you also nee=
d to add the INSTALL_DIR path to the SYSROOT_DIRS_NATIVE variable, as the "=
/opt" is a non-standard path in Yocto.<br />You already did that for the SY=
SROOT_DIRS variable, which is why the files were placed in recipe-sysroot w=
hen depending on a non-native target.<br /><br />Tomas

--A3NYb19MrDSrQHjxpDho--

