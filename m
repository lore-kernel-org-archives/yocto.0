Return-Path: <ndivecha@granitenet.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF07CC001CC
	for <webhook@archiver.kernel.org>; Wed, 17 Apr 2024 15:04:03 +0000 (UTC)
Subject: Re: [yocto] Issue with Installing openssh Package #systemd #yocto #kirkstone
To: "Nitesh D" <ndivecha@granitenet.com>, yocto@lists.yoctoproject.org
From: "Nitesh D" <ndivecha@granitenet.com>
X-Originating-Location: Troy, Michigan, US (143.59.9.147)
X-Originating-Platform: Mac Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 17 Apr 2024 08:03:54 -0700
References: <25314.1713362504547485791@lists.yoctoproject.org>
In-Reply-To: <25314.1713362504547485791@lists.yoctoproject.org>
Message-ID: <21525.1713366234539719554@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="44IdzE8LXTjKr4rTUYRZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Apr 2024 15:04:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62951

--44IdzE8LXTjKr4rTUYRZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Peter,

So I did little clean up and fixed the error: "unknown option -- G.", so th=
at is taken care.

Now the only issue is getting this service "sshdgenkeys.service" enabled by=
 default.

Just to recap, I have "openssh-sshd" disable by default and "openssh-sshdge=
nkeys" enable:

SYSTEMD_AUTO_ENABLE:${PN}-sshd =3D "disable"
SYSTEMD_AUTO_ENABLE:${PN}-sshdgenkeys =3D "enable"

But it looks like it is getting override and disable.

Thoughts?

--44IdzE8LXTjKr4rTUYRZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Peter,<br /><br />So I did little clean up and fixed the error: "unknown=
 option -- G.", so that is taken care.&nbsp;<br /><br />Now the only issue =
is getting this service "sshdgenkeys.service" enabled by default.&nbsp;<br =
/><br />Just to recap, I have "openssh-sshd" disable by default and "openss=
h-sshdgenkeys" enable:&nbsp;</p>
<p><span style=3D"white-space-collapse: preserve;">SYSTEMD_AUTO_ENABLE:${PN=
}-sshd =3D "disable"<br /></span>SYSTEMD_AUTO_ENABLE:${PN}-sshdgenkeys =3D =
"enable"<br /><br />But it looks like it is getting override and disable.&n=
bsp;<br /><br />Thoughts?</p>

--44IdzE8LXTjKr4rTUYRZ--

