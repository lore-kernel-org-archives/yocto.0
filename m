Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D2D6E00292
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 14:16:18 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Oct 2012 14:15:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,637,1344236400"; d="scan'208";a="231318754"
Received: from unknown (HELO [10.255.14.179]) ([10.255.14.179])
	by orsmga002.jf.intel.com with ESMTP; 23 Oct 2012 14:16:17 -0700
Message-ID: <1351026976.12186.70.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Tue, 23 Oct 2012 16:16:16 -0500
In-Reply-To: <eafcdbdb3843e08adc7385d0f1cec2b316d1b691.1351023743.git.nitin.a.kamble@intel.com>
References: <cover.1351023743.git.nitin.a.kamble@intel.com>
	<eafcdbdb3843e08adc7385d0f1cec2b316d1b691.1351023743.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, darren.hart@intel.com
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
X-List-Received-Date: Tue, 23 Oct 2012 21:16:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-10-23 at 13:24 -0700, nitin.a.kamble@intel.com wrote:
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
>  
>  It also supports the E6xx embedded on-chip graphics via the Intel
>  Embedded Media and Graphics Driver (EMGD) 1.14 Driver.
>  
> 
> +WebTitle: Intel Atom E6xx processor with Intel EG20T Controller Hub development kit (crownbay)
> +

I'm not sure this kind of thing should be in the README since we can
have multiple downloadable BSPs per layer e.g. crownbay vs
crownbay-noemgd.  I suppose in keeping with the build system you could
have separate WebTitle_crownbay and WebTitle_crownbay-noemgd lines. ;-) 
(and it would be nice if you could get rid of the CamelCaps too)

Why not put this info in the machine.conf, where we already have fields
meant to be machine parseable e.g.

#@TYPE: Machine
#@NAME: crownbay

#@WEBTITLE: ...

Or maybe just use the exisiting #@DESCRIPTION for that...

> +
> +Compliance:
> +============

For consistency with the rest of the README, please remove the colon and
clean up the underlining.

Thanks,

Tom

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



