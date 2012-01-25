Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F412AE00592
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 16:37:54 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Jan 2012 16:37:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="110440784"
Received: from unknown (HELO envy.home) ([10.255.14.109])
	by fmsmga001.fm.intel.com with ESMTP; 24 Jan 2012 16:37:54 -0800
Message-ID: <4F1F4EC8.7080304@linux.intel.com>
Date: Tue, 24 Jan 2012 16:37:28 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <7e91f8311f723350e7d3cefcadd7b6c13b76bd5e.1327449325.git.tom.zanussi@intel.com>
	<31e3e91395db00597808e237aa9e9ecea3a0100b.1327449325.git.tom.zanussi@intel.com>
In-Reply-To: <31e3e91395db00597808e237aa9e9ecea3a0100b.1327449325.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.3.4
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/6] meta-fri2: remove PREFERRED_VERSION for emgd-driver-bin
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
X-List-Received-Date: Wed, 25 Jan 2012 00:37:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/24/2012 04:00 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> fri2 specifies a preferred version of 1.8 for emgd, but there's really
> no reason to do that at this point - it should be able to use the new
> 1.10 version.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

> ---
>  meta-fri2/conf/machine/fri2.conf |    1 -
>  1 files changed, 0 insertions(+), 1 deletions(-)
> 
> diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/fri2.conf
> index 9ae4287..c69aa40 100644
> --- a/meta-fri2/conf/machine/fri2.conf
> +++ b/meta-fri2/conf/machine/fri2.conf
> @@ -17,7 +17,6 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
>  
>  PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
>  PREFERRED_VERSION_mesa-dri ?= "7.11"
> -PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
>  
>  SYSLINUX_OPTS = "serial 0 115200"
>  SERIAL_CONSOLE = "115200 ttyS0"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

