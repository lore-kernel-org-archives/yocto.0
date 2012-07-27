Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AD19E0027D
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 15:26:20 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jul 2012 15:26:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="188027276"
Received: from unknown (HELO envy.home) ([10.255.12.238])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jul 2012 15:26:20 -0700
Message-ID: <50131526.1030708@linux.intel.com>
Date: Fri, 27 Jul 2012 15:24:38 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Paul Gortmaker <paul.gortmaker@windriver.com>
References: <1343409056-6235-1-git-send-email-paul.gortmaker@windriver.com>
In-Reply-To: <1343409056-6235-1-git-send-email-paul.gortmaker@windriver.com>
X-Enigmail-Version: 1.4.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] routerstationpro: move board off 3.0 and onto the 3.4 kernel
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
X-List-Received-Date: Fri, 27 Jul 2012 22:26:20 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 07/27/2012 10:10 AM, Paul Gortmaker wrote:
> The updated patch series to support this target is in place
> on the BSP specific branch in the 3.4 kernel tree now[1], so
> we can move it ahead off of the old 3.0 kernel.
> 
> [1] https://lists.yoctoproject.org/pipermail/linux-yocto/2012-July/000023.html
> 
> Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> 
> diff --git a/meta-yocto/conf/machine/routerstationpro.conf b/meta-yocto/conf/machine/routerstationpro.conf
> index 3c2f56f..adf36a9 100644
> --- a/meta-yocto/conf/machine/routerstationpro.conf
> +++ b/meta-yocto/conf/machine/routerstationpro.conf
> @@ -10,7 +10,7 @@ KERNEL_IMAGETYPE = "vmlinux"
>  KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
>  
>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> -PREFERRED_VERSION_linux-yocto ?= "3.0%"
> +PREFERRED_VERSION_linux-yocto ?= "3.4%"
>  PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
>  XSERVER = "xserver-kdrive-fbdev"
>  
> diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
> index 2ff467b..1c8d26a 100644
> --- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
> +++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
> @@ -4,11 +4,11 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
>  KBRANCH_beagleboard = "standard/beagleboard"
>  
>  SRCREV_machine_atom-pc ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
> -SRCREV_machine_routerstationpro ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
> +SRCREV_machine_routerstationpro ?= "27019633ccdaa88dc55101615d936d1d74db9a1e"
>  SRCREV_machine_mpc8315e-rdb ?= "47d3076aa7e2a640a1dab8d663529a784709f697"
>  SRCREV_machine_beagleboard ?= "a8291fa6f723b0182d2b7033b5d59f412ba7cf72"
>  
>  COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
> -# COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
> +COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
>  # COMPATIBLE_MACHINE_beagleboard = "beagleboard"
>  COMPATIBLE_MACHINE_atom-pc = "atom-pc"
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

