Return-Path: <b-sathishkumar@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13CF8E00744; Wed,  9 Jul 2014 05:30:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from GWS08.hcl.com (gws08.hcl.com [192.8.186.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A0F3E00547
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 05:30:02 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.01,631,1400005800"; d="scan'208";a="23976369"
Received: from unknown (HELO CHN-CORP-HT02.CORP.HCL.IN) ([10.249.2.34])
	by GWS08.hcl.com with ESMTP/TLS/AES128-SHA; 09 Jul 2014 17:49:05 +0530
Received: from CHN-HCLT-CSHT04.HCLT.CORP.HCL.IN (10.150.12.29) by
	CHN-CORP-HT02.CORP.HCL.IN (10.249.2.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 9 Jul 2014 17:59:58 +0530
Received: from CHN-HCLT-MBS08.HCLT.CORP.HCL.IN ([10.150.12.23]) by
	CHN-HCLT-CSHT04.HCLT.CORP.HCL.IN ([::1]) with mapi id 14.03.0123.003;
	Wed, 9 Jul 2014 17:59:59 +0530
From: "Sathish Kumar Balasubramaniam -ERS, HCL Tech" <b-sathishkumar@hcl.com>
To: "Dr. Markus Eich" <markus.eich@dfki.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] How to select defconfig for kernel build with
	yocto/bitbake
Thread-Index: AQHPm1m8ccjUhL55+USZAwTzWLJ9wJuXmshg//+vjQCAAF+BwIAAAR+g
Date: Wed, 9 Jul 2014 12:29:58 +0000
Message-ID: <5D833673AB94D9489A7F7F73E9E611C814ADD7F8@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
References: <53BD0DA4.50108@dfki.de>
	<5D833673AB94D9489A7F7F73E9E611C814ADD788@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
	<53BD30F2.8030506@dfki.de> 
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.150.5.114]
MIME-Version: 1.0
Subject: Re: How to select defconfig for kernel build with yocto/bitbake
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 Jul 2014 12:30:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sorry, Markus.
Ignore my previous post. It has error.

I think you need to check the output of "bitbake -e <recipe name>" and see =
how the .config file is created for your recipe.
Based on that only we need to update the recipe.

Regards,
B.Sathish Kumar

-----Original Message-----
From: Sathish Kumar Balasubramaniam -ERS, HCL Tech =

Sent: Wednesday, July 09, 2014 5:54 PM
To: Dr. Markus Eich; yocto@yoctoproject.org
Subject: RE: [yocto] How to select defconfig for kernel build with yocto/bi=
tbake

Ok. Can you try the following instead of the content I gave before

KERNEL_DEFCONFIG =3D "odroidxu_ubuntu_defconfig"

kernel_do_configure_append() {
	install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/d=
efconfig
	install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${S}/.config
}


Regards,
B.Sathish Kumar

-----Original Message-----
From: Dr. Markus Eich [mailto:markus.eich@dfki.de] =

Sent: Wednesday, July 09, 2014 5:39 PM
To: Sathish Kumar Balasubramaniam -ERS, HCL Tech; yocto@yoctoproject.org
Subject: Re: [yocto] How to select defconfig for kernel build with yocto/bi=
tbake

Thank you Sathish for the quick answer.

The recipes now copies odroidxu_ubuntu_defconfig to defconfig in the =

workdir, but it still seems to be ignored.
Maybe I am missing some includes to make the .config from defconfig?

Using "make odroidxu_ubuntu_defconfig" using cross compiling (followed =

by "make zImage") works fine, while bitbake virtual/kernel produces some =

errors which are probably due to the wrong .config.


Cheers,

Markus





On 09.07.2014 13:33, Sathish Kumar Balasubramaniam -ERS, HCL Tech wrote:
> Hi Markus,
>
> Try adding the following to your recipe file
>
> KERNEL_DEFCONFIG =3D "odroidxu_ubuntu_defconfig"
>
> do_configure_prepend() {
>          install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${=
WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERN=
EL_DEFCONFIG} available."
> }
>
>
> Regards,
> B.Sathish Kumar
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Dr. Markus Eich
> Sent: Wednesday, July 09, 2014 3:09 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] How to select defconfig for kernel build with yocto/bitb=
ake
>
> Dear all,
>
> I work on the process to compile odroid xu kernel with yocto/bitbake
>
> In the kernel sources (from hardkernel) I have the corresponding
> defconfig file, i.e. in the git folder
> /arch/arm/configs/odroidxu_ubuntu_defconfig.
>
> How can I tell bitbake in my recipe to use "odroidxu_ubuntu_defconfig"?
>
> My recipe looks as follow:
>
> =3D=3D=3D
> require recipes-kernel/linux/linux-yocto.inc
>
> KERNEL_IMAGETYPE =3D "uImage"
>
> COMPATIBLE_MACHINE =3D "odroid-xu"
>
> LINUX_VERSION =3D "3.4.91"
> LINUX_VERSION_EXTENSION =3D "-custom"
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/linux-hardkernel-3.4:"
>
> S =3D "${WORKDIR}/git"
>
> # from where to fetch the kernel
> KERNEL_REPO_OWNER ??=3D "hardkernel"
> KERNEL_REPO_URI ??=3D "git://github.com/${KERNEL_REPO_OWNER}/linux.git"
> KBRANCH =3D "odroidxu-3.4.y"
>
> SRCREV =3D "${AUTOREV}"
>
> KV =3D "3.4.91"
> PV =3D "${KV}+gitr${SRCPV}"
> LOCALVERSION ?=3D ""
>
>
> SRC_URI =3D " \
>     ${KERNEL_REPO_URI};nocheckout=3D1;branch=3D${KBRANCH} \
> "
>
> PACKAGES =3D+ "kernel-headers"
> FILES_kernel-headers =3D "${exec_prefix}/src/linux*"
> =3D=3D=3D
>
> Cheers,
>
> Markus
>
>
>
>

