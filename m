Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3265E0132F
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 05:23:36 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 May 2012 05:23:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="148029785"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by fmsmga001.fm.intel.com with ESMTP; 01 May 2012 05:23:36 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 1 May 2012 05:23:36 -0700
Received: from orsmsx102.amr.corp.intel.com ([169.254.1.12]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.173]) with mapi id
	14.01.0355.002; Tue, 1 May 2012 05:23:35 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>, "Flanagan, Elizabeth"
	<elizabeth.flanagan@intel.com>
Thread-Topic: [yocto] [yocto-announce] [ANNOUNCEMENT] Yocto 1.2 released.
Thread-Index: AQHNJ2V2rmRTz/c1v0qa+xuClSkl7Ja02ysQ
Date: Tue, 1 May 2012 12:23:34 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB12379469DF3B1@ORSMSX102.amr.corp.intel.com>
References: <CAPhnLPDfTpRYW2PZL0ftoeHsDdQeHAqtPoO=10Ohnbo4GPBZVg@mail.gmail.com>
	<CACW_hTYjjn8OLx2ZArHMyq=KQeJzc5NMCAO7sk9R5Ks+AWHr_Q@mail.gmail.com>
In-Reply-To: <CACW_hTYjjn8OLx2ZArHMyq=KQeJzc5NMCAO7sk9R5Ks+AWHr_Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-announce] [ANNOUNCEMENT] Yocto 1.2 released.
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
X-List-Received-Date: Tue, 01 May 2012 12:23:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Frans,=20

Thanks for pointing this out.  I have updated the version of the manual at =
http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.=
html with the change. =20

Thanks,
Scott


-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Frans Meulenbroeks
Sent: Tuesday, May 01, 2012 12:41 AM
To: Flanagan, Elizabeth
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] [yocto-announce] [ANNOUNCEMENT] Yocto 1.2 released.

Yocto team,

Thanks for making this happen & congrats with the release.

As our next project might be yocto based (moving from oe-classic), I
decided to give it a spin right away and noticed one tiny thing
I peeked at http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto=
-project-qs.html
to start me up

This seems to work fine, with the following exception.
The doc says:

To help conserve disk space during builds, you can add the following
statement to your project's configuration file, which for this example
is poky-denzil-7.0-build/conf/local.conf. Adding this statement
deletes the work directory used for building a package once the
package is built.

     INHERIT +=3D rm_work

Unfortunately this gives an error.
It seems a pair of quotes is missing and this should really be
INHERIT +=3D "rm_work"

Otherwise no issues (yet)

Best regards, Frans

Op 1 mei 2012 02:31 heeft Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> het volgende geschreven:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> All,
>
> The major release of yocto-1.2 "denzil" has been tagged, generated and is=
 now
