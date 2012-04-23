Return-Path: <darren.hart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C646E00596
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2012 10:48:00 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Apr 2012 10:48:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="132923442"
Received: from unknown (HELO envy.home) ([10.7.199.64])
	by orsmga001.jf.intel.com with ESMTP; 23 Apr 2012 10:48:00 -0700
Message-ID: <4F9595B2.3070101@intel.com>
Date: Mon, 23 Apr 2012 10:47:30 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: kishore.k.bodke@intel.com
References: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
	<99d5459a7e3a7bd5ca105c5fac3c1f8f24bd8e33.1334083666.git.kishore.k.bodke@intel.com>
In-Reply-To: <99d5459a7e3a7bd5ca105c5fac3c1f8f24bd8e33.1334083666.git.kishore.k.bodke@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/9] [meta-intel] Cedartrail: Update SRCREVS and add EFI Support.
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
X-List-Received-Date: Mon, 23 Apr 2012 17:48:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 04/10/2012 11:55 AM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> Add EFI support and update the SRCREVS for pvr
> version of build.
> Add pvr merge scc file to pull in the pvr patches.
> 
> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
> ---
>  .../linux/linux-yocto-rt_3.0.bbappend              |    8 ++++++++
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   14 ++++++++++++--
>  2 files changed, 20 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> index 5a95d3e..2248c88 100644
> --- a/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> +++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> @@ -3,6 +3,14 @@ COMPATIBLE_MACHINE_cedartrail = "cedartrail"
>  KMACHINE_cedartrail  = "cedartrail"
>  
>  KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
> +KERNEL_FEATURES_append_cedartrail += " cfg/drm-cdvpvr.scc"
> +KERNEL_FEATURES_append_cedartrail += " bsp/cedartrail/cedartrail-pvr-merge.scc"
> +KERNEL_FEATURES_append_cedartrail += " cfg/efi-ext.scc"


I suggest moving all of this into the cedartrail.scc file in the
linux-yocto meta branch. These are all core bits required for the BSP,
they don't need to be easily changed from recipe-space.

The exception would be the pvr bits. You can make a single
cedartrail.scc that supports both configs (with and without pvr) and
only modify the pvr one here in recipe space - the rest belongs in
linux-yocto/meta

> +COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
> +KMACHINE_cedartrail-nopvr  = "cedartrail"
> +KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"

Same here.

--
Darren


> +
>  
>  # Update the following to use a different BSP branch or meta SRCREV
>  #KBRANCH_cedartrail  = "yocto/standard/preempt-rt/base"
> diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
> index ca59e72..dc15a5e 100644
> --- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
> +++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
> @@ -3,6 +3,16 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>  COMPATIBLE_MACHINE_cedartrail = "cedartrail"
>  KMACHINE_cedartrail  = "yocto/standard/cedartrail"
>  KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
> +KERNEL_FEATURES_append_cedartrail += "cfg/drm-cdvpvr.scc"
> +KERNEL_FEATURES_append_cedartrail += "bsp/cedartrail/cedartrail-pvr-merge.scc"
> +KERNEL_FEATURES_append_cedartrail += "cfg/efi-ext.scc"
>  
> -SRCREV_machine_pn-linux-yocto_cedartrail ?= "f389d310965a56091f688b28ea8be6d9cbb7fbbe"
> -SRCREV_meta_pn-linux-yocto_cedartrail ?= "04a52a32cbdf0972033b97b83eaa83eb275dfdc9"
> +COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
> +KMACHINE_cedartrail-nopvr  = "yocto/standard/cedartrail"
> +KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
> +
> +SRCREV_machine_pn-linux-yocto_cedartrail ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
> +SRCREV_meta_pn-linux-yocto_cedartrail ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"
> +
> +SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "81fd8c307997aff37916828dc8b4ef72f5d35a94"
> +SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "a4ac64fe873f08ef718e2849b88914725dc99c1c"


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

