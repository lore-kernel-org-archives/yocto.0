Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DCBBE006C7
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 09:17:30 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 May 2012 09:17:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="138953582"
Received: from unknown (HELO envy.home) ([10.255.12.74])
	by azsmga001.ch.intel.com with ESMTP; 04 May 2012 09:17:29 -0700
Message-ID: <4FA400FA.9030903@linux.intel.com>
Date: Fri, 04 May 2012 09:16:58 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1336015630.git.tom.zanussi@intel.com>
	<5c329be00981f6c931bd192bf5af741fb7da4a81.1336015630.git.tom.zanussi@intel.com>
In-Reply-To: <5c329be00981f6c931bd192bf5af741fb7da4a81.1336015630.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/5][KERNEL] meta: add usb/host/base feature
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
X-List-Received-Date: Fri, 04 May 2012 16:17:30 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/02/2012 08:35 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Add a feature to enable 'base' support for USB, mainly to be included
> by derived features such as ehch, xhci, etc.

This seems overly granular in my opinion. I think I would just include
the two required options in each of the *hci features.

--
Darren

> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  meta/cfg/kernel-cache/features/usb/host/base.cfg |    3 +++
>  meta/cfg/kernel-cache/features/usb/host/base.scc |    4 ++++
>  2 files changed, 7 insertions(+), 0 deletions(-)
>  create mode 100644 meta/cfg/kernel-cache/features/usb/host/base.cfg
>  create mode 100644 meta/cfg/kernel-cache/features/usb/host/base.scc
> 
> diff --git a/meta/cfg/kernel-cache/features/usb/host/base.cfg b/meta/cfg/kernel-cache/features/usb/host/base.cfg
> new file mode 100644
> index 0000000..dec6a47
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/features/usb/host/base.cfg
> @@ -0,0 +1,3 @@
> +CONFIG_USB_SUPPORT=y
> +CONFIG_USB=y
> +
> diff --git a/meta/cfg/kernel-cache/features/usb/host/base.scc b/meta/cfg/kernel-cache/features/usb/host/base.scc
> new file mode 100644
> index 0000000..3c93475
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/features/usb/host/base.scc
> @@ -0,0 +1,4 @@
> +define KFEATURE_DESCRIPTION "Enable core options for USB support"
> +define KFEATURE_COMPATIBILITY board
> +
> +kconf hardware base.cfg

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

