Return-Path: <jarno.katajainen@solotop.fi>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644F4D1118A
	for <webhook@archiver.kernel.org>; Wed, 26 Nov 2025 16:58:47 +0000 (UTC)
Subject: Re: [yocto] weston 13.0.1 assert fail #scarthgap
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: "Jarno" <jarno.katajainen@solotop.fi>
X-Originating-Location: Turku, Southwest Finland, FI (62.78.142.121)
X-Originating-Platform: Linux Chrome 141
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 26 Nov 2025 08:58:42 -0800
References: <NWUB.1763560336855590654.KUb9@lists.yoctoproject.org> <48750926-4ee5-4d46-b452-8d0c0dd680bc@gmail.com> <564360.1763630492381329900@lists.yoctoproject.org> <46e999f4-7254-453d-8414-b019d0381209@gmail.com> <686098.1763993744038185859@lists.yoctoproject.org> <d8c5fc86-eac2-486c-9dec-c03b076a3e5e@gmail.com> <699212.1764085168440917647@lists.yoctoproject.org> <4bdd99dc-9607-45de-b4a0-66f99c692241@gmail.com>
In-Reply-To: <4bdd99dc-9607-45de-b4a0-66f99c692241@gmail.com>
Message-ID: <704596.1764176322563402932@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pgy509qziWwQPHkOy4Ah"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Nov 2025 16:58:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66071

--pgy509qziWwQPHkOy4Ah
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

have spend the whole day on this subject. I did try with the patch provided=
 (thank you) and no luck. After spending some time debugging until frustrat=
ion with chaptgpt i did what i should have done much earlier: start new pro=
ject and build "core-image-weston", well it did not crash. I'll try to find=
 the reason and post it here.

--pgy509qziWwQPHkOy4Ah
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>have spend the whole day on this subject. I did try with the patch pro=
vided (thank you) and no luck. After spending some time debugging until fru=
stration with chaptgpt i did what i should have done much earlier: start ne=
w project and build "core-image-weston", well it did not crash. I'll try to=
 find the reason and post it here.</div>

--pgy509qziWwQPHkOy4Ah--

