Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4634E00F1E; Fri, 25 Sep 2015 15:49:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.86.89.64 listed in list.dnswl.org]
Received: from elasmtp-curtail.atl.sa.earthlink.net
	(elasmtp-curtail.atl.sa.earthlink.net [209.86.89.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 473F5E005B1
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 15:49:39 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=DjcCnYURwywSzl8dBRevZwlORxtHaK5CY+/7DXBd/rSHa2H6TI1j5krFc1eD8gdY;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-curtail.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1Zfbo5-0001Hp-Os
	for yocto@yoctoproject.org; Fri, 25 Sep 2015 18:49:33 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Fri, 25 Sep 2015 15:49:33 -0700
Message-ID: <EEDA69E311394CA7A924C6AEECE22532@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: AdD35HIZOaZCDDxvSEyEnQDdpwWkDw==
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068842416374df8acdebc2a09328e578859e350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Overriding bootimg.bbclass behavior
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
X-List-Received-Date: Fri, 25 Sep 2015 22:49:42 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've been trying to build an image that boots from a USB flash drive that
has no persistence, and I've found that the .iso image serves this purpose
reasonably well, if processed by isohybrid (part of the syslinux package).
It appears that bootimg.bbclass runs isohybrid on the .iso anyway, but in
my case the result doesn't work because it is intended to be written to
the entire device, not to a partition. My system uses a second partition
to store a small amount of persistent data which is only occasionally
updated, so it needs a partition table.

isohybrid has a --partok option which produces an .iso image that can be
booted from a flash drive partition. My bitbake skills are pretty poor, so
I'm not clear on the best way to accomplish this. bootimg.bbclass calls
isohybrid near the end of the build_iso function. It seems I have two
choices:

1) Modify the build_iso function. Is there a safe way to modify an
existing .bbclass, or otherwise override its behavior in a way unforseen
by its author? It's incorporated through a long chain of inherits.

2) Do something in my own image recipe after the .iso is built to run
isohybrid a second time, with the --partok option, to override what
build_iso did.

Any advice on this would be appreciated.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


