Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8295E01440
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 11:37:28 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=EBiyu8ShEc2Y/Qm5EsRUEU+QXPUZ69KVJJlGbwbF50svfug9ty29SBsem6IBUTRo;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1VA2QJ-0007Xf-H2
	for yocto@yoctoproject.org; Thu, 15 Aug 2013 14:37:27 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Thu, 15 Aug 2013 11:37:33 -0700
Message-ID: <D2ED8A5A8E3F4F688EF59142D375B80B@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6Z5oGaqYkdFXt3QsGwUQXjqrXmhQ==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068801b4057f89e9a9aa8d5531e59452cc50350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: My stuff is missing from rootfs
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
X-List-Received-Date: Thu, 15 Aug 2013 18:37:29 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've done exactly this in a different Yocto-based project, and it worked.
Now I'm trying to do the same thing in a Gumstix build, and it's not
working. I have a dumb little recipe that merely copies some files into
particlar places in the rootfs. It adds a systemd service unit, as well as
.bashrc and .inputrc to /home/root.

The build logs show the recipe being processed, including the do_install
task which copies the files. No errors are produced. If I rummage through
build/tmp/work, I can find the fragment of the rootfs containing the
/home/root and /etc/systemd/system directories with my files in them. Yet no
matter what I try, these things never wind up in the final rootfs.

I've tried clean and cleansstate on the recipe, as well as on my top-level
recipe. I've bumped PR from r0 to r1. It dutifully reprocesses my recipe,
with no errors, and I end up with a perfectly functioning rootfs without
these particular files.

This is a slightly modified version of gumstix-console-image. I believe it's
based on Danny, as the gumstix Dylan stuff is still a work in progress.

What could conceivably be wrong?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


