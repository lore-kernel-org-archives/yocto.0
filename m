Return-Path: <denis@denix.org>
Received: from vms173025pub.verizon.net (vms173025pub.verizon.net
	[206.46.173.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00247E00A2F
	for <yocto@yoctoproject.org>; Mon, 14 Apr 2014 18:38:47 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173025.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0N4100JQYTWMW120@vms173025.mailsrvcs.net> for
	yocto@yoctoproject.org; Mon, 14 Apr 2014 20:38:47 -0500 (CDT)
Received: by gandalf.denix.org (Postfix, from userid 1000)	id 48B07200AC; Mon,
	14 Apr 2014 21:38:46 -0400 (EDT)
Date: Mon, 14 Apr 2014 21:38:46 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-id: <20140415013846.GG3370@denix.org>
References: <20140414023328.GY3370@denix.org> <534BB7B3.3060104@mlbassoc.com>
	<20140414154653.GZ3370@denix.org> <534C0415.20701@mlbassoc.com>
	<20140414160038.GB3370@denix.org> <534C0719.5050908@mlbassoc.com>
	<20140414160838.GC3370@denix.org> <534C40D9.40509@mlbassoc.com>
	<20140414224409.GF3370@denix.org> <1397521203.15843.62.camel@ted>
MIME-version: 1.0
In-reply-to: <1397521203.15843.62.camel@ted>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Tue, 15 Apr 2014 01:38:49 -0000
Content-type: text/plain; charset=us-ascii
Content-disposition: inline

On Tue, Apr 15, 2014 at 01:20:03AM +0100, Richard Purdie wrote:
> On Mon, 2014-04-14 at 18:44 -0400, Denys Dmytriyenko wrote:
> > On Mon, Apr 14, 2014 at 02:11:05PM -0600, Gary Thomas wrote:
> > > Very interesting results!  These are the results from the build hosts I have:
> > >   Fedora 13 (i686) - fails
> > >   Fedora 17 (i686) - fails
> > >   Ubuntu 12.04 (x86_64) - boots
> > 
> > Interesting indeed. I have no idea what's so special about Fedora host - this 
> > is the first time I hear about issues with it. I may try experimenting with 
> > different VMs once I have more time...
> 
> I've been having a look at this. The biggest differences I can find
> between working and non working builds is the path length to the build
> directory for the kernel. This is from comparing vmlinux files from
> working and non working builds.
> 
> Works:
> /home/paul/poky/build/tmp/work/beaglebone-poky-linux-gnueabi
> 
> Doesn't Work:
> /media/data1/build1/poky/build/tmp/work/beaglebone-poky-linux-gnueabi
> 
> I also have been wondering if the version strings may be making a
> difference.
> 
> http://dan.rpsys.net/uImage-rp2 is a uImage from a broken build where I
> truncated the path length to a "working" build path length and patched
> in the same version strings:
> 
> const char linux_banner[] = 
>        "Linux version 3.14.0-yocto-standard (paul@ubuntu-build01) (gcc
> version 4.8.2 (GCC) ) #1 PREEMPT Mon Apr 14 16:00:52 BST 2014\n";
> 
> const char linux_proc_banner[] = "%s version %s (paul@ubuntu-build01)
> (gcc version 4.8.2 (GCC) ) %s\n";
> 
> to init/version.c.
> 
> I don't have hardware and would be interested to know if the kernel
> linked to above works or not. If it doesn't, it rules out these path and
> string lengths, if it does work, it points to a problem there.

Richard,

Good catch! It boots:


U-Boot SPL 2013.07 (Apr 10 2014 - 04:47:32)
musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx, SoftConn)
musb-hdrc: MHDRC RTL version 2.0 
musb-hdrc: setup fifo_mode 4
musb-hdrc: 28/31 max ep, 16384/16384 memory
USB Peripheral mode controller at 47401000 using PIO, IRQ 0
musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx, SoftConn)
musb-hdrc: MHDRC RTL version 2.0 
musb-hdrc: setup fifo_mode 4
musb-hdrc: 28/31 max ep, 16384/16384 memory
USB Host mode controller at 47401800 using PIO, IRQ 0
OMAP SD/MMC: 0
reading args
spl: error reading image args, err - -1
reading u-boot.img
reading u-boot.img


U-Boot 2013.07 (Apr 10 2014 - 04:47:32)

I2C:   ready
DRAM:  512 MiB
WARNING: Caches not enabled
NAND:  0 MiB
MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
*** Warning - readenv() failed, using default environment

musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx, SoftConn)
musb-hdrc: MHDRC RTL version 2.0 
musb-hdrc: setup fifo_mode 4
musb-hdrc: 28/31 max ep, 16384/16384 memory
USB Peripheral mode controller at 47401000 using PIO, IRQ 0
musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, HB-ISO Rx, HB-ISO Tx, SoftConn)
musb-hdrc: MHDRC RTL version 2.0
musb-hdrc: setup fifo_mode 4
musb-hdrc: 28/31 max ep, 16384/16384 memory
USB Host mode controller at 47401800 using PIO, IRQ 0
Net:   <ethaddr> not set. Validating first E-fuse MAC
cpsw, usb_ether
Hit any key to stop autoboot:  0
mmc0 is current device
SD/MMC found on device 0
reading uEnv.txt
** Unable to read file uEnv.txt **
4985376 bytes read in 853 ms (5.6 MiB/s)
29192 bytes read in 28 ms (1017.6 KiB/s)
Booting from mmc ...
## Booting kernel from Legacy Image at 80200000 ...
   Image Name:   Linux-3.14.0-yocto-standard
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    4985312 Bytes = 4.8 MiB
   Load Address: 80008000
   Entry Point:  80008000
   Verifying Checksum ... OK
## Flattened Device Tree blob at 80f80000
   Booting using the fdt blob at 0x80f80000
   Loading Kernel Image ... OK
   Using Device Tree in place at 80f80000, end 80f8a207

Starting kernel ...

Booting Linux on physical CPU 0x0
Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Initializing cgroup subsys cpuacct
Linux version 3.14.0-yocto-standard (paul@ubuntu-build01) (gcc version 4.8.2 (GCC) ) #1 PREEMPT Mon Apr 14 16:00:52 BST 2014
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c53c7d
CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
Machine model: TI AM335x BeagleBone
cma: CMA: reserved 16 MiB at 9e800000
Memory policy: Data cache writeback
CPU: All CPU(s) started in SVC mode.
AM335X ES2.0 (sgx neon )
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 129792
Kernel command line: console=ttyO0,115200n8 root=/dev/mmcblk0p2 ro rootfstype=ext4 rootwait
PID hash table entries: 2048 (order: 1, 8192 bytes)
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
allocated 1048576 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
Memory: 489452K/523264K available (7491K kernel code, 520K rwdata, 2448K rodata, 488K init, 757K bss, 33812K reserved, 0K highmem)

[snip]

-- 
Denys

