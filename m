Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6E8CE01351
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 15:59:47 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 01 Aug 2012 15:59:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="129407236"
Received: from unknown (HELO envy.home) ([10.255.13.51])
	by AZSMGA002.ch.intel.com with ESMTP; 01 Aug 2012 15:59:46 -0700
Message-ID: <5019B476.8080709@linux.intel.com>
Date: Wed, 01 Aug 2012 15:57:58 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: kishore.k.bodke@intel.com
References: <cover.1343847920.git.kishore.k.bodke@intel.com>
	<21e6c2bcd419609619b45491918f9bfc5fa6d4a7.1343847920.git.kishore.k.bodke@intel.com>
In-Reply-To: <21e6c2bcd419609619b45491918f9bfc5fa6d4a7.1343847920.git.kishore.k.bodke@intel.com>
X-Enigmail-Version: 1.4.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] [KERNEL] meta: Crystal Forest Machine Created.
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
X-List-Received-Date: Wed, 01 Aug 2012 22:59:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Kishore,

On 08/01/2012 12:15 PM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> Initial checkin for the new Crystal Forest Machine Branch.
> 
> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
> ---
>  .../bsp/crystalforest/crystalforest-preempt-rt.scc |   15 +++++
>  .../bsp/crystalforest/crystalforest-standard.scc   |   10 ++++
>  .../bsp/crystalforest/crystalforest.cfg            |   63 ++++++++++++++++++++
>  .../bsp/crystalforest/crystalforest.scc            |   14 +++++
>  4 files changed, 102 insertions(+)
>  create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc
>  create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
>  create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
>  create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
> 
> diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc
> new file mode 100644
> index 0000000..6c250af
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc
> @@ -0,0 +1,15 @@
> +define KMACHINE crystalforest
> +define KTYPE preempt-rt
> +define KARCH x86_64
> +
> +# no new branch required, re-use the ktypes/preempt-rt branch
> +include ktypes/preempt-rt
> +include bsp/common-pc-64/common-pc-64.scc
> +
> +include crystalforest.scc
> +
> +# default policy for preempt-rt kernels
> +include cfg/usb-mass-storage.scc
> +include cfg/boot-live.scc
> +include features/latencytop/latencytop.scc
> +include features/profiling/profiling.scc
> diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
> new file mode 100644
> index 0000000..9d24c76
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
> @@ -0,0 +1,10 @@
> +define KMACHINE crystalforest
> +define KTYPE standard
> +define KARCH x86_64
> +
> +include bsp/common-pc-64/common-pc-64-standard
> +branch crystalforest
> +
> +include crystalforest.scc
> +
> +# default policy for standard kernels
> diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
> new file mode 100644
> index 0000000..341cc20
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
> @@ -0,0 +1,63 @@
> +CONFIG_PRINTK=y
> +
> +# Basic hardware support for the box - network, USB, PCI, sound
> +CONFIG_NETDEVICES=y
> +CONFIG_ATA=y
> +CONFIG_ATA_GENERIC=y
> +CONFIG_ATA_SFF=y
> +CONFIG_PCI=y
> +CONFIG_MMC=y
> +CONFIG_MMC_SDHCI=y
> +CONFIG_USB_SUPPORT=y
> +CONFIG_USB=y

USB support should be pulled in using the various usb scc files Tom
created relatively recently.

> +CONFIG_USB_ARCH_HAS_EHCI=y
> +CONFIG_R8169=y
> +CONFIG_PATA_SCH=y
> +CONFIG_MMC_SDHCI_PCI=y
> +CONFIG_USB_EHCI_HCD=y
> +CONFIG_PCIEPORTBUS=y
> +CONFIG_NET=y
> +CONFIG_USB_UHCI_HCD=y
> +CONFIG_BLK_DEV_SD=y
> +CONFIG_CHR_DEV_SG=y
> +CONFIG_SOUND=y
> +CONFIG_SND=y
> +CONFIG_SND_HDA_INTEL=y
> +
> +# Make sure these are on, otherwise the bootup won't be fun
> +CONFIG_UNIX=y
> +CONFIG_INET=y
> +CONFIG_MODULES=y
> +CONFIG_SHMEM=y
> +CONFIG_TMPFS=y
> +CONFIG_PACKET=y
> +
> +# These are needed for the Poulsbo kernel modules
> +CONFIG_I2C=y
> +CONFIG_AGP=y
> +CONFIG_VFAT_FS=y

VFAT_FS is required for Poulsbo kernel modules?

This would make more sense as a poulsbo.scc and .cfg file.

> +CONFIG_PM=y
> +CONFIG_FB=y
> +CONFIG_BACKLIGHT_LCD_SUPPORT=y
> +CONFIG_BACKLIGHT_CLASS_DEVICE=y
> +CONFIG_INPUT=y
> +CONFIG_VIDEO_V4L2=y
> +CONFIG_VIDEO_IVTV=y
> +CONFIG_MEDIA_SUPPORT=y
> +CONFIG_VIDEO_CAPTURE_DRIVERS=y
> +CONFIG_VIDEO_DEV=y
> +CONFIG_VIDEO_V4L2_COMMON=y
> +CONFIG_I2C_ALGOBIT=y
> +CONFIG_FB_CFB_COPYAREA=y
> +CONFIG_FB_CFB_IMAGEBLIT=y
> +CONFIG_FB_CFB_FILLRECT=y
> +CONFIG_VIDEO_FB_IVTV=y
> +
> +# Needed for booting (and using) USB memory sticks
> +CONFIG_USB_STORAGE=y
> +CONFIG_BLK_DEV_RAM=y
> +CONFIG_BLK_DEV_LOOP=y
> +CONFIG_BLK_DEV_INITRD=y
> +CONFIG_RD_GZIP=y
> +CONFIG_NLS_CODEPAGE_437=y
> +CONFIG_NLS_ISO8859_1=y

All this is taken care of with the:

> +include cfg/usb-mass-storage.scc
> +include cfg/boot-live.scc

lines which are missing from your non-preempt-rt bsp file.

> diff --git a/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
> new file mode 100644
> index 0000000..ff45107
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
> @@ -0,0 +1,14 @@
> +kconf hardware crystalforest.cfg
> +
> +include features/i915/i915.scc

Sorry, are Poulsbo and i915 the same thing?

> +include cfg/8250.scc
> +include cfg/x86_64.scc
> +include features/uio/uio.scc
> +include features/hugetlb/hugetlb.scc
> +include features/ixgbe/ixgbe.scc
> +include features/igb/igb.scc
> +include features/power/intel.scc
> +

Insert usb-mass-storage and boot-live here...

> +include features/latencytop/latencytop.scc
> +include features/profiling/profiling.scc
> +
> 

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

