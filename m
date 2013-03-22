Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-junco.atl.sa.earthlink.net
	(elasmtp-junco.atl.sa.earthlink.net [209.86.89.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8962E01471
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2013 14:37:24 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=Odh3du+gNc/qQQvJ6ebJtOKnFcnWsmWXunfD69njmHsIgy7O6b1wU/JsKG8hp2Sl;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-junco.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UJ9eO-0000iG-3b; Fri, 22 Mar 2013 16:37:24 -0500
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Chris Tapp'" <opensource@keylevel.com>,
	<yocto@yoctoproject.org>
References: <C797901E086446C2A1E1C4637ED4262B@PAULD>
	<8B53A185-C840-438C-B74B-D5267DD14F10@keylevel.com>
In-Reply-To: <8B53A185-C840-438C-B74B-D5267DD14F10@keylevel.com>
Date: Fri, 22 Mar 2013 14:37:10 -0700
Message-ID: <09AEF6051AA14B28BF640910EA131219@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac4m3CoFOKf3gqgcS5aVXcIdw3VUMAAX+yXw
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606880c48fe8f74da0cdf2d25bc673c243435350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
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
X-List-Received-Date: Fri, 22 Mar 2013 21:37:25 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Chris Tapp
> 
> I've had a few issues using the Cedartrail PRV images on an 
> eUSB drive on an DN2800MT.
> 
> I'm not installing the same way as you:
> 
> 1) I use dd to copy the hddimg to a USB stick;
> 2) I use this to boot the system using the 'install' syslinux 
> item (have to be quick at boot time to catch the prompt).
> 
> Everything worked great using a mini-PCIe drive, but was 
> failing to install to the eUSB most of the time as the drive 
> wasn't detected - I expect it takes too long to be ready 
> before the install script gives up. A couple of changes to 
> the script fixed this and the image would then install.
> 
> However, it wouldn't boot. I found two issues:
> 
> 1) The install script configured grub to use sdb. This was 
> where the eUSB was when the script ran, but it's sda when 
> used as the boot device. Another install script fixed this.
> 2) I also needed to add 'rootwait' to the kernel command line 
> or else the rootfs wasn't ready at boot time, resulting in a 
> kernel panic.
> 
> The issues with the installer are recorded in the bug tracker 
> at https://bugzilla.yoctoproject.org/show_bug.cgi?id=4059.
> 
> It's possible that you may need 'rootwait', but I'm not sure 
> anything else that I found is related to what you're seeing.
> 
> Can you try dd'ing the image on to a USB stick to see if that 
> will boot? If it does, that would at least show that the 
> image is good and it's the eUSB that is causing the pain, as 
> it was for me.

That's a different issue. Your problem at least shows that the BIOS is
loading grub from the SSD. My problem precedes that.

When I dump the beginnong of the .hddimg file, it's clear that it doesn't
contain a partition table, so it's intended for writing to an existing
partition. I recreated the partition table with gparted, used dd to copy the
image to /dev/sdb1 again, and this time remembered to mark it bootable. I
think the original "Error loading operating system" came from the original
partition table code not finding a partition that had been marked bootable.
Now, the screen just goes blank, but when I look at syslinux.cfg, it's
obvious that that's caused by the console being redirected to a serial port,
which in my system is used for something else. So I just need to learn about
syslinux, and the kernel command line options.

At least, I think that's all I have to do to get this baby booted.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


