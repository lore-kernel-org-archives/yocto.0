Return-Path: <lukas.weiss@janitza.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69596C25B77
	for <webhook@archiver.kernel.org>; Wed, 22 May 2024 06:15:08 +0000 (UTC)
Subject: Re: [yocto] Git Auth error on ls-remote (git-remote-https) since update to Yocto-5.0
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: =?UTF-8?B?THVrYXMgV2Vpw58=?= <lukas.weiss@janitza.de>
X-Originating-Location: Schoeffengrund, Hesse, DE (195.145.150.162)
X-Originating-Platform: Linux Chrome 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 21 May 2024 23:15:04 -0700
References: <CANNYZj_Ur679b81UQo+yTfQ6hud_xdK2K-AXT2O+hOVJpory1Q@mail.gmail.com>
In-Reply-To: <CANNYZj_Ur679b81UQo+yTfQ6hud_xdK2K-AXT2O+hOVJpory1Q@mail.gmail.com>
Message-ID: <28231.1716358504486744347@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="H4Adp7IlrtcotPI8AWOz"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 May 2024 06:15:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63162

--H4Adp7IlrtcotPI8AWOz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

You are definitely right, we should switch to another auth mechanism. It's =
not that easy, as build shall work in CI on our Build-Server - haven't foun=
d a good "best practice" here yet.

But why did it work 2 weeks ago (even on Yocto-5.0) and still does for othe=
r git-commands than ls-remote?

--H4Adp7IlrtcotPI8AWOz
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

You are definitely right, we should switch to another auth mechanism. It's =
not that easy, as build shall work in CI on our Build-Server - haven't foun=
d a good "best practice" here yet. <br /><br />But why did it work 2 weeks =
ago (even on Yocto-5.0) and still does for other git-commands than ls-remot=
e?

--H4Adp7IlrtcotPI8AWOz--

