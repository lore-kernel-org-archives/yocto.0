Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 555FDE01420
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 09:16:09 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 May 2012 09:15:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="165013186"
Received: from unknown (HELO envy.home) ([10.255.12.96])
	by fmsmga002.fm.intel.com with ESMTP; 11 May 2012 09:15:55 -0700
Message-ID: <4FAD3B0E.1020804@linux.intel.com>
Date: Fri, 11 May 2012 09:15:10 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
	<db3779a87c8877876dc4e5afe6bfa81914dc9725.1336697506.git.tom.zanussi@intel.com>
In-Reply-To: <db3779a87c8877876dc4e5afe6bfa81914dc9725.1336697506.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 04/10] meta/common-pc: factor out policy-related options
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
X-List-Received-Date: Fri, 11 May 2012 16:16:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/10/2012 06:00 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Refactor bsp/common-pc/common-pc* to keep hardware-related options in
> the base common-pc.scc while moving the more 'policy'-related options
> into the files that include the base common-pc.scc fragment.
> 
> This allows the different kernel types to make use of the basic
> machine support without dragging along possibly unwanted options that
> fall under the heading of 'policy' for a specific kernel type.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  .../bsp/common-pc/common-pc-preempt-rt.scc         |    7 +++++++
>  .../bsp/common-pc/common-pc-standard.scc           |    6 ++++++
>  .../kernel-cache/bsp/common-pc/common-pc-tiny.scc  |    5 +----
>  meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc  |    4 ----
>  4 files changed, 14 insertions(+), 8 deletions(-)
> 
> diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc
> index f8716ee..706f669 100644
> --- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc
> +++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-preempt-rt.scc
> @@ -4,4 +4,11 @@ define KARCH i386
>  
>  # no new branch required, re-use the ktypes/preempt-rt branch
>  include ktypes/preempt-rt
> +
>  include bsp/common-pc/common-pc.scc
> +
> +# default policy for preempt-rt kernels


needs  usb-mass-storage here

> +include cfg/boot-live.scc
> +include features/latencytop/latencytop.scc
> +include features/profiling/profiling.scc
> +include cfg/virtio.scc
> diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-standard.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-standard.scc
> index f5baf52..83d49fd 100644
> --- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-standard.scc
> +++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-standard.scc
> @@ -6,3 +6,9 @@ include ktypes/standard
>  branch common-pc
>  
>  include common-pc.scc
> +
> +# default policy for standard kernels

needs  usb-mass-storage here and the config removed from common-pc.cfg

> +include cfg/boot-live.scc
> +include features/latencytop/latencytop.scc
> +include features/profiling/profiling.scc
> +include cfg/virtio.scc
> diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc
> index 8d7a498..900eb27 100644
> --- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc
> +++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc-tiny.scc
> @@ -5,8 +5,5 @@ define KARCH i386
>  include ktypes/tiny
>  branch common-pc
>  
> -# Don't include common-pc.scc directly,
> -# it pulls in too many non-hardware options
> -kconf hardware common-pc.cfg
> -kconf hardware common-pc-gfx.cfg
> +include common-pc.scc

Nice!

> diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
> index 2338ea6..9bd72c1 100644
> --- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
> +++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
> @@ -1,11 +1,7 @@
>  kconf hardware common-pc.cfg
>  kconf hardware common-pc-gfx.cfg
>  
> -include cfg/boot-live.scc
>  include features/usb/ehci-hcd.scc
>  include features/usb/uhci-hcd.scc
>  include features/intel-e1xxxx/intel-e100.scc
>  include features/intel-e1xxxx/intel-e1xxxx.scc
> -include features/latencytop/latencytop.scc
> -include features/profiling/profiling.scc
> -include cfg/virtio.scc

Nice.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

