Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68220E01423
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 08:38:54 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Apr 2013 08:38:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,402,1363158000"; d="scan'208";a="316331150"
Received: from unknown (HELO envy.home) ([10.255.13.219])
	by fmsmga002.fm.intel.com with ESMTP; 03 Apr 2013 08:38:53 -0700
Message-ID: <515C4D0D.7030708@linux.intel.com>
Date: Wed, 03 Apr 2013 08:38:53 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130110 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD>
In-Reply-To: <E32C22186F664AC79D0019B49275C4EE@PAULD>
X-Enigmail-Version: 1.5.1
Cc: yocto@yoctoproject.org
Subject: Re: This one can't be me...
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
X-List-Received-Date: Wed, 03 Apr 2013 15:38:54 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Paul,

First off, please CC the relevant maintainers of the recipes and BSPs
you are having trouble with. The README in the cedartrail BSP lists
Kishore as the maintainer, now on CC. This will help improve response
time to your post as well as getting the right people looking at it.

Kishore, can you please work with Paul to get him booting?

Some ideas on things to check/try inline below.

On 04/02/2013 02:27 PM, Paul D. DeRocco wrote:
> I've successfully built core-image-base-cedartrail-nopvr, with NO
> modifications, no meta-oe layer to pull in Samba, no attempt to partition
> the flash drive, just the .hddimg file dd'ed to /dev/sdb, to see if I can
> get something, anything to boot out of the box.
> 
> I get a kernel panic when it tries to boot on my Intel DN2800MT mobo, with
> 1GB of RAM. The error messages, which appear on the attached VGA monitor,
> are:
> 
> VFS: Cannot open root device "ram0" or unknown-block(0,0)
> Please append a correct "root=" boot option;
> here are the available partitions:
> VFS: Unable to mount root fs on unknown-block(0,0)
> User configuration error - no valid root filesystem found


Believe it or not, this is the single most common boot error in the
history of boot errors on Linux :-)

It is telling you there is no block device called "ram0" to load and
there are no other block devices detected. The USB stick doesn't show up
here because USB can take a while to enumerate and unless you tell the
kernel to wait for it, it doesn't. That shouldn't be your problem here
as you are attempting to boot from a ramdisk.

The most obvious question is whether or not the kernel you built has
ramdisk support. You can do this by analyzing the .config file in your
linux-yocto build tree
(build/tmp/work/cedartrail.../linux-yocto*/linux-cedartrail-standard-build/.config).
You want to look for:

$ grep BLK_DEV_RAM .config
CONFIG_BLK_DEV_RAM=y
CONFIG_BLK_DEV_RAM_COUNT=16
CONFIG_BLK_DEV_RAM_SIZE=4096

> 
> Here is the syslinux.cfg file that is controlling the boot:
> 
> # Automatically created by OE
> serial 0 115200
> ALLOWOPTIONS 1
> DEFAULT boot
> TIMEOUT 10
> PROMPT 1
> LABEL boot
> KERNEL /vmlinuz
> APPEND initrd=/initrd LABEL=boot  root=/dev/ram0   console=ttyS0,115200
> console=tty0 video=vesafb vga=0x318
> LABEL install
> KERNEL /vmlinuz
> APPEND initrd=/initrd LABEL=install  root=/dev/ram0   console=ttyS0,115200
> console=tty0 video=vesafb vga=0x318
> 
> This is a live-image boot, and the flash drive contains the usual five
> files. As far as I can tell, a live-image boot is a two-stage boot beginning
> with a really stripped down vmlinuz and a small RAM-disk read from initrd,
> which then reads the big rootfs.img into another RAM-disk and tries to boot
> the real kernel from that. I don't know which kernel is panicking, because
> it all flies by so fast.


Well, see my comment above, the kernel was about as explicit as it can
be - it didn't find a block device to mount as root. However, when
debugging kernel issues, it is important to be able to record the log.
You have a serial port console configured in your kernel parameters
(console=ttyS0,115200), it would be a good idea to connect to the serial
console and capture the boot messages to a file using minicom, screen,
or similar.


> Any ideas, or am I cursed?
> 

Another common problem is the hddimg format itself and conflicts with
certain firmware. You can try the zip image format as described in
poky/README.hardware under the "Intel Atom based PCs and devices" section.

Finally, usb sticks are terrible about just being bad. Many of them are
literally write once devices. They're fine so long as you don't fill
them up, which works for shuffling small files around, but writing full
OS images to them tends to kill them in a hurry. Try with a brand new stick.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

