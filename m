Return-Path: <shawn.adams@ga.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA11DEEA870
	for <webhook@archiver.kernel.org>; Thu, 12 Feb 2026 23:21:57 +0000 (UTC)
Subject: Re: [yocto] how to use multiubi?
To: bartiszosti@gmail.com, yocto@lists.yoctoproject.org
From: "Adams, Shawn" <shawn.adams@ga.com>
X-Originating-Location: San Diego, California, US (141.248.14.8)
X-Originating-Platform: Windows Chrome 144
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 12 Feb 2026 15:21:54 -0800
References: <OiML.1723839448468079861.e88Y@lists.yoctoproject.org>
In-Reply-To: <OiML.1723839448468079861.e88Y@lists.yoctoproject.org>
Message-ID: <1270865.1770938514467194422@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dw9vArOHRMc8LpP8xYVS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Feb 2026 23:21:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66242

--dw9vArOHRMc8LpP8xYVS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> hello,
> could someone tell me or share some documentation or examples about the m=
ultiubi image type?

This blog has an example of using multiubi: https://www.marcusfolkesson.se/=
blog/ubi-volumes-in-yocto/.

> i want to create an ubi image containes two partitions, first with kernel=
 and dtb, and second with roots. How to do that?

I would like to do something similar but haven't found a good way to do it =
because image_types.bbclass seems to only support adding the rootfs to ubif=
s and ubi images, not the kernel and dtb.

I'm considering overriding write_ubi_config() and multiubi_mkfs() in image_=
types.bbclass with my own .bbclass file so that it creates two ubi files: o=
ne containing the kernel and dtb and the other containing the rootfs.

Does anyone have other ideas about how to do this?

--dw9vArOHRMc8LpP8xYVS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>&gt; hello,</div>
<div>&gt; could someone tell me or share some documentation or examples abo=
ut the multiubi image type?</div>
<div>&nbsp;</div>
<div>This blog has an example of using multiubi: <a href=3D"https://www.mar=
cusfolkesson.se/blog/ubi-volumes-in-yocto/" target=3D"_blank" rel=3D"noopen=
er">https://www.marcusfolkesson.se/blog/ubi-volumes-in-yocto/</a>.</div>
<div>&nbsp;</div>
<div>&gt; i want to create an ubi image containes two partitions, first wit=
h kernel and dtb, and second with roots. How to do that?</div>
<div>&nbsp;</div>
<div>I would like to do something similar but haven't found a good way to d=
o it because image_types.bbclass seems to only support adding the rootfs to=
 ubifs and ubi images, not the kernel and dtb.</div>
<div>&nbsp;</div>
<div>I'm considering overriding write_ubi_config() and multiubi_mkfs() in i=
mage_types.bbclass with my own .bbclass file so that it creates two ubi fil=
es: one containing the kernel and dtb and the other containing the rootfs.<=
/div>
<div>&nbsp;</div>
<div>Does anyone have other ideas about how to do this?</div>

--dw9vArOHRMc8LpP8xYVS--

