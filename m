Return-Path: <Carles.SoleMendi@de.bosch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BFB7C61DA4
	for <webhook@archiver.kernel.org>; Thu,  2 Feb 2023 10:24:35 +0000 (UTC)
Subject: Re: [meta-raspberrypi] Is Preempt-rt still supported in master / latest releases?
To: yocto@lists.yoctoproject.org
From: "Carles Sole" <Carles.SoleMendi@de.bosch.com>
X-Originating-Location: Krefeld, North Rhine-Westphalia, DE (82.207.252.61)
X-Originating-Platform: Linux Firefox 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 Feb 2023 02:24:25 -0800
References: <CABKMkPLAZQBE7kZfxxLX0RLdtv6kd2fYMXkE2XH_n8fz3o_onQ@mail.gmail.com>
In-Reply-To: <CABKMkPLAZQBE7kZfxxLX0RLdtv6kd2fYMXkE2XH_n8fz3o_onQ@mail.gmail.com>
Message-ID: <1601.1675333465508890012@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fYcYBH3GlZde4mIpC8MR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 10:24:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59145

--fYcYBH3GlZde4mIpC8MR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Joel,

thanks for your reply. I was not aware about this possibility. I have tried=
 it and the preemptive rt kernel is built instead of standard ("linux-raspb=
errypi4_64-preempt-rt-build" is available in build/work/linux-raspberrypi/.=
..) but still the configuration file does not set the CONFIG_PREEMPT_RT=3Dy=
 for raspberrypi4-64, even if a .cfg is added using a .bbappend file. So in=
 the end the RT option is not enabled.

Any idea why it works for raspberrypi4 but not for raspberrypi4-64?

Best Regards,
Carles

--fYcYBH3GlZde4mIpC8MR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Joel,<br /><br />thanks for your reply. I was not aware about this po=
ssibility. I have tried it and the preemptive rt kernel is built instead of=
 standard ("linux-raspberrypi4_64-preempt-rt-build" is available in build/w=
ork/linux-raspberrypi/...) but still the configuration file does not set th=
e CONFIG_PREEMPT_RT=3Dy for raspberrypi4-64, even if a .cfg is added using =
a .bbappend file. So in the end the RT option is not enabled.<br /><br />An=
y idea why it works for raspberrypi4 but not for raspberrypi4-64?<br /><br =
/>Best Regards,<br />Carles

--fYcYBH3GlZde4mIpC8MR--

