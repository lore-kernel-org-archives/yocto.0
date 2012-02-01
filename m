Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90F77E004D2
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 11:54:59 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Feb 2012 11:54:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="119262552"
Received: from unknown (HELO [10.255.14.106]) ([10.255.14.106])
	by fmsmga002.fm.intel.com with ESMTP; 01 Feb 2012 11:54:58 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <8b67c8fb5aadfcb82de8035972efed50c67c0382.1328121321.git.dvhart@linux.intel.com>
References: <cover.1328121321.git.dvhart@linux.intel.com>
	<8b67c8fb5aadfcb82de8035972efed50c67c0382.1328121321.git.dvhart@linux.intel.com>
Date: Wed, 01 Feb 2012 13:54:51 -0600
Message-ID: <1328126091.2304.126.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/2] meta: sys940x BSP meta data
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
X-List-Received-Date: Wed, 01 Feb 2012 19:54:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-02-01 at 10:45 -0800, Darren Hart wrote:
> The Inforce SYS940x-ECX Developer-Ready Reference Platform features:
> o Intel Atom E6xx (0.6-1.6 GHz)
> o Up to 1GB on-board DDR2
> o Intel Platform Controller Hub EG20T
> o VGA,LVDS
> o HD Audio
> o SD Card
> o Dual SATA
> o Mini-PCIe
> 
> http://www.inforcecomputing.com/SYS940X_ECX.html
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>

Looks good.  As Bruce pointed out, emgd-1.10 was recently merged (post
1.2_M2), so the 'git merge yocto/emgd' should be 'git merge
yocto/emgd-1.10' for master (i.e. if you're building off of 1.2_M2 for
example, this is what you'd want.).

Acked-by: Tom Zanussi <tzanussi@intel.com>

> ---
>  .../bsp/sys940x/sys940x-preempt-rt.scc             |    7 +++
>  .../kernel-cache/bsp/sys940x/sys940x-standard.scc  |    6 ++
>  meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg      |   49 ++++++++++++++++++++
>  meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc      |   17 +++++++
>  4 files changed, 79 insertions(+), 0 deletions(-)
>  create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc
>  create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
>  create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
>  create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc
> 
> diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc
> new file mode 100644
> index 0000000..3b8f0aa
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc
> @@ -0,0 +1,7 @@
> +define KMACHINE sys940x
> +define KTYPE preempt-rt
> +define KARCH i386
> +
> +# no new branch required, re-use the ktypes/preempt-rt branch
> +include ktypes/preempt-rt
> +include sys940x.scc
> diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
> new file mode 100644
> index 0000000..1f0edec
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
> @@ -0,0 +1,6 @@
> +define KMACHINE sys940x
> +define KTYPE standard
> +define KARCH i386
> +
> +include ktypes/standard
> +include sys940x.scc
> diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
> new file mode 100644
> index 0000000..3d45fe8
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
> @@ -0,0 +1,49 @@
> +CONFIG_X86_32=y
> +CONFIG_MATOM=y
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
> +CONFIG_USB_ARCH_HAS_EHCI=y
> +CONFIG_R8169=y
> +CONFIG_PATA_SCH=y
> +CONFIG_MMC_SDHCI_PCI=y
> +CONFIG_USB_EHCI_HCD=y
> +CONFIG_PCIEPORTBUS=y
> +CONFIG_NET=y
> +CONFIG_USB_UHCI_HCD=y
> +CONFIG_USB_OHCI_HCD=y
> +CONFIG_BLK_DEV_SD=y
> +CONFIG_CHR_DEV_SG=y
> +CONFIG_SOUND=y
> +CONFIG_SND=y
> +CONFIG_SND_HDA_INTEL=y
> +CONFIG_SATA_AHCI=y
> +CONFIG_AGP=y
> +CONFIG_PM=y
> +CONFIG_ACPI=y
> +CONFIG_BACKLIGHT_LCD_SUPPORT=y
> +CONFIG_BACKLIGHT_CLASS_DEVICE=y
> +CONFIG_INPUT=y
> +
> +# Make sure these are on, otherwise the bootup won't be fun
> +CONFIG_EXT3_FS=y
> +CONFIG_UNIX=y
> +CONFIG_INET=y
> +CONFIG_MODULES=y
> +CONFIG_SHMEM=y
> +CONFIG_TMPFS=y
> +CONFIG_PACKET=y
> +
> +CONFIG_RD_GZIP=y
> +
> +# Needed for booting (and using) CD images
> +CONFIG_BLK_DEV_SR=y
> diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc
> new file mode 100644
> index 0000000..1eaebf2
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc
> @@ -0,0 +1,17 @@
> +kconf hardware sys940x.cfg
> +
> +git merge yocto/emgd
> +
> +include features/eg20t/eg20t.scc
> +include features/drm-emgd/drm-emgd.scc
> +include features/dmaengine/dmaengine.scc
> +include features/serial/8250.scc
> +include features/framebuffer/vesafb.scc
> +include cfg/usb-mass-storage.scc
> +include cfg/boot-live.scc
> +include features/power/intel.scc
> +
> +include features/logbuf/size-normal.scc
> +
> +include features/latencytop/latencytop.scc
> +include features/profiling/profiling.scc



