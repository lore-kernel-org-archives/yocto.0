Return-Path: <nikitagupta2509@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32531C4332F
	for <webhook@archiver.kernel.org>; Mon, 21 Nov 2022 15:38:08 +0000 (UTC)
Subject: Re: Apply Patching #dunfell #patch #yocto #raspberrypi #linux
To: yocto@lists.yoctoproject.org
From: "Nikita Gupta" <nikitagupta2509@gmail.com>
X-Originating-Location: Lucknow, Uttar Pradesh, IN (49.36.209.55)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Nov 2022 07:38:02 -0800
References: <CANNYZj_4dYa5=-svn-gHioAPfzTxGTE3wJAw+XUueFxVOrHAOA@mail.gmail.com>
In-Reply-To: <CANNYZj_4dYa5=-svn-gHioAPfzTxGTE3wJAw+XUueFxVOrHAOA@mail.gmail.com>
Message-ID: <24762.1669045082837771574@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="vS6zjR00SQjJvntbeBfK"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 15:38:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58603

--vS6zjR00SQjJvntbeBfK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Alex,
Sorry for late reply. Actually i madert- image by setting the preferred vir=
tual/kernel type.
PREFERRED_PROVIDER_virtual/kernel =3D "linux-raspberrypi-rt"

and bake the recipe for following target.
bitbake core-image-base

I got my image successfully and it is booting up, but it is not taking user=
 input from my keyboard. Why is it happening?

Thanks in Advance

--vS6zjR00SQjJvntbeBfK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Alex,&nbsp;<br />Sorry for late reply. Actually i madert- image by se=
tting the preferred virtual/kernel type.&nbsp;<br />PREFERRED_PROVIDER_virt=
ual/kernel =3D "linux-raspberrypi-rt"<br />&nbsp;<br />and bake the recipe =
for following target.<br />bitbake core-image-base&nbsp;<br /><br />I got m=
y image successfully and it is booting up, but it is not taking user input =
from my keyboard. Why is it happening?<br /><br />Thanks in Advance

--vS6zjR00SQjJvntbeBfK--

