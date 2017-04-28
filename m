Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2458FE009CE; Fri, 28 Apr 2017 16:28:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_20,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.1624]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.86.89.64 listed in list.dnswl.org]
Received: from elasmtp-curtail.atl.sa.earthlink.net
	(elasmtp-curtail.atl.sa.earthlink.net [209.86.89.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E8A3E009A5
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 16:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1493422116; bh=X6ZDuWVdNXDujhM396XCBT830SnWBLsjwb/X
	iS3p5eY=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=SWwThnUXY1gvvBM3rnvcjbc
	PdzUdb5HovOG+CQFvSI59X+nlB5bwLL6OvndM33MIWXZ7LER1O1yBMn2+55De7CnquE
	Spgk43qjrfiPxBpDyz7sh4uOG0pACot9C1eBi0twsN8P5e1Va1khT2XXDJ15JiscnBb
	/NdjAbkNfWPL6On1LxKHyToZE4YTjipQLVxdA2/htdUN/30YEnwiv5KssXVuK1ZUQ1E
	mFB2jms45qRpXPhO/iNprjqXMFM6GJdgjDfwJu5MDKyf/GXzQ/priOKQ77T4jPPYhhH
	Iytr3Bu9tuxiw1nHTq4mrz09oN1jvxWBpc/Ic1xvIi3l4hB3zXw==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=q0rRruEp6hSVyI+lSIGLb5mIfuh9DCHQub5Su/c0EL108heJRO3Zsdz5ynCVT29/kPG8670ZUdS7Mio3pSwUb9YyizIYHB889OzMeOPAE3lEinzVoeL2XTYq52RSOTX07PMF3xUqyvp2u/7f5HO+Hs6X0LCCnoVk56c+1mVfp+7w1EDMrJ2RxehM/lO5bUGlonbKFnJLDnqQ5x5Pq/h3avm1GROt3AcYBRIopZ9pqTeY4an3w78zSQWHYzuBZviZYpXjrzuuZfAYRZsPHFwhlNCFNxfae5O8tOqAWjCSlwFi/MXL+nZMuDU1VTcJynYo3jzN6dXpL5lfj/AU5XU65w==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-curtail.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1d4FJT-0001Hh-1B
	for yocto@yoctoproject.org; Fri, 28 Apr 2017 19:28:35 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Fri, 28 Apr 2017 16:28:43 -0700
Message-ID: <15C6B163F3C44909B41548CB3B5BFD62@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLAdyyonzCGl9OlR0O7ig9vIphY8g==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068808e6b4565184f2ac09574e4a235cee10350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Trying to understand my boot configuration
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
X-List-Received-Date: Fri, 28 Apr 2017 23:28:40 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

I have a simple x86_64 system based on Morty, and I'm trying to understand
the way the system boots. The disk image file is a FAT16 parition which I
use as the second partition on my SSD, with the boot flag set. (The first
partition is a FAT16 partition that contains a bunch of data files and my
application.) The boot partition contains a file called rootfs.img, which
obviously is my rootfs.

GRUB is the boot manager on this 64-bit system, and it puts up a menu of
four items that allows me to specify graphics or serial as the console,
and either booting or installing. After booting, I see that rootfs.img is
loop mounted as the root.

My questions are:

1) Is this a "live image" boot? As I understand it, a live image is a
system that boots from removable media, and gives the user a choice
between copying its rootfs to a RAM disk and running a volatile session
from there, or installing the rootfs somewhere. Since I see "install" menu
items in GRUB, that suggests that this is a live image. But at runtime the
rootfs appears to be on the actual drive, not in RAM, because my command
history persists across reboots.

2) Why do I have a FAT partition with a loop mounted root file system, in
the first place? Is it possible to boot directly into a plain ext3
partition? I tried using the ext3 partition image as-is, but it hung on
boot if I used an MBR, and complained there wasn't a bootable partition if
I used a GPT.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


