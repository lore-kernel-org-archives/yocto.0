Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52DC6E002AA
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 13:14:56 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jul 2012 13:14:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="198596867"
Received: from envy.jf.intel.com (HELO envy.home) ([10.24.1.97])
	by fmsmga002.fm.intel.com with ESMTP; 26 Jul 2012 13:14:55 -0700
Message-ID: <5011A4DA.2090002@linux.intel.com>
Date: Thu, 26 Jul 2012 13:13:14 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
	<e68290eaee882eb1a333c42486adb6f9b999787d.1343037893.git.nitin.a.kamble@intel.com>
In-Reply-To: <e68290eaee882eb1a333c42486adb6f9b999787d.1343037893.git.nitin.a.kamble@intel.com>
X-Enigmail-Version: 1.4.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/6] crownbay: update emgd driver version in the README
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
X-List-Received-Date: Thu, 26 Jul 2012 20:14:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/23/2012 03:06 AM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>

This should really be done in the patch that made the upgrade as they
are the same functional change. Otherwise the driver version and the
README are out of sync (if only momentarily). But there isn't a
compelling reason to do these separately that I can see.

--
Darren

> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  meta-crownbay/README |    8 ++++----
>  1 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/meta-crownbay/README b/meta-crownbay/README
> index b56c79a..2521432 100644
> --- a/meta-crownbay/README
> +++ b/meta-crownbay/README
> @@ -6,7 +6,7 @@ The Crown Bay platform consists of the Intel Atom Z6xx processor,
>  plus the Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff).
>  
>  It also supports the E6xx embedded on-chip graphics via the Intel
> -Embedded Media and Graphics Driver (EMGD) 1.10 Driver.
> +Embedded Media and Graphics Driver (EMGD) 1.14 Driver.
>  
>  
>  Dependencies
> @@ -63,7 +63,7 @@ common metadata shared between BSPs) e.g.:
>  The meta-crownbay layer contains support for two different machine
>  configurations. These configurations are identical except for the fact
>  that the one prefixed with 'crownbay' makes use of the
> -Intel-proprietary EMGD 1.10 graphics driver, while the one prefixed
> +Intel-proprietary EMGD 1.14 graphics driver, while the one prefixed
>  with 'crownbay-noemgd' does not.
>  
>  If you want to enable the layer that supports EMGD graphics add the
> @@ -73,10 +73,10 @@ following to the local.conf file:
>  
>  The 'crownbay' machine includes the emgd-driver-bin package, which has
>  a proprietary license that must be whitelisted by adding the string
> -"license_emgd-driver-bin_1.10" to the LICENSE_FLAGS_WHITELIST variable
> +"license_emgd-driver-bin_1.14" to the LICENSE_FLAGS_WHITELIST variable
>  in your local.conf.  For example:
>  
> -  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.10"
> +  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.14"
>  
>  If you want to enable the layer that does not support EMGD graphics
>  add the following to the local.conf file:
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

