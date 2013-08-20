Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 761F1E003E2
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 00:29:31 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=t/vVesWzIsBQPadevKW+O/xkT5u4nnjt00bOkrCtXnx58ISAvWeG0pE54SLDk+ZP;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1VBgNf-0007DB-39
	for yocto@yoctoproject.org; Tue, 20 Aug 2013 03:29:31 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Tue, 20 Aug 2013 00:29:31 -0700
Message-ID: <C0360C54FF104163BE67C2C714409398@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6ddwK+tYLb4tPEQG6RAIkjtckAIw==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606881b9626f5c13c62bcd376904963e3029a350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Building one package needs header from another
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
X-List-Received-Date: Tue, 20 Aug 2013 07:29:34 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm trying to build python-matplotlib, which is a plotting package for
PyGTK, and I need to compile the GDK rendering backend so that I can put
plots onto the screen. (This is for a Gumstix, and I'm using their Danny
branch metadata.) The backend source file needs to include pygtk/pygtk.h,
which is all over the place in the fragments of the target rootfs since
I've built that for the target system, but isn't anywhere to be found in
the cross-compilation environment, so the compilation fails.

The whole topic of cross-compilation makes me dizzy. How is this situation
dealt with? The source tarball for matplotlib (1.1.0) just assumes that
this header file already exists on the user's system. Is this a normal
thing for which there's a routine solution in Yocto? Or do I have to hack
it by copying one of those files from the target rootfs and including it
in my own metadata, forcibly putting it somewhere that the compiler can
find it?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


