Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9C78E0045D
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 17:14:59 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Oct 2012 17:14:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,643,1344236400"; d="scan'208";a="232115658"
Received: from unknown (HELO [10.255.14.152]) ([10.255.14.152])
	by orsmga002.jf.intel.com with ESMTP; 24 Oct 2012 17:14:58 -0700
Message-ID: <1351124098.27553.55.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Wed, 24 Oct 2012 19:14:58 -0500
In-Reply-To: <f1a7d9cde11e622392859625fed95edde1a28db5.1351110208.git.nitin.a.kamble@intel.com>
References: <cover.1351110208.git.nitin.a.kamble@intel.com>
	<f1a7d9cde11e622392859625fed95edde1a28db5.1351110208.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, darren.hart@intel.com
Subject: Re: [PATCH v2 2/6] chiefriver: add WEBTITLE & Compliance information
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
X-List-Received-Date: Thu, 25 Oct 2012 00:15:00 -0000
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
>  meta-chiefriver/README                       |    8 +++++++-
>  meta-chiefriver/conf/machine/chiefriver.conf |    2 ++
>  2 files changed, 9 insertions(+), 1 deletions(-)
> 
> diff --git a/meta-chiefriver/README b/meta-chiefriver/README
> index 7c47b02..249a389 100644
> --- a/meta-chiefriver/README
> +++ b/meta-chiefriver/README
> @@ -7,6 +7,12 @@ plus the Panther Point PCH.  This BSP assumes that the Ivy Bridge
>  integrated graphics are being used.
>  
> 
> +Compliance
> +==========
> +This BSP is compliant with Yocto Project as per requirements listed here:
> +http://www.yoctoproject.org/yocto-project-compatible-registration
> +

To be consistent with the rest of the README, there should be a blank
line between the ===== and the 'This BSP... ' text.

Also, for readability, it would be nice to have the URL also separated
by a blank line from the preceding text, and indented a couple spaces
like similar lines in the README.

Also, I think the compliance text reads better as:

This BSP is compliant with the Yocto Project as per the requirements
listed here:

> +
>  Dependencies
>  ============
>  
> @@ -20,7 +26,7 @@ This layer depends on:
>    branch: master
>  
>    URI: git://git.yoctoproject.org/meta-intel
> -  layers: intel
> +  layers: meta-intel, meta-chiefriver

If you look at the meta-intel/conf/layer.conf, you see the layer
actually is 'intel'.

Also, this is the README for the chiefriver layer, so it can't depend on
itself i.e. meta-chiefriver or 'chiefriver' shouldn't be listed in
layers

>    branch: master
>  
> 
> diff --git a/meta-chiefriver/conf/machine/chiefriver.conf b/meta-chiefriver/conf/machine/chiefriver.conf
> index b8b8754..5005ce0 100644
> --- a/meta-chiefriver/conf/machine/chiefriver.conf
> +++ b/meta-chiefriver/conf/machine/chiefriver.conf
> @@ -1,6 +1,8 @@
>  #@TYPE: Machine
>  #@NAME: chiefriver
>  
> +#@WEBTITLE: Intel 3rd Generations Core Platforms: Core i3, i5, i7 (Ivy Bridge)
> +

Since this is text that will appear on the website, we need to be a
little picky about grammar: it should read '3rd Generation' rather than
'3rd Generations'

These comments apply to the other README files as well, so I won't
repeat them there, other than to fix any text that might appear on the
website for those as well...

Tom

>  #@DESCRIPTION: Machine configuration for Chief River systems
>  # i.e. Ivy Bridge + Panther Point
>  



