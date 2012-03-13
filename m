Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F852E004D2
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 12:31:57 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 13 Mar 2012 12:31:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="77086531"
Received: from unknown (HELO envy.home) ([10.255.15.152])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Mar 2012 12:31:56 -0700
Message-ID: <4F5FA07F.2080102@linux.intel.com>
Date: Tue, 13 Mar 2012 12:31:11 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1331646257.git.tom.zanussi@intel.com>
	<e7f7340ffd113656aaa77825207dfdeda607de01.1331646257.git.tom.zanussi@intel.com>
In-Reply-To: <e7f7340ffd113656aaa77825207dfdeda607de01.1331646257.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.3.5
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-sugarbay: switch to linux-yocto-3.2 kernel
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
X-List-Received-Date: Tue, 13 Mar 2012 19:31:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Same comments on branch and SRCREV here as for crownbay.

On 03/13/2012 06:47 AM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Switch sugarbay to the 3.2 kernel and update kernel SRCREVs.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  meta-sugarbay/conf/machine/sugarbay.conf           |    2 ++
>  .../linux/linux-yocto-rt_3.2.bbappend              |    8 ++++++++
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    9 +++++++++
>  3 files changed, 19 insertions(+), 0 deletions(-)
>  create mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
>  create mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
> 
> diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
> index 25b3aad..776089e 100644
> --- a/meta-sugarbay/conf/machine/sugarbay.conf
> +++ b/meta-sugarbay/conf/machine/sugarbay.conf
> @@ -4,6 +4,8 @@
>  #@DESCRIPTION: Machine configuration for Sugar Bay systems
>  # i.e. Sandy Bridge + Cougar Point
>  
> +PREFERRED_VERSION_linux-yocto ?= "3.2%"
> +
>  require conf/machine/include/tune-x86_64.inc
>  require conf/machine/include/ia32-base.inc
>  
> diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
> new file mode 100644
> index 0000000..531a3ad
> --- /dev/null
> +++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
> @@ -0,0 +1,8 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +COMPATIBLE_MACHINE_sugarbay = "sugarbay"
> +KMACHINE_sugarbay  = "sugarbay"
> +
> +# Update the following to use a different BSP branch or meta SRCREV
> +#KBRANCH_sugarbay  = "standard/preempt-rt/base"
> +#SRCREV_machine_pn-linux-yocto-rt_sugarbay ?= XXXX
> +#SRCREV_meta_pn-linux-yocto-rt_sugarbay ?= XXXX
> diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
> new file mode 100644
> index 0000000..4755fa7
> --- /dev/null
> +++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_3.2.bbappend
> @@ -0,0 +1,9 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +COMPATIBLE_MACHINE_sugarbay = "sugarbay"
> +
> +KMACHINE_sugarbay  = "sugarbay"
> +KBRANCH_sugarbay  = "standard/default/common-pc-64/sugarbay"
> +
> +SRCREV_machine_pn-linux-yocto_sugarbay ?= "6b0da62eb4beaf950ef235cb548490afe6cfd055"
> +SRCREV_meta_pn-linux-yocto_sugarbay ?= "64840f55ee144e9814278eaa8e3f33dd60da892c"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

