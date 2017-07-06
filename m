Return-Path: <todor.minchev@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F06B0E00BD5; Thu,  6 Jul 2017 13:08:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE21CE00BC1
	for <yocto@yoctoproject.org>; Thu,  6 Jul 2017 13:08:21 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Jul 2017 13:08:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,319,1496127600"; d="scan'208";a="108091540"
Received: from unknown (HELO speedy) ([10.54.74.100])
	by orsmga002.jf.intel.com with ESMTP; 06 Jul 2017 13:08:20 -0700
Message-ID: <1499371700.7546.27.camel@linux.intel.com>
From: Todor Minchev <todor.minchev@linux.intel.com>
To: swee.aun.khor@intel.com
Date: Thu, 06 Jul 2017 13:08:20 -0700
In-Reply-To: <1499283599-11297-1-git-send-email-swee.aun.khor@intel.com>
References: <1499283599-11297-1-git-send-email-swee.aun.khor@intel.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, saul.wold@intel.com
Subject: Re: [RMC][PATCH v2] RMC: Support x32 build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Jul 2017 20:08:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2017-07-05 at 12:39 -0700, swee.aun.khor@intel.com wrote:
> From: sweeaun <swee.aun.khor@intel.com>
> 
> RMC efi is needed to compiled as 64 bits even DEFAULTTUNE is x32.
> 
> Signed-off-by: sweeaun <swee.aun.khor@intel.com>
> ---
>  Makefile.efi | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Makefile.efi b/Makefile.efi
> index 4f69dfe..95e0f8c 100644
> --- a/Makefile.efi
> +++ b/Makefile.efi
> @@ -16,6 +16,9 @@ RMC_INSTALL_LIB_PATH := $(RMC_INSTALL_PREFIX)/lib/
>  
>  RMC_CFLAGS := -DRMC_EFI -Wall -I$(TOPDIR)/inc -fpic -nostdinc -nostdlib  -fno-builtin -std=gnu90
>  
> +#RMC efi is needed to be compiled as 64 bit even DEFAULTTUNE is x32 
> +CC := $(patsubst -mx32, -m64, $(CC))
> +

Since this is not an RMC-specific problem, I believe that we shouldn't
patch the compiler flags in the RMC Makefile. This patch will provide
the desired outcome only when RMC is built with meta-intel. A better
alternative will be to split rmc.bb into rmc.bb (userspace app) and
rmc-efi.bb (efi library) and modify the compiler flags for each recipe.
I will send a patch that does this.

Todor

>  all: librmcefi
>  
>  $(RMC_LIB_OBJ): %.efi.o: %.c



