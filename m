Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-scoter.atl.sa.earthlink.net
	(elasmtp-scoter.atl.sa.earthlink.net [209.86.89.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46F28E013CB
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 00:48:31 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=XMaoxNjgLWYgrUR+x1JgLQfd2Fq+G3bx/68MMnrWm5JGPu93R/KEXVq6fLxJE53e;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-scoter.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UuHni-0005uS-Mg
	for yocto@yoctoproject.org; Wed, 03 Jul 2013 03:48:30 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Wed, 3 Jul 2013 00:48:33 -0700
Message-ID: <6915E88EED1243A0989D0097AC115254@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac53wbe1tZJbRqZ5TXW4+GqnKmD94w==
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688b3e76d85f4ad6078228e3f5ef694e81d350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Creating a volatile image
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
X-List-Received-Date: Wed, 03 Jul 2013 07:48:34 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

When an .hddimg image is used on a hard disk or flash drive, the target root
directory is implemented as a loop device referring to the rootfs.img file
contained in that drive. This means it is a true non-volatile file system.
Is there a way to make the entire file system volatile?

I'm trying to ensure that my flash drive is written to as rarely as
possible. To this end, I'm putting my app's volatile data on a separate
partition, and I'd like to run the OS out of a big ramdisk, loading it on
startup and then discarding it on shutdown. In other words, I want a
Groundhog Day system, which always boots up as though it is a brand new
clean install.

I've spent a couple hours trying to decipher various .bbclass files,
Googling about the various file systems, and so on, and I haven't seen
anything that looks like this capability is already provided somehow in the
Yocto system. Is there an easy way to do this? Or is there only a hard way
to do it, involving way more expertise in the build system than I've got?

Alternatively, is it practical to make the existing file system readonly? My
system is based on core-image-base, with no graphics. What will break if it
can't write to anything outside of /tmp or /run or /media/ram or
/var/volatile? And is there a built-in way to do that?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


