Return-Path: <b-sathishkumar@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4600DE00744; Wed,  9 Jul 2014 04:33:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from GWS07.hcl.com (gws07.hcl.com [192.8.186.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDA69E00547
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 04:33:41 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.01,630,1400005800"; d="scan'208";a="22783207"
Received: from unknown (HELO CHN-CORP-HT02.CORP.HCL.IN) ([10.249.2.34])
	by GWS07.hcl.com with ESMTP/TLS/AES128-SHA; 09 Jul 2014 16:53:20 +0530
Received: from CHN-HCLT-CSHT02.HCLT.CORP.HCL.IN (10.150.12.27) by
	CHN-CORP-HT02.CORP.HCL.IN (10.249.2.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 9 Jul 2014 17:03:34 +0530
Received: from CHN-HCLT-MBS08.HCLT.CORP.HCL.IN ([10.150.12.23]) by
	CHN-HCLT-CSHT02.HCLT.CORP.HCL.IN ([::1]) with mapi id 14.03.0123.003;
	Wed, 9 Jul 2014 17:03:32 +0530
From: "Sathish Kumar Balasubramaniam -ERS, HCL Tech" <b-sathishkumar@hcl.com>
To: "Dr. Markus Eich" <markus.eich@dfki.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] How to select defconfig for kernel build with
	yocto/bitbake
Thread-Index: AQHPm1m8ccjUhL55+USZAwTzWLJ9wJuXmshg
Date: Wed, 9 Jul 2014 11:33:29 +0000
Message-ID: <5D833673AB94D9489A7F7F73E9E611C814ADD788@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
References: <53BD0DA4.50108@dfki.de>
In-Reply-To: <53BD0DA4.50108@dfki.de>
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
X-List-Received-Date: Wed, 09 Jul 2014 11:33:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Markus,

Try adding the following to your recipe file

KERNEL_DEFCONFIG =3D "odroidxu_ubuntu_defconfig"

do_configure_prepend() {
        install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WOR=
KDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_=
DEFCONFIG} available."
}


Regards,
B.Sathish Kumar

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Dr. Markus Eich
Sent: Wednesday, July 09, 2014 3:09 PM
To: yocto@yoctoproject.org
Subject: [yocto] How to select defconfig for kernel build with yocto/bitbake

Dear all,

I work on the process to compile odroid xu kernel with yocto/bitbake

In the kernel sources (from hardkernel) I have the corresponding =

defconfig file, i.e. in the git folder =

/arch/arm/configs/odroidxu_ubuntu_defconfig.

How can I tell bitbake in my recipe to use "odroidxu_ubuntu_defconfig"?

My recipe looks as follow:

=3D=3D=3D
require recipes-kernel/linux/linux-yocto.inc

KERNEL_IMAGETYPE =3D "uImage"

COMPATIBLE_MACHINE =3D "odroid-xu"

LINUX_VERSION =3D "3.4.91"
LINUX_VERSION_EXTENSION =3D "-custom"

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/linux-hardkernel-3.4:"

S =3D "${WORKDIR}/git"

# from where to fetch the kernel
KERNEL_REPO_OWNER ??=3D "hardkernel"
KERNEL_REPO_URI ??=3D "git://github.com/${KERNEL_REPO_OWNER}/linux.git"
KBRANCH =3D "odroidxu-3.4.y"

SRCREV =3D "${AUTOREV}"

KV =3D "3.4.91"
PV =3D "${KV}+gitr${SRCPV}"
LOCALVERSION ?=3D ""


SRC_URI =3D " \
   ${KERNEL_REPO_URI};nocheckout=3D1;branch=3D${KBRANCH} \
"

PACKAGES =3D+ "kernel-headers"
FILES_kernel-headers =3D "${exec_prefix}/src/linux*"
=3D=3D=3D

Cheers,

Markus




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

-- =

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


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


