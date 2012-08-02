Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C96F9E01443
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 13:01:41 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Aug 2012 13:01:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="174846829"
Received: from unknown (HELO envy.home) ([10.7.199.82])
	by orsmga001.jf.intel.com with ESMTP; 02 Aug 2012 13:01:29 -0700
Message-ID: <501ADC2C.6000502@linux.intel.com>
Date: Thu, 02 Aug 2012 12:59:40 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: kishore.k.bodke@intel.com
References: <cover.1343932163.git.kishore.k.bodke@intel.com>
	<18e664ce60847e2b100e344c39304da494549f8f.1343932163.git.kishore.k.bodke@intel.com>
In-Reply-To: <18e664ce60847e2b100e344c39304da494549f8f.1343932163.git.kishore.k.bodke@intel.com>
X-Enigmail-Version: 1.4.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] [KERNEL] meta: Crystal Forest Machine Created.
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
X-List-Received-Date: Thu, 02 Aug 2012 20:01:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Looks a lot better. One question still pending from my previous review
though:

On 08/02/2012 11:35 AM, kishore.k.bodke@intel.com wrote:

> diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
> new file mode 100644
> index 0000000..140a4d5
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
> @@ -0,0 +1,23 @@
> +kconf hardware crystalforest.cfg
> +
> +include cfg/x86_64.scc
> +include cfg/8250.scc
> +
> +include features/i915/i915.scc

Is this (i915) required for the Poulsbo graphics?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

