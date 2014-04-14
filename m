Return-Path: <denis@denix.org>
Received: from vms173017pub.verizon.net (vms173017pub.verizon.net
	[206.46.173.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5167EE00BB8
	for <yocto@yoctoproject.org>; Mon, 14 Apr 2014 09:08:40 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173017.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0N4100CE73IF2EX0@vms173017.mailsrvcs.net> for
	yocto@yoctoproject.org; Mon, 14 Apr 2014 11:08:39 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 1752B20182; Mon,
	14 Apr 2014 12:08:38 -0400 (EDT)
Date: Mon, 14 Apr 2014 12:08:38 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Gary Thomas <gary@mlbassoc.com>
Message-id: <20140414160838.GC3370@denix.org>
References: <534A54F0.5020203@mlbassoc.com> <20140414023328.GY3370@denix.org>
	<534BB7B3.3060104@mlbassoc.com> <20140414154653.GZ3370@denix.org>
	<534C0415.20701@mlbassoc.com> <20140414160038.GB3370@denix.org>
	<534C0719.5050908@mlbassoc.com>
MIME-version: 1.0
In-reply-to: <534C0719.5050908@mlbassoc.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: BBB doesn't boot
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
X-List-Received-Date: Mon, 14 Apr 2014 16:08:40 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Mon, Apr 14, 2014 at 10:04:41AM -0600, Gary Thomas wrote:
> On 2014-04-14 10:00, Denys Dmytriyenko wrote:
> > On Mon, Apr 14, 2014 at 09:51:49AM -0600, Gary Thomas wrote:
> >> On 2014-04-14 09:46, Denys Dmytriyenko wrote:
> >>> On Mon, Apr 14, 2014 at 04:25:55AM -0600, Gary Thomas wrote:
> >>>> On 2014-04-13 20:33, Denys Dmytriyenko wrote:
> >>>>> On Sun, Apr 13, 2014 at 03:12:16AM -0600, Gary Thomas wrote:
> >>>>>> I just tried building (core-image-sato) for my BeagleBoneBlack
> >>>>>> using the latest Poky/Yocto master:
> >>>>>>
> >>>>>> Build Configuration:
> >>>>>> BB_VERSION        = "1.23.0"
> >>>>>> BUILD_SYS         = "i686-linux"
> >>>>>> NATIVELSBSTRING   = "Fedora-13"
> >>>>>> TARGET_SYS        = "arm-poky-linux-gnueabi"
> >>>>>> MACHINE           = "beaglebone"
> >>>>>> DISTRO            = "poky"
> >>>>>> DISTRO_VERSION    = "1.6+snapshot-20140411"
> >>>>>> TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa8"
> >>>>>> TARGET_FPU        = "vfp-neon"
> >>>>>> meta
> >>>>>> meta-yocto
> >>>>>> meta-yocto-bsp    = "master:863cc7483f5ee43189537940de8ee5c0964d24cc"
> >>>>>>
> >>>>>> This built the kernel using SRCREV 928d7b2dda
> >>>>>>
> >>>>>> I followed the bring-up instructions from README.hadware and the
> >>>>>> boot failed to even start the kernel.  Here's what I see:
> >>>>>>
> >>>>>> =============================== boot log =========================================
> >>>>>> U-Boot 2013.07 (Apr 11 2014 - 15:03:04)
> >>>>>>
> >>>>>> I2C:   ready
> >>>>>> DRAM:  512 MiB
> >>>>>> WARNING: Caches not enabled
> >>>>>> NAND:  0 MiB
> >>>>>> MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
> >>>>>> *** Warning - readenv() failed, using default environment
> >>>>>>
> >>>>>> musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx, SoftConn)
> >>>>>> musb-hdrc: MHDRC RTL version 2.0
> >>>>>> musb-hdrc: setup fifo_mode 4
> >>>>>> musb-hdrc: 28/31 max ep, 16384/16384 memory
> >>>>>> USB Peripheral mode controller at 47401000 using PIO, IRQ 0
> >>>>>> musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx, SoftConn)
> >>>>>> musb-hdrc: MHDRC RTL version 2.0
> >>>>>> musb-hdrc: setup fifo_mode 4
> >>>>>> musb-hdrc: 28/31 max ep, 16384/16384 memory
> >>>>>> USB Host mode controller at 47401800 using PIO, IRQ 0
> >>>>>> Net:   <ethaddr> not set. Validating first E-fuse MAC
> >>>>>> Phy not found
> >>>>>> PHY reset timed out
> >>>>>> cpsw, usb_ether
> >>>>>> Hit any key to stop autoboot:  0
> >>>>>> mmc0 is current device
> >>>>>> SD/MMC found on device 0
> >>>>>> reading uEnv.txt
> >>>>>> ** Unable to read file uEnv.txt **
> >>>>>> 4981688 bytes read in 613 ms (7.7 MiB/s)
> >>>>>> 29192 bytes read in 46 ms (619.1 KiB/s)
> >>>>>> Booting from mmc ...
> >>>>>> ## Booting kernel from Legacy Image at 80200000 ...
> >>>>>>    Image Name:   Linux-3.14.0-yocto-standard
> >>>>>>    Image Type:   ARM Linux Kernel Image (uncompressed)
> >>>>>>    Data Size:    4981624 Bytes = 4.8 MiB
> >>>>>>    Load Address: 80008000
> >>>>>>    Entry Point:  80008000
> >>>>>>    Verifying Checksum ... OK
> >>>>>> ## Flattened Device Tree blob at 80f80000
> >>>>>>    Booting using the fdt blob at 0x80f80000
> >>>>>>    Loading Kernel Image ... OK
> >>>>>>    Using Device Tree in place at 80f80000, end 80f8a207
> >>>>>>
> >>>>>> Starting kernel ...
> >>>>>> ==================================================================================
> >>>>>>
> >>>>>> Any ideas what I've done wrong?
> >>>>>
> >>>>> Hmm, everything looks sane. What revision is your BBB? And did you press 
> >>>>> USER/BOOT button or erased eMMC partition per instructions?
> >>>>>
> >>>>
> >>>> Revision A5A, with an LCD cape
> >>>
> >>> Hmm, I'm wondering if LCD cape conflicts here - there's no cape support in 
> >>> this BSP. Can you try w/o it?
> >>
> >> Sure I can try it but I don't think that's it.  I got the kernel that StefanX
> >> built and booted and tried it on my board and it came up.  No clue why the
> >> kernels are different - ostensibly we both built the same image from the same
> >> meta data, but they are slightly different (only in size - I compared the
> >> System.map files from both builds and they contain exactly the same bits,
> >> just a few changes in memory layout which I can't explain).
> > 
> > Yeah, good point. Doesn't look like your cape causes the issue...
> > The only other difference is in the host. Do you have access to another Linux 
> > box you can try? FWIW, I'm using 64-bit Gentoo with gcc-4.7.3. Yours is 32-bit 
> > Fedora 13, right?
> 
> I'll try Fedora 17 and Ubuntu 12.04 (x86_64) and see what happens.
> 
> Note: I use the Fedora 13 system *all* the time for my other Poky/Yocto builds.

Yeah, it usually shouldn't matter, as OE is very good at isolating host 
differences. But at this point we need to eliminate every variable...


> >> I'm trying another build from scratch using a different build host to see
> >> if that makes a difference.
> > 
> > Do you have any other layers or customizations on top? (the metadata above 
> > suggests you build just pure Poky though)
> 
> I was trying this on a pure Poky/Yocto build.
> 
> -- 
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> 

