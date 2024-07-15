Return-Path: <andreas.2.weiss@continental-corporation.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00804C3DA4B
	for <webhook@archiver.kernel.org>; Mon, 15 Jul 2024 14:21:28 +0000 (UTC)
Subject: multiple compilers in one sdk - possible? senseful?
To: yocto@lists.yoctoproject.org
From: andreas.2.weiss@continental-corporation.com
X-Originating-Location: DE (185.60.76.28)
X-Originating-Platform: Windows Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 15 Jul 2024 07:21:22 -0700
Message-ID: <rvFz.1721053282875833528.Pfy8@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="uPWYY6bzwl6ZCkxcC2M6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jul 2024 14:21:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63499

--uPWYY6bzwl6ZCkxcC2M6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi together,

I am working on a SoC with a Cortex-A53 cluster and Cortex-M7 cores.

I have to create code for both cores, so I need an aarch64 and an arm compi=
ler.
I created a multiconfig with the vendor delivered a53 system and a second m=
achine for the m7 code.
So far, so good, works nice.

Next step is to create the SDK.
I can already create a SDK for the A53 part and a SDK for the M7 part.

But is there a possiblity to create one SDK containing both 'worlds'?
It would be nice to have something like that - (I think) development of the=
 communication between the cores is easier.

I dind't find any hint for that,
maybe someone has an idea or comments on my idea?

Thank you very much in advance for your comments.

Kind regards
Andreas Weiss

--uPWYY6bzwl6ZCkxcC2M6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi together,<br /><br />I am working on a SoC with a Cortex-A53 cluster and=
 Cortex-M7 cores.<br /><br />I have to create code for both cores, so I nee=
d an aarch64 and an arm compiler.<br />I created a multiconfig with the ven=
dor delivered a53 system and a second machine for the m7 code.<br />So far,=
 so good, works nice.<br /><br />Next step is to create the SDK.<br />I can=
 already create a SDK for the A53 part and a SDK for the M7 part.<br /><br =
/>But is there a possiblity to create one SDK containing both 'worlds'?<br =
/>It would be nice to have something like that - (I think) development of t=
he communication between the cores is easier.<br /><br />I dind't find any =
hint for that,<br />maybe someone has an idea or comments on my idea?<br />=
<br />Thank you very much in advance for your comments.<br /><br />Kind reg=
ards<br />Andreas Weiss

--uPWYY6bzwl6ZCkxcC2M6--

