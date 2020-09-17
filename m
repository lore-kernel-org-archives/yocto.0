Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.11789.1600335613606756423
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 02:40:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@basmevissen.nl header.s=default header.b=MwwOE17F;
 spf=softfail (domain: basmevissen.nl, ip: 198.145.29.25, mailfrom: abuse@basmevissen.nl)
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3929438C0858
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2020 02:40:13 -0700 (PDT)
Received: from hosting.emcodev.net (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 088BE12A03C;
	Thu, 17 Sep 2020 11:40:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=basmevissen.nl;
	s=default; t=1600335612; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XeL/3cry4FOGiaOPRtjZ6NehMcohI3St4qjRwhXxdqw=;
	b=MwwOE17F+lYjGhuUbI5nHn+E/UcCsgsIgcRR6B5kx0Ui3pE0f9Xy2uBpQNcTYrkNcF+K5k
	PEf0LPdaJTIkiW5pLEnFUamOgI6qKJ/NOPscqAdHwS8iLo5ubuDxcdsbCOdh4iY/8gl4nI
	E6CEUJP12V59M1NaVogQ9N+p5ZHuH2JYGKHLuNPGQFUDOMloRJwpzDG7pY8O5yKhWPzEu8
	4cbc6/DZoTdosy0/5LTkMJjWPqvrijxV6frZmFySoLcNqKTy9gE6GztmdxcXZ1H787LEaL
	6mkdpLZ58eBrshfEsCel3MvQWz0nH3Pk10vRpiyTPRDoD9yg7qsDUETMikMjqjFSAfr4/E
	9+SaGopAlGf6Oq0ii/N27++UKXl8kyQJLrPVv5v1pRf+WYTAzZfAeYllhiZ0gVu7PJ6z7T
	q7bsRhaHgiDQo6O86KVldMFSZIxRXAXt/L4QrlovV3UiteeM6kbL+gSk7fDJYPaDeuGDOO
	dik7d18NjJjx0N/ree9cCqDAEpw39S3TfkJmL8PyZh365VMYdN32sDXgSWo3p0e0TxOPts
	MBvFg5HQ14CZf6NyekDVlcSrdiBF4vQEa73rQCmm++N8wYYMXmpdGHehUPlOGs9oavtDiM
	Lhp/ksVTjNW3ANii+A9mn766LEAfXh6JHkQTxPOzzrg7yjZDOfCd0=
MIME-Version: 1.0
Date: Thu, 17 Sep 2020 11:40:12 +0200
From: "Bas Mevissen" <abuse@basmevissen.nl>
To: Paul Barker <pbarker@konsulko.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, Ross Burton
 <ross@burtonini.com>, Jon Mason <jdmason@kudzu.us>
Subject: Re: [yocto] RFC: Changes to meta-kernel layer
In-Reply-To: <CAM9ZRVubA=8LS+tVtSdVZ8+hiu3+9UahCywBLHqdDLca3HScNg@mail.gmail.com>
References: <CAM9ZRVubA=8LS+tVtSdVZ8+hiu3+9UahCywBLHqdDLca3HScNg@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.7
Message-ID: <8562d008e8e3d6847d804c989d3c792d@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

On 2020-09-17 10:43, Paul Barker wrote:

> Hi folks,
>=20
> After a bit of a break I'm looking again at the meta-kernel layer and=20
> I've got some changes planned. I'd like to get some feedback on these=20
> from anyone who has looked at or used the meta-kernel layer.
>=20
> 1) Change the name to meta-vanilla-kernel. This reflects the focus on=20
> providing a fast moving layer for vanilla kernel recipes, covering only=
=20
> what is available on kernel.org. Other common kernel recipes (e.g.=20
> Linaro or Android common kernels) will no longer be considered for=20
> acceptance into this layer. This clear focus should hopefully reduce=20
> some of the confusion about the goals of this layer.
>=20

I would suggest calling it something like meta-kernel.org then. Naming=20
something "vanilla" might cause confusion as well.

> 2) The dunfell branch will no longer get new non-LTS kernel recipes.=20
> Providing non-LTS recipes on a stable branch has led to people=20
> depending on kernels which are now out of their support period - I'd=20
> like to drop the recipes for the 5.3.y and 5.6.y kernels but users are=
=20
> depending on them so I'll have to keep them. To avoid this=20
> proliferating, only LTS kernels and the bleeding edge mainline recipe=20
> will be updated on the stable branch from now on.
>=20
I would recommend maintaining a "kernel-stable" moving target recipe=20
that tracks the latest stable version of kernel.org. This is of use for=20
people needing a very recent kernel, while needing a stable environment=20
for the rest of the system (so where master is no option).

> 3) Aggressively drop end-of-life kernels on the master branch.
>=20
Always good to keep the amount of kernels at an absolut minimum to limit=
=20
the amount of testing and maintenance.

> 4) Drop all non-LTS kernel recipes in the gatesgarth branch when it is=
=20
> created.
>=20
See 2); additionally the next-to-be-lts might be considered

> 5) Document the test coverage for meta-kernel. We don't test perf,=20
> lttng or any out-of-tree modules. This layer isn't meant to replace the=
=20
> linux-yocto recipes, the goals are different. If you're releasing=20
> products based on meta-kernel you obviously need to do your own testing=
=20
> on the components you're actually using.
>=20
> 6) Document the policy for kernel patches. Patches for the kernel will=
=20
> only be carried in this layer as a last resort. Kernel patches should=20
> be submitted upstream and go through the usual process for inclusion in=
=20
> the stable kernel releases.
>=20
> 7) Disable GitLab CI for this layer. It's costing me about =C2=A370 per=
=20
> month to run CI for this layer and I need to eliminate that expense. If=
=20
> anyone can sponsor this or host the CI service that would be welcome.
>=20
> 8) Add Jon Mason and Ross Burton (both at ARM) as backup maintainers to=
=20
> reduce the bus factor for the layer. I'll continue to be the primary=20
> maintainer for this layer but this will give some coverage if I'm=20
> unable to continue working on it.
>=20
And spreading the workload of course!

> Thanks,
>=20
> --
>=20
> Paul Barker
> Konsulko Group
>=20
>=20

Regards,

Bas.
