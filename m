Return-Path: <markus.eich@dfki.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DF84E00769; Fri, 11 Jul 2014 01:55:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,T_HK_NAME_DR
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000] *  0.0 T_HK_NAME_DR T_HK_NAME_DR
Received: from sea-mail.dfki.de (sea-mail.dfki.de [134.96.191.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79149E00736
	for <yocto@yoctoproject.org>; Fri, 11 Jul 2014 01:55:38 -0700 (PDT)
Received: from sea-mail.dfki.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	297429FA65_3BFA689B; Fri, 11 Jul 2014 08:55:37 +0000 (GMT)
Received: from mail.dfki.de (lnv-104.sb.dfki.de [134.96.191.146])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by sea-mail.dfki.de (Sophos Email Appliance) with ESMTPS id
	ECEF09FA53_3BFA688F; Fri, 11 Jul 2014 08:55:36 +0000 (GMT)
Received: from [192.168.114.231] (unknown [192.168.114.231])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by mail.dfki.de (Postfix) with ESMTPSA id CFC13310AE;
	Fri, 11 Jul 2014 10:55:36 +0200 (CEST)
Message-ID: <53BFA687.2030402@dfki.de>
Date: Fri, 11 Jul 2014 10:55:35 +0200
From: "Dr. Markus Eich" <markus.eich@dfki.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>, 
 yocto@yoctoproject.org
References: <53BD0DA4.50108@dfki.de> <53BD3920.8090603@windriver.com>
	<53BE74F6.2070704@dfki.de> <53BEB568.3030906@windriver.com>
In-Reply-To: <53BEB568.3030906@windriver.com>
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
X-List-Received-Date: Fri, 11 Jul 2014 08:55:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

I have tried the different task separately.

do_fetch works, no recursive link created
do_kernel_checkout works, no recursive link created
do_kernel_configme works, no recursive link created
do_compile works, no recursive link created
do_compile_kernelmodules works, no recursive link created
do_install works, no recursive link created

do_package : Here it crashes. Th package subfolder is created and here 
it creates the recursive link within the subfolder.

What does do_package do in detail? How can I further analyze the error.

/Markus




On 10.07.2014 17:46, Bruce Ashfield wrote:
> On 14-07-10 07:11 AM, Dr. Markus Eich wrote:
>> Thank you Bruce, that did the trick. But I am facing a new problem while
>> using bitbake for the build process.
>>
>> I have checked to build the odroid kernel with a standard crosscompiler
>> tool chain and it works without any problems.
>>
>> When I do the same with the bitbake toolchain (bitbake virtual/kernel),
>> it somehow creates a recursive link in the folder
>>
>> package/usr/src/kernel/drivers/gpu/arm/mali400/ump/arch/arch-release ->
>> arch-release
>>
>> This causes a crash in the build system.
>>
>> Compilation runs fine though. This error seems to be within do_package.
>> I have removed the link, but somehow it is created automatically.
>>
>> Any ideas?
>
> Nothing off the top of my head. That link would be created by the kernel
> build, and not by bitbake or the oe-core kernel build classes.
>
> I'd start by looking at the kernel's makefiles and seeing where the
> link is being created.
>
> Do specific tasks work ? i.e. is that happening during unpack/patch, or
> during compilation.
>
> Bruce
>
>>
>> /Markus
>>
>>
>>
>> On 09.07.2014 14:44, Bruce Ashfield wrote:
>>> On 14-07-09 05:38 AM, Dr. Markus Eich wrote:
>>>> Dear all,
>>>>
>>>> I work on the process to compile odroid xu kernel with yocto/bitbake
>>>>
>>>> In the kernel sources (from hardkernel) I have the corresponding
>>>> defconfig file, i.e. in the git folder
>>>> /arch/arm/configs/odroidxu_ubuntu_defconfig.
>>>>
>>>> How can I tell bitbake in my recipe to use 
>>>> "odroidxu_ubuntu_defconfig"?
>>>
>>> To trigger the oe-core kernel processing to use the defconfig, you need
>>> to put that defconfig in your SRC_URI.
>>>
>>> Which means you should grab a copy of that from the kernel tree, and
>>> in the same directory structure as your kernel recipe.
>>>
>>> See meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb for an
>>> example.
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>
>>>>
>>>> My recipe looks as follow:
>>>>
>>>> ===
>>>> require recipes-kernel/linux/linux-yocto.inc
>>>>
>>>> KERNEL_IMAGETYPE = "uImage"
>>>>
>>>> COMPATIBLE_MACHINE = "odroid-xu"
>>>>
>>>> LINUX_VERSION = "3.4.91"
>>>> LINUX_VERSION_EXTENSION = "-custom"
>>>>
>>>> FILESEXTRAPATHS_prepend := "${THISDIR}/linux-hardkernel-3.4:"
>>>>
>>>> S = "${WORKDIR}/git"
>>>>
>>>> # from where to fetch the kernel
>>>> KERNEL_REPO_OWNER ??= "hardkernel"
>>>> KERNEL_REPO_URI ??= "git://github.com/${KERNEL_REPO_OWNER}/linux.git"
>>>> KBRANCH = "odroidxu-3.4.y"
>>>>
>>>> SRCREV = "${AUTOREV}"
>>>>
>>>> KV = "3.4.91"
>>>> PV = "${KV}+gitr${SRCPV}"
>>>> LOCALVERSION ?= ""
>>>>
>>>>
>>>> SRC_URI = " \
>>>>    ${KERNEL_REPO_URI};nocheckout=1;branch=${KBRANCH} \
>>>> "
>>>>
>>>> PACKAGES =+ "kernel-headers"
>>>> FILES_kernel-headers = "${exec_prefix}/src/linux*"
>>>> ===
>>>>
>>>> Cheers,
>>>>
>>>> Markus
>>>>
>>>>
>>>>
>>>>
>>>
>>
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


