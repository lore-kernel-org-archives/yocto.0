Return-Path: <ejo@pengutronix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 035D0D690E3
	for <webhook@archiver.kernel.org>; Thu, 28 Nov 2024 07:19:35 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
 by mx.groups.io with SMTP id smtpd.web10.89744.1732778367934066683
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2024 23:19:28 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: pengutronix.de, ip: 185.203.201.7, mailfrom: ejo@pengutronix.de)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1tGYoA-0002p6-26; Thu, 28 Nov 2024 08:19:26 +0100
Message-ID: <b9271c94c6e5bb2ed0c40b4286a5c8ef735f90e8.camel@pengutronix.de>
Subject: Re: [yocto] KERNEL_VERSION inconsistency using out-of-tree module
 with patched kernel source
From: Enrico =?ISO-8859-1?Q?J=F6rns?= <ejo@pengutronix.de>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: yocto@lists.yoctoproject.org, cgu@ivu.de, ejo <ejo@pengutronix.de>
Date: Thu, 28 Nov 2024 08:19:25 +0100
In-Reply-To: <CADkTA4NRRQxmoSr8_qe+msT9UMncCwjte6oed-4boGe0dVMYkQ@mail.gmail.com>
References: <gJ1l.1732699768315470195.YfEf@lists.yoctoproject.org>
	 <8b559b3dba538d9f4f04c9e36e7c89293038ab1e.camel@pengutronix.de>
	 <CADkTA4NRRQxmoSr8_qe+msT9UMncCwjte6oed-4boGe0dVMYkQ@mail.gmail.com>
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
 <yocto@lists.yoctoproject.org>; Thu, 28 Nov 2024 07:19:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64370

Hi Bruce,

Am Mittwoch, dem 27.11.2024 um 10:28 -0500 schrieb Bruce Ashfield:
>=20
> [...]
> >=20
> > I have some context on this that I would like to add since we just face=
d a similar issue in a
> > project.
> >=20
> > The above-mentioned issue is caused by a combinations of:
> >=20
> > =C2=A0* a kernel recipe using kernel-yocto.bbclass
> > =C2=A0* kernel source pointing to tar (rather than a git)
> > =C2=A0* CONFIG_LOCALVERSION_AUTO set in kernel config
> >=20
> > The kernel-yocto class creates a Git repository from the archive conten=
t, resulting in an
> > unreproducible commit hash (due to using the current user's Git author =
settings and the current
> > system time). Subsequently, CONFIG_LOCALVERSION_AUTO causes this commit=
 hash to be embedded in
> > the
> > kernel version, leading to non-reproducible kernel version strings.
> >=20
> > I guess the correct way to handle this would be to create the initial g=
it commit with e.g.
> > PATCH_GIT_USER_NAME/PATCH_GIT_USER_EMAIL and set the date to something =
like SOURCE_DATE_EPOCH.
>=20
> That should already be in place (the username and email). See the call to=
 "check_git_config" in
> the bbclass.

yes, exactly. They are already defined, but not used (except for the config=
 check).

> If it really is just the creation of the repository that is the issue her=
e, then I could
> absolutely bring over some of the reproducible git options that are used =
in the kern-tools (see
> below).

As far as we and our customer have analyzed the issue, it was just the init=
ial git commit when
creating a git out of an archive.
The subsequent commits for patches are reproducible (at least in our test c=
ase).

The proof-of-concept that worked here is:

--- a/meta/classes-recipe/kernel-yocto.bbclass
+++ b/meta/classes-recipe/kernel-yocto.bbclass
@@ -428,6 +428,9 @@ do_kernel_checkout() {
                git init
                check_git_config
                git add .
+               # create a reproducible initial commit
+               GIT_AUTHOR_NAME=3D"${PATCH_GIT_USER_NAME}" GIT_AUTHOR_EMAIL=
=3D"${PATCH_GIT_USER_EMAIL}" GIT_AUTHOR_DATE=3D"$(date -d @${SOURCE_DATE_EP=
OCH})" \
+               GIT_COMMITTER_NAME=3D"${GIT_AUTHOR_NAME}" GIT_COMMITTER_EMA=
IL=3D"${GIT_AUTHOR_EMAIL}" GIT_COMMITTER_DATE=3D"${GIT_AUTHOR_DATE}" \
                git commit -q -n -m "baseline commit: creating repo for ${P=
N}-${PV}"
                git clean -d -f
        fi

> It also depends on exactly how the kernel is being patched. If the kern-t=
ools are being used, then
> reproducible commits are already the case.
>=20
> If the lib/oe/patch.bbclass is being used, I don't see options like --com=
mitter-date-is-author-
> date being used, but I suspect I'm just not looking in the right place, s=
ince if the weren't
> anyone using PATCHTOOL=3D"git" might be running into reproducibility issu=
es, but only if what they
> are building captures git hashes .... which is the hint).

Haven't used PATCHTOOL=3D"git" yet, but when doing so I can actually confir=
m that the initial commit
there is also *not* reproducible. As you noted, this isn't much of a surpri=
se since patch.py makes a
simple "git commit" there, too.
The better way would be to set the env variable here, too ("--commiter-date=
-is-author-date" doesn't
work in this case since this is a "git am" flag). Would you agree?

> > If that sounds right, I could make a patch against kernel-yocto.bbclass=
.
> >=20
> > A project-specific quick fix would be of course to just disable CONFIG_=
LOCALVERSION_AUTO.
>=20
> This is what I do in oe-core (I've never liked localversion_auto).

Yes. In our specific case it was also enabled more accidentally than intend=
ed.


Regards, Enrico

> Bruce
>=20
> =C2=A0
> >=20
> > Regards, Enrico
> >=20
> > > Christian
> > >=20
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#64358): https://lists.yoctoproject.org/g/yocto/me=
ssage/64358
> > > Mute This Topic: https://lists.yoctoproject.org/mt/109804058/3616721
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[ejo@p=
engutronix.de]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >=20
> >=20

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

