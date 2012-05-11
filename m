Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (unknown [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72DF6E01415
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 09:13:45 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 May 2012 09:13:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="165012186"
Received: from unknown (HELO envy.home) ([10.255.12.96])
	by fmsmga002.fm.intel.com with ESMTP; 11 May 2012 09:13:22 -0700
Message-ID: <4FAD3A75.7070403@linux.intel.com>
Date: Fri, 11 May 2012 09:12:37 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
	<4b87723a74ddeb8a322878d1eab1d519d4d065ae.1336697506.git.tom.zanussi@intel.com>
In-Reply-To: <4b87723a74ddeb8a322878d1eab1d519d4d065ae.1336697506.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 02/10] meta/common-pc: use usb features
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
X-List-Received-Date: Fri, 11 May 2012 16:14:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/10/2012 05:59 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Use the available ehci and uhci usb features and remove the associated
> config settings from the top-level common-pc feature.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

For what this does:

Acked-by: Darren Hart <dvhart@linux.intel.com>

Further thoughts:

I wonder why common-pc does not include OHCI HCDs?

>  CONFIG_USB_STORAGE=y

This should really be pulled out as well and added to the standard and
preempt-rt bsp-ktype.scc files.


>  CONFIG_USB_HID=y
>  CONFIG_USB_HIDDEV=y
> diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
> index bab45e6..2338ea6 100644
> --- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
> +++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
> @@ -2,6 +2,8 @@ kconf hardware common-pc.cfg
>  kconf hardware common-pc-gfx.cfg
>  
>  include cfg/boot-live.scc

This should be moved to the standard and preempt-rt bsp-ktype.scc files
as well.

> +include features/usb/ehci-hcd.scc
> +include features/usb/uhci-hcd.scc
>  include features/intel-e1xxxx/intel-e100.scc
>  include features/intel-e1xxxx/intel-e1xxxx.scc
>  include features/latencytop/latencytop.scc

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

