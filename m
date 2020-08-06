Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web11.10593.1596731989402082381
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 09:39:51 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4BMvNM0Z9Cz5tlF;
	Thu,  6 Aug 2020 18:39:47 +0200 (CEST)
Date: Thu, 6 Aug 2020 18:39:45 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Rob Prowel <rprowel@comcast.net>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] out of kernel custom module build fails
Message-ID: <20200806163945.mt7wslioivveshxh@qschulz>
References: <1628B85095AAFBAF.11636@lists.yoctoproject.org>
 <b5d9e9cd-b868-6945-1756-82defd0b94b8@comcast.net>
MIME-Version: 1.0
In-Reply-To: <b5d9e9cd-b868-6945-1756-82defd0b94b8@comcast.net>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Thu, Aug 06, 2020 at 12:37:15PM -0400, Rob Prowel wrote:
> On 2020-08-06 11:45, Rob Prowel wrote:
> > the important bb file content is:
> >=20
> > inherit module
> > SRC_URI =3D "file://Makefile \
> >  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 file://customslip.c \
> >  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 file://customslip.h \
> >  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 file://COPYING \
> >  =A0=A0=A0=A0=A0=A0=A0=A0=A0 "
> > S =3D "${WORKDIR}"
> >=20
> > RPROVIDES_${PN} +=3D "kernel-module-customslip"
> >=20
> > ------------------
> > What yocto override variable can I set in the bb to make it not care
> > what the localversion appended to the kernel name is?
> >=20
>=20
> adding DEPENDS_${PN} =3D "virtual/kernel" seems to have fixed this (mak=
ing the

DEPENDS_${PN} does nothing, so that's not what fixed it ;)

I doubt LOCAL_VERSION_EXTEND or however it's called is used for creating
the package version of the kernel. I'd expect the dependencies to check
for the package version and not some other variable. So probably PV of
the kernel recipe is the correct variable to change? Just throwing
ideas.

Quentin
