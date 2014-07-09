Return-Path: <markus.eich@dfki.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DED57E00744; Wed,  9 Jul 2014 05:09:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,T_HK_NAME_DR
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000] *  0.0 T_HK_NAME_DR T_HK_NAME_DR
Received: from sea-mail.dfki.de (sea-mail.dfki.de [134.96.191.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 228EDE00547
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 05:09:24 -0700 (PDT)
Received: from sea-mail.dfki.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	44BFC9EDDA_3BD30F3B; Wed,  9 Jul 2014 12:09:23 +0000 (GMT)
Received: from mail.dfki.de (lnv-104.sb.dfki.de [134.96.191.146])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by sea-mail.dfki.de (Sophos Email Appliance) with ESMTPS id
	1859A9ED94_3BD30F3F; Wed,  9 Jul 2014 12:09:23 +0000 (GMT)
Received: from [10.250.7.78] (unknown [10.250.7.78])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by mail.dfki.de (Postfix) with ESMTPSA id E3B303109B;
	Wed,  9 Jul 2014 14:09:22 +0200 (CEST)
Message-ID: <53BD30F2.8030506@dfki.de>
Date: Wed, 09 Jul 2014 14:09:22 +0200
From: "Dr. Markus Eich" <markus.eich@dfki.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "Sathish Kumar Balasubramaniam -ERS, HCL Tech" <b-sathishkumar@hcl.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <53BD0DA4.50108@dfki.de>
	<5D833673AB94D9489A7F7F73E9E611C814ADD788@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
In-Reply-To: <5D833673AB94D9489A7F7F73E9E611C814ADD788@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
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
X-List-Received-Date: Wed, 09 Jul 2014 12:09:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

Thank you Sathish for the quick answer.

The recipes now copies odroidxu_ubuntu_defconfig to defconfig in the 
workdir, but it still seems to be ignored.
Maybe I am missing some includes to make the .config from defconfig?

Using "make odroidxu_ubuntu_defconfig" using cross compiling (followed 
by "make zImage") works fine, while bitbake virtual/kernel produces some 
errors which are probably due to the wrong .config.


Cheers,

Markus





On 09.07.2014 13:33, Sathish Kumar Balasubramaniam -ERS, HCL Tech wrote:
> Hi Markus,
>
> Try adding the following to your recipe file
>
> KERNEL_DEFCONFIG = "odroidxu_ubuntu_defconfig"
>
> do_configure_prepend() {
>          install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
> }
>
>
> Regards,
> B.Sathish Kumar
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Dr. Markus Eich
> Sent: Wednesday, July 09, 2014 3:09 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] How to select defconfig for kernel build with yocto/bitbake
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
> ===
> require recipes-kernel/linux/linux-yocto.inc
>
> KERNEL_IMAGETYPE = "uImage"
>
> COMPATIBLE_MACHINE = "odroid-xu"
>
> LINUX_VERSION = "3.4.91"
> LINUX_VERSION_EXTENSION = "-custom"
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/linux-hardkernel-3.4:"
>
> S = "${WORKDIR}/git"
>
> # from where to fetch the kernel
> KERNEL_REPO_OWNER ??= "hardkernel"
> KERNEL_REPO_URI ??= "git://github.com/${KERNEL_REPO_OWNER}/linux.git"
> KBRANCH = "odroidxu-3.4.y"
>
> SRCREV = "${AUTOREV}"
>
> KV = "3.4.91"
> PV = "${KV}+gitr${SRCPV}"
> LOCALVERSION ?= ""
>
>
> SRC_URI = " \
>     ${KERNEL_REPO_URI};nocheckout=1;branch=${KBRANCH} \
> "
>
> PACKAGES =+ "kernel-headers"
> FILES_kernel-headers = "${exec_prefix}/src/linux*"
> ===
>
> Cheers,
>
> Markus
>
>
>
>

-- 
Dr.-Ing. Markus Eich

  Senior Researcher
  Marine Inspection Robotics
  Space Robotics
  
  Besuchsadresse der Nebengesch‰ftstelle:
  DFKI GmbH
  Robotics Innovation Center
  Robert-Hooke-Straﬂe 5
  28359 Bremen, Germany
  
  Postadresse der Hauptgesch‰ftsstelle Standort Bremen:
  DFKI GmbH
  Robotics Innovation Center
  Robert-Hooke-Straﬂe 1
  28359 Bremen, Germany

  Tel.:     +49 421 178 45-4105
  Zentrale: +49 421 178 45-0
  Fax:      +49 421 178 45-4150 (Faxe bitte namentlich kennzeichnen)
  E-Mail:   markus.eich@dfki.de

  Weitere Informationen: http://www.dfki.de/robotik
  -----------------------------------------------------------------------
  Deutsches Forschungszentrum fuer Kuenstliche Intelligenz GmbH
  Firmensitz: Trippstadter Straﬂe 122, D-67663 Kaiserslautern
  Geschaeftsfuehrung: Prof. Dr. Dr. h.c. mult. Wolfgang Wahlster
  (Vorsitzender) Dr. Walter Olthoff
  Vorsitzender des Aufsichtsrats: Prof. Dr. h.c. Hans A. Aukes
  Amtsgericht Kaiserslautern, HRB 2313
  Sitz der Gesellschaft: Kaiserslautern (HRB 2313)
  USt-Id.Nr.:    DE 148646973
  Steuernummer:  19/673/0060/3
  -----------------------------------------------------------------------


