Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web10.8806.1579597072820967621
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 00:57:53 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4822Vk1ssDz5tlR;
	Tue, 21 Jan 2020 09:57:48 +0100 (CET)
Date: Tue, 21 Jan 2020 09:57:47 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: "Richard.W" <rwillis@shaw.ca>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Excluding recipe u-boot-fw-utils from a target build #yocto
Message-ID: <20200121085747.wuwclu4oefdaiwrq@qschulz>
References: <v6oe.1579585101006051714.sd14@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <v6oe.1579585101006051714.sd14@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Richard,

On Mon, Jan 20, 2020 at 09:38:21PM -0800, Richard.W wrote:
> I am using Yocto "Rocko" and an older u-boot bootloader with it (2013.1=
0). The machine target is an i.mx6 and so I am including the freescale im=
x layers.
>=20
> Within the freescale layer is a recipe for a u-boot-fw-utils which I un=
derstand just generates 2 methods to access u-boot env variables from the=
 linux user space. I don;t think I need this and so I am trying to stop i=
t from being built as is is failing when trying to make the target with s=
ome *_defconfig which I cannot determine how it is getting that.
>=20
> | make -f ./scripts/Makefile.build obj=3Dscripts/basic
> | rm -f .tmp_quiet_recordmcount
> | make -f ./scripts/Makefile.build obj=3Dscripts/kconfig mx6_cubox-i_co=
nfig
> | scripts/kconfig/conf=A0 --defconfig=3Darch/../configs/mx6_cubox-i_def=
config Kconfig
> | ***
> | *** Can't find default configuration "arch/../configs/mx6_cubox-i_def=
config"!
> | ***
> | scripts/kconfig/Makefile:121: recipe for target 'mx6_cubox-i_defconfi=
g' failed
> | make[1]: *** [mx6_cubox-i_defconfig] Error 1
> | Makefile:479: recipe for target 'mx6_cubox-i_config' failed
> | make: *** [mx6_cubox-i_config] Error 2
> | ERROR: oe_runmake failed
> | WARNING: <path>/u-boot-fslc-fw-utils/v2017.11+gitAUTOINC+a07698f0bf-r=
0/temp/run.do_compile.23669:1 exit 1 from 'exit 1'
> | ERROR: Function failed: do_compile (log file is located at <path>/u-b=
oot-fslc-fw-utils/v2017.11+gitAUTOINC+a07698f0bf-r0/temp/log.do_compile.2=
3669)
> ERROR: Task (<path>/meta-freescale/recipes-bsp/u-boot/u-boot-fslc-fw-ut=
ils_2017.11.bb:do_compile) failed with exit code '1'
>=20
> Note: the u-boot-fw-utils in this case would be set to: u-boot-fslc-fw-=
utils_2017.11 (for rocko)
> Note: my u-boot recipe builds fine.
>=20
> I put the following lines into my conf/layer.conf file, to no effect:
> IMAGE_INSTALL_remove +=3D " u-boot-fslc-fw-utils"
> IMAGE_INSTALL_remove +=3D " u-boot-fw-utils"
>=20

Some packages are pulled as runtime dependencies (RDEPENDS from a
package that is installed, or via the auto-RDEPENDS mechanism which
detects if a package is a provider of a shlib required by another
package).
Some packages are pulled as runtime recommendations (RRECOMMENDATIONS
from a package that is installed).
Also, packages can be pulled for the same reasons by a machine conf file
(c.f. MACHINE_[ESSENTIAL_]EXTRA_*).

For RDEPENDS, except removing the package RDEPENDS-ing on the package you=
 don't
want to install, or removing the package you don't want to install from
the list of RDEPENDS and adapting the package's recipe to build without
(if even possible), there is no real way.

To detect all recipes requiring this package at runtime, you can use
PACKAGE_EXCLUDE =3D "<idontwantthispackage>" in your conf/local.conf and
fix all the packages which are failing to build when that variable is
set.

For RRECOMMENDATIONS, you can try to use BAD_RECOMMENDATIONS in your
image recipe. NO_RECOMMENDATIONS should work as well but it's more
aggressive.

Please have a look at all those variables in the mega-manual:
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html

Hopefully you don't need the tools from u-boot-fw-utils but know that it
is sometimes used by upgrade SW such as SWUpdate if I'm not mistaken.

BR,
Quentin
