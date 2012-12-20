Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 473BDE0144E
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2012 17:00:41 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Dec 2012 17:00:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,320,1355126400"; d="scan'208";a="236696067"
Received: from unknown (HELO envy.home) ([10.255.14.13])
	by orsmga001.jf.intel.com with ESMTP; 19 Dec 2012 17:00:40 -0800
Message-ID: <50D25E76.1000302@linux.intel.com>
Date: Wed, 19 Dec 2012 16:40:22 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <f339ca3f94ec7bb6a749c5973acb1f85bc1ace6c.1355766001.git.tom.zanussi@intel.com>
	<0c46e74f56afa3b2c2922209e8f746ca210c9152.1355766001.git.tom.zanussi@intel.com>
In-Reply-To: <0c46e74f56afa3b2c2922209e8f746ca210c9152.1355766001.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.6
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 4/5] yocto-layer: add 'layer' template data
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
X-List-Received-Date: Thu, 20 Dec 2012 01:00:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 12/17/2012 09:51 AM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Add a 'layer' target containing all the data that will be used to
> generate a generic yocto layer.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---

Great stuff Tom, only one nit below:

> new file mode 100644
> index 0000000..90ce90e
> --- /dev/null
> +++ "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/helloworld.c"	
> @@ -0,0 +1,6 @@
> +#include <stdio.h>
> +
> +int main(int argc, char **argv)
> +{
> +    printf("Hello World!\n");

If you specify a return type of int, you should be returning one:

	return 0;

:-)

> +}


Looks good otherwise.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

