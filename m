Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD4ADE002AB
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 23:02:58 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Nov 2012 23:02:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,298,1352102400"; d="scan'208";a="245690585"
Received: from unknown (HELO [10.255.12.138]) ([10.255.12.138])
	by orsmga002.jf.intel.com with ESMTP; 21 Nov 2012 23:02:57 -0800
Message-ID: <1353567777.7717.156.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Date: Thu, 22 Nov 2012 01:02:57 -0600
In-Reply-To: <1353509029-15486-1-git-send-email-koen@dominion.thruhere.net>
References: <1353509029-15486-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
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
X-List-Received-Date: Thu, 22 Nov 2012 07:02:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-11-21 at 15:43 +0100, Koen Kooi wrote:
> Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>

Pulled into meta-intel/master and meta-intel/danny-next.

Thanks,

Tom

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
>  
>  The reason this is needed is to prevent the image from including
>  anything that might violate the license terms of the packages used to



