Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web12.18756.1584116959476501839
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Mar 2020 09:29:19 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id B37F040C2B;
	Fri, 13 Mar 2020 16:29:18 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FbWHfz0Hl8lV; Fri, 13 Mar 2020 16:29:18 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 4F2C840C2A;
	Fri, 13 Mar 2020 16:29:16 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id CF93A174456; Fri, 13 Mar 2020 12:29:15 -0400 (EDT)
Date: Fri, 13 Mar 2020 12:29:15 -0400
From: "Denys Dmytriyenko" <denis@denix.org>
To: matthias.schoepfer@googlemail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	yocto@lists.yoctoproject.org
Subject: Re: [yocto] git fetcher: does not execute git fetch --tags or similar when HEAD has not changed
Message-ID: <20200313162915.GM1578@denix.org>
References: <cb73c40e-6eed-d626-513d-c1012a0f9f32@googlemail.com>
MIME-Version: 1.0
In-Reply-To: <cb73c40e-6eed-d626-513d-c1012a0f9f32@googlemail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Why not use SRCREV?
Also, bitbake has its own mailing list.

Denys


On Thu, Mar 12, 2020 at 02:55:59PM +0100, Matthias Schoepfer via Lists.Yoc=
toproject.Org wrote:
> Hi!
>=20
> We have noticed the following issue: We keep the versions of out
> software by means of tags on the git repositories, i.e. during the
> build, somethings like git describe --tags gets called. In yocto,
> our recipe of SomeLibrary might look then similar to this:
>=20
> SRC_URI =3D "git://our.private.gitserver.org/git/SomeLibrary.git;tags=3D=
v${PV}"
>=20
> When we build the image, and *then* apply a tag to HEAD, that was
> already built before, it seems like the tags are not fetched (my
> guess is git fetcher sees that origins HEAD and local HEAD have the
> same hash and is fine with it).
>=20
> The error is, that while the correct version is built, it will
> report itself with a wrong version.
>=20
> Is this a bug?
>=20
> Regards,
>=20
>   Matthias
>=20
> --=20
> Dr.-Ing. Matthias Sch=F6pfer
> matthias.schoepfer@googlemail.com

>=20

