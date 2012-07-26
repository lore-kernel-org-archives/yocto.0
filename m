Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3F2AE002AA
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 13:21:07 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Jul 2012 13:21:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="171898757"
Received: from envy.jf.intel.com (HELO envy.home) ([10.24.1.97])
	by orsmga001.jf.intel.com with ESMTP; 26 Jul 2012 13:21:07 -0700
Message-ID: <5011A64E.6050709@linux.intel.com>
Date: Thu, 26 Jul 2012 13:19:26 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
	<37c77e07c936752cc6c9c305d8d095aca7efb1c8.1343037893.git.nitin.a.kamble@intel.com>
In-Reply-To: <37c77e07c936752cc6c9c305d8d095aca7efb1c8.1343037893.git.nitin.a.kamble@intel.com>
X-Enigmail-Version: 1.4.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 4/6] crownbay: add recipe extension for linux-yocto-3.4
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
X-List-Received-Date: Thu, 26 Jul 2012 20:21:08 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/23/2012 03:06 AM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> crownbay: linux-yocto v3.4 : add emgd branch info in git src_uri
> 
> At build time, the emgd-1.14 branch is merged with the crownbay bsp
> kernel source branch to get emgd kernel driver's support.
>   Refer it in the src_uri, & it's commit-id to be used, so that

    Reference                and its

> any changes in the emgd branch will not affect the build unknowingly.

This also adds the 3.4 kernel recipe for crownbay, which didn't exist
before. The commit subject should reflect this. This is the primary
function of this patch, the emgd change should be noted in the log, but
it is secondary.

--
Darren

> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   20 ++++++++++++++++++++
>  1 files changed, 20 insertions(+), 0 deletions(-)
>  create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
> 
> diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
> new file mode 100644
> index 0000000..4f9dd70
> --- /dev/null
> +++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
> @@ -0,0 +1,20 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +COMPATIBLE_MACHINE_crownbay = "crownbay"
> +KMACHINE_crownbay  = "crownbay"
> +KBRANCH_crownbay  = "standard/default/crownbay"
> +
> +COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
> +KMACHINE_crownbay-noemgd  = "crownbay"
> +KBRANCH_crownbay-noemgd  = "standard/crownbay"
> +
> +SRCREV_machine_pn-linux-yocto_crownbay ?= "19f7e43b54aef08d58135ed2a897d77b624b320a"
> +SRCREV_meta_pn-linux-yocto_crownbay ?= "d7a96809a585e06933d8c08adb9b9f66b21efb4c"
> +SRCREV_emgd_pn-linux-yocto_crownbay ?= "86643bdd8cbad616a161ab91f51108cf0da827bc"
> +
> +SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "19f7e43b54aef08d58135ed2a897d77b624b320a"
> +SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "d7a96809a585e06933d8c08adb9b9f66b21efb4c"
> +
> +KSRC_linux_yocto_3_4 ?= "git.yoctoproject.org/linux-yocto-3.4.git"
> +SRC_URI_crownbay = "git://git.yoctoproject.org/linux-yocto-3.4.git;protocol=git;nocheckout=1;branch=${KBRANCH},meta,emgd-1.14;name=machine,meta,emgd"
> +SRC_URI_crownbay-noemgd = "git://git.yoctoproject.org/linux-yocto-3.4.git;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

