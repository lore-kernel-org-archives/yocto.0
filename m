Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C6FC3DA7D
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 15:58:22 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web11.67047.1672761500700214438
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 07:58:21 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@inside-m2m.de header.s=dkim header.b=grfuIylq;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from aglaia.inside-m2m.de (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 55D4140DC0;
	Tue,  3 Jan 2023 16:58:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1672761497;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ionHrtX0Rpz0H1tLoIkGoiazJZc9SEI12BqMdIv9lL4=;
	b=grfuIylqsF+0vbFoM0Y4T+EyTwEmA6X7wiEKFI5Nim/gGWin/glbydyepihCoH1DTA/YE9
	kciBarjig2CtTrf7EOgjbQXYNfh+gaxn+e01x8byB/jKwfhlwsEtkQLf8qPo6N93rGWkwm
	yG9GjLxrHqyAx6NBZYVNgMZyByL7zvQ=
Date: Tue, 3 Jan 2023 16:58:16 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Remove kernel image and modules from rootfs
Message-ID: <Y7RQmBzz3IumzXtY@aglaia.inside-m2m.de>
References: <Y6N23Z8n++QpwfFI@Hephaistos.local>
 <5852ba8f-d9d8-e143-b6de-a77c3bf14799@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <5852ba8f-d9d8-e143-b6de-a77c3bf14799@theobroma-systems.com>
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 15:58:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58908

On Mon, Jan 02, 2023 at 05:11:35PM +0100, Quentin Schulz wrote:

> > but this is now deprecated for kirkstone and should be done this way:
> >=20
> > RRECOMMENDS:${KERNEL_PACKAGE_NAME}-base =3D ""
> >=20
>=20
> This makes sense, I'll send a patch updating the documentation to refle=
ct
> this change. I thought we already had discussed about this and someone =
sent
> a patch but doesn't seem so :/

Thank you :-)

> So I believe you need to add:
> MACHINE_EXTRA_RRECOMMENDS:beaglebone-yocto =3D ""
> MACHINE_ESSENTIAL_EXTRA_RDEPENDS:remove:beaglebone-yocto =3D "kernel-im=
age
> kernel-devicetree"
> RRECOMMENDS:${KERNEL_PACKAGE_NAME}-base =3D ""
> to your local.conf

Dear Quentin, this is correct. It worked this way.
I admit, I was not aware the config snippets I copied need to be
modified for the local.conf in a way the machine name has to be
appended!

> I suggest you create your own machine configuration file which requires
> beaglebone-yocto.conf where you'll be able to set:
> MACHINE_EXTRA_RRECOMMENDS =3D ""
> MACHINE_ESSENTIAL_EXTRA_RDEPENDS =3D ""
> RRECOMMENDS:${KERNEL_PACKAGE_NAME}-base =3D ""

Meanwhile I did something similair, I cloned the machine
beaglebone-yocto into my tree with thos modifications on top and this
works too.

Thanks for your enormous useful hint to the modification needed for
local.conf and the tip to create a machine, inherit beaglebone-yocto and
modify those three variables.

> You can check the value of a variable by running bitbake-getvar -r
> virtual/kernel MACHINE_EXTRA_RRECOMMENDS for example.

Thank you, very useful.

Meanwhile I found out, for my puspose it could be useful to do something
like=20

CORE_IMAGE_BASE_INSTALL:remove =3D " packagegroup-core-boot packagegroup-=
base-extended"

in the image config, which might be even more useful for my approach to
my use case.

I now can approch my goal with local.conf, an additional machine or the
CORE_IMAGE_BASE_INSTALL modification.

One question though:

can the MACHINE variable only be modified in the local.conf (the
reference manual - glossary does not mention other places)?

If I go with the additional machine approach I am searching for a way to
build different images in my distro based on different machines. Is that
possible?


Kind Regards
Konstantin Kletschke




--=20
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Stra=DFe 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de=20

Gesch=E4ftsf=FChrung: Michael Emmert, Ingo Haase, Dr. Fred K=F6nemann, De=
rek Uhlig
HRB: 111204, AG Hannover


