Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
 by mx.groups.io with SMTP id smtpd.web11.4499.1612959332395416835
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Feb 2021 04:15:33 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.17, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp3.bon.at (Postfix) with ESMTPSA id 4DbJcd2kHDz5tlL;
	Wed, 10 Feb 2021 13:15:29 +0100 (CET)
Date: Wed, 10 Feb 2021 13:15:27 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] curl certificate error
Message-ID: <20210210121527.jo3vucy2pgsp6q6p@qschulz>
References: <e952c755-6193-5276-42dd-79e88753f2d3@faresoftware.it>
MIME-Version: 1.0
In-Reply-To: <e952c755-6193-5276-42dd-79e88753f2d3@faresoftware.it>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Mauro,

On Wed, Feb 10, 2021 at 01:11:07PM +0100, Mauro Ziliani wrote:
> Hi all
> I try to download the file
>=20
> https://github.com/google/googletest/archive/release-1.8.0.tar.gz
>=20
> with curl -L inside a devshell of a recipe
>=20
>=20
> I get this error
>=20
>=20
> curl: (77) error setting certificate verify locations:
> =A0 CAfile: /Sources/softfx/krogoth/softfx-build/tmp/sysroots/x86_64-li=
nux/etc/ssl/certs/ca-certificates.crt
> =A0 CApath: none
>=20

Missing ca-certificates-native somewhere in the dependency chain. I
honestly thought curl-native would bring it, but does not seem so. I
personally added ca-certificates-native to the DEPENDS of the recipe
needing curl-native for a quick fix since I'm in the middle of an
upgrade and will not use krogoth anymore.

Cheers,
Quentin
--=20
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
Fax: +43 1 667 20 02 4401
quentin.schulz@streamunlimited.com, www.streamunlimited.com
