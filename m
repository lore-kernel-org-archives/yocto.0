Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.14427.1591192844680338093
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Jun 2020 07:00:45 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49cVtL5Pv2z5tlc;
	Wed,  3 Jun 2020 16:00:42 +0200 (CEST)
Date: Wed, 3 Jun 2020 16:00:41 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Baabu Ms <Baabu3e@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto
Message-ID: <20200603140041.uhickaolbts4e32a@qschulz>
References: <pbpY.1591192570633717844.r7Yb@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <pbpY.1591192570633717844.r7Yb@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jun 03, 2020 at 06:56:10AM -0700, Baabu Ms wrote:
> # Hello all
>=20
> # =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 im trying build pam package in core-i=
mage-sato i added pam package in local.conf file
>=20
> # *DISTRO_FEATURES_append=A0 =3D "pam"*
>=20

_append in most cases require a leading space, i.e. you want:
DISTRO_FEATURES_append=A0=3D " pam"

Let us know if that fixes it.

Quentin
