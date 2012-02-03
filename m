Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68129E0138A
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 14:26:18 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Feb 2012 14:26:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="103740719"
Received: from unknown (HELO envy.home) ([10.7.199.151])
	by orsmga001.jf.intel.com with ESMTP; 03 Feb 2012 14:26:17 -0800
Message-ID: <4F2C5EEA.2000405@linux.intel.com>
Date: Fri, 03 Feb 2012 14:25:46 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1328307536.git.tom.zanussi@intel.com>
	<15d941e0ec9b6d27f48c014554b9894587025659.1328307536.git.tom.zanussi@intel.com>
In-Reply-To: <15d941e0ec9b6d27f48c014554b9894587025659.1328307536.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.3.5
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] fri2: use emgd-1.10
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
X-List-Received-Date: Fri, 03 Feb 2012 22:26:18 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 02/03/2012 02:22 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Use the yocto/emgd-1.10 branch in place of yocto/emgd.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  meta/cfg/kernel-cache/bsp/fri2/fri2.scc |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
> index f5eef84..e40622c 100644
> --- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
> +++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
> @@ -1,6 +1,6 @@
>  kconf hardware fri2.cfg
>  
> -git merge yocto/emgd
> +git merge yocto/emgd-1.10
>  
>  include features/eg20t/eg20t.scc
>  include features/intel-e1xxxx/intel-e100.scc

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

