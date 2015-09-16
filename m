Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8467AE00DC9; Tue, 15 Sep 2015 18:01:20 -0700 (PDT)
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
	*      [209.86.89.66 listed in list.dnswl.org]
Received: from elasmtp-spurfowl.atl.sa.earthlink.net
	(elasmtp-spurfowl.atl.sa.earthlink.net [209.86.89.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64A53E00B7A
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 18:01:15 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=Z4LYSlsz/YKgTGoH7svP6pIy1tU5o4koNCsaBjIo/ZOeJQBcwZ3uLz8oIIyRWIXq;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-spurfowl.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1Zc15y-0000nz-2u
	for yocto@yoctoproject.org; Tue, 15 Sep 2015 21:01:10 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Tue, 15 Sep 2015 18:01:13 -0700
Message-ID: <5D154EBB6F184496BF92DD42B24FF3FA@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdDwGy8RcM3NSGOxRyGXsIYerTVHMw==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606886db74c405c9c16dbeac9c91e1cd93e5e350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Hanging during kernel boot
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
X-List-Received-Date: Wed, 16 Sep 2015 01:01:20 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've been redoing an old Danny project with Fido, running on an Atom mobo.
I created a fresh BSP with yocto-bsp, using a RT kernel, and haven't begun
to fiddle with the kernel configuration yet. It gets part way through the
boot process and hangs at "Switching to clocksource tsc". I've googled
this error, which lots of people have had on lots of systems (Ubuntu,
etc.), and have solved in lots of different ways, none of which seem to
relate to my system. I don't believe it has anything to do with the tsc.

The system doesn't crash. I can bang on the keyboard, and the keys are
echoed. After seven or so presses, I get a "random: nonblocking pool is
initialized" message (something to do with entropy collection, I guess).
So the kernel is running, but it's like systemd (which I've substituted
for sysvinit) has just hung.

Since I haven't gotten to a prompt, I can't do anything. Does anyone have
any ideas how I might diagnose this? Are there any kernel parameters I
might fiddle with on the flash memory? And where does one do such
fiddling, with a syslinux-based live image? Or should I be selectively
removing things from my BSP that were put there by yocto-bsp?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


