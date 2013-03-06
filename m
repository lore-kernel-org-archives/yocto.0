Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-dupuy.atl.sa.earthlink.net
	(elasmtp-dupuy.atl.sa.earthlink.net [209.86.89.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F4150E00740
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 18:20:45 -0800 (PST)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=qhXyAeblQ4a3bakleR+b6AcrnuFQ4Xb/DPbRS1XSNka/iNJdvMyObIGcNxi7U6p3;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UD3yH-00072h-9E
	for yocto@yoctoproject.org; Tue, 05 Mar 2013 21:20:45 -0500
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Tue, 5 Mar 2013 18:20:30 -0800
Message-ID: <80BEC9F1B32C495FA608D0DAF85DF5FB@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac4aESyRfNgzBqQkSz6gxOisYWCv5A==
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606889e66b405c5dc352810e80972b1a6f718350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Question about file systems
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Mar 2013 02:20:46 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

This is really a Linux question, but since it is specifically about embedded
systems, I'm hoping this group is a good place to ask.

My application is based on an Atom, with a small USB flash drive (SLC) for
its storage. I'm trying to decide what file system to use. The application
doesn't do a lot of file accesses, and of course I'll mount the partition(s)
with "noatime" since I don't care about recording access times. But I'm
concerned that if someone yanks the plug, rather than pushing the button for
an orderly shutdown, the next boot will do a long "fsck", and the user will
think the system is broken.

So I guess the questions are these: Are ext2, ext3 and ext4 all equally
likely to need to do an "fsck" after a disorderly shutdown? Do they
typically take different amounts of time to do an "fsck"? Or is the
journaling of ext3 and ext4 something that should be avoided on a flash
drive at all costs, even though my app won't be doing much file access?

Also, my app stores its own data in a directory tree of typically a few
hundred small files. Would it be a win or a lose to break this off into a
separate small partition? I was actually thinking of making this a FAT32
partition, so that I could yank the drive and access those files in any
other machine.

Any insights would be appreciated.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


