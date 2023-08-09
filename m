Return-Path: <thomas.perrot@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74EEEB64DD
	for <webhook@archiver.kernel.org>; Wed,  9 Aug 2023 08:46:25 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web11.83917.1691570778977567803
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Aug 2023 01:46:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=XDbDR07M;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: thomas.perrot@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 22E032000E;
	Wed,  9 Aug 2023 08:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1691570776;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=fnIt1hyJgNlogeVXS8s71OXXaMAdWcvxd6czTSxcY4U=;
	b=XDbDR07MWp3+KH2giUiS8/OIRQ7GV+NMQLtCvQXdYdDte3sh4+kmfw1pY89gIbe2GYxOXx
	o9SZwgIs1zuHsF96wpvqfgk7a200MD4KW/JuNoL9V55AtUjblu61zILXJDSyvR2wDj7XrG
	+rjPqJMblLA+8YrlcueS4xzwLMMTrugnSFVqZ6DqfOkHMPSkxnKk17/LeVl27IAtWouC0j
	FgbkhIv2Yhr8r9SA2riMXkuEP50JBii1yi9FwUWuIsgxaFBT8I4xSIXF4UGKozNpLBUwKM
	F5DkPJ+9SHfaFriN37O+JCtA6l0Z/zjAm6U1R7cT6nPve9QaKahBPlkPcw7A8Q==
Message-ID: <7979e9bc21010ffbaea6a60434b51aad1384e4aa.camel@bootlin.com>
Subject: Re: [yocto] Rootless Podman
From: Thomas Perrot <thomas.perrot@bootlin.com>
To: Khem Raj <raj.khem@gmail.com>, Stephen John Smoogen <smooge@gmail.com>
Cc: Joel Winarske <joel.winarske@gmail.com>, Yocto-mailing-list
	 <yocto@lists.yoctoproject.org>
Date: Wed, 09 Aug 2023 10:46:14 +0200
In-Reply-To: <CAMKF1sph5RK+OJnHHtP7SLWC=nYGNiJmgJ_niDu35ct+NVKr_g@mail.gmail.com>
References: 
	<CABKMkPK8pAVXVWXBG0nc-aKpgKzYpQt1dvfZH2sj9T2pS3p=hA@mail.gmail.com>
	 <CAMKF1sorNvKwy9tKMRv4FSDFP270t7ryimrv8s8tUzgXoJ=L6A@mail.gmail.com>
	 <CANnLRdhA5USajcUkX-O0gTVam7JfxPWpheAuVcjdpam8cmKGXA@mail.gmail.com>
	 <CAMKF1sph5RK+OJnHHtP7SLWC=nYGNiJmgJ_niDu35ct+NVKr_g@mail.gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-ONA/6trsUcxlg81rpQ5l"
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-GND-Sasl: thomas.perrot@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Aug 2023 08:46:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60761


--=-ONA/6trsUcxlg81rpQ5l
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm using rootless podman to build with this container:
https://github.com/tprrt/dockers/tree/master/debian-oe

Kind regards,
Thomas Perrot

On Tue, 2023-08-08 at 12:40 -0700, Khem Raj wrote:
> On Tue, Aug 8, 2023 at 11:43=E2=80=AFAM Stephen John Smoogen
> <smooge@gmail.com> wrote:
> >=20
> >=20
> > Does anyone know what ways it is failing (or how I can duplicate it
> > ) and I can forward to the podman group (can't promise I can get it
> > fixed.. but will do what I can). Also if people have already opened
> > issues on the failures, let me know.
> >=20
>=20
> With yoe
>=20
> local.sh
> export DOCKER_REPO=3Dyoedistro/yoe-build:bookworm-`uname -m`
> export DOCKER=3Dpodman
>=20
> and then try to build yoe-simple-image, it complains about enough
> parallel threads not being available when running node to build
> qtwebengine
> omp running out of threads in other recipes and so on. These issues
> don't happen on native or docker builds e.g. privileged mode also
> does
> show these issues.
>=20
> > On Tue, 8 Aug 2023 at 14:34, Khem Raj <raj.khem@gmail.com> wrote:
> > >=20
> > >=20
> > > We have tried it hard in yoe distro but it always fails in novel
> > > ways so much. I have switched back to docker for now
> > >=20
> > > On Tue, Aug 8, 2023 at 11:07 AM Joel Winarske
> > > <joel.winarske@gmail.com> wrote:
> > > >=20
> > > > Anyone successfully building using Rootless Podman?
> > > >=20
> > > > I'm seeing a variety of strange issues.
> > > >=20
> > > > My baseline podman config:
> > > > --user 1001:1001
> > > > --ipc host
> > > > --privileged
> > > > --security-opt label=3Ddisable
> > > > --pid host
> > > > --userns keep-id
> > > > --ulimit host
> > > > --mount type=3Ddevpts,destination=3D/dev/pts
> > > > --security-opt label=3Ddisable
> > > > --group-add keep-groups
> > > >=20
> > > >=20
> > > >=20
> > > >=20
> > > >=20
> > > >=20
> > >=20
> > >=20
> > >=20
> >=20
> >=20
> > --
> > Stephen J Smoogen.
> > Let us be kind to one another, for most of us are fighting a hard
> > battle. -- Ian MacClaren
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60752):
> https://lists.yoctoproject.org/g/yocto/message/60752
> Mute This Topic: https://lists.yoctoproject.org/mt/100627665/5443093
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[thomas.perrot@bootlin.=
com
> ]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--=20
Thomas Perrot, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com


--=-ONA/6trsUcxlg81rpQ5l
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQGzBAABCAAdFiEEh0B3xqajCiMDqBIhn8ALBXH+Cu0FAmTTUlcACgkQn8ALBXH+
Cu3IGwv/U5a6EriEvb1TuQF/SKmAfvSVmUGXAObLBhEm/fvUr1gscLwnqfpowXUG
kfSQP4kqBRlDl9yyPDZh/1HRhvWOm7NZaFK0ELSCQQfYIR26CgrvQ8z25E6yU9gY
tBQ9ALWKrnfKSu8ekdCCAXo7hpigEsgwJey2KPRp5gv0mNoS7ZBLpnSH46BuNAbF
DGL7cZKvRTBZyOic33oKlsfUVE9/eLtGcw8bOCqozBTmNU19sO14J8JIdU2uAHnd
dj6lon+AvsCo9s1F2NQD3E4OEZtQhZQBCVsYtXeWLpMQbBaVb3kSq++GLVucir2W
rlx4ZRxivPv/R0dF/5YEWgP+foI+Z8qpoKPuUWG0BgpC0a42kaZhTIwGY+izNlVs
6j4GFIKi3o4w+cfvPIPHrVOqmPy5yiktYpddEPSlVBvUgemCJ0nT6VJa4T02qOQo
aLAz+WijXqBdqzjN1zDe+2enxF/ZGuANOP3QcnHZfFBiRAQHLGvsp3he7L7DK0Th
yRJoi6S4
=cvNZ
-----END PGP SIGNATURE-----

--=-ONA/6trsUcxlg81rpQ5l--

