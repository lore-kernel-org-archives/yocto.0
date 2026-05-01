Return-Path: <cleiton.bueno@b2open.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F2E8CD3424
	for <webhook@archiver.kernel.org>; Fri,  1 May 2026 12:32:37 +0000 (UTC)
Subject: Re: [yocto] Rockchip project: opinions on RAUC vs SWUpdate?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, yocto@lists.yoctoproject.org
From: cleiton.bueno@b2open.com
X-Originating-Location: Duque de Caxias, Rio de Janeiro, BR (179.162.90.167)
X-Originating-Platform: Linux Chrome 147
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 01 May 2026 05:32:27 -0700
References: <3d16b44f-0617-c8a9-4748-b817ff9bef8a@crashcourse.ca>
In-Reply-To: <3d16b44f-0617-c8a9-4748-b817ff9bef8a@crashcourse.ca>
Message-ID: <1192269.1777638747489589502@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8P8HYAczsU9YbkZ7uVWd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 May 2026 12:32:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66465

--8P8HYAczsU9YbkZ7uVWd
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I agree with Josef, I would need to understand your scenario.

If you need fleet provisioning and control, product management, and other a=
spects, a commercial solution will save you time.

If simply updating locally, with a simple web page for local management on =
the device, is sufficient, SWUpdate will suffice. However, if you need an O=
TA service but without management, RAUC seems more suitable.

And there's the possibility of integration with Hawkbit using both SWUpdate=
 and Hawkbit, but it's a lot of work to get everything right!

Cleiton Bueno
B2Open Systems

--8P8HYAczsU9YbkZ7uVWd
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I agree with Josef, I would need to understand your scenario.</div>
<div>&nbsp;</div>
<div>If you need fleet provisioning and control, product management, and ot=
her aspects, a commercial solution will save you time.</div>
<div>&nbsp;</div>
<div>If simply updating locally, with a simple web page for local managemen=
t on the device, is sufficient, SWUpdate will suffice. However, if you need=
 an OTA service but without management, RAUC seems more suitable.</div>
<div>&nbsp;</div>
<div>And there's the possibility of integration with Hawkbit using both SWU=
pdate and Hawkbit, but it's a lot of work to get everything right!</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Cleiton Bueno</div>
<div>B2Open Systems</div>
<div>&nbsp;</div>

--8P8HYAczsU9YbkZ7uVWd--

