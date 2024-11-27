Return-Path: <ejo@pengutronix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A348D6ACD0
	for <webhook@archiver.kernel.org>; Wed, 27 Nov 2024 13:25:00 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
 by mx.groups.io with SMTP id smtpd.web11.71695.1732713893466811662
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2024 05:24:53 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: pengutronix.de, ip: 185.203.201.7, mailfrom: ejo@pengutronix.de)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1tGI2F-0005sG-LX; Wed, 27 Nov 2024 14:24:51 +0100
Message-ID: <8b559b3dba538d9f4f04c9e36e7c89293038ab1e.camel@pengutronix.de>
Subject: Re: [yocto] KERNEL_VERSION inconsistency using out-of-tree module
 with patched kernel source
From: Enrico =?ISO-8859-1?Q?J=F6rns?= <ejo@pengutronix.de>
To: yocto@lists.yoctoproject.org, cgu@ivu.de, Bruce Ashfield
	 <bruce.ashfield@gmail.com>
Cc: ejo <ejo@pengutronix.de>
Date: Wed, 27 Nov 2024 14:24:51 +0100
In-Reply-To: <gJ1l.1732699768315470195.YfEf@lists.yoctoproject.org>
References: <gJ1l.1732699768315470195.YfEf@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: ejo@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@lists.yoctoproject.org
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 13:25:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64366

Hi,

Am Mittwoch, dem 27.11.2024 um 01:29 -0800 schrieb Christian Gudrian via li=
sts.yoctoproject.org:
> Hello!
> Kernel modules depend on a specific version of the kernel package that in=
cludes the Git commit
> hash of the kernel source tree at compile time (KERNEL_VERSION). When usi=
ng a patched kernel
> source this Git commit hash changes each time the patches get applied, ma=
king each kernel binary
> effectively unique. This KERNEL_VERSION, however, is not part of the shar=
ed state hash signature,
> as for this purpose it gets replaced by the plain LINUX_VERSION.
> Building out-of-tree kernel modules depend on a locally compiled kernel. =
Doing this in a clean
> working directory leads to a freshly patched kernel source which in turn =
results in a new
> KERNEL_VERSION. The out-of-tree kernel module then RDEPENDS on a kernel p=
ackage with this new
> KERNEL_VERSION. As the shared state signature of the newly compiled kerne=
l matches the existing
> one (the LINUX_VERSION hasn't changed) the new kernel is not packaged and=
 doesn't end up in the
> package feed.
> Consequently installation of the out-of-tree kernel module fails as the r=
equired kernel package is
> not available.
> I have tried to make the packages aware of the specific KERNEL_VERSION. B=
ut as this variable gets
> re-assigned during parsing I get unstable basehash values.
> Another approach would be to apply the patches in the upstream repository=
 to circumvent the need
> for local patching.
> Is there an easier way?

I have some context on this that I would like to add since we just faced a =
similar issue in a
project.

The above-mentioned issue is caused by a combinations of:

 * a kernel recipe using kernel-yocto.bbclass
 * kernel source pointing to tar (rather than a git)
 * CONFIG_LOCALVERSION_AUTO set in kernel config

The kernel-yocto class creates a Git repository from the archive content, r=
esulting in an
unreproducible commit hash (due to using the current user's Git author sett=
ings and the current
system time). Subsequently, CONFIG_LOCALVERSION_AUTO causes this commit has=
h to be embedded in the
kernel version, leading to non-reproducible kernel version strings.

I guess the correct way to handle this would be to create the initial git c=
ommit with e.g.
PATCH_GIT_USER_NAME/PATCH_GIT_USER_EMAIL and set the date to something like=
 SOURCE_DATE_EPOCH.

If that sounds right, I could make a patch against kernel-yocto.bbclass.

A project-specific quick fix would be of course to just disable CONFIG_LOCA=
LVERSION_AUTO.

Regards, Enrico

> Christian
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64358): https://lists.yoctoproject.org/g/yocto/messag=
e/64358
> Mute This Topic: https://lists.yoctoproject.org/mt/109804058/3616721
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[ejo@pengu=
tronix.de]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--=20
Pengutronix e.K.=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0| Enrico J=C3=B6rns=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|
Embedded Linux Consulting & Support=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0| https://www.pengutronix.de/ |
Steuerwalder Str. 21=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0| Phone: +49-5121-206917-180=C2=A0=C2=A0|
31137 Hildesheim, Germany=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0| Fax:=C2=A0=C2=
=A0=C2=A0+49-5121-206917-9=C2=A0=C2=A0=C2=A0=C2=A0|

