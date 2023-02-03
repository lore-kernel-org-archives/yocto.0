Return-Path: <Carles.SoleMendi@de.bosch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41988C63797
	for <webhook@archiver.kernel.org>; Fri,  3 Feb 2023 07:18:18 +0000 (UTC)
Subject: Re: [meta-raspberrypi] Is Preempt-rt still supported in master / latest releases?
To: yocto@lists.yoctoproject.org
From: "Carles Sole" <Carles.SoleMendi@de.bosch.com>
X-Originating-Location: Stuttgart, Baden-Württemberg, DE (194.39.218.22)
X-Originating-Platform: Windows Firefox 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 Feb 2023 23:18:12 -0800
References: <CABKMkPKaoqM8U0CShdQxRk+a6iYWNqqd-ADuP9_z==x9ZW31_Q@mail.gmail.com>
In-Reply-To: <CABKMkPKaoqM8U0CShdQxRk+a6iYWNqqd-ADuP9_z==x9ZW31_Q@mail.gmail.com>
Message-ID: <20118.1675408692328976766@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="t7JYWnKn2WvMHnxUgbvI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Feb 2023 07:18:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59154

--t7JYWnKn2WvMHnxUgbvI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Joel,

I do get the same, but my understanding is that the RT features are not ena=
bled. I would expect to get:

Linux raspberrypi4-64 5.15.34-v8 #1 SMP PREEMPT *RT* Tue Apr 19 19:21:26 UT=
C 2022 aarch64 aarch64 aarch64 GNU/Linux

When I check the .config file in the work folder CONFIG_PREEMPT=3Dy is set =
but I would expect to see CONFIG_PREEMPT_RT=3Dy instead.

That is what you get for rpi4 32 bit as mentioned by Aleksandr above. Is my=
 understanding wrong?

--t7JYWnKn2WvMHnxUgbvI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Joel,<br /><br />I do get the same, but my understanding is that the =
RT features are not enabled. I would expect to get:<br /><br />&nbsp; Linux=
 raspberrypi4-64 5.15.34-v8 #1 SMP PREEMPT <strong>RT</strong> Tue Apr 19 1=
9:21:26 UTC 2022 aarch64 aarch64 aarch64 GNU/Linux<br /><br />When I check =
the .config file in the work folder CONFIG_PREEMPT=3Dy is set but I would e=
xpect to see CONFIG_PREEMPT_RT=3Dy instead. <br /><br />That is what you ge=
t for rpi4 32 bit as mentioned by Aleksandr above. Is my understanding wron=
g?

--t7JYWnKn2WvMHnxUgbvI--

