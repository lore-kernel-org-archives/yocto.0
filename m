Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFF97E00746
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 13:13:00 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Apr 2012 13:13:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="134537925"
Received: from kaveh-mobl1.amr.corp.intel.com (HELO envy.home) ([10.7.199.59])
	by orsmga002.jf.intel.com with ESMTP; 19 Apr 2012 13:13:00 -0700
Message-ID: <4F9071AC.7030306@linux.intel.com>
Date: Thu, 19 Apr 2012 13:12:28 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1334633481.git.tom.zanussi@intel.com>
	<790d5f5037df247216fffbffa6780d9c2197d57e.1334633481.git.tom.zanussi@intel.com>
In-Reply-To: <790d5f5037df247216fffbffa6780d9c2197d57e.1334633481.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] ia32-base: don't use obsolete kernel26
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
X-List-Received-Date: Thu, 19 Apr 2012 20:13:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 04/16/2012 08:33 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> kernel26 is now a no-op so don't use it.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  conf/machine/include/ia32-base.inc |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
> index 9b2ef5a..874e258 100644
> --- a/conf/machine/include/ia32-base.inc
> +++ b/conf/machine/include/ia32-base.inc
> @@ -5,7 +5,7 @@
>  #
>  # common settings for Intel-based machines
>  #
> -MACHINE_FEATURES += "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
> +MACHINE_FEATURES += "screen keyboard pci usbhost ext2 ext3 x86 \
>                       acpi serial usbgadget alsa"
>  
>  MACHINE_EXTRA_RRECOMMENDS += "kernel-modules eee-acpi-scripts"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

