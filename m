Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A73EE0030A; Fri, 11 Jul 2014 07:30:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84895E002AC
	for <yocto@yoctoproject.org>; Fri, 11 Jul 2014 07:30:06 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s6BEU1vG020018
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 Jul 2014 07:30:01 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 11 Jul 2014 07:30:01 -0700
Message-ID: <53BFF4E7.6090308@windriver.com>
Date: Fri, 11 Jul 2014 10:29:59 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "Dr. Markus Eich" <markus.eich@dfki.de>, <yocto@yoctoproject.org>
References: <53BD0DA4.50108@dfki.de> <53BD3920.8090603@windriver.com>
	<53BE74F6.2070704@dfki.de> <53BEB568.3030906@windriver.com>
	<53BFA687.2030402@dfki.de>
In-Reply-To: <53BFA687.2030402@dfki.de>
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
X-List-Received-Date: Fri, 11 Jul 2014 14:30:08 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-07-11 04:55 AM, Dr. Markus Eich wrote:
> I have tried the different task separately.
>
> do_fetch works, no recursive link created
> do_kernel_checkout works, no recursive link created
> do_kernel_configme works, no recursive link created
> do_compile works, no recursive link created
> do_compile_kernelmodules works, no recursive link created
> do_install works, no recursive link created

There's no recursive link, but is the arch-release link
created, but pointing somewhere else ?

>
> do_package : Here it crashes. Th package subfolder is created and here
> it creates the recursive link within the subfolder.
>
> What does do_package do in detail? How can I further analyze the error.

Interesting. There's nothing custom in the kernel for packaging, and
nothing that I can think would be creating that symlink.

No good ideas at the moment, outside of pinpointing exactly where the
link is created, and when it transitions to a recursive one .. and
I'd do that by instrumentation.

Bruce

>
> /Markus
>
>
>
>
> On 10.07.2014 17:46, Bruce Ashfield wrote:
>> On 14-07-10 07:11 AM, Dr. Markus Eich wrote:
>>> Thank you Bruce, that did the trick. But I am facing a new problem while
>>> using bitbake for the build process.
>>>
>>> I have checked to build the odroid kernel with a standard crosscompiler
>>> tool chain and it works without any problems.
>>>
>>> When I do the same with the bitbake toolchain (bitbake virtual/kernel),
>>> it somehow creates a recursive link in the folder
>>>
>>> package/usr/src/kernel/drivers/gpu/arm/mali400/ump/arch/arch-release ->
>>> arch-release
>>>
>>> This causes a crash in the build system.
>>>
>>> Compilation runs fine though. This error seems to be within do_package.
>>> I have removed the link, but somehow it is created automatically.
>>>
>>> Any ideas?
>>
>> Nothing off the top of my head. That link would be created by the kernel
>> build, and not by bitbake or the oe-core kernel build classes.
>>
>> I'd start by looking at the kernel's makefiles and seeing where the
>> link is being created.
>>
>> Do specific tasks work ? i.e. is that happening during unpack/patch, or
>> during compilation.
>>
>> Bruce
>>
>>>
>>> /Markus
>>>
>>>
>>>
>>> On 09.07.2014 14:44, Bruce Ashfield wrote:
>>>> On 14-07-09 05:38 AM, Dr. Markus Eich wrote:
>>>>> Dear all,
>>>>>
>>>>> I work on the process to compile odroid xu kernel with yocto/bitbake
>>>>>
>>>>> In the kernel sources (from hardkernel) I have the corresponding
>>>>> defconfig file, i.e. in the git folder
>>>>> /arch/arm/configs/odroidxu_ubuntu_defconfig.
>>>>>
>>>>> How can I tell bitbake in my recipe to use
>>>>> "odroidxu_ubuntu_defconfig"?
>>>>
>>>> To trigger the oe-core kernel processing to use the defconfig, you need
>>>> to put that defconfig in your SRC_URI.
>>>>
>>>> Which means you should grab a copy of that from the kernel tree, and
>>>> in the same directory structure as your kernel recipe.
>>>>
>>>> See meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb for an
>>>> example.
>>>>
>>>> Cheers,
>>>>
>>>> Bruce
>>>>
>>>>
>>>>>
>>>>> My recipe looks as follow:
>>>>>
>>>>> ===
>>>>> require recipes-kernel/linux/linux-yocto.inc
>>>>>
>>>>> KERNEL_IMAGETYPE = "uImage"
>>>>>
>>>>> COMPATIBLE_MACHINE = "odroid-xu"
>>>>>
>>>>> LINUX_VERSION = "3.4.91"
>>>>> LINUX_VERSION_EXTENSION = "-custom"
>>>>>
>>>>> FILESEXTRAPATHS_prepend := "${THISDIR}/linux-hardkernel-3.4:"
>>>>>
>>>>> S = "${WORKDIR}/git"
>>>>>
>>>>> # from where to fetch the kernel
>>>>> KERNEL_REPO_OWNER ??= "hardkernel"
>>>>> KERNEL_REPO_URI ??= "git://github.com/${KERNEL_REPO_OWNER}/linux.git"
>>>>> KBRANCH = "odroidxu-3.4.y"
>>>>>
>>>>> SRCREV = "${AUTOREV}"
>>>>>
>>>>> KV = "3.4.91"
>>>>> PV = "${KV}+gitr${SRCPV}"
>>>>> LOCALVERSION ?= ""
>>>>>
>>>>>
>>>>> SRC_URI = " \
>>>>>    ${KERNEL_REPO_URI};nocheckout=1;branch=${KBRANCH} \
>>>>> "
>>>>>
>>>>> PACKAGES =+ "kernel-headers"
>>>>> FILES_kernel-headers = "${exec_prefix}/src/linux*"
>>>>> ===
>>>>>
>>>>> Cheers,
>>>>>
>>>>> Markus
>>>>>
>>>>>
>>>>>
>>>>>
>>>>
>>>
>>
>


