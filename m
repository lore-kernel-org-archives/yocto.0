Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3407AE0030B
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 23:41:12 -0700 (PDT)
Received: by dajx4 with SMTP id x4so5359623daj.28
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 23:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=xQVy97hIWVdCnFfUkU9hEpu346K/01d7OOO6kYa1sSA=;
	b=QbfWmh4vSDuvSEvyJGEHa5IhmEd+Vsim1xMr/UrwC1fWbdfVofJaP6kBSWE+Y2FzDl
	3a+quIz++vETFgS4KFMGM4EnWVODgC1mfT/6lS8rjfTNiGrN5vC4RbyFdd2xBw/tusP1
	i9scZS2+erdvDNuzbfzVYabw3A2zzjPIdbtqFNrgGXdlZz5Q0Vg8C+8Gtxee9mgJ12hv
	071aZ8HQt/+RrEkLuTyP0ooGne3JQ2sJ0XE0F5B1irp4QPslxNfoFD0KNgbN8pgemMnn
	WqqTWfWM252lvcviFq6BXjr8sdHMT/001KkK1m2HGncKTVj1Z9XTZ43VqAqVWPSXgS9e
	gmcw==
MIME-Version: 1.0
Received: by 10.68.240.35 with SMTP id vx3mr14723595pbc.94.1335854471754; Mon,
	30 Apr 2012 23:41:11 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Mon, 30 Apr 2012 23:41:11 -0700 (PDT)
In-Reply-To: <CAPhnLPDfTpRYW2PZL0ftoeHsDdQeHAqtPoO=10Ohnbo4GPBZVg@mail.gmail.com>
References: <CAPhnLPDfTpRYW2PZL0ftoeHsDdQeHAqtPoO=10Ohnbo4GPBZVg@mail.gmail.com>
Date: Tue, 1 May 2012 08:41:11 +0200
Message-ID: <CACW_hTYjjn8OLx2ZArHMyq=KQeJzc5NMCAO7sk9R5Ks+AWHr_Q@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 01 May 2012 06:41:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

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

