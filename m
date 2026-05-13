Return-Path: <jeffrey.simons@boonedam.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EFCACD4851
	for <webhook@archiver.kernel.org>; Wed, 13 May 2026 05:49:03 +0000 (UTC)
Subject: Re: [yocto] Problems adding initramfs when using FIT image
To: "Felix Mellmann" <flix.yocto@benfm.de>, yocto@lists.yoctoproject.org
From: "Jeffrey Simons" <jeffrey.simons@boonedam.com>
X-Originating-Location: Wormerveer, North Holland, NL (178.84.55.234)
X-Originating-Platform: Windows Chrome 146
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 12 May 2026 22:49:01 -0700
References: <ED150875-0486-4D10-ABDC-6E3EB2A39F1A@iki.fi> <923a7f55-2a3c-435d-b18d-220cfcfd4ade@benfm.de>
In-Reply-To: <923a7f55-2a3c-435d-b18d-220cfcfd4ade@benfm.de>
Message-ID: <2115555.1778651341697824037@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 05:49:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66545

Hi Anders,

I can't speak for you specific situation, but I faced something similar whe=
n building the distro. I ended up defining a custom initramfs (which I need=
ed) and didn't use the INITRAMFS_BUNDLE but wrote a "kernel task deploy app=
end" that created the symlink for the fitimage to the $deployDir/fitImage.
I traced the fitImage name back to the kernel build task for me it was some=
thing like this: fitImage-${INITRAMFS_IMAGE_NAME}-${KERNEL_FIT_NAME}${KERNE=
L_FIT_BIN_EXT}.=20

Don't remember the exact steps, was quite a while ago. Hopefully this info =
helps in your search.
--=20
With kind regards,

Jeffrey Simons

Software Engineer
Royal Boon Edam International B.V.

