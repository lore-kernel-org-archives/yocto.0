Return-Path: <ndivecha@granitenet.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEFAFC4345F
	for <webhook@archiver.kernel.org>; Wed, 17 Apr 2024 12:21:32 +0000 (UTC)
Subject: Re: [yocto] Issue with Installing openssh Package #systemd #yocto #kirkstone
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Nitesh D" <ndivecha@granitenet.com>
X-Originating-Location: Troy, Michigan, US (143.59.9.147)
X-Originating-Platform: Mac Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 17 Apr 2024 05:21:21 -0700
References: <CANNYZj-QsRsb8kZqoKaCgn440naTVr6pYLTsqETNio-=hpYrWg@mail.gmail.com>
In-Reply-To: <CANNYZj-QsRsb8kZqoKaCgn440naTVr6pYLTsqETNio-=hpYrWg@mail.gmail.com>
Message-ID: <25314.1713356481828916304@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kXXWe9lp5Kq0nW6AmpYK"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Apr 2024 12:21:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62948

--kXXWe9lp5Kq0nW6AmpYK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Alex,

Thanks for your prompt response.

Shouldn't "PACKAGES =3D+ "${PN}-sshdgenkeys"" take care of installing it on=
 the image? Meaning my image recipe picks up everything from the packagegro=
up, which includes "openssh".

Part of the package is getting installed. When I flash the image on my devi=
ce, only the "${PN}-sshd" package is getting installed, and not "${PN}-sshd=
genkeys".

--kXXWe9lp5Kq0nW6AmpYK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Alex,</div>
<div>&nbsp;</div>
<div>Thanks for your prompt response.</div>
<div>&nbsp;</div>
<div>Shouldn't "PACKAGES =3D+ "${PN}-sshdgenkeys"" take care of installing =
it on the image? Meaning my image recipe picks up everything from the packa=
gegroup, which includes "openssh".&nbsp;<br /><br />Part of the package is =
getting installed.&nbsp;<span style=3D"white-space-collapse: preserve;">Whe=
n I flash the image on my device, only the "${PN}-sshd" package is getting =
installed, and not "${PN}-sshdgenkeys".</span></div>

--kXXWe9lp5Kq0nW6AmpYK--

