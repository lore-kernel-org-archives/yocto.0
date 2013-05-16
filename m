Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53404E0051D;
	Thu, 16 May 2013 12:15:35 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 May 2013 12:15:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,685,1363158000"; d="scan'208";a="338479610"
Received: from envy2.jf.intel.com (HELO envy2.home) ([10.7.199.80])
	by orsmga002.jf.intel.com with ESMTP; 16 May 2013 12:15:34 -0700
Message-ID: <51953053.8060204@linux.intel.com>
Date: Thu, 16 May 2013 12:15:31 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130110 Thunderbird/17.0.2
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <1368680239-26344-1-git-send-email-raj.khem@gmail.com>
In-Reply-To: <1368680239-26344-1-git-send-email-raj.khem@gmail.com>
X-Enigmail-Version: 1.5.1
Cc: meta-intel@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [meta-intel][PATCH] tiny-init: Drop the bbappend
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
X-List-Received-Date: Thu, 16 May 2013 19:15:35 -0000
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: 7bit



On 05/15/2013 09:57 PM, Khem Raj wrote:
> init file which it was providing is ditto as meta-yocto
> so bbappend is redundant plus it gets rid of following warning
> for non poky distros.
> 
> WARNING: No recipes available for:
>   /builds1/meta-intel/meta-fri2/recipes-core/tiny-init/tiny-init.bbappend
> 
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> CC: Darren Hart <dvhart@linux.intel.com>

Acked-by: Darren Hart <dvhart@linux.intel.com>

Thanks Khem!

> ---
>  .../recipes-core/tiny-init/tiny-init.bbappend      |    6 -----
>  meta-fri2/recipes-core/tiny-init/tiny-init/init    |   26 --------------------
>  2 files changed, 32 deletions(-)
>  delete mode 100644 meta-fri2/recipes-core/tiny-init/tiny-init.bbappend
>  delete mode 100644 meta-fri2/recipes-core/tiny-init/tiny-init/init
> 
> diff --git a/meta-fri2/recipes-core/tiny-init/tiny-init.bbappend b/meta-fri2/recipes-core/tiny-init/tiny-init.bbappend
> deleted file mode 100644
> index 89416dc..0000000
> --- a/meta-fri2/recipes-core/tiny-init/tiny-init.bbappend
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -# Update the init script for the tiny image to manually mount devtmpfs and
> -# ensure the ttyPCH1 device is available for the console.
> -
> -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> - 
> -PRINC := "${@int(PRINC) + 1}"
> diff --git a/meta-fri2/recipes-core/tiny-init/tiny-init/init b/meta-fri2/recipes-core/tiny-init/tiny-init/init
> deleted file mode 100644
> index 4b78f01..0000000
> --- a/meta-fri2/recipes-core/tiny-init/tiny-init/init
> +++ /dev/null
> @@ -1,26 +0,0 @@
> -#!/bin/sh
> -
> -# Mount the Linux kernel virtual filesystems
> -mount none -t proc /proc
> -mount none -t sysfs /sys
> -
> -# Ensure devtmpfs is mounted, it must be done manually with initramfs
> -mount none -t devtmpfs /dev
> -
> -# Setup PTY infrastructure
> -mkdir /dev/pts
> -mount none -t devpts /dev/pts
> -
> -ifup lo
> -
> -# Allow for distro or local customizations
> -if [ -f /etc/rc.local ] ; then
> -	source /etc/rc.local
> -fi
> -
> -# Become session leader and try to find a real tty (e.g. ttyS0)
> -while true; do
> -	setsid cttyhack sh
> -	echo "Console sh exited with $?, respawning..."
> -	sleep 1
> -done
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