> available for download. This release is available at:
>
> =A0http://downloads.yoctoproject.org/releases/yocto/yocto-1.2/poky-denzil=
-7.0.tar.bz2
> =A0or
> =A0http://mirrors.kernel.org/yocto/yocto/yocto-1.1.1/poky-denzil-7.0.tar.=
bz2
>
> Git tags gpg key information is available at:
>
> =A0http://pgp.mit.edu:11371/pks/lookup?op=3Dvindex&search=3D0x4C8AF84FCC1=
2440F
>
> Elizabeth Flanagan
> Yocto Build and Release
> <elizabeth.flanagan@intel.com>
>
> - --------------------
> denzil-7.0 Errata
> - --------------------
>
> Release Name: eclipse-poky-denzil-7.0
> Branch: =A0denzil
> Tag: =A0denzil-7.0
> Hash: =A01d05505e0653aa70f7e38239951b4e19ce0438e1
> md5: =A0355a11e4e8df4ae9213769451c63fe05
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.2/eclipse-poky-d=
enzil-7.0.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/yocto-1.2/eclipse-poky-denzil-7.0.t=
ar.bz2
>
> Release Name: meta-qt3-denzil-7.0
> Branch: =A0denzil
> Tag: =A0denzil-7.0
> Hash: =A0f8475d5c5935695d4d1dfff1d7be30f49e162094
> md5: =A0b57b5575c2f703e7bfa08eca72c43df4
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.2/meta-qt3-denzi=
l-7.0.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/yocto-1.2/meta-qt3-denzil-7.0.tar.b=
z2
>
> Release Name: poky-denzil-7.0
> Branch: =A0denzil
> Tag: =A0denzil-7.0
> Hash: =A0d20a24310eb43fed9a3f3e75752c9ad45a18cbe4
> md5: =A0dd6ce5bffadd8b8965191aca54b19b83
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.2/poky-denzil-7.=
0.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/yocto-1.2/poky-denzil-7.0.tar.bz2
>
> - --------------------
> Features
> - --------------------
>
> =A0- HOB redesigned with new user interface and work flow. HOB is a GUI b=
ased
> =A0 tool for users to customize and build an embedded Linux image in a mo=
re
> =A0 intuitive and easier way.
> =A0- Build appliance, which is a set of changes and enhancements to enabl=
e
> =A0 users to build a virtual machine image running Linux built with the Y=
octo
> =A0 Project. Within the Linux running on the virtual machine, users can
> =A0 customize and build their own customized embedded Linux images.
> =A0- Error message handling improvement, making error message more effici=
ent,
> =A0 useful and accurate to users.
> =A0- New kernel update to Linux 3.2.11.
> =A0- Kernel usability scripts, BSP tools to make building BSP's easier.
> =A0- Package history data collection and analysis tools.
> =A0- Incremental image generation after customization of an existing imag=
e built
> =A0 previously.
> =A0- Package history data collection and analysis tools.
> =A0- Implementation of the MSG (Magic Smoke Generator) which enables the =
on board
> =A0 generation of "magic smoke" to enhance the longevity of embedded devi=
ce
> =A0 components.
> =A0- Enhancement to Bitbake commander Eclipse plugin, Disk space monitori=
ng,
> =A0 multilib improvement, etc.
> =A0- Improvements to FLOSS compliance tools which allow more granularity =
of
> =A0 license definitions, the generation of image manifests/license manife=
sts
> =A0 and the implementation of source archiving functionality.
>
> - --------------------
> Known Issues
> - --------------------
>
> =A0- Bug 2256 - kernel menuconfig confusion with sstate.
>
> =A0 If you change the config during a build, bitbake may not detect the c=
hange
> =A0 and will not rebuild the kernel. After changing the config, be sure t=
o
> =A0 force a kernel recompile:
>
> =A0 =A0 =A0$ bitbake virtual/kernel -c menuconfig
>
> =A0 =A0 =A0$ bitbake virtual/kernel -c compile -f; bitbake virtual/kernel
>
> =A0- Bug 1858 - Rootfs creation broken when using package_deb as primary
> =A0 =A0 =A0 =A0 =A0 =A0 =A0PACKAGE_CLASSES with non Debian-OS build syste=
m.
>
> =A0 This is a known issue that rootfs =A0creation is broken when using pa=
ckage_deb
> =A0 as primary PACKAGE_CLASSES with non Debian-OS build system. =A0The wo=
rk around
> =A0 is to use a Debian system to create the rootfs if you need to using
> package_deb
> =A0 as primary PACKAGE_CLASSES. =A0 But for package generation e.g. for
> package feed,
> =A0 etc. it works fine on both Debian-OS or non Debian-OS.
>
> =A0- Due to production processes, the Yocto Project documentation
> extracted from the
> =A0 Yocto Project 1.2 Release tarball is not as up-to-date as the documen=
tation
> =A0 cloned from the poky source Git repository and the Yocto Project's
> Documentation
> =A0 website. =A0If you want the most up-to-date documentation for the
> Yocto Project 1.2
> =A0 Release, do one of the following:
>
> =A0 =A0* git clone git://git.yoctoproject.org/poky
> =A0 =A0* Use the current set of documents from
> http://www.yoctoproject.org/documentation
>
> - --
> Elizabeth Flanagan
> Yocto Project
> Build and Release
>
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v2.0.16 (GNU/Linux)
>
> iQEcBAEBAgAGBQJPnymBAAoJEEyK+E/MEkQPwKsH/ioUGaEKNIyr1Y9DbdgYiVOJ
> mRAFfjVj2dWJ71tRmFYG+VfXZE1qOC8AfIMnpnilAK2D09AwN4ZDUGXRJCON+oUH
> wgkBZfnZdOr4IC1194LP3VlSBLTJ22TvkCDeFf4eGfYLMZe6MxUt+1tWJW/u1+/e
> YJ6NU2tFHw6Tg8KGlIOouPiBV5FsGqvsQueRHGdWe0XKz61uBuTDOVi3h5iI7HPe
> POM/0CCUDtlwDz0pNWed9hFEOjSTLcghhHZl4zl3uadAW+neKJsse3cGBcxsoC2q
> EtohjTXOmCCUzpF4388ABDHBS/fRBVKO0PfYctDHcd5yrI63NBRber1nElc3gAY=3D
> =3DnXwb
> -----END PGP SIGNATURE-----
> _______________________________________________
> yocto-announce mailing list
> yocto-announce@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto-announce
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

