Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDB9C433FE
	for <webhook@archiver.kernel.org>; Wed, 30 Nov 2022 12:20:53 +0000 (UTC)
Subject: Re: How to enabled systemd unit files automatically using recipe?
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Mysore, Karnataka, IN (150.129.88.138)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 30 Nov 2022 04:20:46 -0800
References: <13529.1666683596254084698@lists.yoctoproject.org>
In-Reply-To: <13529.1666683596254084698@lists.yoctoproject.org>
Message-ID: <8531.1669810846597231294@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="J0D5w67VU85ofO8KIK2X"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 12:20:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58676

--J0D5w67VU85ofO8KIK2X
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a question here:

If I something like below in my recipe

SYSTEMD_SERVICE:${PN} =3D "${@bb.utils.contains('DISTRO_FEATURES', 'systemd=
', 'one.service', '', d)}"

Then, can I add multiple files with:

SYSTEMD_SERVICE:${PN} =3D "${@bb.utils.contains('DISTRO_FEATURES', 'systemd=
', 'one.service one.path two.service two.path', '', d)}"

?

Is this valid? Or should I use only SYSTEMD_SERVICE:${PN} =3D "one.service =
two.service one.path two.path" ?

Thanks in advance

--J0D5w67VU85ofO8KIK2X
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a question here:<br /><br />If I something like below in my recipe<b=
r /><br />SYSTEMD_SERVICE:${PN} =3D "${@bb.utils.contains('DISTRO_FEATURES'=
, 'systemd', 'one.service', '', d)}"<br /><br />Then, can I add multiple fi=
les with:<br /><br />SYSTEMD_SERVICE:${PN} =3D "${@bb.utils.contains('DISTR=
O_FEATURES', 'systemd', 'one.service one.path two.service two.path', '', d)=
}"<br /><br />?<br /><br />Is this valid? Or should I use only&nbsp;<span s=
tyle=3D"white-space: pre-wrap;">SYSTEMD_SERVICE:${PN} =3D "one.service two.=
service one.path two.path" ?<br /><br />Thanks in advance</span>

--J0D5w67VU85ofO8KIK2X--

