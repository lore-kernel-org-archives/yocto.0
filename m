Return-Path: <thejas.raj@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15955E7717F
	for <webhook@archiver.kernel.org>; Tue, 17 Dec 2024 11:42:08 +0000 (UTC)
Subject: Re: [yocto] Incorporating Qt6 in yocto mickledore #mickledore #qt #cmake
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: thejas.raj@mindteck.com
X-Originating-Location: Bengaluru, Karnataka, IN (14.142.4.2)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 17 Dec 2024 03:42:01 -0800
References: <b5d05693-8b82-4930-8ed9-875b49e43b4a@gmail.com>
In-Reply-To: <b5d05693-8b82-4930-8ed9-875b49e43b4a@gmail.com>
Message-ID: <13203.1734435721729533343@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="IYczTtzvk4GbIvhnXNpI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2024 11:42:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64455

--IYczTtzvk4GbIvhnXNpI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I've added these lines to the local.conf,

IMAGE_INSTALL:append =3D " qtbase qtbase-examples"
PACKAGECONFIG:append:pn-qtbase =3D " examples"
DISTRO_FEATURES:remove =3D "x11"
DISTRO_FEATURES:append =3D " opengl egl wayland"

but unfortunately the same errors persist

--IYczTtzvk4GbIvhnXNpI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>I've added these lines to the local.conf,</div>
<div>&nbsp;</div>
<div>
<div>IMAGE_INSTALL:append =3D " qtbase qtbase-examples"<br />PACKAGECONFIG:=
append:pn-qtbase =3D " examples"</div>
<div>DISTRO_FEATURES:remove =3D "x11"<br />DISTRO_FEATURES:append =3D " ope=
ngl egl wayland"</div>
<div>&nbsp;</div>
<div>but unfortunately the same errors persist</div>
</div>

--IYczTtzvk4GbIvhnXNpI--

