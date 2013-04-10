Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A9D7E01496
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 22:49:15 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=pH8OWJVyj2JUK9fLWVcwfQ0eHULOEhl/vrh7Wd5GEBXbK/KByO/RpaM8UfvXvqdh;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UPnuE-0007Wx-GA
	for yocto@yoctoproject.org; Wed, 10 Apr 2013 01:49:14 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
References: <C797901E086446C2A1E1C4637ED4262B@PAULD><8B53A185-C840-438C-B74B-D5267DD14F10@keylevel.com><09AEF6051AA14B28BF640910EA131219@PAULD><58D3047F74434B278AB3C73C399FF6F1@PAULD><61CB2848-B7F6-4C0B-8644-65C0CD0DD6F8@keylevel.com>
	<105A6073859D47C780306AD895453FC0@PAULD>
In-Reply-To: <105A6073859D47C780306AD895453FC0@PAULD>
Date: Tue, 9 Apr 2013 22:49:12 -0700
Message-ID: <1C1773F9642A4F2EBA9FC3662E2C40B1@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4uXa43affOh+50RsSimsM6BxfSLgALtUdAAch8/oA=
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068802e467c5b3561335d9d0a0d69a3b8869350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Re: How to partition a flash drive (solved)
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
X-List-Received-Date: Wed, 10 Apr 2013 05:49:15 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Paul D. DeRocco
> 
> What's going wrong is that the code in the MBR created by 
> gparted (and I
> assume by parted) unconditionally uses drive number 0x80 (the 
> first hard
> disk) when it tries to load the zeroth sector from the 
> bootable partition.
> The BIOS, however, is treating this eUSB SSD as a removable drive, and
> calling it drive zero. So it's crashing at the point where 
> the MBR code
> jumps to what is supposed to be the zeroth sector of the partition.

It turns out that the Volume Boot Record code produced by Syslinux is
incompatible with the Master Boot Record code produced by parted and
gparted. However, there is an mbr.bin file in the Syslinux distribution that
works. If you dd this to the first 440 bytes of the MBR (leaving the actual
partition table intact), it boots fine. So, yes, you can indeed run a Yocto
live image from one partition on a flash drive, and have another partition
for persistent data.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


