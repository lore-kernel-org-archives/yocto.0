Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8134E01426
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 09:21:05 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 May 2012 09:19:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="142832241"
Received: from unknown (HELO envy.home) ([10.255.12.96])
	by orsmga002.jf.intel.com with ESMTP; 11 May 2012 09:19:02 -0700
Message-ID: <4FAD3BC9.1030606@linux.intel.com>
Date: Fri, 11 May 2012 09:18:17 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
	<0a78d7e8401e3d500b3cb784c6bf0a4e7271f99e.1336697506.git.tom.zanussi@intel.com>
In-Reply-To: <0a78d7e8401e3d500b3cb784c6bf0a4e7271f99e.1336697506.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 06/10] meta/crownbay: factor out policy-related options
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
X-List-Received-Date: Fri, 11 May 2012 16:21:06 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/10/2012 06:00 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Refactor bsp/common-pc/common-pc* to keep hardware-related options in

oops                   ^

> the base crownbay.scc while moving the more 'policy'-related options
> into the files that include the base crownbay.scc fragment.
> 
> This allows the different kernel types to make use of the basic
> machine support without dragging along possibly unwanted options that
> fall under the heading of 'policy' for a specific kernel type.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>


With minor comment tweak above:

Acked-by-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  .../bsp/crownbay/crownbay-preempt-rt.scc           |    8 ++++++++
>  .../bsp/crownbay/crownbay-standard.scc             |    7 +++++++
>  meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    7 -------
>  3 files changed, 15 insertions(+), 7 deletions(-)
> 
> diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay-preempt-rt.scc
> index d58b4be..11067ef 100644
> --- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay-preempt-rt.scc
> +++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay-preempt-rt.scc
> @@ -4,4 +4,12 @@ define KARCH i386
>  
>  # no new branch required, re-use the ktypes/preempt-rt branch
>  include ktypes/preempt-rt
> +
>  include crownbay.scc
> +
> +# default policy for preempt-rt kernels
> +include cfg/usb-mass-storage.scc
> +include cfg/boot-live.scc
> +include features/logbuf/size-normal.scc
> +include features/latencytop/latencytop.scc
> +include features/profiling/profiling.scc
> diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay-standard.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay-standard.scc
> index d6036f7..dd9dbc7 100644
> --- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay-standard.scc
> +++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay-standard.scc
> @@ -9,3 +9,10 @@ include features/emgd/emgd-1.10.scc
>  git merge emgd-1.10
>  
>  include crownbay.scc
> +
> +# default policy for standard kernels
> +include cfg/usb-mass-storage.scc
> +include cfg/boot-live.scc
> +include features/logbuf/size-normal.scc
> +include features/latencytop/latencytop.scc
> +include features/profiling/profiling.scc
> diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
> index c4bc1a5..82ed6f3 100644
> --- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
> +++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
> @@ -8,16 +8,9 @@ include cfg/dmaengine.scc
>  include features/serial/8250.scc
>  include features/hpet/hpet.scc
>  include cfg/vesafb.scc
> -include cfg/usb-mass-storage.scc
> -include cfg/boot-live.scc
>  include cfg/smp.scc
>  include features/power/intel.scc
>  
> -include features/logbuf/size-normal.scc
> -
> -include features/latencytop/latencytop.scc
> -include features/profiling/profiling.scc
> -
>  include features/usb/ehci-hcd.scc
>  include features/usb/ohci-hcd.scc
>  include features/usb/uhci-hcd.scc

Independent from this patch, but does crownbay have all three? ehci and
ohci seems a lot more likely to me.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

