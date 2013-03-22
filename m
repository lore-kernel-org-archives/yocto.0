Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8576E01471
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2013 16:05:58 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=bx2cSKEG7Qx0jzY2bRkSDfwKIAv7HfYsf9VVEGy7Npm6mlszq7SWdtAUS+Ee+sKh;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UJB25-0005Sm-PI
	for yocto@yoctoproject.org; Fri, 22 Mar 2013 19:05:58 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Fri, 22 Mar 2013 16:05:44 -0700
Message-ID: <C5CDD289A5664B4F8F886AE3556BC91E@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac4nUceKVTDI++P0T26y46ikDhCedg==
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606885b3c1b097ee7a9d0a184c65329b42198350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Perplexed by boot mechanism
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
X-List-Received-Date: Fri, 22 Mar 2013 23:05:59 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm trying to get a core-image-base-cedartrail-nopvr image to boot from an
eUSB SSD on an Intel Atom mobo. I'm following the instructions in

<https://www.yoctoproject.org/download/intel-atom-n2600n2800d2550-wnm10-chip
set-cedar-trail>

which tell me to dd the .hddimg file onto the flash drive. But apparently,
the image isn't an image of a regular bootable system drive, but is a "live
image" of a smaller system that can either boot the real system from a
virtualized file system in RAM whose image is read from a single file in the
first level, or it can install the real system to a different drive.
(Correct me if I'm mistaken about any of this.)

What's the point of all this? It seems like a completely unnecessary layer
of complexity and inefficiency. I have a very vague understanding of the
whole concept of running a live image off a virtual file system, and it
seems to make sense when you're booting off a readonly medium like a DVD,
but this is a writable flash drive. Why doesn't the .hddimg file just
contain the real target root file system partition in it? Or is that what
some of those other files in the build/tmp/deploy/images directory
represent? If the latter, is there a way I can just directly create the
flash drive the way it will ultimately be used in the final system, without
using this "live image" stuff?

I'd really like to be able to create the flash, mount it under Ubuntu, and
not see the five files the implement the live image, but see the full root
file system of my target.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


