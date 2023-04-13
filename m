Return-Path: <electronicconsult1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7FDC77B6E
	for <webhook@archiver.kernel.org>; Thu, 13 Apr 2023 19:52:30 +0000 (UTC)
Subject: Re: Correct build folder location
To: yocto@lists.yoctoproject.org
From: "Electronic Consult" <electronicconsult1@gmail.com>
X-Originating-Location: Dublin, Leinster, IE (188.141.96.236)
X-Originating-Platform: Linux Firefox 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Apr 2023 12:52:28 -0700
References: <CAGUWaEHR=xLzTNfyJGAD7Psg0S4k_eQd3dO+sL2-wZpjqxR8vw@mail.gmail.com>
In-Reply-To: <CAGUWaEHR=xLzTNfyJGAD7Psg0S4k_eQd3dO+sL2-wZpjqxR8vw@mail.gmail.com>
Message-ID: <16939.1681415548979400315@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wKil00MbdXZJzo437IVQ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Apr 2023 19:52:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59707

--wKil00MbdXZJzo437IVQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

As an update for anyone looking at this..

I managed to get the raspberry pi build going. It seems after running

source oe-init-build-env rpi-build
the local.conf from meta-atmel was copied into the rpi-build folder. This l=
ocal.conf amongst other things had

DISTRO ?=3D "poky-atmel"

Which was causing the issue.

However if anyone could point out best practice on folder location I'd be g=
rateful. Build folders inside or outside the poky directory?

Regards,

Owen

--wKil00MbdXZJzo437IVQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

As an update for anyone looking at this..<br /><br />I managed to get the r=
aspberry pi build going. It seems after running <br /><br />source oe-init-=
build-env rpi-build<br />the local.conf from meta-atmel was copied into the=
 rpi-build folder. This local.conf amongst other things had&nbsp;<br /><br =
/>DISTRO ?=3D "poky-atmel"<br /><br />Which was causing the issue.<br /><br=
 />However if anyone could point out best practice on folder location I'd b=
e grateful. Build folders inside or outside the poky directory?<br /><br />=
Regards,<br /><br />Owen

--wKil00MbdXZJzo437IVQ--

