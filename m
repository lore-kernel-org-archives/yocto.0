Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7CE0E00303
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2011 06:58:48 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Nov 2011 06:58:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="80678596"
Received: from unknown (HELO envy.home) ([10.255.15.250])
	by orsmga002.jf.intel.com with ESMTP; 28 Nov 2011 06:58:47 -0800
Message-ID: <4ED3A1AE.3090107@linux.intel.com>
Date: Mon, 28 Nov 2011 06:58:54 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Josef Ahmad <josefahmad1@gmail.com>
References: <CACJvPv2FrniU=pVT1WfLPv+4vnNNxxR0WgGFwUER3sYy5HoVtw@mail.gmail.com>
	<4ECD138D.50401@linux.intel.com>
	<CACJvPv3f-zZ6zK6roH0F5-WnoK6JRt6YEFQBvi2B_dz0ZKOeAg@mail.gmail.com>
	<4ECE6A6D.8000309@linux.intel.com>
	<CACJvPv3J+8y+GNGqXJC2oE720jzk0A8cYKHL_EFgpik7kCOeHg@mail.gmail.com>
In-Reply-To: <CACJvPv3J+8y+GNGqXJC2oE720jzk0A8cYKHL_EFgpik7kCOeHg@mail.gmail.com>
X-Enigmail-Version: 1.3.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] EFI support for IA
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
X-List-Received-Date: Mon, 28 Nov 2011 14:58:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 11/28/2011 01:06 AM, Josef Ahmad wrote:
> Hi Darren,
> 
> I checked out your dvhart/efi branch and attempted to build my BSP.
> I inlcuded "efi" to my MACHINE_FEATURES, and "live" to my IMAGE_FSTYPES,
> so as to get an .hddimg file.
> 
> I haven't found GRUB in my deployed hddimg though. Maybe I'm missing
> something?


Hi Josef,

Do you see bootia32.efi and grub.cfg in the root directory of the
hddimg? That is all it installs.

--
Darren

> 
> Thanks
> 
> Josef
> 
> On 24 November 2011 16:01, Darren Hart <dvhart@linux.intel.com
> <mailto:dvhart@linux.intel.com>> wrote:
> 
>     On 11/24/2011 12:48 AM, Josef Ahmad wrote:
>     > Hi Darren,
>     >
>     > I'll track your branch to sync our efforts.
> 
>     Hi Josef,
> 
>     Great. I just sent an RFC patch series to this list last night. Please
>     try it out and see how it goes.
> 
>     >
>     > I meant to only generate the Grub EFI binary for the target, without
>     > including any tool/library into the root filesystem: I assumed
>     that it's
>     > sufficient to deploy the bootloader onto the top-level image.
>     That's why
> 
>     Agreed.
> 
>     > I build natively the mkimage tool and run that on the host to get the
>     > EFI executable. Now, as you justly point out, there's a target
>     mismatch:
>     > mkimage incorrectly calls out the host architecture under the -O
>     switch,
>     > whereas it should have been something like ${TARGET_ARCH}-efi.
> 
>     Right. That took some doing, but it is now resolved in my branch.
> 
>     >
>     > That said, surely a solution that embodies the GRUB tools into the
>     root
>     > filesystem is desirable.
> 
>     That can be accomplished using the grub_1.99 recipe. Perhaps we should
>     enable building with EFI if MACHINE_FEATURES includes "efi". I consider
>     that to be separate from this effort.
> 
> 
>     > Feel free to merge my grub config generator into your branch, as
>     well as
>     > any of my contrib you may like. Speaking of grub.bbclass, I named
>     it so
>     > as it's not specifically tied to the EFI mode. It basically builds up
>     > the grub configuration menu, based off machine-specific parameters. I
>     > implemented it among the lines of syslinux.bbclass.
> 
>     While the menu creation isn't necessarily EFI specific, the rest of the
>     bbclass is. If we wanted to, we could create another grub.bbclass that
>     can do a live image with GRUB legacy booting. However, I'm also working
>     to use the syslinux family of loaders wherever possible. I'm using
>     grub-efi as a stop-gap until an EFI syslinux becomes available. The idea
>     here is to keep things consistent from the live image to the installed
>     image, as well as reduce the number of bootloaders and configuration
>     files we need deal with for a given BSP.
> 
>     Please review the patch series I sent out and let me know if it works
>     for your purposes. General code review is needed as well.
> 
>     Thanks Josef!
> 
>     --
>     Darren Hart
>     Intel Open Source Technology Center
>     Yocto Project - Linux Kernel
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
> 
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

