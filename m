Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-dupuy.atl.sa.earthlink.net
	(elasmtp-dupuy.atl.sa.earthlink.net [209.86.89.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CAD6E0051D
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 17:18:07 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=Odel9pVZMGAHfgs7qjPqKYof3VlPVaM/oJcNuFTJaP65SUlaO9oCtr2M5r8b+XEd;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UrGxT-0007mw-8t
	for yocto@yoctoproject.org; Mon, 24 Jun 2013 20:18:07 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Mon, 24 Jun 2013 17:18:05 -0700
Message-ID: <07EC680C643544CEB3DB605D0478EB01@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac5xOXZBgSXxtuRwRbW3XtrV1jnLPQ==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068801811563cb3644f9c38b4453d6c31e16350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: The simplest possible recipe
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
X-List-Received-Date: Tue, 25 Jun 2013 00:18:08 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

That would be to copy a single file, provided in the files subdirectory of
the recipe, into a particular place in the target tree. Is there any bbclass
that automates this? Or do I just write a recipe with a do_install function
that executes the "install" command?

My only guide is 5.3.1 in the Development Manual, which performs a simple
compilation, but I'm very hazy about how recipes are interpreted, so I'd
like it if someone can tell me if I've gotten the following stuff right or
not.

SRC_URI tells bitbake what files must be gotten from somewhere and copied
somewhere else in order to carry out the build process. And according to the
Ref Manual, the "file://" prefix tells it to fetch a local file by searching
some directories including the "files" subdirectory next to the .bb file.
And apparently, there is a "subdir" option (whose syntax is unexplained)
which may be used to tell bitbake to put it somewhere specific relative to
${WORKDIR}.

Is the default value of the "subdir" option the S variable? Is that the
purpose of S, to tell bitbake where to put things that it fetches? The Ref
Manual says that S defaults to ${WORKDIR}/${PN}/${PV}, but then the sample
compile recipe sets S to ${WORKDIR}. Is that what one does when one doesn't
need to have a bunch of versioned subdirectories under ${WORKDIR}? (I'm not
sure why one would ever want that, or why that would be the default.)

So if I want to install a file somewhere, do I even need a do_install task,
or can I just set S equal to the desired target location, like
"${etcdir}/foo" and be done with it? Or is that a no-no, and should I always
use do_install?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


