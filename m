Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FE89E0140E
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 11:14:38 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 May 2012 11:14:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="141988292"
Received: from unknown (HELO envy.home) ([10.255.13.57])
	by orsmga002.jf.intel.com with ESMTP; 09 May 2012 11:14:37 -0700
Message-ID: <4FAAB3EF.7000301@linux.intel.com>
Date: Wed, 09 May 2012 11:14:07 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <7c0829132be31ea39b475943ae66230ff9ef9563.1336510043.git.tom.zanussi@intel.com>
	<baa4fcbfd70feedeef680b214a6f4186743e3c4b.1336510044.git.tom.zanussi@intel.com>
In-Reply-To: <baa4fcbfd70feedeef680b214a6f4186743e3c4b.1336510044.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 5/9][KERNEL] meta/jasperforest: remove boot-live options
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
X-List-Received-Date: Wed, 09 May 2012 18:14:38 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/08/2012 02:37 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> The boot-live options are already included via common-pc-64 so remove
> the associated config settings from the top-level feature.

The appropriate place for these in my opinion is in BSP-standard.scc and
BSP-preempt_rt.scc. That would be the common-pc-64-standard.scc for
example in this case.

This should not be part of a machine config fragment as it is more of a
ktype policy item than it is a bsp item. I expect "standard" kernels to
be able to do live boot, but "tiny" images should not.

Note that usb-mass-storage.scc should also be added to the standard and
preempt-rt scc files per BSP. I've done the former and am currently
working through the latter with my BSPs.

--
Darren

> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  .../kernel-cache/bsp/jasperforest/jasperforest.cfg |    7 -------
>  1 files changed, 0 insertions(+), 7 deletions(-)
> 
> diff --git a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
> index 0a81a19..e2310a5 100644
> --- a/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
> +++ b/meta/cfg/kernel-cache/bsp/jasperforest/jasperforest.cfg
> @@ -34,13 +34,6 @@ CONFIG_PM=y
>  CONFIG_ACPI=y
>  CONFIG_INPUT=y
>  
> -# Needed for booting (and using) USB memory sticks
> -CONFIG_BLK_DEV_LOOP=y
> -CONFIG_NLS_CODEPAGE_437=y
> -CONFIG_NLS_ISO8859_1=y
> -
> -CONFIG_RD_GZIP=y
> -
>  # NUMA support
>  CONFIG_NUMA=y
>  CONFIG_X86_64_ACPI_NUMA=y

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

