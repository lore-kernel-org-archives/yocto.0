Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-dupuy.atl.sa.earthlink.net
	(elasmtp-dupuy.atl.sa.earthlink.net [209.86.89.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECEAAE003AA
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2013 16:15:45 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=LiiUASStsZ3mUVJB7o4o8kZNIqduxrJF7uT7CBFU/RxY/P0zLDV5YUnp4BgHx2hS;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1ULiWP-00042W-BM
	for yocto@yoctoproject.org; Fri, 29 Mar 2013 19:15:45 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
References: <C797901E086446C2A1E1C4637ED4262B@PAULD><8B53A185-C840-438C-B74B-D5267DD14F10@keylevel.com>
	<09AEF6051AA14B28BF640910EA131219@PAULD>
In-Reply-To: <09AEF6051AA14B28BF640910EA131219@PAULD>
Date: Fri, 29 Mar 2013 16:15:46 -0700
Message-ID: <58D3047F74434B278AB3C73C399FF6F1@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4m3CoFOKf3gqgcS5aVXcIdw3VUMAAX+yXwAWWEM4A=
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068863aca8ae1482c094b1e631ee1e789f32350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Re: Problem creating bootable flash
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
X-List-Received-Date: Fri, 29 Mar 2013 23:15:46 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm still having no luck booting my system. I've built
core-image-base-cedartrail-nopvr, with only one modification (added samba
from OE), and I'm trying to boot it on an Intel DN2800MT mobo from a 1GB
eUSB SSD. Here's what I've done:

Opened gparted, selected /dev/sdb, which is the SSD.

Created a fresh MSDOS partition table.

Selected the 979MB unallocated space, created a new 949MB FAT16 partition.

Selected the remaining 30MB unallocated space, created a new FAT16
partition, which will hold my application data.

Invoked the pending operations.

Selected the first partition, set the "boot" flag.

Exited gparted.

In terminal, went into my images directory, and did

    sudo dd if=core-image-base-cedartrail-nopvr.hddimg of=/dev/sdb1

After a few seconds, it finished. I then unplugged and plugged the SSD from
the USB header, and it automounted the two partitions and popped up two
windows showing their contents. Closed the second one, and examined the
first one. It contained the usual five files for booting a live image.

Opened syslinux.cfg in an editor. It showed that syslinux is configured to
use a serial port, which is wrong for my system. Also, it showed two boot
choices, one called "boot" for running the live image, and the other called
"install".

Eventually, I'll get the build to supply a custom syslinux.cfg, but for now,
I figured I'd just manually edit it. Since I want it to interact with the
screen and keyboard, and not a serial port, I removed "serial 1 115200". The
default is supposedly "console 1", which I would expect would use the video
and keyboard from the text mode it inherits from the BIOS. I also removed
the "install" section.

The options on the minimal boot kernel included "console=ttyS0,115200" and
"console=tty0 video=vesafb vga=0x318". Since I don't know what my mobo
supports for VGA video, I figured I'd just let it use text mode, so I
replaced them both with just "console=tty0". The final contents of
syslinux.cfg were:

    ALLOWOPTIONS 1
    DEFAULT boot
    TIMEOUT 10
    PROMPT 1
    LABEL boot
    KERNEL /vmlinuz
    APPEND initrd=/initrd LABEL=boot root=/dev/ram0 console=tty0

I did a "Safely remove" on the device, unplugged it, plugged it into my test
motherboard, and fired it up.

I went into the BIOS boot menu, to make sure the BIOS recognized it as a
bootable device, and it did. I hit Enter to boot it. All I got was a
standard black VGA text mode screen with a blinking gray cursor. At that
point, Ctrl-Alt-Del wouldn't reboot.

If my device wasn't bootable, I'd expect the BIOS to complain. If it was
still in the BIOS, I'd expect to be able to reboot with Ctrl-Alt-Del. If it
actually ran ldlinux.sys, and yet didn't properly use the video, I'd expect
it to time out and boot the live image. But I don't see any evidence that
it's doing that.

Does my syslinux.cfg look correct for showing the syslinux stuff on the text
mode output? Do my kernel options look correct for getting the live image
boot kernel to talk to the screen in text mode? Can anyone see anything else
that might be wrong?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


