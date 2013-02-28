Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-spurfowl.atl.sa.earthlink.net
	(elasmtp-spurfowl.atl.sa.earthlink.net [209.86.89.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B02EFE002AB
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 15:55:07 -0800 (PST)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=MMULOegBI+Gyc/KV9J8Kvo+22ojsM+YNkqLVe9I9pFTrbNz5m/mRTyfxv68etEQ0;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-spurfowl.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UBDJa-0004Z6-Nq
	for yocto@yoctoproject.org; Thu, 28 Feb 2013 18:55:06 -0500
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Thu, 28 Feb 2013 15:54:44 -0800
Message-ID: <D5D8A4D8397140AB98A5568853482737@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4WDvr6BGoJRi5vSCGV5gVxpVsuUQ==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606880b49a7146f60e301181dbad69fa733b6350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Newbie trying to get started
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
X-List-Received-Date: Thu, 28 Feb 2013 23:55:07 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've been working with a Gumstix, and have successfully built both the
console and GUI version of their distro. So now I have two directories,
yocto/poky containing everything that was downloaded, and yocto/build
containing the stuff that was built. So far, so good.

Now, I need to do a completely unrelated project, based on an Intel Atom.
I've downloaded the BSP (the N2600/N2800/D2550), and the directions told me
to unpack it so that it's all contained in yocto/meta-intel. Does this mean
that this BSP isn't related to Poky? My yocto/poky directory is full of
other meta-blahblah stuff, so I would think that meta-intel would go in
there, one level down.

Then, the directions say to edit bblayers.conf, and possibly local.conf. The
only place I find these files are in my yocto/build/conf directory, but I
would think that doing a build for a different machine would involve setting
up a different build directory, e.g., yocto/buildatom. Is that correct? But
isn't the build directory set up by running the oe-init-build-env script,
which comes afterwards in the instructions?

Also, those instructions imply that I should run that script in the
yocto/poky directory, since that's where the script is located, but the
meta-intel is "upstairs" from that, which seems odd.

I'm confused by all this, but more to the point, I'm afraid of doing the
wrong thing, and clobbering the Gumstix stuff, which took a day and a half
to build. I expect the Atom build will also take a long time, but I don't
want to have to do it two more times.

Thanks in advance.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


