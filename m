Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 648A7E002A8
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 13:12:21 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Jul 2012 13:12:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="198595713"
Received: from envy.jf.intel.com (HELO envy.home) ([10.24.1.97])
	by fmsmga002.fm.intel.com with ESMTP; 26 Jul 2012 13:12:20 -0700
Message-ID: <5011A43F.50904@linux.intel.com>
Date: Thu, 26 Jul 2012 13:10:39 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
	<118e9c4c78b61e5debac285efa420486c145993b.1343037893.git.nitin.a.kamble@intel.com>
In-Reply-To: <118e9c4c78b61e5debac285efa420486c145993b.1343037893.git.nitin.a.kamble@intel.com>
X-Enigmail-Version: 1.4.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/6] crownbay: customize the xorg.conf for the flat panel on the corwnbay kit
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
X-List-Received-Date: Thu, 26 Jul 2012 20:12:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/23/2012 03:06 AM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> The kit has Auo 800x600 LCD screen. Configuring Xorg for it.

I presume the crownbay has additional display options? how does this
impact those?

--
Darren

> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  .../xserver-xf86-config/crownbay/xorg.conf         |   14 ++++++++++++++
>  1 files changed, 14 insertions(+), 0 deletions(-)
> 
> diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
> index 662f60f..d71173c 100644
> --- a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
> +++ b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
> @@ -4,12 +4,26 @@
>  ## DriverVer=
>  ##
>  
> +# AUO G084SN05 V8 lcd flat panel
> +Section "Monitor"
> +    Identifier     "Monitor0"
> +    VendorName     "Auo"
> +#    HorizSync       33.6 - 48.3
> +#    VertRefresh     60.0 - 60.0
> +    Option         "DPMS"
> +EndSection
> +
>  Section "Screen"
>      Identifier    "Screen0"
>      Device        "IntelEMGD-0"
>      Monitor       "Monitor0"
> +
> +    # for the AUO flat screen
>      SubSection    "Display"
> +        Depth      24
> +        Modes      "800x600"
>      EndSubSection
> +
>  EndSection
>  
>  # Primary (First/only) display
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

