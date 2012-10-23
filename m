Return-Path: <darren.hart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60FCAE00292
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 13:47:21 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 23 Oct 2012 13:47:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,637,1344236400"; d="scan'208";a="159534883"
Received: from unknown (HELO envy.home) ([10.255.14.9])
	by AZSMGA002.ch.intel.com with ESMTP; 23 Oct 2012 13:47:20 -0700
Message-ID: <50870219.7050907@intel.com>
Date: Tue, 23 Oct 2012 13:46:17 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121009 Thunderbird/16.0
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <cover.1351023743.git.nitin.a.kamble@intel.com>
	<35ee85e0775c3e40fc091eda9ec48526640ec975.1351023743.git.nitin.a.kamble@intel.com>
In-Reply-To: <35ee85e0775c3e40fc091eda9ec48526640ec975.1351023743.git.nitin.a.kamble@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/6] chiefriver README: add WebTitle & Compliance information
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
X-List-Received-Date: Tue, 23 Oct 2012 20:47:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 10/23/2012 01:24 PM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> The WebTitle will be used to publish the BSP on the Yocto Project Website.
> And adding the Yocto Project Compliance information for the 1.3 release.
> Also specifying all the layers used from meta-intel repository.
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  meta-chiefriver/README |   10 +++++++++-
>  1 files changed, 9 insertions(+), 1 deletions(-)
> 
> diff --git a/meta-chiefriver/README b/meta-chiefriver/README
> index 7c47b02..7af1288 100644
> --- a/meta-chiefriver/README
> +++ b/meta-chiefriver/README
> @@ -6,6 +6,14 @@ The 'Chief River' platform consists of the Intel Ivy Bridge processor,
>  plus the Panther Point PCH.  This BSP assumes that the Ivy Bridge
>  integrated graphics are being used.
>  
> +WebTitle: Intel 3nd Generations Core Platforms: Core i3, i5, i7 (Ivy Bridge)

s/3nd/3rd/

Otherwise looks fine.

> +
> +
> +Compliance:
> +============
> +This BSP is compliant with Yocto Project as per requirements listed here:
> +http://www.yoctoproject.org/yocto-project-compatible-registration
> +
>  
>  Dependencies
>  ============
> @@ -20,7 +28,7 @@ This layer depends on:
>    branch: master
>  
>    URI: git://git.yoctoproject.org/meta-intel
> -  layers: intel
> +  layers: meta-intel, meta-chiefriver
>    branch: master
>  
>  
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

