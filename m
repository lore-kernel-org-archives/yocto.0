Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web11.8619.1591916179936684375
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Jun 2020 15:56:20 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 3096640C1C;
	Thu, 11 Jun 2020 22:56:19 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5U8LvAFoLb97; Thu, 11 Jun 2020 22:56:19 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 1187340BB1;
	Thu, 11 Jun 2020 22:56:18 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id C6F76173217; Thu, 11 Jun 2020 18:56:17 -0400 (EDT)
Date: Thu, 11 Jun 2020 18:56:17 -0400
From: "Denys Dmytriyenko" <denis@denix.org>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Strange error
Message-ID: <20200611225617.GC17660@denix.org>
References: <6831ffcc-263f-99cb-2859-e265fa04f770@faresoftware.it>
 <c02ce0d0-d1f8-db8c-0b10-ea26d7cb99f8@rsi-elektrotechnik.de>
 <bfff9877-1a93-ced9-54d7-a3be42ac30c9@faresoftware.it>
MIME-Version: 1.0
In-Reply-To: <bfff9877-1a93-ced9-54d7-a3be42ac30c9@faresoftware.it>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

You know that rootfs already creates /etc/version file with $DATETIME?

Either way, you can fix it like this:
mark_os_buildtime[vardepsexclude] =3D "DATETIME"

--=20
Denys


On Thu, Jun 11, 2020 at 09:56:42AM +0200, Mauro Ziliani wrote:
> In the image recipe i write ${DATETIME} in
> ${IMAGE_ROOTFS}/etc/buildtime by a function.
>=20
> This is the part of recipe
>=20
>=20
> ROOTFS_POSTPROCESS_COMMAND_append =3D " \
> =A0=A0=A0 mark_os_buildtime; \
>=20
> "
>=20
>=20
> mark_os_buildtime() {
> =A0=A0=A0 echo "${PV} ${DATETIME}" > ${IMAGE_ROOTFS}/etc/buildtime
>=20
> }
>=20
>=20
>=20
> Il 10/06/20 20:44, Josef Holzmayr ha scritto:
> >Howdy!
> >
> >Am 10.06.2020 um 19:48 schrieb Mauro Ziliani:
> >>Hi all.
> >>
> >>This error
> >>
> >>NOTE: Executing RunQueue Tasks
> >>ERROR: When reparsing <recipe_of_image>.do_rootfs, the basehash
> >>value changed from 7419bfc242fa2eee9ce87b18ebf40d25 to
> >>5b2654046d2ac406f3484b3286de0acd. The metadata is not
> >>deterministic and this needs to be fixed.
> >>
> >>
> >>Why?
> >
> >Maybe some script / part of the recipe is dependent on the
> >execution time or evaluation order? The error basically tells you
> >that your build is not reproducible across runs.
> >
> >Greetz
> >
> >
> >

>=20

