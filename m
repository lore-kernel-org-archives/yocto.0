Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 967624C8043A
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2011 12:03:59 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 11 Jul 2011 10:03:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,516,1304319600"; d="scan'208";a="25813981"
Received: from unknown (HELO [10.255.13.208]) ([10.255.13.208])
	by azsmga001.ch.intel.com with ESMTP; 11 Jul 2011 10:03:58 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4E1B2A95.2060106@linux.intel.com>
References: <8b824f53292e21ccb9de938b2c115adf0a9b1aa0.1310314387.git.tom.zanussi@intel.com>
	<1f0589301cd74bc7a0300ba9161248ca967d02a0.1310314387.git.tom.zanussi@intel.com>
	<4E1B2A95.2060106@linux.intel.com>
Date: Mon, 11 Jul 2011 12:03:56 -0500
Message-ID: <1310403836.2313.40.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 3/3][KERNEL] meta/fri2: create initial BSP infrastructure
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
X-List-Received-Date: Mon, 11 Jul 2011 17:03:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-07-11 at 09:53 -0700, Darren Hart wrote:
> 
> On 07/10/2011 09:26 AM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > Inital BSP infrastructure for Intel Fish River Island II.
> > 
> > Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> > ---
> >  meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc |    7 ++
> >  meta/cfg/kernel-cache/bsp/fri2/fri2.cfg          |   69 ++++++++++++++++++++++
> >  meta/cfg/kernel-cache/bsp/fri2/fri2.scc          |   12 ++++
> >  3 files changed, 88 insertions(+), 0 deletions(-)
> >  create mode 100644 meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
> >  create mode 100644 meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
> >  create mode 100644 meta/cfg/kernel-cache/bsp/fri2/fri2.scc
> > 
> > diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
> > new file mode 100644
> > index 0000000..b28b650
> > --- /dev/null
> > +++ b/meta/cfg/kernel-cache/bsp/fri2/fri2-standard.scc
> > @@ -0,0 +1,7 @@
> > +define KMACHINE fri2
> > +define KTYPE standard
> > +define KARCH i386
> > +
> > +scc_leaf ktypes/standard fri2
> > +
> > +include fri2.scc
> > diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
> > new file mode 100644
> > index 0000000..5daa65b
> > --- /dev/null
> > +++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.cfg
> > @@ -0,0 +1,69 @@
> > +CONFIG_X86_32=y
> > +CONFIG_MATOM=y
> > +CONFIG_PRINTK=y
> 
> surely CONFIG_PRINTK is part of standard?
> 
> > +
> > +# Basic hardware support for the box - network, USB, PCI, sound
> > +CONFIG_NETDEVICES=y
> > +CONFIG_ATA=y
> > +CONFIG_ATA_GENERIC=y
> > +CONFIG_ATA_SFF=y
> > +CONFIG_PCI=y
> > +CONFIG_MMC=y
> > +CONFIG_MMC_SDHCI=y
> > +CONFIG_USB_SUPPORT=y
> > +CONFIG_USB=y
> > +CONFIG_USB_ARCH_HAS_EHCI=y
> > +CONFIG_R8169=y
> > +CONFIG_PATA_SCH=y
> > +CONFIG_MMC_SDHCI_PCI=y
> > +CONFIG_USB_EHCI_HCD=y
> > +CONFIG_PCIEPORTBUS=y
> > +CONFIG_NET=y
> > +CONFIG_USB_UHCI_HCD=y
> > +CONFIG_USB_OHCI_HCD=y
> > +CONFIG_BLK_DEV_SD=y
> > +CONFIG_CHR_DEV_SG=y
> > +CONFIG_SOUND=y
> > +CONFIG_SND=y
> > +CONFIG_SND_HDA_INTEL=y
> > +CONFIG_SATA_AHCI=y
> > +
> > +# Make sure these are on, otherwise the bootup won't be fun
> > +CONFIG_EXT3_FS=y
> > +CONFIG_UNIX=y
> > +CONFIG_INET=y
> > +CONFIG_MODULES=y
> > +CONFIG_SHMEM=y
> > +CONFIG_TMPFS=y
> > +CONFIG_PACKET=y
> 
> I would expect all of these to be part of standard - especially INET and
> EXT3. These should be part of our standard kernel policy.
> 

Yes, I agree.  All these things should be part of our ongoing option
cleanup task...

Tom

> > +
> > +# These are needed for the Poulsbo kernel modules
> > +CONFIG_I2C=y
> > +CONFIG_AGP=y
> > +CONFIG_VFAT_FS=y
> 
> Poulsbo graphics require VFAT?
> 
> > +CONFIG_PM=y
> > +CONFIG_ACPI=y
> > +CONFIG_FB=y
> > +CONFIG_BACKLIGHT_LCD_SUPPORT=y
> > +CONFIG_BACKLIGHT_CLASS_DEVICE=y
> > +CONFIG_INPUT=y
> > +CONFIG_VIDEO_V4L2=y
> > +CONFIG_VIDEO_IVTV=y
> > +CONFIG_MEDIA_SUPPORT=y
> > +CONFIG_VIDEO_CAPTURE_DRIVERS=y
> > +CONFIG_VIDEO_DEV=y
> > +CONFIG_VIDEO_V4L2_COMMON=y
> > +CONFIG_I2C_ALGOBIT=y
> > +CONFIG_FB_CFB_COPYAREA=y
> > +CONFIG_FB_CFB_IMAGEBLIT=y
> > +CONFIG_FB_CFB_FILLRECT=y
> > +CONFIG_VIDEO_FB_IVTV=y
> > +
> > +# Needed for booting (and using) USB memory sticks
> > +CONFIG_USB_STORAGE=y
> > +CONFIG_BLK_DEV_RAM=y
> > +CONFIG_BLK_DEV_LOOP=y
> > +CONFIG_BLK_DEV_INITRD=y
> > +CONFIG_RD_GZIP=y
> > +CONFIG_NLS_CODEPAGE_437=y
> > +CONFIG_NLS_ISO8859_1=y
> 
> This should probably be a feature. Perhaps the VFAT was intended to go
> here? Regardless, VFAT exists as a feature/config in meta already.
> 
> > diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
> > new file mode 100644
> > index 0000000..eca5cab
> > --- /dev/null
> > +++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
> > @@ -0,0 +1,12 @@
> > +kconf hardware fri2.cfg
> > +
> > +include features/eg20t/eg20t.scc
> > +include features/intel-e1xxxx/intel-e1xxxx.scc
> > +include features/dmaengine/dmaengine.scc
> > +include features/serial/8250.scc
> > +include features/ericsson-3g/f5521gw.scc
> > +
> > +include features/logbuf/size-normal.scc
> > +
> > +include features/latencytop/latencytop.scc
> > +include features/profiling/profiling.scc
> 



