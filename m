Return-Path: <konstantin.kletschke@inside-m2m.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F98C54E76
	for <webhook@archiver.kernel.org>; Thu,  5 Jan 2023 16:00:22 +0000 (UTC)
Received: from mail.inside-m2m.de (mail.inside-m2m.de [188.68.57.244])
 by mx.groups.io with SMTP id smtpd.web11.16396.1672934416215302941
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Jan 2023 08:00:17 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@inside-m2m.de header.s=dkim header.b=nGmurjGN;
 spf=pass (domain: inside-m2m.de, ip: 188.68.57.244, mailfrom: konstantin.kletschke@inside-m2m.de)
Received: from Hephaistos.home (unknown [94.31.106.219])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 753674018D;
	Thu,  5 Jan 2023 17:00:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inside-m2m.de;
	s=dkim; t=1672934412;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+wA8dMSbV865cNxV5mPksdVZEZRfOTmM2r7WdJcJO0k=;
	b=nGmurjGNV2J99VKnbT4iW76vLjILcCDXDrNMlFxubxo2k75YzkHYL36cc1Ug2TAVl/nVQE
	FshsJDWmNfpmSzzdXwa3MnnkElLbR0tsGgLlwBBV+lUJYKYrEoVBOQ9T/ceIwPAR2RjQHI
	4ksIU/Rcg+E0Uap6MhBbU6fWq5zQSnk=
Date: Thu, 5 Jan 2023 17:00:08 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Remove kernel image and modules from rootfs
Message-ID: <Y7b0CCMeBIbhmvnG@Hephaistos.home>
References: <Y6N23Z8n++QpwfFI@Hephaistos.local>
 <5852ba8f-d9d8-e143-b6de-a77c3bf14799@theobroma-systems.com>
 <Y7RQmBzz3IumzXtY@aglaia.inside-m2m.de>
 <5cffab2e-38a5-ff39-e44b-15ab0477b352@theobroma-systems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <5cffab2e-38a5-ff39-e44b-15ab0477b352@theobroma-systems.com>
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Jan 2023 16:00:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58929

Hi Quentin,

On Tue, Jan 03, 2023 at 05:16:09PM +0100, Quentin Schulz wrote:

> So, you needed the extra :beaglebone-yocto because the machine configur=
ation
> file is parsed after local.conf, therefore since beaglebone-yocto.conf =
file

I was not aware of that, thaught always local.conf is master/last.

> > Meanwhile I did something similair, I cloned the machine
> > beaglebone-yocto into my tree with thos modifications on top and this
> > works too.

> Would highly recommend not doing that though, having two configruation =
files
> with the same filename is not nice to your users, because then the orde=
r of
> inclusion of the layers will decide which file gets picked.

I fully agree, this felt strange from the beginning to me and I wondered
why I had the luck that ot worked. Indeed my meta-insidem2m layer is
ordered last.=20

> Create your own my-beaglebone and in there have:
> MACHINEOVERRIDES =3D. "beaglebone-yocto:"
> require conf/machine/beaglebone-yocto.conf
>=20
> The first line will allow recipes to use the :beaglebone-yocto OVERRIDE=
 to
> match both the original beaglebone-yocto and your my-beaglebone machine=
s.

Thanks for this really nice and useful advice!

> > CORE_IMAGE_BASE_INSTALL:remove =3D " packagegroup-core-boot packagegr=
oup-base-extended"
> >=20
>=20
> Be careful, :remove are final, you cannot re-add its content later on. =
SO if
> you expect users to reuse and extend your image recipe while having :re=
move
> in there, you'll have unhappy users :)

You are right, I reread the part in the reference manual and played
around with it utilizing the bitbake-getvar you showed to me. I did not
really have understood this before. Additionally removeing thos
packagegroups probably removes too much from the image. This is what I
meanwhile realized - regarding our pretended use case.

> What exactly should be different between your images per machines? If w=
e're

I have a meta-insidem2m layer which up until now contains all my stuff I
need to cope with yocto and requires no modifications to upstream stuff.
Additionally it contains one bblayers.conf and local.conf, which are
placed in build/config but not modified.
This meta-insidem2m has a distro and 3 images configured. The MACHINE is
beaglebone-yocto for all the same. The images only differ in the
IMAGE_INSTALL set, they are insidem2m-s insidem2m-m and insidem2m-xl. I
use the -s as a NFS rootfs for our Bealgsbone  Blacks and the -xl
variant is the one which gets installed on them for production use. All
from one tree w/o further configuration.

Now I have a customer's requirement for use to live from a docker
container and to utilize a self compiled rootfs in that to have full
control over this regarding content and availability.

So I thougt I need a insidem2m-xs variant additionally like the already
existing ones (processor architecure matches regarding userspace) and
now I need insidem2m-s minus kernel, bootloader and init system.

And this in a way like making this right and not abusing mechanisms.=20

I learned removing bootloader and kernel requires an additional machine
set up _if_ I want to use my local.conf for all images.
I have to do this smart (renaming with MACHINEOVERRIDES and require),
check.
Then I can call "bitabke insidem2m-[s|m|xl]" for my normal images,
"MACHINE=3Dmy-bbb bitbake insidem2m-xs" for an image w/o kernel and stuff
for my docker filesystem. as said, this way local.conf is fixed,
everything else also.

This is the smartest approach, right?=20

> IMAGE_INSTALL:append:my-beaglebone =3D " some-my-beaglebone-package"

I think, this will become useful also to my use case. I do not yet know,
which packages in the end are required in our resulting rootfs. This
will become handy...

> Finally, it might make more sense to just have multiple image recipes, =
each
> machine having its own image recipe for example.

May be this is most importand for me and not covered from my
understanding,yet : Can a machine[.conf] have its onw own image[.bb]? In =
a
single meta-xyz layer?
This way "bitbake image" would autoselect a proper machine.

Kind Regards
Konstantin


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


