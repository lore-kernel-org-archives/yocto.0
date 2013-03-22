Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-spurfowl.atl.sa.earthlink.net
	(elasmtp-spurfowl.atl.sa.earthlink.net [209.86.89.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E182E014B6
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2013 00:26:01 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=aQCAUG1qqmV3L3c59ZgQ9BWM8B8Fl8kMWWD8Mhi78TnHHh6JlwxlYGCcqopQX9rq;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-spurfowl.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UIwMS-0003mY-Ee
	for yocto@yoctoproject.org; Fri, 22 Mar 2013 03:26:00 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Fri, 22 Mar 2013 00:25:46 -0700
Message-ID: <C797901E086446C2A1E1C4637ED4262B@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac4mznfAJxewUyNcQHGn66ciMkzwow==
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068802bb8732879392cb1db4b5d4938c5ef5350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Problem creating bootable flash
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
X-List-Received-Date: Fri, 22 Mar 2013 07:26:01 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've successfully (theoretically) built core-image-base-cedartrail-nopvr. I
plugged a 1GB eUSB SSD onto one of my USB headers, Ubuntu automounted the
empty drive /dev/sdb1 as /media/somethingorother, I unmounted it, and then
followed the instructions on the Yocto page for the cedartrail BSP: I used
dd to copy the image to /dev/sdb1, synced, ejected it, and rebooted. I got
the dreaded "Error loading operating system" from the BIOS.

Waitaminnit, I thought, isn't this image supposed to include the partition
table, too? After all, the example given in the instructions showed the
image being copied to /dev/sdf, not sdf1. I went back into Ubuntu, saw that
/dev/sdb1 had been mounted as /mnt/boot_, and it contained initrd and the
four other files. I unmounted it, and this time used dd to copy the image to
/dev/sdb, synced, ejected it, and rebooted. This time, the BIOS wouldn't
recognize the drive at all, so all I could do was go back into Ubuntu.

Now, Ubuntu had mounted /dev/sdb as /mnt/boot_, and it still contained the
five files. That suggests to me that the image doesn't contain a partition
table, and that there is now no partition table on this drive, just a single
file system, like an old floppy. I ran parted, end it says the partition
table type is "loop", with a single FAT16 partition running from 0.00B to
1028MB, the entire drive. Is "loop" just a name for an implied partition
table that lists the entire drive, when there is no actual table?

Apparently, my BIOS (a modern Intel D2700MUD Atom mobo) looks at this USB
drive and decides it isn't bootable. So what's the right way to do this?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


