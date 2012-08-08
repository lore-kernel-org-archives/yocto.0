Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B31CE002A5
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 11:13:32 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 08 Aug 2012 11:13:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,734,1336374000"; d="scan'208";a="131660199"
Received: from unknown (HELO envy.home) ([10.255.12.217])
	by AZSMGA002.ch.intel.com with ESMTP; 08 Aug 2012 11:13:31 -0700
Message-ID: <5022ABDF.1030908@linux.intel.com>
Date: Wed, 08 Aug 2012 11:11:43 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: kishore.k.bodke@intel.com
References: <cover.1344448245.git.kishore.k.bodke@intel.com>
	<441e6ea85e52df1a7d14c83246a08e84874edc0a.1344448245.git.kishore.k.bodke@intel.com>
In-Reply-To: <441e6ea85e52df1a7d14c83246a08e84874edc0a.1344448245.git.kishore.k.bodke@intel.com>
X-Enigmail-Version: 1.4.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] [KERNEL] meta: Crystal Forest Machine Created.
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
X-List-Received-Date: Wed, 08 Aug 2012 18:13:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 08/08/2012 10:56 AM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 

> +++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
> @@ -0,0 +1,21 @@
> +kconf hardware crystalforest.cfg
> +
> +include cfg/x86_64.scc
> +include cfg/8250.scc
> +
> +include features/power/intel.scc
> +
> +#These are required features for Intel DPDK Support
> +include features/uio/uio.scc
> +include features/hugetlb/hugetlb.scc
> +include features/ixgbe/ixgbe.scc
> +include features/igb/igb.scc
> +
> +
> +include features/latencytop/latencytop.scc
> +include features/profiling/profiling.scc
> +include features/usb/xhci-hcd.scc
> +include features/usb/ehci-hcd.scc
> +include features/usb/ohci-hcd.scc
> +include cfg/usb-mass-storage.scc
> +include cfg/boot-live.scc
> 

These last two should be in the standard and preempt-rt scc files and
not in the base crystalforest.scc. The reason being, the kernel type
should define policy - and whether or not we support mass storage and
live boot is a matter of policy, not hardware enablement. The tiny
kernel should not be required to pull in usb mass storage, fat support,
etc to boot this machine.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

