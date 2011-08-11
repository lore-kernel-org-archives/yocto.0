Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C75BE006AB
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 01:27:07 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Aug 2011 01:27:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,355,1309762800"; d="scan'208";a="37371054"
Received: from unknown (HELO envy.home) ([10.255.14.201])
	by azsmga001.ch.intel.com with ESMTP; 11 Aug 2011 01:27:16 -0700
Message-ID: <4E439262.3060403@linux.intel.com>
Date: Thu, 11 Aug 2011 01:27:14 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org, bruce.ashfield@windriver.com
References: <cover.1313050084.git.dvhart@linux.intel.com>
	<d3104bcb5205dffefbe8149f38f65b3edd48e03a.1313050084.git.dvhart@linux.intel.com>
In-Reply-To: <d3104bcb5205dffefbe8149f38f65b3edd48e03a.1313050084.git.dvhart@linux.intel.com>
Subject: Re: [PATCH 02/17] meta/rt: beagleboard preempt-rt support
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
X-List-Received-Date: Thu, 11 Aug 2011 08:27:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 08/11/2011 01:23 AM, Darren Hart wrote:

Oh the hypocrisy! For those of you that have caught my lack of detailed
commentary for all the added preempt-rt .scc files - you are completely
justified. I intended to paste a blurb for each and forgot by the time I
sent them out. Probably not worth resending, but I will if Bruce is a
10th as picky as I am. Apologies.

--
Darren

> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
>  .../bsp/beagleboard/beagleboard-preempt-rt.scc     |    7 +++++++
>  1 files changed, 7 insertions(+), 0 deletions(-)
>  create mode 100644 meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc
> 
> diff --git a/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc
> new file mode 100644
> index 0000000..aa71a94
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc
> @@ -0,0 +1,7 @@
> +define KMACHINE beagleboard
> +define KTYPE preempt-rt
> +define KARCH arm
> +
> +# no new branch required, re-use the ktypes/preempt-rt branch
> +include ktypes/preempt-rt
> +include beagleboard.scc

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

