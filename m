Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C6DDE013BB
	for <yocto@yoctoproject.org>; Wed,  6 Jun 2012 12:42:22 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Jun 2012 12:42:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="108667545"
Received: from unknown (HELO envy.home) ([10.255.12.60])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Jun 2012 12:42:21 -0700
Message-ID: <4FCFB25A.9000800@linux.intel.com>
Date: Wed, 06 Jun 2012 12:41:14 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1339010751.git.tom.zanussi@intel.com>
	<a97d2219fa67e2326952c9c065eff5947576765d.1339010751.git.tom.zanussi@intel.com>
In-Reply-To: <a97d2219fa67e2326952c9c065eff5947576765d.1339010751.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.2
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-fri2: add video acceleration
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
X-List-Received-Date: Wed, 06 Jun 2012 19:42:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/06/2012 12:29 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> This adds the video acceleration components needed to enable EMGD
> video acceleration.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

Looks good, I assume a build has completed? Has any testing been done?
If there is an image available I can boot it. If not, I can build and
test, probably tomorrow. I'm mostly out today.

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  meta-fri2/conf/machine/fri2.conf |    6 ++++--
>  1 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
> index 547fe6a..f90deb3 100644
> --- a/meta-fri2/conf/machine/fri2.conf
> +++ b/meta-fri2/conf/machine/fri2.conf
> @@ -7,8 +7,10 @@
>  require conf/machine/include/tune-atom.inc
>  require conf/machine/include/ia32-base.inc
>  
> -MACHINE_FEATURES += "wifi 3g pcbios efi"
> -MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5"
> +VA_FEATURES ?= "gst-va-intel va-intel"
> +
> +MACHINE_FEATURES += "wifi 3g pcbios efi gst-va-mixvideo"
> +MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2a-5 ${VA_FEATURES}"
>  
>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>  PREFERRED_VERSION_linux-yocto = "3.2%"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

