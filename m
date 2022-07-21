Return-Path: <sethu.m@calixto.co.in>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D04DDC433EF
	for <webhook@archiver.kernel.org>; Thu, 21 Jul 2022 11:03:24 +0000 (UTC)
Subject: Custom YOCTO meta-layer building on Ubuntu 20 but Not in Ubuntu
 18.Why? #dunfell #yocto #dunfell
To: yocto@lists.yoctoproject.org
From: sethu.m@calixto.co.in
X-Originating-Location: Nellore, Andhra Pradesh, IN (49.206.132.145)
X-Originating-Platform: Linux Chrome 101
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 21 Jul 2022 04:03:17 -0700
Message-ID: <of5X.1658401397004419730.rtDe@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WD8zOTFubqsTyQGKeu8x"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Jul 2022 11:03:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57605

--WD8zOTFubqsTyQGKeu8x
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

We are making a Custom BSP Package for our Board using the YOCTO. I encount=
ered with a problem during the build of Yocto image in Ubuntu 18.04. But th=
e Same image successfully got built in the Ubuntu 20 Machine.

Iam able to build poky in Ubuntu 18.04 machine by removing custom layers.Bu=
t adding custom layers the above problem arises.

And the errors which are coming is from the meta layer inside poky for the =
gcc9.3 package.

Is there anything to be taken care for making custom layer independent on U=
buntu versions. As i just started YOCTO(dunfell) few weeks before, I am a n=
oob in YOCTO . Please help on the above issue

--WD8zOTFubqsTyQGKeu8x
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"margin-bottom: var(--s-prose-spacing); padding: 0px; border: 0p=
x; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-st=
retch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacS=
ystemFont, 'Segoe UI Adjusted', 'Segoe UI', 'Liberation Sans', sans-serif; =
font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear: both=
; color: #232629;">We are making a Custom BSP Package for our Board using t=
he YOCTO. I encountered with a problem during the build of Yocto image in U=
buntu 18.04. But the Same image successfully got built in the Ubuntu 20 Mac=
hine.</p>
<p style=3D"margin-bottom: var(--s-prose-spacing); padding: 0px; border: 0p=
x; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-st=
retch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacS=
ystemFont, 'Segoe UI Adjusted', 'Segoe UI', 'Liberation Sans', sans-serif; =
font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear: both=
; color: #232629;">Iam able to build poky in Ubuntu 18.04 machine by removi=
ng custom layers.But adding custom layers the above problem arises.</p>
<p style=3D"margin-bottom: var(--s-prose-spacing); padding: 0px; border: 0p=
x; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-st=
retch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacS=
ystemFont, 'Segoe UI Adjusted', 'Segoe UI', 'Liberation Sans', sans-serif; =
font-size: 15px; vertical-align: baseline; box-sizing: inherit; clear: both=
; color: #232629;">And the errors which are coming is from the meta layer i=
nside poky for the gcc9.3 package.</p>
<p style=3D"margin-bottom: 0px; padding: 0px; border: 0px; font-variant-num=
eric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; lin=
e-height: inherit; font-family: -apple-system, BlinkMacSystemFont, 'Segoe U=
I Adjusted', 'Segoe UI', 'Liberation Sans', sans-serif; font-size: 15px; ve=
rtical-align: baseline; box-sizing: inherit; clear: both; color: #232629;">=
Is there anything to be taken care for making custom layer independent on U=
buntu versions. As i just started YOCTO(dunfell) few weeks before, I am a n=
oob in YOCTO . Please help on the above issue</p>

--WD8zOTFubqsTyQGKeu8x--

