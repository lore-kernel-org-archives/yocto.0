Return-Path: <darren.hart@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 67CDC4C80334
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 16:44:28 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 May 2011 14:44:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; 
   d="scan'208";a="8763326"
Received: from doubt.jf.intel.com (HELO [10.24.155.80]) ([10.24.155.80])
	by fmsmga002.fm.intel.com with ESMTP; 27 May 2011 14:44:27 -0700
Message-ID: <4DE01B2A.9040008@intel.com>
Date: Fri, 27 May 2011 14:44:10 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
	<cddf6042091c8ba4df53915b87fe7c14e4c2dc70.1306509168.git.tom.zanussi@intel.com>
In-Reply-To: <cddf6042091c8ba4df53915b87fe7c14e4c2dc70.1306509168.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 10/14][KERNEL] meta: add intel-e1xxxx feature
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
X-List-Received-Date: Fri, 27 May 2011 21:44:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 05/27/2011 01:45 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Add a general-purpose feature adding support for Intel PRO/100, Intel
> PRO/1000, and Intel PRO/1000 PCI-Express adapters.

I noticed some things have been added as modules while others are
configured in. What is your criteria for determining module versus
compiled in?

--
Darren

> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  .../features/intel-e1xxxx/intel-e1xxxx.cfg         |    4 ++++
>  .../features/intel-e1xxxx/intel-e1xxxx.scc         |    1 +
>  2 files changed, 5 insertions(+), 0 deletions(-)
>  create mode 100644 meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg
>  create mode 100644 meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.scc
> 
> diff --git a/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg
> new file mode 100644
> index 0000000..ea9f7e9
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg
> @@ -0,0 +1,4 @@
> +CONFIG_NETDEV_1000=y
> +CONFIG_E100=y
> +CONFIG_E1000E=y
> +CONFIG_E1000=y
> diff --git a/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.scc b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.scc
> new file mode 100644
> index 0000000..90ba914
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.scc
> @@ -0,0 +1 @@
> +kconf hardware intel-e1xxxx.cfg


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

