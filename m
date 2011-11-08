Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86DF5E013B0
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2011 11:26:52 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Nov 2011 11:26:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,478,1315206000"; d="scan'208";a="82533965"
Received: from unknown (HELO envy.home) ([10.255.12.17])
	by fmsmga001.fm.intel.com with ESMTP; 08 Nov 2011 11:26:52 -0800
Message-ID: <4EB9827B.5070009@linux.intel.com>
Date: Tue, 08 Nov 2011 11:26:51 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: kishore.k.bodke@intel.com
References: <cover.1320777520.git.kishore.k.bodke@intel.com>
	<e92b154fb3f469c4497a6725a0397fb94c73327b.1320777520.git.kishore.k.bodke@intel.com>
In-Reply-To: <e92b154fb3f469c4497a6725a0397fb94c73327b.1320777520.git.kishore.k.bodke@intel.com>
X-Enigmail-Version: 1.3.2
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] [KERNEL]meta/romley: Add rt support
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
X-List-Received-Date: Tue, 08 Nov 2011 19:26:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Thanks Kishore!

On 11/08/2011 11:22 AM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> Add rt support to the meta branch for romley.
> 
> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  .../kernel-cache/bsp/romley/romley-preempt-rt.scc  |    8 ++++++++
>  1 files changed, 8 insertions(+), 0 deletions(-)
>  create mode 100644 meta/cfg/kernel-cache/bsp/romley/romley-preempt-rt.scc
> 
> diff --git a/meta/cfg/kernel-cache/bsp/romley/romley-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/romley/romley-preempt-rt.scc
> new file mode 100644
> index 0000000..634d244
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/bsp/romley/romley-preempt-rt.scc
> @@ -0,0 +1,8 @@
> +define KMACHINE romley
> +define KTYPE preempt-rt
> +define KARCH x86_64
> +
> +# no new branch required, re-use the ktypes/preempt-rt branch
> +include ktypes/preempt-rt
> +include bsp/common-pc-64/common-pc-64.scc
> +include romley.scc

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

