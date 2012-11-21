Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10F62E011CF
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 07:15:39 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Nov 2012 07:15:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,293,1352102400"; d="scan'208";a="220675373"
Received: from unknown (HELO envy.home) ([10.255.12.178])
	by azsmga001.ch.intel.com with ESMTP; 21 Nov 2012 07:15:39 -0800
Message-ID: <50ACF01A.1080702@linux.intel.com>
Date: Wed, 21 Nov 2012 07:15:38 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121029 Thunderbird/16.0.2
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <1353509029-15486-1-git-send-email-koen@dominion.thruhere.net>
In-Reply-To: <1353509029-15486-1-git-send-email-koen@dominion.thruhere.net>
X-Enigmail-Version: 1.4.6
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel][fri2][PATCH] meta-fri2: update README to match current emgd driver version
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
X-List-Received-Date: Wed, 21 Nov 2012 15:15:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 11/21/2012 06:43 AM, Koen Kooi wrote:

Nice catch Koen, thank you.

> Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
> ---
>  meta-fri2/README |    8 ++++----
>  1 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/meta-fri2/README b/meta-fri2/README
> index af33c0b..b90613d 100644
> --- a/meta-fri2/README
> +++ b/meta-fri2/README
> @@ -93,7 +93,7 @@ bblayers.conf, e.g.:
>  The meta-fri2 layer contains support for two different machine
>  configurations. These configurations are identical except for the fact
>  that the one prefixed with 'fri2' makes use of the Intel-proprietary
> -EMGD 1.10 graphics driver, while the one prefixed with 'fri2-noemgd'
> +EMGD 1.14 graphics driver, while the one prefixed with 'fri2-noemgd'
>  does not.
>  
>  If you want to enable the layer that supports EMGD graphics add the
> @@ -103,10 +103,10 @@ following to the local.conf file:
>  
>  The 'fri2' machine includes the emgd-driver-bin package, which has a
>  proprietary license that must be whitelisted by adding the string
> -"license_emgd-driver-bin_1.10" to the LICENSE_FLAGS_WHITELIST variable
> +"license_emgd-driver-bin_1.14" to the LICENSE_FLAGS_WHITELIST variable
>  in your local.conf.  For example:
>  
> -  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.10"
> +  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.14"
>  
>  If you want to enable the layer that does not support EMGD graphics
>  add the following to the local.conf file:
> @@ -128,7 +128,7 @@ added to the the LICENSE_FLAGS_WHITELIST variable in your local.conf.
>  
>  For example:
>  
> -  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.10 commercial"
> +  LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin_1.14 commercial"

I have taken to using:

LICENSE_FLAGS_WHITELIST = "license_emgd-driver-bin commercial"

Which avoids the constant updating based on version. Any objection to
using this instead of the version specific flag?

>  
>  The reason this is needed is to prevent the image from including
>  anything that might violate the license terms of the packages used to
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

