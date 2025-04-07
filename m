Return-Path: <miriam.rico@enigmedia.es>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55B2C36010
	for <webhook@archiver.kernel.org>; Mon,  7 Apr 2025 08:02:47 +0000 (UTC)
Subject: Re: [yocto] Yocto Kirkstone IMA Kernel Flags #kernel #kirkstone
To: "Bruce Ashfield" <bruce.ashfield@gmail.com>, yocto@lists.yoctoproject.org
From: miriam.rico@enigmedia.es
X-Originating-Location: =?UTF-8?B?TGXDs24sIENhc3RpbGxlIGFuZCBMZcOzbiwgRVM=?= (88.15.210.136)
X-Originating-Platform: Linux Chrome 133
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 07 Apr 2025 01:02:44 -0700
References: <Z+6vyKw0b2LW7J29@gmail.com>
In-Reply-To: <Z+6vyKw0b2LW7J29@gmail.com>
Message-ID: <6565.1744012964281221070@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fmfO4mcQ1YqbiIfD9BEa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Apr 2025 08:02:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65111

--fmfO4mcQ1YqbiIfD9BEa
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Thank you very much for your answers. Now the configuration order is clear =
to me. I tried to do a do_configure:append and add the options I needed to =
the .config file and rerun olddefconfig. This seems to have worked as the o=
ptions I wanted are now loaded into the Kernel.

Thank you

Miriam

--fmfO4mcQ1YqbiIfD9BEa
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>Thank you very much for your answers. Now the configuration order is c=
lear to me. I tried to do a do_configure:append and add the options I neede=
d to the .config file and rerun olddefconfig. This seems to have worked as =
the options I wanted are now loaded into the Kernel.</div>
<div>&nbsp;</div>
<div>Thank you</div>
<div>&nbsp;</div>
<div>Miriam</div>

--fmfO4mcQ1YqbiIfD9BEa--

