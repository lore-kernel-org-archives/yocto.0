Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1874ED609B7
	for <webhook@archiver.kernel.org>; Wed, 27 Nov 2024 08:48:19 +0000 (UTC)
Subject: Re: [yocto] Disabling unused service to reduce boot time (Krikstone version)
To: "Markus Volk" <f_l_k@t-online.de>, yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: SG (163.116.193.115)
X-Originating-Platform: Linux Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 27 Nov 2024 00:48:13 -0800
References: <EYLLNS.RTHGM5HDF2WN3@t-online.de>
In-Reply-To: <EYLLNS.RTHGM5HDF2WN3@t-online.de>
Message-ID: <14717.1732697293417372320@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gtQ0zR3P2v1u5S0Fj0Zm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 08:48:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64357

--gtQ0zR3P2v1u5S0Fj0Zm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Have tried.

DISTRO_FEATURES:remove =3D "zeroconf polkit"

SYSTEMD_AUTO_ENABLE:pn-avahi =3D "disable"
SYSTEMD_AUTO_ENABLE:pn-ip6tables =3D "disable"

Even not worked.Any other method ?

--gtQ0zR3P2v1u5S0Fj0Zm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Have tried.</div>
<div>&nbsp;</div>
<div>&nbsp;<br />DISTRO_FEATURES:remove =3D "zeroconf polkit"<br /><br />SY=
STEMD_AUTO_ENABLE:pn-avahi =3D "disable"<br />SYSTEMD_AUTO_ENABLE:pn-ip6tab=
les =3D "disable"<br /><br /></div>
<div>&nbsp;</div>
<div>Even not worked.Any other method ?</div>

--gtQ0zR3P2v1u5S0Fj0Zm--

