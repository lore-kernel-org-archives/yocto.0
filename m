Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 684314C800C1
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2011 19:04:40 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Jun 2011 17:04:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,368,1304319600"; d="scan'208";a="13584520"
Received: from doubt.jf.intel.com (HELO [10.7.199.161]) ([10.7.199.161])
	by orsmga002.jf.intel.com with ESMTP; 14 Jun 2011 17:04:33 -0700
Message-ID: <4DF7F6F4.7050306@linux.intel.com>
Date: Tue, 14 Jun 2011 17:04:04 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <1308084441-6399-1-git-send-email-bruce.ashfield@windriver.com>
	<1308084441-6399-2-git-send-email-bruce.ashfield@windriver.com>
In-Reply-To: <1308084441-6399-2-git-send-email-bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH] meta-intel/linux-yocto: update to match the renamed linux-yocto recipes
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
X-List-Received-Date: Wed, 15 Jun 2011 00:04:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 06/14/2011 01:47 PM, Bruce Ashfield wrote:
> The linux-yocto recipes have been renamed to include explicit
> version numbers. The meta-intel bbappends must be updated to
> follow the new naming convention.
> 
> As a consequence of the recipe renames any SRCREV specificiations
> that were part of a machine.conf have been moved to the corresponding
> bbappend file. This allows the 2.6.34 and 2.6.37 SRCREVs to co-exist.
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>

...

> diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
> index 6634102..baf3310 100644
> --- a/meta-crownbay/conf/machine/crownbay.conf
> +++ b/meta-crownbay/conf/machine/crownbay.conf
> @@ -14,7 +14,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
>  KERNEL_IMAGETYPE = "bzImage"
>  
>  PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
> -PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
> +#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"


I assume this was an accident? If I don't hear from you shortly I'll
commit without this change and we can add it back if it was intentional.
It wasn't in the commit message, so I'm assuming not.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

