Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEEDCE01424
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 09:18:26 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 May 2012 09:16:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="142831272"
Received: from unknown (HELO envy.home) ([10.255.12.96])
	by orsmga002.jf.intel.com with ESMTP; 11 May 2012 09:16:37 -0700
Message-ID: <4FAD3B38.9040309@linux.intel.com>
Date: Fri, 11 May 2012 09:15:52 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
	<4b6778f59a7f6475dad58a3c9daea9c51f278a50.1336697506.git.tom.zanussi@intel.com>
In-Reply-To: <4b6778f59a7f6475dad58a3c9daea9c51f278a50.1336697506.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 05/10] meta/common-pc: factor out policy-related options
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
X-List-Received-Date: Fri, 11 May 2012 16:19:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/10/2012 06:00 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Refactor bsp/common-pc/common-pc* to keep hardware-related options in
> the base common-pc-64.scc while moving the more 'policy'-related
> options into the files that include the base common-pc-64.scc
> fragment.
> 
> This allows the different kernel types to make use of the basic
> machine support without dragging along possibly unwanted options that
> fall under the heading of 'policy' for a specific kernel type.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

Same comments as for common-pc (5/10)

> ---
>  .../bsp/common-pc-64/common-pc-64-preempt-rt.scc   |    6 ++++++
>  .../bsp/common-pc-64/common-pc-64-standard.scc     |    6 ++++++
>  .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |    6 ------
>  3 files changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-preempt-rt.scc
> index ea13b44..8a79dd1 100644
> --- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-preempt-rt.scc
> +++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-preempt-rt.scc
> @@ -4,5 +4,11 @@ define KARCH x86_64
>  
>  # no new branch required, re-use the ktypes/preempt-rt branch
>  include ktypes/preempt-rt
> +
>  include bsp/common-pc-64/common-pc-64.scc
>  
> +# default policy for preempt-rt kernels
> +include cfg/boot-live.scc
> +include features/latencytop/latencytop.scc
> +include features/profiling/profiling.scc
> +include cfg/virtio.scc
> diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-standard.scc b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-standard.scc
> index aa690cd..dcb1949 100644
> --- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-standard.scc
> +++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64-standard.scc
> @@ -6,3 +6,9 @@ include ktypes/standard
>  branch common-pc-64
>  
>  include common-pc-64.scc
> +
> +# default policy for standard kernels
> +include cfg/boot-live.scc
> +include features/latencytop/latencytop.scc
> +include features/profiling/profiling.scc
> +include cfg/virtio.scc
> diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
> index d0327c5..c2efc88 100644
> --- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
> +++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
> @@ -1,14 +1,8 @@
>  kconf hardware common-pc-64.cfg
>  kconf hardware common-pc-64-graphics.cfg
>  
> -include cfg/boot-live.scc
> -
>  include features/hpet/hpet.scc
>  include features/usb/ehci-hcd.scc
>  include features/usb/uhci-hcd.scc
>  include features/intel-e1xxxx/intel-e100.scc
>  include features/intel-e1xxxx/intel-e1xxxx.scc
> -
> -include features/latencytop/latencytop.scc
> -include features/profiling/profiling.scc
> -include cfg/virtio.scc

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

