Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1457EB64DD
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 01:50:36 +0000 (UTC)
Subject: Re: How to add a few lines in config.txt in Yocto project for Raspberry Pi
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Mississauga, Ontario, CA (135.0.213.201)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 07 Aug 2023 18:50:29 -0700
References: <CAMKF1soa1LBpQqXB6W2QCnA=h+MD_Ju9hYvg3vmEe+2ofa23eQ@mail.gmail.com>
In-Reply-To: <CAMKF1soa1LBpQqXB6W2QCnA=h+MD_Ju9hYvg3vmEe+2ofa23eQ@mail.gmail.com>
Message-ID: <5592.1691459429009382097@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rBhCejU3cYC2jA9qJfNW"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 01:50:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60729

--rBhCejU3cYC2jA9qJfNW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Raj for your quick reply.

For config.txt, the recipe I am referring to is rpi-config_git.bb in meta-r=
espberrypi layer. This is the one I am testing now.

Further on, I will add recipe appends for rpi-cmdline.bb.
To change /etc/inittab, I still need to find which recipe to append.

Thanks!
Crane

--rBhCejU3cYC2jA9qJfNW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Raj for your quick reply.<br /><br />For config.txt, the recipe I am=
 referring to is rpi-config_git.bb in meta-respberrypi layer. This is the o=
ne I am testing now.<br /><br />Further on, I will add recipe appends for r=
pi-cmdline.bb.<br />To change /etc/inittab, I still need to find which reci=
pe to append.<br /><br />Thanks!<br />Crane<br />

--rBhCejU3cYC2jA9qJfNW--

