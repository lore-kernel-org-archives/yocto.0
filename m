Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33EF8E0070E
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 12:52:17 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Nov 2011 12:52:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="76362744"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 16 Nov 2011 12:52:16 -0800
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 16 Nov 2011 12:52:16 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.228]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.80]) with mapi id
	14.01.0355.002; Wed, 16 Nov 2011 12:52:16 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, Yocto Project
	<yocto@yoctoproject.org>
Thread-Topic: EXTRA_IMAGEDEPENDS documentation
Thread-Index: AQHMpIrxyzMM8tTYe0u+zStPwsAqOZWv+fTg
Date: Wed, 16 Nov 2011 20:52:16 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237916EB0B15@ORSMSX101.amr.corp.intel.com>
References: <4EC3FC68.9080200@linux.intel.com>
In-Reply-To: <4EC3FC68.9080200@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: EXTRA_IMAGEDEPENDS documentation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 Nov 2011 20:52:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Darren,=20

Regarding *DEPENDS....  Right now these variables are documented in the YP =
Reference Manual.  Your email says that the *DEPENDS variables impact the r=
oot filesystem.  That is sort of vague. =20
Can I just add that to each of these descriptions below?

	DEPENDS - A list of build-time dependencies for a given recipe. =20
                The variable indicates recipes that must have been=20
                staged before a particular recipe can configure.

	DISTRO_EXTRA_RDEPENDS - The list of packages required by the=20
                distribution.

	LAYERDEPENDS - Lists the layers that this recipe depends upon,=20
                separated by spaces.  Optionally, you can dspecify a=20
                specific layer version for a dependency by adding it=20
                to the end of the layer name with a colon=20
                (e.g. "anotherlayer:3" to be compared against=20
                LAYERVERSION_anotherlayer in this case).  An error will=20
                be produced if any dependency is missing or the=20
                version numbers do not match exactly (if specified). =20
                This variable is used in the conf/layer.conf file and
                must be suffixed with the name of the specific layer=20
                (e.g. LAYERDEPENDS_mylayer).

	MACHINE_ESSENTIAL_EXTRA_RDEPENDS - A list of required packages=20
                to install as part of the package being built.  The=20
                build process depends on these packages being present. =20
                Furthermore, because this is a "machine essential"=20
                variable, the list of packages are essential for the=20
                machine to boot.  The impact of this variable affects=20
                images based on task-core-boot including the=20
                core-image-minimal image.

                This variable is similar to the=20
                MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS variable with the=20
                exception that the package being built has a build=20
                dependency on the variable's list of packages.  In other=20
                words, the image will not beuild if a file in this list=20
                is not found.

                For example, suppose you are building a a runtime=20
                package that depends on a certain disk driver.  In this=20
                case, you would use the following:

                  MACHINE_ESSENTIAL_EXTRA_RDEPENDS +=3D "<disk_driver>"

	MACHINE_EXTRA_RDEPENDS - A list of optional but non-machine=20
                    essential packages to install as part of the package=20
                    being built.  Even though these packages are not=20
                    essential for the machine to boot, the build process=20
                    depends on them being present.  The impact of this=20
                    variable affects all images based on task-base, which=20
                    does not include the core-image-minimal or=20
                    core-image-basic images.

                    This variable is similar to the=20
                    MACHINE_EXTRA_RRECOMMENDS variable with the exception=20
                    that the package being built has a build dependency on=
=20
                    the variable's list of packages.  In other words, the=20
                    image will not build if a file in this list is not=20
                    found.

                    An example is a machine that might or might not have a=
=20
                    WiFi card.  The package containing the WiFi support is=
=20
                    not essential for the machine to boot the image.
                    If it is not there, the machine will boot but not be ab=
le=20
                    to use the WiFi functionality.  However, if you include=
=20
                    the package with the WiFi support as part of the=20
                    variable's package list, the build process depends on=20
                    finding the package.  In this case, you would use the=20
                    following:

                        MACHINE_EXTRA_RDEPENDS +=3D "<wifi_driver>"

	RDEPENDS - A list of packages that must be installed as part of a=20
                    package being built.  The package being built has a run=
time=20
                    dependency on the packages in the variable's list.  In=
=20
                    other words, in order for the package being built to ru=
n=20
                    correctly, it depends on these listed packages.  If a=20
                    package in this list cannot be found during the build,=
=20
                    the build will not complete.

                    Because the RDEPENDS variable applies to packages=20
                    being built, you should always attach an override to th=
e=20
                    variable to specify the particular runtime package
                    that has the dependency.  For example, suppose you are=
=20
                    building a development package that depends on the=20
                    perl package.  In this case, you would use the followin=
g=20
                    RDEPENDS statement:

                        RDEPENDS_${PN}-dev +=3D "perl"

                    In the example, the package name (${PN}-dev) must=20
                    appear as it would in the PACKAGES namespace before any=
=20
                    renaming of the output package by classes like=20
                    debian.bbclass.

                    Some automatic handling occurs around the=20
                    RDEPENDS variable:

                      * shlibdeps:  If a runtime package contains a shared=
=20
                            library (.so), the build processes the library=
=20
                            in order to determine other libraries to which =
it=20
                            is dynamically linked.  The build process adds=
=20
                            these libraries to RDEPENDS to create the runti=
me=20
                            package.

                      * pcdeps:  If the package ships a pkg-config informat=
ion=20
                            file, the build process uses this file to add i=
tems
                            to the RDEPENDS variable to create the runtime=
=20
                            packages.
=09
It is safe to note in each of these descriptions that the root filesystem i=
s impacted? =20


-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Wednesday, November 16, 2011 10:10 AM
To: Yocto Project
Cc: Rifenbark, Scott M; Richard Purdie
Subject: EXTRA_IMAGEDEPENDS documentation

For the situation where a recipe is required to build a final image, but
the output is not needed in the root filesystem, the EXTRA_IMAGEDEPENDS
variable can be used to define this dependency. Bootloaders seem to be
the common example for this (such as the beagleboard dependency on uboot).

This variable is not defined in the poky manual nor in the documentation
tags (meta/conf/documentation.conf).

Another aspect of this that could be made more explicit in the manual is
that the various *RRECOMMENDS and *RDEPENDS variables impact what is
installed in the root filesystem (because they operate on packages - not
recipes). Scott, I'd recommend a few extra words in the *RRECOMMENDS and
*RDEPENDS documentation to this effect. For example, "... a list of
packages to install TO THE ROOT FILESYSTEM ...".

As for the EXTRA_IMAGEDEPENDS definition, perhaps something like this:

in documentation.conf:

EXTRA_IMAGEDEPENDS[doc] =3D "Recipes to build that do not install packages
to the root filesystem, such as bootloaders."

in the reference manual:

EXTRA_IMAGEDEPENDS
A list of recipes to be built that do not provide packages to be
installed in the root filesystem. This is typically used to specify a
required bootloader in a machine config.

Note: To add packages to the root filesystem, see the various *DEPENDS
and *RECOMMENDS variables.

Scott, I'll leave the reference manual changes to you. RP, if you agree
with my doc tag, I can submit a patch for that.

Thanks,

--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

