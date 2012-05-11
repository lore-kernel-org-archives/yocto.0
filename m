Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E016E00723
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 10:37:05 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 May 2012 09:21:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="139557980"
Received: from unknown (HELO envy.home) ([10.255.12.96])
	by orsmga001.jf.intel.com with ESMTP; 11 May 2012 09:20:59 -0700
Message-ID: <4FAD3C3E.1080906@linux.intel.com>
Date: Fri, 11 May 2012 09:20:14 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
	<6c256de016c222537d56e5ff04cddee8e87c0196.1336697506.git.tom.zanussi@intel.com>
In-Reply-To: <6c256de016c222537d56e5ff04cddee8e87c0196.1336697506.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 08/10] meta/emenlow: factor out policy-related options
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

Same comments as for crownbay

On 05/10/2012 06:00 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Refactor bsp/common-pc/common-pc* to keep hardware-related options in

oops                       ^

> the base fishriver.scc while moving the more 'policy'-related options
> into the files that include the base fishriver.scc fragment.
> 
> This allows the different kernel types to make use of the basic
> machine support without dragging along possibly unwanted options that
> fall under the heading of 'policy' for a specific kernel type.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  .../bsp/fishriver/fishriver-preempt-rt.scc         |    8 ++++++++
>  .../bsp/fishriver/fishriver-standard.scc           |    8 ++++++++
>  meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc  |    7 -------
>  3 files changed, 16 insertions(+), 7 deletions(-)
> 
> diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/fishriver/fishriver-preempt-rt.scc
> index 1a5e46a..f37e1c6 100644
> --- a/meta/cfg/kernel-cache/bsp/fishriver/fishriver-preempt-rt.scc
> +++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver-preempt-rt.scc
> @@ -4,4 +4,12 @@ define KARCH i386
>  
>  # no new branch required, re-use the ktypes/preempt-rt branch
>  include ktypes/preempt-rt
> +
>  include fishriver.scc
> +
> +# default policy for preempt-rt kernels
> +include cfg/usb-mass-storage.scc
> +include cfg/boot-live.scc
> +include features/logbuf/size-normal.scc
> +include features/latencytop/latencytop.scc
> +include features/profiling/profiling.scc
> diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver-standard.scc b/meta/cfg/kernel-cache/bsp/fishriver/fishriver-standard.scc
> index e697d7e..fb2dc25 100644
> --- a/meta/cfg/kernel-cache/bsp/fishriver/fishriver-standard.scc
> +++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver-standard.scc
> @@ -9,3 +9,11 @@ include features/emgd/emgd.scc
>  git merge emgd
>  
>  include fishriver.scc
> +
> +# default policy for standard kernels
> +include cfg/usb-mass-storage.scc
> +include cfg/boot-live.scc
> +include features/logbuf/size-normal.scc
> +include features/latencytop/latencytop.scc
> +include features/profiling/profiling.scc
> +
> diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
> index e401274..6ae93f9 100644
> --- a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
> +++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
> @@ -8,16 +8,9 @@ include features/serial/8250.scc
>  include features/hpet/hpet.scc
>  include features/ericsson-3g/f5521gw.scc
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

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

