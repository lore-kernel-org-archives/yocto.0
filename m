Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BAC3E003E5
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 13:18:00 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q22LHasO006032
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 2 Mar 2012 13:17:37 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 2 Mar 2012 13:17:36 -0800
Message-ID: <4F5138DC.1060202@windriver.com>
Date: Fri, 2 Mar 2012 16:17:16 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Darren Hart <darren@dvhart.com>
References: <cover.1330644090.git.darren@dvhart.com>
	<8bf0cedb058ba28cd93c05e52a259ffb90e04b31.1330644090.git.darren@dvhart.com>
In-Reply-To: <8bf0cedb058ba28cd93c05e52a259ffb90e04b31.1330644090.git.darren@dvhart.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 6/6] fri2: Move non-hardware optional features out of fri2.scc
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
X-List-Received-Date: Fri, 02 Mar 2012 21:18:00 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-01 06:59 PM, Darren Hart wrote:
> From: Darren Hart<dvhart@linux.intel.com>
>
> Move policy features out of fri2.scc and into the fri2-KTYPE.scc files. This
> allows KTYPEs like tiny to build smaller kernels while still reusing the
> fri2.scc file.

Exactly. Good factoring of the options.

I had one question on the series, but I've merged it all anyway. If
we need to change the PCH console one, I'll revisit it later.

Cheers,

Bruce

>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> ---
>   meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc |    6 ++++++
>   meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc   |    6 ++++++
>   meta/cfg/kernel-cache/bsp/fri2/fri2.scc            |    6 ------
>   3 files changed, 12 insertions(+), 6 deletions(-)
>
> diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
> index 9e9a84c..1a9e638 100644
> --- a/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
> +++ b/meta/cfg/kernel-cache/bsp/fri2/fri2-preempt-rt.scc
> @@ -5,4 +5,10 @@ define KARCH i386
>   # no new branch required, re-use the ktypes/preempt-rt branch
>   include ktypes/preempt-rt
>   include fri2.scc
> +
> +# default policy for preempt-rt kernels
> +include cfg/boot-live.scc
> +include features/logbuf/size-normal.scc
> +include features/latencytop/latencytop.scc
> +include features/profiling/profiling.scc
>   include cfg/efi-ext.scc
> diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
> index b17eca5..66b87ce 100644
> --- a/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
> +++ b/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
> @@ -9,4 +9,10 @@ include features/emgd/emgd.scc
>   git merge emgd
>
>   include fri2.scc
> +
> +# default policy for standard kernels
> +include cfg/boot-live.scc
> +include features/logbuf/size-normal.scc
> +include features/latencytop/latencytop.scc
> +include features/profiling/profiling.scc
>   include cfg/efi-ext.scc
> diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
> index a89a6e2..62ad14b 100644
> --- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
> +++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
> @@ -9,12 +9,6 @@ include features/ericsson-3g/f5521gw.scc
>   include features/iwlagn/iwlagn.scc
>   include cfg/vesafb.scc
>   include cfg/usb-mass-storage.scc
> -include cfg/boot-live.scc
>   include features/power/intel.scc
>   include cfg/smp.scc
>   include cfg/efi.scc
> -
> -include features/logbuf/size-normal.scc
> -
> -include features/latencytop/latencytop.scc
> -include features/profiling/profiling.scc


