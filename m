Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3011CE0045D
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 17:30:39 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Oct 2012 17:30:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,643,1344236400"; d="scan'208";a="208937767"
Received: from unknown (HELO [10.255.14.152]) ([10.255.14.152])
	by azsmga001.ch.intel.com with ESMTP; 24 Oct 2012 17:30:37 -0700
Message-ID: <1351125037.27553.60.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Wed, 24 Oct 2012 19:30:37 -0500
In-Reply-To: <a780117b75820f5726062221827277e041d6d70c.1351110208.git.nitin.a.kamble@intel.com>
References: <cover.1351110208.git.nitin.a.kamble@intel.com>
	<a780117b75820f5726062221827277e041d6d70c.1351110208.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, darren.hart@intel.com
Subject: Re: [PATCH v2 3/6] crownbay: add WEBTITLE & Compliance information
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
X-List-Received-Date: Thu, 25 Oct 2012 00:30:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-10-24 at 13:25 -0700, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> The WEBTITLE will be used to publish the BSP on the Yocto Project Website.
> And adding the Yocto Project Compliance information for the 1.3 release.
> Also specifying all the layers used from meta-intel repository.
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  meta-crownbay/README                            |   10 ++++++++--
>  meta-crownbay/conf/machine/crownbay-noemgd.conf |    2 ++
>  meta-crownbay/conf/machine/crownbay.conf        |    2 ++
>  3 files changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-crownbay/README b/meta-crownbay/README
> index 4bc9f31..f3ad506 100644
> --- a/meta-crownbay/README
> +++ b/meta-crownbay/README
> @@ -2,13 +2,19 @@ This README file contains information on building the meta-crownbay
>  BSP layer, and booting the images contained in the /binary directory.
>  Please see the corresponding sections below for details.
>  
> -The Crown Bay platform consists of the Intel Atom Z6xx processor,
> +The Crown Bay platform consists of the Intel Atom E6xx processor,
>  plus the Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff).
>  
>  It also supports the E6xx embedded on-chip graphics via the Intel
>  Embedded Media and Graphics Driver (EMGD) 1.14 Driver.
>  
> 
> +Compliance
> +==========
> +This BSP is compliant with Yocto Project as per requirements listed here:
> +http://www.yoctoproject.org/yocto-project-compatible-registration
> +
> +
>  Dependencies
>  ============
>  
> @@ -22,7 +28,7 @@ This layer depends on:
>    branch: master
>  
>    URI: git://git.yoctoproject.org/meta-intel
> -  layers: intel
> +  layers: meta-intel, meta-crownbay
>    branch: master
>  
> 
> diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
> index 4c869ee..c3bdcb4 100644
> --- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
> +++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
> @@ -1,6 +1,8 @@
>  #@TYPE: Machine
>  #@NAME: crownbay-noemgd
>  
> +#@WEBTITLE: Intel Atom E6xx processor with Intel EG20T Controller Hub development kit (Crown Bay) with open source VESA graphics
> +

This should probably be capitalized as in the manual title:

Intel Atom E6xx Processor with Intel EG20T Controller Hub Development
Kit (Crown Bay) with open source VESA graphics

Same for the other one...

Tom

>  #@DESCRIPTION: Machine configuration for Crown Bay systems, without Intel-proprietary graphics bits
>  # i.e. E660 + EG20T
>  
> diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
> index d56ef64..5e4147c 100644
> --- a/meta-crownbay/conf/machine/crownbay.conf
> +++ b/meta-crownbay/conf/machine/crownbay.conf
> @@ -1,6 +1,8 @@
>  #@TYPE: Machine
>  #@NAME: crownbay
>  
> +#@WEBTITLE: Intel Atom E6xx processor with Intel EG20T Controller Hub development kit (Crown Bay) with proprietary IEMGD accelerated graphics
> +
>  #@DESCRIPTION: Machine configuration for Crown Bay systems
>  # i.e. E660 + EG20T
>  



