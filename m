Return-Path: <c.finck@enlyze.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B910DECAAD1
	for <webhook@archiver.kernel.org>; Wed, 31 Aug 2022 14:32:11 +0000 (UTC)
Subject: Re: wireguard fails with "exports duplicate symbol blake2s_final
 (owned by kernel)" in latest poky / meta-openembedded #dunfell
To: yocto@lists.yoctoproject.org
From: "Colin Finck" <c.finck@enlyze.com>
X-Originating-Location: Cologne, North Rhine-Westphalia, DE (89.0.22.227)
X-Originating-Platform: Windows Firefox 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 31 Aug 2022 07:32:11 -0700
References: <0b50f8da-dee0-4060-b9b5-f488df13d46c@gmail.com>
In-Reply-To: <0b50f8da-dee0-4060-b9b5-f488df13d46c@gmail.com>
Message-ID: <22352.1661956331262265275@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Aug 2022 14:32:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57963

Thanks for the quick response, Armin!

After talking to Jason A. Donenfeld, it turned out that updating to the lat=
est wireguard 1.0.x version is the only solution supported by the author. W=
e should never maintain our own fork of wireguard 1.0.20200401, even less s=
o considering that it's a highly security-critical component.
The major and minor version of the latest wireguard stays the same. Hence, =
this is even a solution for a Yocto LTS release like dunfell.

As a consequence, I'm importing the latest wireguard version in this PR: ht=
tps://github.com/openembedded/meta-openembedded/pull/599

I have tested that PR and it works like a charm on latest Yocto/Poky dunfel=
l.
Even no longer reports a "dirty" version or warns about "loading out-of-tre=
e module taints kernel".

Colin

