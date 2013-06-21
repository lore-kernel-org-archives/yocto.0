Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-banded.atl.sa.earthlink.net
	(elasmtp-banded.atl.sa.earthlink.net [209.86.89.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 745B9E005B3
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 01:37:01 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=DcnfYfcINUPhnEJl0Snd6jtQzaaX8pRR5JUJjXcrRoBXraHDx4pXq9gChKc57izt;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-banded.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1Upwq3-0005UY-Bj
	for yocto@yoctoproject.org; Fri, 21 Jun 2013 04:37:00 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Yocto list discussion'" <yocto@yoctoproject.org>
Date: Fri, 21 Jun 2013 01:37:05 -0700
Message-ID: <3BD19600BE4A4789BF0D37E2CA80EB9B@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac5uWoJRyBtO0+F2TsuH1c35/rz6Pw==
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688b5c5c5a4651652e4e1ce991a501860f9350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Adding a mount for a second partition
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
X-List-Received-Date: Fri, 21 Jun 2013 08:37:01 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

My image is a live image that is booted from a flash drive. The drive
actually has two partitions on it, and I'd like the second partition to get
mounted on startup. I believe that what I need is to create a mount point in
the image's file system, and also append a line to /etc/fstab. How do I
write a recipe to do those two things?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


