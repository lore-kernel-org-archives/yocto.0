Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEC7FE00C01; Tue, 10 Oct 2017 21:20:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.61 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6176E00B53
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 21:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1507695641; bh=8LKvuAORZA56WzBY81vi8i2ZQ1ImIkMNDDSa
	uo87Px8=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=dGECAO2nigxoid380f9jySx
	CSnC7IlPd2h7+PHv/iFNM9z54ZmLb2/T99pahTkuSFjCgRp9dSP7Iq2YZR0d6Hi7Vdj
	vCDM1Xhe/C2aRd3OYSpShEm/Frr5ILK7RMdYNqkDa/GyHjJyXMXYv465+uzXzjeNJJh
	OF+4PnlcSjDku4B2sNfu9VSuwQH2hUIfS1VBV6SaMbihY5eKp42JeLAOo86MlAOcN6S
	EX5dqI7fwGSzl39+ikr2sWFiL+k3lKlg86ib07I3JTEc2WVp2PVVeGWYHNohwNQd6uY
	K2YFMBvuWMXozAGxIgPpogQoXdV46S6vuzS2X7aC/mxYwl7uUEw==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=OhosrRCu4ODAnfkibxIBoFaui1eSJPBjIkni+1HMWc28lwfBXhO2e1IyDD8d1otgW0iOFwcWjMDRh4dgZAvA6fHMPsNe+9z5kd8ecZR3ZiIy8oPzHupVAbstx4aRGoZG1jBYcKknxWpqPBh8QcGcykk+Fk24AWQ99lk8V4VLIS18rPsiblVGMx3F9hTTd1P7SMHVk6y+F5Rj5krVdNp6S8KCbSO9pXpbJfVLZ/TC4HEo1QBMl8WVSzT456NguqEmKFITtGM8ktmnnp6iuJ8qxmAuABh8YW4laacLCVqe1RLIZng2ITVcgcaGcaeFb5GmBDkszAYWzQaDRW0t/f8Scg==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>) id 1e28Vc-000ExS-B2
	for yocto@yoctoproject.org; Wed, 11 Oct 2017 00:20:40 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Tue, 10 Oct 2017 21:20:43 -0700
Message-ID: <4ED4375230064964986871BF281E2169@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdNCSE3a1cFMeywBTseQyD3kMG9e8A==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688227c7abdd8ce8aad48294ecdc0b0fbb4350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Subject: Setting kernel CONFIG variables in the RPi
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
X-List-Received-Date: Wed, 11 Oct 2017 04:20:43 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

Apparently, the meta-raspberrypi layer does not employ the Yocto method of
modifying the kernel configuration through config fragments. Instead, it
uses a kernel_configure_variable function called from within a
do_configure_prepend function in recipes-kernel/linux/linux-rpi.inc.

The question is this: if the defconfig that comes with the kernel includes
one value, but linux-rpi.inc overrides it to another value in
do_configure_prepend, but I want the original value, how can I override it
again in a .bbappend in my own layer? I can't use do_configure_prepend,
because it would be defining a function already defined in the .bb file,
right? Or if I could do that, wouldn't I be prepending it before what's
prepended in the .bb file, so my change would play first, and then be
undone by the .bb file? What's the solution?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


