Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03A18E00FA6; Wed, 23 Sep 2015 01:31:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.69 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A1E6E0076A
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 01:31:04 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=LgeClzC/z3yRhM7QxRNtrnBPomjmlSy16gX1eBUgOr36Kq3BmoARiMyW35SRjnBc;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1ZefRr-00043h-VI; Wed, 23 Sep 2015 04:30:44 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Mike Looijmans'" <mike.looijmans@topic.nl>,
	<yocto@yoctoproject.org>
References: <F9B37C5086864E2EA06AC70C09CF7C25@PAULD><CAFKnvs6eVMrfcH3AOS28vAG237UUbYdLKR=FGB9PBipOQZbqYg@mail.gmail.com><3DB96F2F9D444EFE931CA8443BAFBACE@PAULD><CAPWNY8XTWDDS83JwizV8jH=xkxs9hdRgBLB5CsacTYQsqCwG=Q@mail.gmail.com><DEEBEF6233F54A17BB00A9E93D0A54EC@PAULD><1442946736651.15866@seescan.com>
	<560252C3.80207@topic.nl>
In-Reply-To: <560252C3.80207@topic.nl>
Date: Wed, 23 Sep 2015 01:30:48 -0700
Message-ID: <54D97D1C25A94C8987390AB26D5EBF79@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: AdD12Gks5KtLCj6ET92PsMFpi1+g/AAANLyw
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068802fb1c2fc85a4371f82804d0cf9db40f350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Re: [systemd-devel] How to automount
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
X-List-Received-Date: Wed, 23 Sep 2015 08:31:08 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Mike Looijmans
> 
> This only serves to remove a mounted directory after 
> "yanking" the device. It 
> doesn't really do anything useful though, you'll still get corrupted 
> filesystems, because Linux is way too lazy in writing out dirty data.
> 
> Proper solution would be to have the system mount a removable 
> device as 
> read-only, and promote it to r/w once someone tries to write 
> to it. And then 
> after a timeout, it should go back to readonly.
> 
> Supposedly, "autofs" can accomplish this, but I've never met 
> anyone who got 
> that to actually work.

In my system, the removable drive is used only for backing up or restoring
various data files in response to user commands. If I do a sync after each
such command, shouldn't that be enough to guarantee the file system
doesn't get corrupted when the drive is removed? Will it also ensure the
dirty flag is clear, or does that get set anyway?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


