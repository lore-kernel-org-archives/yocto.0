Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C28AE01567
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 21:07:23 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=li4wIfK51NW8zH0cN3mM/+TTbu3iyO+SJsh7zZfbCQ9nsiVvrtBh0HyM/ZdaiQH7;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UmcLC-0007xZ-Sw
	for yocto@yoctoproject.org; Wed, 12 Jun 2013 00:07:23 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Tue, 11 Jun 2013 21:07:26 -0700
Message-ID: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-index: Ac5nIlkRp+c4KMD8R1u/T9DvP2C7/Q==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688add75cbdfc4822259e00c3f80a1287d4350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Need clarification on some terms
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
X-List-Received-Date: Wed, 12 Jun 2013 04:07:24 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm trying a second time to see if I can learn this system. Section 3.4
contains a short glossary which explains some things and seems to obscure
others. So perhaps someone can clear up a few simple things.

"Cross-Development Toolchain: A collection of software development tools and
utilities that allow you to develop software for targeted architectures." Is
that different from the toolchain that bitbake builds in the beginning, and
then uses to build the image? If so, what is it?

"Following is a list of toolchain recipes..." This is followed by
gcc-cross-initial, gcc-cross-intermediate, gcc-cross. All three of these
things say that the toolchain runs on the host and is used to build software
for the target. So why are there three of them? What are the differences
among them? It also says that each one is a "native" package. In my
experience, a "native" toolchain has always meant a toolchain that produces
code for the same machine that the toolchain runs on, while a "cross"
toolchain produces code for a different machine. That's obviously not what
"native" means in this context, so what does it mean?

The documentation makes frequent references to "the SDK" without ever
defining it. I know what it means generically, but what is it in the Yocto
context? And why does the SDK involve yet another set of three toolchains?
(Oh, and why is one of them called "canadian"?)

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


