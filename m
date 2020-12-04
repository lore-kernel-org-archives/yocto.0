Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
 by mx.groups.io with SMTP id smtpd.web10.11790.1607073685222373384
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Dec 2020 01:21:26 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.17, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp3.bon.at (Postfix) with ESMTPSA id 4CnRz640bzz5tlB;
	Fri,  4 Dec 2020 10:21:22 +0100 (CET)
Date: Fri, 4 Dec 2020 10:21:21 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Andrew Loader <andrew.loader@nz.abb.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Using OVERRIDES to set variables from outside the recipe file
Message-ID: <20201204092120.ktall4u2dynky4ds@qschulz>
References: <2238e5e2-428-1623-c722-e691106b179a@crashcourse.ca>
 <7992.1607052223864547151@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <7992.1607052223864547151@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Andrew,

On Thu, Dec 03, 2020 at 07:23:43PM -0800, Andrew Loader wrote:
> Thanks for your help
> In the example above which I only=A0 used to communicate the problem, w=
ithout getting all complicated with details of my multiple projects, imag=
es and petalinux.
>=20
> The solution would be to set the following in the local.conf file or an=
other conf file or even a append file
> OVERRIDES_append =3D ":os"
>=20
> It was a good tip to use " bitbake -e my-recipe | grep -e "^OVERRIDES=3D=
""
> to show the results of this settings
>=20
> There is another example using overrides for DEPENDS here https://docs.=
yoctoproject.org/dev-manual/dev-manual-common-tasks.html?highlight=3Ddepe=
nds_one
> Which does not explain were the "one" machine is added to the OVERRIDES=
 variable but the actual overrides mechanism seems clearly explained in b=
oth of the example sections mentioned but where and how this is set could=
 do with a better examples
>=20

MACHINE is automatically added to MACHINEOVERRIDES which in turn is
automatically added to OVERRIDES.

Doc patches welcome if something would benefit more or clearer explanatio=
n :)

Quentin
