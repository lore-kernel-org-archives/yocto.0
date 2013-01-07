Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1EA1E01410;
	Mon,  7 Jan 2013 08:19:35 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Jan 2013 08:19:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,424,1355126400"; d="scan'208";a="243029061"
Received: from envy.jf.intel.com (HELO envy.home) ([10.7.199.53])
	by orsmga001.jf.intel.com with ESMTP; 07 Jan 2013 08:19:34 -0800
Message-ID: <50EAF597.3030908@linux.intel.com>
Date: Mon, 07 Jan 2013 08:19:35 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "Noor, Ahsan" <noor_ahsan@mentor.com>
References: <1356954965-17029-1-git-send-email-noor_ahsan@mentor.com>
In-Reply-To: <1356954965-17029-1-git-send-email-noor_ahsan@mentor.com>
X-Enigmail-Version: 1.4.6
Cc: meta-intel@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [meta-intel][PATCH] linux-yocto: Add a patch to resolve undefined RUSAGE_SELF for perf.
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
X-List-Received-Date: Mon, 07 Jan 2013 16:19:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 12/31/2012 03:56 AM, Noor, Ahsan wrote:
> From: Noor Ahsan <noor_ahsan@mentor.com>

Hi Noor,

> 
> * Perf gived compilation error
>   CC builtin-sched.o
>     builtin-sched.c: In function ‘get_cpu_usage_nsec_parent’:
>   builtin-sched.c:399:16: error: storage size of ‘ru’ isn’t known
> * Added a patch from linux kernel git repo commit id
>   7b78f13603c6fcb64e020a0bbe31a651ea2b657b which include resource.h
>   file in builtin-sched.c.


Please send meta-intel patches to the meta-intel list and CC the BSP
maintainer, in this case Kishore (on Cc).

The patch below seems to basically duplicate the existing
linux-yocto_3.0.bbappend in the repository and I don't see the patch you
mention. Is this the patch you intended to send?

Thanks,

Darren

> 
> Signed-off-by: Noor Ahsan <noor_ahsan@mentor.com>
> ---
>  .../linux/linux-yocto/linux-yocto_3.0.bbappend     |   23 ++++++++++++++++++++
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 +++++--
>  2 files changed, 29 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto/linux-yocto_3.0.bbappend
> new file mode 100644
> index 0000000..440cd77
> --- /dev/null
> +++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto/linux-yocto_3.0.bbappend
> @@ -0,0 +1,23 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +SRC_URI_cedartrail = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;branch=${KBRANCH},meta,yocto/pvr;name=machine,meta,pvr"
> +
> +SRC_URI_cedartrail-nopvr = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
> +
> +COMPATIBLE_MACHINE_cedartrail = "cedartrail"
> +KMACHINE_cedartrail  = "cedartrail"
> +KBRANCH_cedartrail  = "yocto/standard/cedartrail"
> +KERNEL_FEATURES_append_cedartrail += "bsp/cedartrail/cedartrail-pvr-merge.scc"
> +KERNEL_FEATURES_append_cedartrail += "cfg/efi-ext.scc"
> +
> +COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
> +KMACHINE_cedartrail-nopvr  = "cedartrail"
> +KBRANCH_cedartrail-nopvr  = "yocto/standard/cedartrail"
> +KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
> +
> +SRCREV_machine_pn-linux-yocto_cedartrail ?= "${AUTOREV}"
> +SRCREV_meta_pn-linux-yocto_cedartrail ?= "${AUTOREV}"
> +SRCREV_pvr_pn-linux-yocto_cedartrail ?= "${AUTOREV}"
> +
> +SRCREV_machine_pn-linux-yocto_cedartrail-nopvr ?= "${AUTOREV}"
> +SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= "${AUTOREV}"
> diff --git a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
> index 440cd77..6797eeb 100644
> --- a/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
> +++ b/meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend
> @@ -1,8 +1,12 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>  
> -SRC_URI_cedartrail = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;branch=${KBRANCH},meta,yocto/pvr;name=machine,meta,pvr"
> +SRC_URI_cedartrail = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;bareclone=1;branch=${KBRANCH},meta,yocto/pvr;name=machine,meta,pvr \
> +file://linux-yocto_3.0.bbappend \
> +"
>  
> -SRC_URI_cedartrail-nopvr = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
> +SRC_URI_cedartrail-nopvr = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta \
> +file://linux-yocto_3.0.bbappend \
> +"
>  
>  COMPATIBLE_MACHINE_cedartrail = "cedartrail"
>  KMACHINE_cedartrail  = "cedartrail"
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

