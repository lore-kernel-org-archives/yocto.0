Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DD1BE00746
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 10:37:05 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 May 2012 09:21:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="139558240"
Received: from unknown (HELO envy.home) ([10.255.12.96])
	by orsmga001.jf.intel.com with ESMTP; 11 May 2012 09:21:42 -0700
Message-ID: <4FAD3C69.1020003@linux.intel.com>
Date: Fri, 11 May 2012 09:20:57 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
	<eddd249e96f531ba43064efa77ddaa6b7dd57275.1336697506.git.tom.zanussi@intel.com>
In-Reply-To: <eddd249e96f531ba43064efa77ddaa6b7dd57275.1336697506.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 10/10] meta/sugarbay: factor out policy-related options
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
X-List-Received-Date: Fri, 11 May 2012 17:37:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

ditto

On 05/10/2012 06:00 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Refactor bsp/common-pc/common-pc* to keep hardware-related options in
> the base sugarbay.scc while moving the more 'policy'-related options
> into the files that include the base sugarbay.scc fragment.
> 
> This allows the different kernel types to make use of the basic
> machine support without dragging along possibly unwanted options that
> fall under the heading of 'policy' for a specific kernel type.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  .../bsp/sugarbay/sugarbay-preempt-rt.scc           |    7 +++++++
>  .../bsp/sugarbay/sugarbay-standard.scc             |    6 ++++++
>  meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc    |    6 ------
>  3 files changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc
> index e824f6f..d9df73b 100644
> --- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc
> +++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-preempt-rt.scc
> @@ -5,4 +5,11 @@ define KARCH x86_64
>  # no new branch required, re-use the ktypes/preempt-rt branch
>  include ktypes/preempt-rt
>  include bsp/common-pc-64/common-pc-64.scc
> +
>  include sugarbay.scc
> +
> +# default policy for preempt-rt kernels
> +include cfg/usb-mass-storage.scc
> +include features/logbuf/size-normal.scc
> +include features/latencytop/latencytop.scc
> +include features/profiling/profiling.scc
> diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standard.scc b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standard.scc
> index 8c2a19b..421364e 100644
> --- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standard.scc
> +++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standard.scc
> @@ -6,3 +6,9 @@ include bsp/common-pc-64/common-pc-64-standard
>  branch sugarbay
>  
>  include sugarbay.scc
> +
> +# default policy for standard kernels
> +include cfg/usb-mass-storage.scc
> +include features/logbuf/size-normal.scc
> +include features/latencytop/latencytop.scc
> +include features/profiling/profiling.scc
> diff --git a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
> index 128efd3..d8144f0 100644
> --- a/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
> +++ b/meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
> @@ -2,14 +2,8 @@ kconf hardware sugarbay.cfg
>  
>  include features/i915/i915.scc
>  include features/serial/8250.scc
> -include cfg/usb-mass-storage.scc
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

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

