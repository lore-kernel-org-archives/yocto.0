Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-curtail.atl.sa.earthlink.net
	(elasmtp-curtail.atl.sa.earthlink.net [209.86.89.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08DDFE01508
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 14:27:25 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=OU1nt44id6MycX8S/9hKDuF5nxm7M4XwDWrScz7lHBvm3vilh1mgBm0pd5yAQAdW;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-curtail.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UN8jl-00014J-6a
	for yocto@yoctoproject.org; Tue, 02 Apr 2013 17:27:25 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Tue, 2 Apr 2013 14:27:32 -0700
Message-ID: <E32C22186F664AC79D0019B49275C4EE@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4v6OLutIUbhKmlT8+L4nrLND2JOg==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068817b7e152aed093785418cf888c77416c350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: This one can't be me...
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
X-List-Received-Date: Tue, 02 Apr 2013 21:27:26 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've successfully built core-image-base-cedartrail-nopvr, with NO
modifications, no meta-oe layer to pull in Samba, no attempt to partition
the flash drive, just the .hddimg file dd'ed to /dev/sdb, to see if I can
get something, anything to boot out of the box.

I get a kernel panic when it tries to boot on my Intel DN2800MT mobo, with
1GB of RAM. The error messages, which appear on the attached VGA monitor,
are:

VFS: Cannot open root device "ram0" or unknown-block(0,0)
Please append a correct "root=" boot option;
here are the available partitions:
VFS: Unable to mount root fs on unknown-block(0,0)
User configuration error - no valid root filesystem found

Here is the syslinux.cfg file that is controlling the boot:

# Automatically created by OE
serial 0 115200
ALLOWOPTIONS 1
DEFAULT boot
TIMEOUT 10
PROMPT 1
LABEL boot
KERNEL /vmlinuz
APPEND initrd=/initrd LABEL=boot  root=/dev/ram0   console=ttyS0,115200
console=tty0 video=vesafb vga=0x318
LABEL install
KERNEL /vmlinuz
APPEND initrd=/initrd LABEL=install  root=/dev/ram0   console=ttyS0,115200
console=tty0 video=vesafb vga=0x318

This is a live-image boot, and the flash drive contains the usual five
files. As far as I can tell, a live-image boot is a two-stage boot beginning
with a really stripped down vmlinuz and a small RAM-disk read from initrd,
which then reads the big rootfs.img into another RAM-disk and tries to boot
the real kernel from that. I don't know which kernel is panicking, because
it all flies by so fast.

Any ideas, or am I cursed?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


