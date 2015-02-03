Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D47D0E0076F; Tue,  3 Feb 2015 07:37:54 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 088E5E005B4
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 07:37:42 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t13FbVn2022617
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 3 Feb 2015 07:37:31 -0800 (PST)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Tue, 3 Feb 2015 07:37:31 -0800
Message-ID: <54D0EB22.10908@windriver.com>
Date: Tue, 3 Feb 2015 10:37:06 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Raghavendra Kakarla <raghavendra.kakarla@inedasystems.com>,
	<yocto@yoctoproject.org>
References: <17820165.95.1422967233382.JavaMail.kraghavendra@Raghavendra>
In-Reply-To: <17820165.95.1422967233382.JavaMail.kraghavendra@Raghavendra>
Subject: Re: yocto-custom-kernel issue
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
X-List-Received-Date: Tue, 03 Feb 2015 15:37:54 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 15-02-03 07:40 AM, Raghavendra Kakarla wrote:
> Hi,
>   I want to add BSP layer for my mechine and I should take the our own customized kernel source(our kernel source).
>
>   For that I add the BSP layer and wrote the recipe for that.
>
>   My recipe is as follows:
>
> *******************************************************************************************************************************************************
>
>   # This file was derived from the linux-yocto-custom.bb recipe in
> # oe-core.
> #
> # linux-yocto-custom.bb:
> #
> #   A yocto-bsp-generated kernel recipe that uses the linux-yocto and
> #   oe-core kernel classes to apply a subset of yocto kernel
> #   management to git managed kernel repositories.
> #
> # Warning:
> #
> #   Building this kernel without providing a defconfig or BSP
> #   configuration will result in build or boot errors. This is not a
> #   bug.
> #
> # Notes:
> #
> #   patches: patches can be merged into to the source git tree itself,
> #            added via the SRC_URI, or controlled via a BSP
> #            configuration.
> #
> #   example configuration addition:
> #            SRC_URI += "file://smp.cfg"
> #   example patch addition:
> #            SRC_URI += "file://0/home/testuser/yocto.git/android-linux-mti-unif-3.10.14/arch/mips/configs001-linux-version-tweak.patch
> #   example feature addition:
> #            SRC_URI += "file://feature.scc"
> #
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
>
> SRC_URI = "git://192.168.42.75/vineethchowdhary/incdhad1-kernel-3-10.git;protocol=http;bareclone=1"
>
> SRC_URI += "file://defconfig"
>
> SRC_URI += "file://mydhanush.scc \
>              file://mydhanush.cfg \
>              file://mydhanush-user-config.cfg \
>              file://mydhanush-user-patches.scc \
>             "
>
>
> LINUX_VERSION ?= "3.10.14"
> LINUX_VERSION_EXTENSION ?= "-custom"
>
> #SRCREV="12bbf6468e2ef179800aaab46c724f523b5002e3"
> SRCREV="f91e563c45d457aa441f687eda294ad899e2b25f"
> PR = "r0"
> PV = "${LINUX_VERSION}+git${SRCPV}"
>
> #COMPATIBLE_MACHINE_mydhanush = "mydhanush"
> COMPATIBLE_MACHINE_mydhanush = "mydhanush"
>
> ***************************************************************************************************************************************************************
>
>
> but I got error as follows:
>
> Log data follows:
> | DEBUG: Executing shell function do_kernel_checkout
> | ERROR: S is not set to the linux source directory. Check
> | ERROR: the recipe and set S to the proper extracted subdirectory
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_kernel_checkout (log file is located at /home/testuser/poky/build/tmp/work/mydhanush-poky-linux/linux-yocto-custom/3.10.14+gitAUTOINC+f91e563c45-r0/temp/log.do_kernel_checkout.11798)
>
> could you please help for resolving this issue.

And if dump the bitbake environment for your kernel build, what is S
set to ? And when you go to that same directory on your build machine,
what do you see ?

The checkout code is telling you that it doesn't see a Makefile in
the source directory, so where ever it is pointing isn't valid.

Cheers,

Bruce

>
> Thanks and Regards,
>
> Raghavendra.
>


