Return-Path: <email@matthias-proske.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA17E674AF
	for <webhook@archiver.kernel.org>; Fri,  1 Nov 2024 07:42:03 +0000 (UTC)
Subject: Re: qemu-system-native fails to build with buildtools and certain host packages installed
To: yocto@lists.yoctoproject.org
From: email@matthias-proske.de
X-Originating-Location: GB (217.26.235.119)
X-Originating-Platform: Linux Firefox 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 01 Nov 2024 00:41:59 -0700
References: <2b22b133425c602519f5dc6cfeebfcab1f230676.camel@linuxfoundation.org>
In-Reply-To: <2b22b133425c602519f5dc6cfeebfcab1f230676.camel@linuxfoundation.org>
Message-ID: <9791.1730446919931332613@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Nov 2024 07:42:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64199

On Thu, Oct 31, 2024 at 11:44 PM, Richard Purdie wrote:

>
> On Thu, 2024-10-31 at 15:13 -0700, email via lists.yoctoproject.org
> wrote:
> > Should the recipe for qemu-system-native be adapted to filter out
> > libkeyutils? This doesn't seem to be straightforward as it is not an
> > existing configure switch.
> > Any other thoughts on that?
>=20
> It shouldn't be finding keyutils and ideally that should have a
> configure option. If it doesn't, we'd need to add one and disable it.
> Hopefully upstream would take such a patch too.
>=20
> Cheers,
>=20
> Richard
>

Thanks for the quick reply.
There is a config switch for libkeyutils and it works for me - don't know w=
hy I missed it before.
I'll prepare a patch, but I guess that should go to the openembedded-core m=
ailing list.

