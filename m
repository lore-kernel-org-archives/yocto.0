Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 539C6E0030B
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 17:01:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Apr 2012 17:01:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="134593461"
Received: from unknown (HELO envy.home) ([10.7.199.60])
	by orsmga001.jf.intel.com with ESMTP; 27 Apr 2012 17:01:47 -0700
Message-ID: <4F9B334D.9060508@linux.intel.com>
Date: Fri, 27 Apr 2012 17:01:17 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <e181fc2fd029f7853acab1ba7b66bc9f5c87126d.1334784305.git.tom.zanussi@intel.com>
	<266faf71ffdb15e1f6777b520fbe4acaeb26457d.1334784305.git.tom.zanussi@intel.com>
In-Reply-To: <266faf71ffdb15e1f6777b520fbe4acaeb26457d.1334784305.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/2] yocto-bsp: clarify help with reference to meta-intel
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
X-List-Received-Date: Sat, 28 Apr 2012 00:01:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/27/2012 12:00 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> The current yocto-bsp help assumes knowledge that the meta-intel layer
> needs to be cloned before it's put into the BBLAYERS.  Avoid the
> guesswork and state the details explicitly in the help.
> 
> Also, the shorter 'usage' string doesn't mention it at all; it would
> help to at minimum mention it and refer the user to the detailed help.
> 
> Fixes [YOCTO #2330].
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

Some minor nits below:

> ---
>  scripts/lib/bsp/help.py |   40 ++++++++++++++++++++++++++++++++++++++++
>  1 files changed, 40 insertions(+), 0 deletions(-)
> 
> diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
> index f78b09b..f849833 100644
> --- a/scripts/lib/bsp/help.py
> +++ b/scripts/lib/bsp/help.py
> @@ -115,6 +115,18 @@ yocto_bsp_create_usage = """
>   'properties' that will be used to fill out the BSP-specific portions
>   of the BSP.  The possible values for the 'karch' paramter can be
>   listed via 'yocto-bsp list karch'.
> +
> + NOTE: Once created, you should add your new layer to your
> + bblayers.conf file in order for it to be subsquently seen and
> + modified by the yocto-kernel tool.
> +
> + See 'yocto bsp help create' for more detailed instructions.
> +
> + NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the
> + presence of the of the meta-intel layer, so you should also have a
> + meta-intel layer present and added to your bblayers.conf as well.

Consider:

+ NOTE: For x86- and x86_64-based BSPs, the generated BSP assumes the
+ presence of the of the meta-intel layer. Ensure the meta-intel layer
+ is present and added to bblayers.conf.


> +
> + See 'yocto bsp help create' for more detailed instructions.
>  """
>  
>  yocto_bsp_create_help = """
> @@ -159,9 +171,37 @@ DESCRIPTION
>      bblayers.conf file in order for it to be subsquently seen and
>      modified by the yocto-kernel tool.
>  
> +    For example, assuming your poky repo is at /path/to/poky, your
> +    your new BSP layer is at /path/to/poky/meta-mybsp, and your build


The word "your" appears twice in a row.


> +    directory is /path/to/build:
> +
> +    $ gedit /path/to/build/conf/bblayers.conf
> +
> +    BBLAYERS ?= " \\
> +      /path/to/poky/meta \\
> +      /path/to/poky/meta-yocto \\
> +      /path/to/poky/meta-mybsp \\
> +      "
> +
>      NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the
>      presence of the of the meta-intel layer, so you should also have a
>      meta-intel layer present and added to your bblayers.conf as well.

OK, this is just context, but same comment as above.

> +
> +    For example, assuming your poky repo is at /path/to/poky, your
> +    your new BSP layer is at /path/to/poky/meta-mybsp, and your build

Same double "your" here as well.

> +    directory is /path/to/build:
> +
> +    $ cd /path/to/poky
> +    $ git clone git://git.yoctoproject.org/meta-intel.git
> +
> +    $ gedit /path/to/build/conf/bblayers.conf
> +
> +    BBLAYERS ?= " \\
> +      /path/to/poky/meta \\
> +      /path/to/poky/meta-yocto \\
> +      /path/to/poky/meta-intel \\
> +      /path/to/poky/meta-mybsp \\
> +      "
>  """
>  
>  yocto_bsp_list_usage = """

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

