Return-Path: <landervanloock@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC6CC021B2
	for <webhook@archiver.kernel.org>; Tue, 25 Feb 2025 23:25:36 +0000 (UTC)
Subject: Re: [yocto] Btrfs Root Filesystem Remount Issue with systemd on Yocto
To: "Leon Woestenberg" <leon@sidebranch.com>, yocto@lists.yoctoproject.org
From: "Lander0606" <landervanloock@gmail.com>
X-Originating-Location: Antwerp, Flanders, BE (94.110.112.215)
X-Originating-Platform: Linux Firefox 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 25 Feb 2025 15:25:32 -0800
References: <CAMjhiJi=+9Ta4aGsNWUYrMnwi+pxim44Q9MNpViBZV_fi+P2Wg@mail.gmail.com>
In-Reply-To: <CAMjhiJi=+9Ta4aGsNWUYrMnwi+pxim44Q9MNpViBZV_fi+P2Wg@mail.gmail.com>
Message-ID: <16235.1740525932760509826@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kD1Z9m20HbSvgI4XYd8V"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Feb 2025 23:25:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64872

--kD1Z9m20HbSvgI4XYd8V
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> Are the device and mount points owned by UID 0 (zero)?
>=20

Using the ls -lah command on my host machine reveals that the mount point i=
s indeed owned by my user account, not root. Strange, an image created from=
 the scarthgap branch the same way as now on the master leads to the correc=
t mount point permissions (root). Is there any way how I can change the own=
er of the mointpoint in my Yocto project?

Thanks in advance for the help!

--kD1Z9m20HbSvgI4XYd8V
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>
<div>Are the device and mount points owned by UID 0 (zero)?</div>
</blockquote>
<div>Using the ls -lah command on my host machine reveals that the mount po=
int is indeed owned by my user account, not root. Strange, an image created=
 from the scarthgap branch the same way as now on the master leads to the c=
orrect mount point permissions (root). Is there any way how I can change th=
e owner of the mointpoint in my Yocto project?</div>
<div>&nbsp;</div>
<div>Thanks in advance for the help!</div>
<div>&nbsp;</div>

--kD1Z9m20HbSvgI4XYd8V--

