Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (unknown [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0A9EE00723
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 09:10:00 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 11 May 2012 09:09:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="141928361"
Received: from unknown (HELO envy.home) ([10.255.12.96])
	by azsmga001.ch.intel.com with ESMTP; 11 May 2012 09:09:38 -0700
Message-ID: <4FAD3994.2070409@linux.intel.com>
Date: Fri, 11 May 2012 09:08:52 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1336697506.git.tom.zanussi@intel.com>
	<594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
In-Reply-To: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 01/10] meta: add ROOT_HUB_TT config option to the usb/ehci-hcd feature
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
X-List-Received-Date: Fri, 11 May 2012 16:10:02 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/10/2012 05:59 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Add root hub transaction translator support for supporting companion
> ohci/uhci controllers , which is safe even if the ehci controller
> doesn't have companion controllers.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg b/meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg
> index 7322dc2..b977248 100644
> --- a/meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg
> +++ b/meta/cfg/kernel-cache/features/usb/ehci-hcd.cfg
> @@ -1 +1,2 @@
>  CONFIG_USB_EHCI_HCD=y
> +CONFIG_USB_EHCI_ROOT_HUB_TT=y

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

