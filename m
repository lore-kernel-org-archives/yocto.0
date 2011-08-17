Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04C33E011C6
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 10:18:31 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Aug 2011 10:18:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,240,1312182000"; d="scan'208";a="42372011"
Received: from unknown (HELO envy.home) ([10.255.14.197])
	by fmsmga001.fm.intel.com with ESMTP; 17 Aug 2011 10:18:42 -0700
Message-ID: <4E4BF7F0.1090203@linux.intel.com>
Date: Wed, 17 Aug 2011 10:18:40 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1313598858.git.tom.zanussi@intel.com>
	<0fdd02a74ec09889077473c5c2b6423f0d5ce758.1313598858.git.tom.zanussi@intel.com>
In-Reply-To: <0fdd02a74ec09889077473c5c2b6423f0d5ce758.1313598858.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/2][KERNEL] bsp/fri2: merge emgd branch
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
X-List-Received-Date: Wed, 17 Aug 2011 17:18:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 08/17/2011 09:50 AM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Add scc commands to merge the yocto/emgd branch into the fri2 BSP.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  meta/cfg/kernel-cache/bsp/fri2/fri2.scc |    2 ++
>  1 files changed, 2 insertions(+), 0 deletions(-)
> 
> diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
> index 6ac0bfb..a87ce7e 100644
> --- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
> +++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
> @@ -1,5 +1,7 @@
>  kconf hardware fri2.cfg
>  
> +git merge yocto/emgd
> +
>  include features/eg20t/eg20t.scc
>  include features/intel-e1xxxx/intel-e1xxxx.scc
>  include features/dmaengine/dmaengine.scc

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

