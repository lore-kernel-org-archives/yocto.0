Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 795714C800A9
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 13:31:04 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Jul 2011 11:31:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,209,1309762800"; d="scan'208";a="30823417"
Received: from unknown (HELO [10.255.14.29]) ([10.255.14.29])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jul 2011 11:30:55 -0700
Message-ID: <4E20875D.9090508@linux.intel.com>
Date: Fri, 15 Jul 2011 11:30:53 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1310689271.git.tom.zanussi@intel.com>
	<f69321f9d19943ec1815681e6568524387cfe5c0.1310689271.git.tom.zanussi@intel.com>
In-Reply-To: <f69321f9d19943ec1815681e6568524387cfe5c0.1310689271.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/6] meta-intel: add a couple common .inc files
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
X-List-Received-Date: Fri, 15 Jul 2011 18:31:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 07/14/2011 05:55 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> The meta-intel BSPs currently have a number of machine settings common
> to all - factor these out into a couple common include files.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  common/common-bsp-mach.inc |   13 +++++++++++++
>  common/common-bsp-x.inc    |    4 ++++
>  2 files changed, 17 insertions(+), 0 deletions(-)
>  create mode 100644 common/common-bsp-mach.inc
>  create mode 100644 common/common-bsp-x.inc
> 
> diff --git a/common/common-bsp-mach.inc b/common/common-bsp-mach.inc
> new file mode 100644
> index 0000000..b020a84
> --- /dev/null
> +++ b/common/common-bsp-mach.inc
> @@ -0,0 +1,13 @@
> +MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
> +                    acpi serial usbgadget"
> +
> +KERNEL_IMAGETYPE = "bzImage"
> +
> +SERIAL_CONSOLE = "115200 ttyS0"
> +
> +MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
> +

If these are going in common .inc files we need them to be easily
overridden, shouldn't all the above be using the ?= operator?

--
Darren

> +IMAGE_FSTYPES ?= "ext3 cpio.gz"
> +
> +GLIBC_ADDONS = "nptl"
> +GLIBC_EXTRA_OECONF = "--with-tls"
> diff --git a/common/common-bsp-x.inc b/common/common-bsp-x.inc
> new file mode 100644
> index 0000000..c012efd
> --- /dev/null
> +++ b/common/common-bsp-x.inc
> @@ -0,0 +1,4 @@
> +PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
> +PREFERRED_PROVIDER_virtual/libgl ?= "mesa-dri"
> +PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
> +PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

