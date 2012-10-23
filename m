Return-Path: <darren.hart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09F70E00348
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 13:50:58 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 23 Oct 2012 13:50:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,637,1344236400"; d="scan'208";a="159535985"
Received: from unknown (HELO envy.home) ([10.255.14.9])
	by AZSMGA002.ch.intel.com with ESMTP; 23 Oct 2012 13:50:26 -0700
Message-ID: <508702D3.2030700@intel.com>
Date: Tue, 23 Oct 2012 13:49:23 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121009 Thunderbird/16.0
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <cover.1351023743.git.nitin.a.kamble@intel.com>
	<4f441c599bd74b28f63f170a49f550236fe27c3c.1351023743.git.nitin.a.kamble@intel.com>
In-Reply-To: <4f441c599bd74b28f63f170a49f550236fe27c3c.1351023743.git.nitin.a.kamble@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 6/6] sugarbay README: add WebTitle & Compliance information
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
X-List-Received-Date: Tue, 23 Oct 2012 20:50:59 -0000
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
>  meta-sugarbay/README |    9 ++++++++-
>  1 files changed, 8 insertions(+), 1 deletions(-)
> 
> diff --git a/meta-sugarbay/README b/meta-sugarbay/README
> index c8a99d7..36da170 100644
> --- a/meta-sugarbay/README
> +++ b/meta-sugarbay/README
> @@ -6,6 +6,13 @@ The 'Sugar Bay' platform consists of the Intel Sandy Bridge processor,
>  plus the Cougar Point PCH (Q67 Express or B65 Express chipsets).  This
>  BSP assumes that the Sandy Bridge integrated graphics are being used.
>  
> +WebTitle: Intel 2nd Generations Core Platforms: Core i3, i5, i7 (Sandy Bridge)

Some places you used merged lowercase terms "crownbay" and other places
the capitalized expanded terms "Sandy Bridge". I don't know which is more
correct, but we should be consistent in our usage.

--
Darren

> +
> +Compliance:
> +============
> +This BSP is compliant with Yocto Project as per requirements listed here:
> +http://www.yoctoproject.org/yocto-project-compatible-registration
> +
>  
>  Dependencies
>  ============
> @@ -20,7 +27,7 @@ This layer depends on:
>    branch: master
>  
>    URI: git://git.yoctoproject.org/meta-intel
> -  layers: intel
> +  layers: meta-intel, meta-sugarbay
>    branch: master
>  
>  
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