-- =

Dr.-Ing. Markus Eich

  Senior Researcher
  Marine Inspection Robotics
  Space Robotics
  =

  Besuchsadresse der Nebengesch=E4ftstelle:
  DFKI GmbH
  Robotics Innovation Center
  Robert-Hooke-Stra=DFe 5
  28359 Bremen, Germany
  =

  Postadresse der Hauptgesch=E4ftsstelle Standort Bremen:
  DFKI GmbH
  Robotics Innovation Center
  Robert-Hooke-Stra=DFe 1
  28359 Bremen, Germany

  Tel.:     +49 421 178 45-4105
  Zentrale: +49 421 178 45-0
  Fax:      +49 421 178 45-4150 (Faxe bitte namentlich kennzeichnen)
  E-Mail:   markus.eich@dfki.de

  Weitere Informationen: http://www.dfki.de/robotik
  -----------------------------------------------------------------------
  Deutsches Forschungszentrum fuer Kuenstliche Intelligenz GmbH
  Firmensitz: Trippstadter Stra=DFe 122, D-67663 Kaiserslautern
  Geschaeftsfuehrung: Prof. Dr. Dr. h.c. mult. Wolfgang Wahlster
  (Vorsitzender) Dr. Walter Olthoff
  Vorsitzender des Aufsichtsrats: Prof. Dr. h.c. Hans A. Aukes
  Amtsgericht Kaiserslautern, HRB 2313
  Sitz der Gesellschaft: Kaiserslautern (HRB 2313)
  USt-Id.Nr.:    DE 148646973
  Steuernummer:  19/673/0060/3
  -----------------------------------------------------------------------



::DISCLAIMER::
---------------------------------------------------------------------------=
-------------------------------------------------------------------------

The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only.
E-mail transmission is not guaranteed to be secure or error-free as informa=
tion could be intercepted, corrupted,
lost, destroyed, arrive late or incomplete, or may contain viruses in trans=
mission. The e mail and its contents
(with or without referred errors) shall therefore not attach any liability =
on the originator or HCL or its affiliates.
Views or opinions, if any, presented in this email are solely those of the =
author and may not necessarily reflect the
views or opinions of HCL or its affiliates. Any form of reproduction, disse=
mination, copying, disclosure, modification,
distribution and / or publication of this message without the prior written=
 consent of authorized representative of
HCL is strictly prohibited. If you have received this email in error please=
 delete it and notify the sender immediately.
Before opening any email and/or attachments, please check them for viruses =
and other defects.

---------------------------------------------------------------------------=
-------------------------------------------------------------------------


