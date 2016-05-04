Return-Path: <tom.zanussi@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BC16E00D58; Wed,  4 May 2016 14:04:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6360CE00D28
	for <yocto@yoctoproject.org>; Wed,  4 May 2016 14:04:53 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 May 2016 14:04:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,578,1455004800"; d="scan'208";a="946387536"
Received: from tzanussi-mobl.amr.corp.intel.com ([10.255.229.48])
	by orsmga001.jf.intel.com with ESMTP; 04 May 2016 14:04:54 -0700
Message-ID: <572A63F4.7020208@linux.intel.com>
Date: Wed, 04 May 2016 16:04:52 -0500
From: Tom Zanussi <tom.zanussi@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <572A53E7.7050600@linux.intel.com>
In-Reply-To: <572A53E7.7050600@linux.intel.com>
Subject: Re: Yocto Hands-on Kernel Lab now available for Yocto 2.1 (krogoth)
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
X-List-Received-Date: Wed, 04 May 2016 21:04:57 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

It seems a last-minute update broke the link I used.  Please try this 
instead:

https://www.yoctoproject.org/sites/default/files/kernel-lab-2.1_0.pdf

Thanks,

Tom

On 05/04/2016 02:56 PM, Tom Zanussi wrote:
> Hi,
>
> I'm happy to announce that an updated version of the Yocto 'Hands-on
> Kernel Lab' has been released and is available here:
>
>    https://www.yoctoproject.org/sites/default/files/kernel-lab-2.1.pdf
>
> The above document contains all the instructions you need to get started
> from scratch.
>
> You can get to the lab and associated content by visiting the Yocto home
> page (https://www.yoctoproject.org/) and selecting 'Obtain training on
> your own or at an event' from the drop-down list you get by clicking on
> the 'START HERE TO LEARN MORE' box on the left-hand side and clicking on
> the 'Hands-on Kernel Lab for TP 2.1 krogoth' link.
>
> The 'Hands-on Kernel Lab' has been updated to Yocto 2.1 ('krogoth') and
> a couple of new sections have been added.
>
> See below for a complete list of what's covered along with the lab
> number covering those topics.
>
> I've run through the lab twice, once on Fedora 20 and once on Ubuntu
> 16.04, so it should be pretty solid at this point, but if you find
> problems, please let me know...
>
> Thanks,
>
> Tom
>
> ----
>
> The 'Hands-on Kernel Lab' is a series of labs that covers the following
> topics:
>
>    * Creating and using a traditional kernel recipe (lab1)
>
>    * Using 'bitbake -c menuconfig' to modify the kernel configuration
> and replace the defconfig with the new configuration (lab1)
>
>    * Adding a kernel module to the kernel source and configuring it as a
> built-in module by adding options to the kernel defconfig (lab1)
>
>    * Creating and using a linux-yocto-based kernel (lab2)
>
>    * Adding a kernel module to the kernel source and configuring it as a
> built-in module using linux-yocto 'config fragments' (lab2)
>
>    * Using the linux-yocto kernel as an LTSI kernel (configuring in an
> item added by the LTSI kernel which is merged into linux-yocto) (lab2)
>
>    * Using an arbitrary git-based kernel via the linux-yocto-custom
> kernel recipe (lab3)
>
>    * Adding a kernel module to the kernel source of an arbitrary
> git-based kernel and configuring it as a loadable module using 'config
> fragments' (lab3)
>
>    * Actually getting the module into the image and autoloading it on
> boot (lab3)
>
>    * Using a local clone of an arbitrary git-based kernel via the
> linux-yocto custom kernel recipe to demonstrate a typical development
> workflow (lab4)
>
>    * Modifying the locally cloned custom kernel source and verifying the
> changes in the new image (lab4)
>
>    * Using a local clone of a linux-yocto kernel recipe to demonstrate a
> typical development workflow (lab4)
>
>    * Adding and using an external kernel module via a module recipe (lab4)
>
>    * Using the 'Yocto BSP Tools' yocto-bsp tool generate a new Yocto BSP
> (lab5)
>
>    * Using the 'Yocto BSP Tools' yocto-kernel tool to add kernel config
> fragments (lab5)
>
>    * Using the 'Yocto BSP Tools' yocto-kernel tool to add kernel patches
> (lab5)


