Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F099EE00AA6; Sat, 26 Sep 2015 10:39:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 035EDE006D5
	for <yocto@yoctoproject.org>; Sat, 26 Sep 2015 10:39:04 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=tV2UEeR0NixWuoSILMCtUhaGmjRUZZAcw+E/cHcUmjE0KZ2jt0bLFws0Wn9JLLhE;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1ZftR4-0006wy-Cu
	for yocto@yoctoproject.org; Sat, 26 Sep 2015 13:38:58 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Sat, 26 Sep 2015 10:39:08 -0700
Message-ID: <9442195A2002444AA4EDA23A47FEAE09@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdD4gj7dMYvb0uMvQHWwzTxnHKcXeg==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688d53ffa4efa519a1ac75523c5c0582108350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: What's mounting this partition?
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
X-List-Received-Date: Sat, 26 Sep 2015 17:39:07 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

My x86 system, built with Yocto Fido, boots from /dev/sda2 on a USB flash
drive. There's another partition on /dev/sda1 which I wish to mount with a
systemd mount unit, or with a line in /etc/fstab. But either way is
failing because /dev/sda1 is already mounted on /media/sda1. Lennart over
at the systemd list suggested it might be udisks doing this, but I don't
see any files matching *udisks* anywhere in my file system, or even in my
build tree.

An older version of this system, built two years ago with Dylan, doesn't
have this problem. Nothing relevant changed in my meta-data, so somewhere
else in this gigantic universe something has changed. Does anyone know
what bit of software would be responsible for automounting my /dev/sda1
partition, which is not my root file system, and doing so before fstab or
systemd mounts are processed?

Also, when /dev/sda2 (my root file system) is mounted, it gets certain
default options. Is there a way to modify these options? I'd like to
include noatime, to avoid needless writes to my flash drive.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


