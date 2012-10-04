Return-Path: <darren.hart@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48E8DE0049D
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 15:34:46 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Oct 2012 15:34:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,537,1344236400"; d="scan'208";a="230718862"
Received: from unknown (HELO envy.home) ([10.255.13.182])
	by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2012 15:34:45 -0700
Message-ID: <506E0ED7.1050500@intel.com>
Date: Thu, 04 Oct 2012 15:33:59 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <cover.1349389359.git.nitin.a.kamble@intel.com>
	<94b05e28840e2846998ff8c5ea161dfe69a5b88d.1349389359.git.nitin.a.kamble@intel.com>
In-Reply-To: <94b05e28840e2846998ff8c5ea161dfe69a5b88d.1349389359.git.nitin.a.kamble@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCHv2 1/1] crownbay.conf: add kernel parameters for EMGD video acceleration
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
X-List-Received-Date: Thu, 04 Oct 2012 22:34:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 10/04/2012 03:23 PM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> This is recommended in the EMGD User Guide.
> 
> My understanding is the emgd kernel driver need to allocate memory
> dynamically, and the "vmalloc=256MB" parameter ensures enough will
> be available for the driver.

OK, this explains the change to vmalloc.

Why the change of vga=current and the drop of video=vesafb ?

--
Darren

> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  meta-crownbay/conf/machine/crownbay.conf |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
> index 40dbd1d..f02615e 100644
> --- a/meta-crownbay/conf/machine/crownbay.conf
> +++ b/meta-crownbay/conf/machine/crownbay.conf
> @@ -21,7 +21,7 @@ PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
>  PREFERRED_VERSION_mesa-dri ?= "7.11"
>  PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
>  
> -APPEND += "video=vesafb vga=0x318"
> +APPEND += "vga=current vmalloc=256MB"
>  
>  VA_FEATURES = "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
>  	    "commercial", "gst-va-intel va-intel", "va-intel", d)}"
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

