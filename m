Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web11.9419.1575888552429979294
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2019 02:49:12 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 47Wg121HpTz5tlD;
	Mon,  9 Dec 2019 11:49:09 +0100 (CET)
Date: Mon, 9 Dec 2019 11:49:08 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Andy Pont <andy.pont@sdcsystems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Issues with alsa-state
Message-ID: <20191209104908.z3dowyjqv45rqw3q@qschulz>
References: <em1763c91f-0c32-4204-a356-e16cc8d266ad@andys-imac.leeshillfarm.local>
MIME-Version: 1.0
In-Reply-To: <em1763c91f-0c32-4204-a356-e16cc8d266ad@andys-imac.leeshillfarm.local>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Andy,

On Mon, Dec 09, 2019 at 10:40:49AM +0000, Andy Pont wrote:
> Hello!
>=20
> I am trying to add a custom asound.state file into my Zeus based i.MX6
> image.  I have created a custom .bbappend file with the following conte=
nts:
>=20
> FILESEXTRAPATHS_prepend_mx6 :=3D "${THISDIR}/${PN}/imx:=E2=80=9D
> PACKAGE_ARCH_mx6 =3D "${MACHINE_ARCH}=E2=80=9D
>=20
> The output from:
>=20
>     $ bitbake-layers show-appends | grep alsa
>=20
> is (some names changed to protect the guilty):
>=20
>     alsa-state.bb:
> /home/.../sources/meta-freescale/recipes-bsp/alsa-state/alsa-state.bbap=
pend
> /home/.../sources/meta-boundary/recipes-bsp/alsa-state/alsa-state.bbapp=
end
> /home/.../sources/meta-project/recipes-bsp/alsa-state/alsa-state.bbappe=
nd
>=20
> The file that is included in the image is the one from the meta-boundar=
y
> layer and not the one from my =E2=80=9Cmeta-project=E2=80=9D layer.  Is=
 there some way to
> make my layer take priority or do I need to try to exclude the alsa-sta=
te
> recipes from the meta-freescale and meta-boundary layers using BBMASK?
>=20

Have a look at the paths traversed by Yocto to find your asound.state in
log.do_fetch in the WORKDIR.

You'll have the following:
DEBUG: Searching for asound.state in paths:

The first path to have asound.state in it will be the provider for that
file.

This order is derived from OVERRIDES variable (rightmost to leftmost for
priority order). Basically, rightmost in OVERRIDES is taken, then looked
for in all FILESPATHS paths. Then the second rightmost.

What people usually do is that they use a lower priority OVERRIDES for
subdirectory filename and then the original one or one in a higher
priority OVERRIDES is taken.

Quentin
