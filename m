Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A36CDE013D6
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 01:30:42 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=E3ijNV7AJasi7WEIhxI20K4i4sghVd88OYe7YRcvhgm+FA1ZFPWVk5ymyTVZdap6;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UxYkT-0002pf-DM
	for yocto@yoctoproject.org; Fri, 12 Jul 2013 04:30:41 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Fri, 12 Jul 2013 01:30:37 -0700
Message-ID: <5CD486E4007E48769ED69BB9205D327F@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac5+2hXtmuHFDZJ4TUe9Xr5epvVXug==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688097361063285e3459ff0af9c30ce0fa5350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Mount options for removable drives
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
X-List-Received-Date: Fri, 12 Jul 2013 08:30:43 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Can someone point me to the configuration for how removable drives are
mounted? When I plug in a flash drive, it mounts /dev/sdb1 as /media/sdb1,
but it uses "relatime" and I'd like to use "noatime". I'd also like it to
mount in "sync" mode, which I would think would be the default for such a
drive, but I've gotten a corrupted FAT when I've yanked the drive.

This is basically a core-image-base build, modified to use systemd, but I
don't see any systemd mount unit that handles it, so it must be some other
part of the system.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


