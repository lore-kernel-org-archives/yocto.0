Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-junco.atl.sa.earthlink.net
	(elasmtp-junco.atl.sa.earthlink.net [209.86.89.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E220E0145F
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2013 21:16:15 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=GHswQlD5A+S47mjWfa9GWybvxrIG2fMCvC9LjjkdHFYOnmFEVfBwlycMOjI94jOm;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-junco.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UMWAI-0004aX-V9; Sun, 31 Mar 2013 23:16:15 -0500
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Chris Tapp'" <opensource@keylevel.com>,
	<yocto@yoctoproject.org>
References: <C797901E086446C2A1E1C4637ED4262B@PAULD><8B53A185-C840-438C-B74B-D5267DD14F10@keylevel.com><09AEF6051AA14B28BF640910EA131219@PAULD><58D3047F74434B278AB3C73C399FF6F1@PAULD>
	<61CB2848-B7F6-4C0B-8644-65C0CD0DD6F8@keylevel.com>
In-Reply-To: <61CB2848-B7F6-4C0B-8644-65C0CD0DD6F8@keylevel.com>
Date: Sun, 31 Mar 2013 21:16:19 -0700
Message-ID: <105A6073859D47C780306AD895453FC0@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4uXa43affOh+50RsSimsM6BxfSLgALtUdA
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606888e40387c0099caa35b8750ce24e40fc0350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Re: How to partition a flash drive (was: Problem creating bootable flash)
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
X-List-Received-Date: Mon, 01 Apr 2013 04:16:15 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Chris Tapp
> 
> This should end
>    of=/dev/sdb
> 
> The hddimg file includes the partition info and both 
> partitions, so you don't need any of the other steps.

Actually, the .hddimg is a single FAT16 volume, with no partition table,
which contains files for creating a couple of different RAM disk images,
which are part of the live-image mechanism.

I am leaning toward using this live-image mechanism in my project
permanently, because it almost eliminates the possibility of anything
corrupting the OS in any persistent way. My application does have a small
amount of persistent data, and I don't want to use the union or overlay file
system as a way of adding persistence to the live image, because that sort
of defeats the security of the live image. So I do indeed want to use a
truly partitioned flash drive, and put my application data on a separate
small partition.

What's going wrong is that the code in the MBR created by gparted (and I
assume by parted) unconditionally uses drive number 0x80 (the first hard
disk) when it tries to load the zeroth sector from the bootable partition.
The BIOS, however, is treating this eUSB SSD as a removable drive, and
calling it drive zero. So it's crashing at the point where the MBR code
jumps to what is supposed to be the zeroth sector of the partition.

The code in the boot sector for the FAT16 volume uses whatever drive number
is in the DL register on entry, and this works fine when booting directly
from the BIOS into this code with no intervening MBR, so the solution is to
modify the MBR boot code to do the same thing. This simply involves NOP-ing
out the MOV DL, 80H instruction. Then, it should successfully boot a
partitioned flash drive as though it were a hard disk.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 



