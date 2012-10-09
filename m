Return-Path: <darren.hart@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3694E00293
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 15:42:18 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Oct 2012 15:42:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,562,1344236400"; d="scan'208";a="231934533"
Received: from unknown (HELO envy.home) ([10.255.14.86])
	by fmsmga001.fm.intel.com with ESMTP; 09 Oct 2012 15:42:18 -0700
Message-ID: <5074A81C.7050104@intel.com>
Date: Tue, 09 Oct 2012 15:41:32 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <cover.1349820369.git.nitin.a.kamble@intel.com>
	<e349d9f28dd0b1064fffd14b337770ee6574e7cd.1349820369.git.nitin.a.kamble@intel.com>
In-Reply-To: <e349d9f28dd0b1064fffd14b337770ee6574e7cd.1349820369.git.nitin.a.kamble@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/5] crownbay.conf: specify the 8.0.4 version as preferred version of mesa-dri
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
X-List-Received-Date: Tue, 09 Oct 2012 22:42:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 10/09/2012 03:10 PM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> This commit fixes the bug:
> [YOCTO #3328]

The bugzilla tag is meant as a reference, but it is not a replacement
for a proper commit message. Please provide details on what this does.

> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
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

