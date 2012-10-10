Return-Path: <darren.hart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 617BBE0049F
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 19:47:01 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 09 Oct 2012 19:47:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,563,1344236400"; d="scan'208";a="154429271"
Received: from unknown (HELO envy.home) ([10.255.13.222])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Oct 2012 19:46:48 -0700
Message-ID: <5074E15F.20503@intel.com>
Date: Tue, 09 Oct 2012 19:45:51 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <cover.1349831664.git.nitin.a.kamble@intel.com>
	<5e3291d077a714c7fc69d8bcc308974d75baffd4.1349831664.git.nitin.a.kamble@intel.com>
In-Reply-To: <5e3291d077a714c7fc69d8bcc308974d75baffd4.1349831664.git.nitin.a.kamble@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCHv2 2/5] crownbay.conf: specify the 8.0.4 version as preferred version of mesa-dri
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
X-List-Received-Date: Wed, 10 Oct 2012 02:47:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 10/09/2012 06:16 PM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> Avoid following warnings while building crownbay BSPs:
> 
>  NOTE: preferred version 7.11 of mesa-dri not available (for item virtual/libgl)
>  NOTE: versions of mesa-dri available: 2:8.0.4 2:8.0.4+git1+c1f4867c89adb1a6b19d66ec8ad146115909f0a7
> 
> This commit addresses one of the issue reported on the bug:
> [YOCTO #3238]
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  meta-crownbay/conf/machine/crownbay.conf |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
> index c18fa1d..72431de 100644
> --- a/meta-crownbay/conf/machine/crownbay.conf
> +++ b/meta-crownbay/conf/machine/crownbay.conf
> @@ -18,7 +18,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
>             "
>  
>  PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
> -PREFERRED_VERSION_mesa-dri ?= "7.11"
> +PREFERRED_VERSION_mesa-dri ?= "8.0.4"
>  PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
>  
>  APPEND += "video=vesafb vga=0x318 vmalloc=256MB"
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

