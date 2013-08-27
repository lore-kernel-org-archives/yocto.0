Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28577E00441
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 15:27:47 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=Vb3md2E6JobbWAl0a2FyTcYmHGn8xrhvsyx0748TYmBdp/9bi/7PoeRqN4xreDzB;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1VERjn-00018Y-1s
	for yocto@yoctoproject.org; Tue, 27 Aug 2013 18:27:47 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Tue, 27 Aug 2013 15:27:50 -0700
Message-ID: <2C94F567F1334C30A5BBD2CA59576460@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6jdKnh8aFNWpF2S6GmHrWC/vouJQ==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068882af87c4f13b06b58001ddbe3ca39593350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Can anything be done about do_rootfs speed?
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
X-List-Received-Date: Tue, 27 Aug 2013 22:27:49 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I got really tired of waiting for builds on my lowly dual-core Atom
machine, so I went out and bought a nice fast machine with an i7-4770K and
a Samsung SSD. Full builds are now screechingly fast, over 10x compared to
the Atom.

But when making a tiny change, I still have to wait for do_rootfs. Since
this is a single task, it runs on a single core, so it only runs maybe
three times as fast. For my Gumstix stuff, it takes five minutes instead
of something like 15. That's a meaningful improvement, but it still seems
long when the task implementing the minor change took, oh, five seconds.
Since it's the one task that _always_ gets executed, it seems like a
bottleneck that should be addressed.

Is there any way, in the future, of breaking do_rootfs into multiple
threads, so they can take advantage of multiple cores? Or has something
like this been tried already, and found not to produce much of a speedup?
Or is the process intriniscally sequential?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


