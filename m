Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BFD3E00307
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2011 08:01:46 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 24 Nov 2011 08:01:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,565,1315206000"; d="scan'208";a="40893518"
Received: from unknown (HELO envy.home) ([10.255.15.250])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Nov 2011 08:01:45 -0800
Message-ID: <4ECE6A6D.8000309@linux.intel.com>
Date: Thu, 24 Nov 2011 08:01:49 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Josef Ahmad <josef.ahmad@intel.com>
References: <CACJvPv2FrniU=pVT1WfLPv+4vnNNxxR0WgGFwUER3sYy5HoVtw@mail.gmail.com>
	<4ECD138D.50401@linux.intel.com>
	<CACJvPv3f-zZ6zK6roH0F5-WnoK6JRt6YEFQBvi2B_dz0ZKOeAg@mail.gmail.com>
In-Reply-To: <CACJvPv3f-zZ6zK6roH0F5-WnoK6JRt6YEFQBvi2B_dz0ZKOeAg@mail.gmail.com>
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
X-List-Received-Date: Thu, 24 Nov 2011 16:01:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 11/24/2011 12:48 AM, Josef Ahmad wrote:
> Hi Darren,
> 
> I'll track your branch to sync our efforts.

Hi Josef,

Great. I just sent an RFC patch series to this list last night. Please
try it out and see how it goes.

> 
> I meant to only generate the Grub EFI binary for the target, without
> including any tool/library into the root filesystem: I assumed that it's
> sufficient to deploy the bootloader onto the top-level image. That's why

Agreed.

> I build natively the mkimage tool and run that on the host to get the
> EFI executable. Now, as you justly point out, there's a target mismatch:
> mkimage incorrectly calls out the host architecture under the -O switch,
> whereas it should have been something like ${TARGET_ARCH}-efi.

Right. That took some doing, but it is now resolved in my branch.

> 
> That said, surely a solution that embodies the GRUB tools into the root
> filesystem is desirable.

That can be accomplished using the grub_1.99 recipe. Perhaps we should
enable building with EFI if MACHINE_FEATURES includes "efi". I consider
that to be separate from this effort.


> Feel free to merge my grub config generator into your branch, as well as
> any of my contrib you may like. Speaking of grub.bbclass, I named it so
> as it's not specifically tied to the EFI mode. It basically builds up
> the grub configuration menu, based off machine-specific parameters. I
> implemented it among the lines of syslinux.bbclass.

While the menu creation isn't necessarily EFI specific, the rest of the
bbclass is. If we wanted to, we could create another grub.bbclass that
can do a live image with GRUB legacy booting. However, I'm also working
to use the syslinux family of loaders wherever possible. I'm using
grub-efi as a stop-gap until an EFI syslinux becomes available. The idea
here is to keep things consistent from the live image to the installed
image, as well as reduce the number of bootloaders and configuration
files we need deal with for a given BSP.

Please review the patch series I sent out and let me know if it works
for your purposes. General code review is needed as well.

Thanks Josef!

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

