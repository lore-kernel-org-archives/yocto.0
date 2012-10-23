Return-Path: <darren.hart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3975E00348
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 13:48:49 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 23 Oct 2012 13:48:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,637,1344236400"; d="scan'208";a="159535500"
Received: from unknown (HELO envy.home) ([10.255.14.9])
	by AZSMGA002.ch.intel.com with ESMTP; 23 Oct 2012 13:48:47 -0700
Message-ID: <50870271.5060104@intel.com>
Date: Tue, 23 Oct 2012 13:47:45 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121009 Thunderbird/16.0
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <cover.1351023743.git.nitin.a.kamble@intel.com>
	<eafcdbdb3843e08adc7385d0f1cec2b316d1b691.1351023743.git.nitin.a.kamble@intel.com>
In-Reply-To: <eafcdbdb3843e08adc7385d0f1cec2b316d1b691.1351023743.git.nitin.a.kamble@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/6] crownbay README: add WebTitle & Compliance information
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
X-List-Received-Date: Tue, 23 Oct 2012 20:48:50 -0000
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
>  meta-crownbay/README |   13 +++++++++++--
>  1 files changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-crownbay/README b/meta-crownbay/README
> index 4bc9f31..3996a94 100644
> --- a/meta-crownbay/README
> +++ b/meta-crownbay/README
> @@ -2,13 +2,22 @@ This README file contains information on building the meta-crownbay
>  BSP layer, and booting the images contained in the /binary directory.
>  Please see the corresponding sections below for details.
>  
> -The Crown Bay platform consists of the Intel Atom Z6xx processor,
> +The Crown Bay platform consists of the Intel Atom E6xx processor,
>  plus the Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff).

How can we distinguish this from Queens Bay, which I would describe in
exactly the same terms?

--
Darren

>  
>  It also supports the E6xx embedded on-chip graphics via the Intel
>  Embedded Media and Graphics Driver (EMGD) 1.14 Driver.
>  
>  
> +WebTitle: Intel Atom E6xx processor with Intel EG20T Controller Hub development kit (crownbay)
> +
> +
> +Compliance:
> +============
> +This BSP is compliant with Yocto Project as per requirements listed here:
> +http://www.yoctoproject.org/yocto-project-compatible-registration
> +
> +
>  Dependencies
>  ============
>  
> @@ -22,7 +31,7 @@ This layer depends on:
>    branch: master
>  
>    URI: git://git.yoctoproject.org/meta-intel
> -  layers: intel
> +  layers: meta-intel, meta-crownbay
>    branch: master
>  
>  
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

