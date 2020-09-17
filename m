Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.12064.1600336877114352125
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 03:01:17 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: embed.me.uk, ip: 198.145.29.25, mailfrom: ml@embed.me.uk)
Received: from outbound.soverin.net (outbound.soverin.net [116.202.65.218])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3105C38C0896
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2020 03:01:16 -0700 (PDT)
Received: from smtp.soverin.net (unknown [10.10.3.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by outbound.soverin.net (Postfix) with ESMTPS id A9B2060236;
	Thu, 17 Sep 2020 10:01:14 +0000 (UTC)
Received: from smtp.soverin.net (smtp.soverin.net [159.69.232.138]) by soverin.net
From: "Jack Mitchell" <ml@embed.me.uk>
Subject: Re: [yocto] RFC: Changes to meta-kernel layer
To: Bas Mevissen <abuse@basmevissen.nl>, Paul Barker <pbarker@konsulko.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
 Ross Burton <ross@burtonini.com>, Jon Mason <jdmason@kudzu.us>
References: <CAM9ZRVubA=8LS+tVtSdVZ8+hiu3+9UahCywBLHqdDLca3HScNg@mail.gmail.com>
 <8562d008e8e3d6847d804c989d3c792d@basmevissen.nl>
Message-ID: <ee5263da-717e-878d-8049-c033ffb1601d@embed.me.uk>
Date: Thu, 17 Sep 2020 11:01:11 +0100
MIME-Version: 1.0
In-Reply-To: <8562d008e8e3d6847d804c989d3c792d@basmevissen.nl>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US-large
Content-Transfer-Encoding: quoted-printable

On 17/09/2020 10:40, Bas Mevissen wrote:
> On 2020-09-17 10:43, Paul Barker wrote:
>=20
>> Hi folks,
>>
>> After a bit of a break I'm looking again at the meta-kernel layer and
>> I've got some changes planned. I'd like to get some feedback on these
>> from anyone who has looked at or used the meta-kernel layer.
>>
>> 1) Change the name to meta-vanilla-kernel. This reflects the focus on
>> providing a fast moving layer for vanilla kernel recipes, covering
>> only what is available on kernel.org. Other common kernel recipes
>> (e.g. Linaro or Android common kernels) will no longer be considered
>> for acceptance into this layer. This clear focus should hopefully
>> reduce some of the confusion about the goals of this layer.
>>
>=20
> I would suggest calling it something like meta-kernel.org then. Naming
> something "vanilla" might cause confusion as well.

I wasn't going to be blamed for the bike shedding of this but as we've
gotten started I'll stick my oar in. My suggestion would be
meta-mainline-kernel, meta-linux-kernel or potentially
meta-upstream-kernel but I'm not so keen on that. Vanilla is a confusing
term for people not in the game and you know at some point there will be
a "vanilla-pi" or "vanilla" board where you're going to hit confusion.

As an aside I saw no issues with meta-kernel as it's _the_ Linux kernel
from _the_ Linux kernel git repositories. Confusion due to doublespeak
from downstream kernel vendors should be corrected and not adhered to.

>=20
>> 2) The dunfell branch will no longer get new non-LTS kernel recipes.
>> Providing non-LTS recipes on a stable branch has led to people
>> depending on kernels which are now out of their support period - I'd
>> like to drop the recipes for the 5.3.y and 5.6.y kernels but users are
>> depending on them so I'll have to keep them. To avoid this
>> proliferating, only LTS kernels and the bleeding edge mainline recipe
>> will be updated on the stable branch from now >>
>> 3) Aggressively drop end-of-life kernels on the master branch.
>>
>> 4) Drop all non-LTS kernel recipes in the gatesgarth branch when it is
>> created.
>>

I think these are fair, I can't speak for how other people are using the
layer but I would imagine as with most embedded boards, they're using
the tooling rather than the plain upstream recipes and the real value is
in catching problems with -next kernel compilation early and the
fixes/features pushed back to kernel.bbclass.

>> 5) Document the test coverage for meta-kernel. We don't test perf,
>> lttng or any out-of-tree modules. This layer isn't meant to replace
>> the linux-yocto recipes, the goals are different. If you're releasing
>> products based on meta-kernel you obviously need to do your own
>> testing on the components you're actually using.

I wouldn't be expecting anything more than basic build and boot on qemu
to be fair. Again, IMO the value of this is in the toolchain test and
tooling.

>>
>> 6) Document the policy for kernel patches. Patches for the kernel will
>> only be carried in this layer as a last resort. Kernel patches should
>> be submitted upstream and go through the usual process for inclusion
>> in the stable kernel releases.

Compilation patches only I would say.

>>
>> 7) Disable GitLab CI for this layer. It's costing me about =C2=A370 pe=
r
>> month to run CI for this layer and I need to eliminate that expense.
>> If anyone can sponsor this or host the CI service that would be welcom=
e.
>>
>> 8) Add Jon Mason and Ross Burton (both at ARM) as backup maintainers
>> to reduce the bus factor for the layer. I'll continue to be the
>> primary maintainer for this layer but this will give some coverage if
>> I'm unable to continue working on it.
>>
>> Thanks,
>>
>> --=20
>>
>> Paul Barker
>> Konsulko Group
>>

Cheers,
Jack.
