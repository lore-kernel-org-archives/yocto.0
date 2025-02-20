Return-Path: <philip.dawson@datapath.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39B0EC021B2
	for <webhook@archiver.kernel.org>; Thu, 20 Feb 2025 09:24:41 +0000 (UTC)
Subject: Re: [yocto] Common Kernel and Rootfs builds for multiple devices with different device trees
To: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>, yocto@lists.yoctoproject.org
From: philip.dawson@datapath.co.uk
X-Originating-Location: Paddington, England, GB (212.69.51.233)
X-Originating-Platform: Windows Firefox 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 20 Feb 2025 01:24:25 -0800
References: <3702.1739979653181619876@lists.yoctoproject.org>
In-Reply-To: <3702.1739979653181619876@lists.yoctoproject.org>
Message-ID: <3702.1740043465399700913@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="z9Heg8pDYyTbdMbOsxwW"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Feb 2025 09:24:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64846

--z9Heg8pDYyTbdMbOsxwW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Nicolas,

I asked the same question on the meta-xilinx list ( https://lists.yoctoproj=
ect.org/g/meta-xilinx/topic/107162406 ).

They had some helpful advice but it involved moving away from the PetaLinux=
 build flow to a Yocto build flow which we can't do at the moment so we lef=
t it there.
If you are using (or are able to move to) the yocto flow I think you might =
be able to get a pretty good split between board specific bits and common b=
its with some work.

It also looked like they are working towards something called ARM system re=
ady that will break some of the dependency chain to help split parts/builds=
 up. Again this requires the Yocto build flow and there wasn't a target dat=
e of when it would be ready but is worth investigating.

Best Regards,
Phil Dawson

--z9Heg8pDYyTbdMbOsxwW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Nicolas,</div>
<div>&nbsp;</div>
<div>I asked the same question on the meta-xilinx list (<a href=3D"https://=
lists.yoctoproject.org/g/meta-xilinx/topic/107162406" target=3D"_blank" rel=
=3D"noopener">https://lists.yoctoproject.org/g/meta-xilinx/topic/107162406<=
/a>).</div>
<div>&nbsp;</div>
<div>They had some helpful advice but it involved moving away from the Peta=
Linux build flow to a Yocto build flow which we can't do at the moment so w=
e left it there.</div>
<div>If you are using (or are able to move to) the yocto flow I think you m=
ight be able to get a pretty good split between board specific bits and com=
mon bits with some work.</div>
<div><br />It also looked like they are working towards something called AR=
M system ready that will break some of the dependency chain to help split p=
arts/builds up. Again this requires the Yocto build flow and there wasn't a=
 target date of when it would be ready but is worth investigating.</div>
<div>&nbsp;</div>
<div>Best Regards,</div>
<div>Phil Dawson</div>

--z9Heg8pDYyTbdMbOsxwW--

