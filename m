Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-scoter.atl.sa.earthlink.net
	(elasmtp-scoter.atl.sa.earthlink.net [209.86.89.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20A90E01515
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2013 12:48:21 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=PujMNLfc9xXtGGQUwP55jXiq5AQy5Al6VD3i6Os4hxojKwd2HIwjDl8TX4lA9G30;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-scoter.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UqqGq-0007xV-LP
	for yocto@yoctoproject.org; Sun, 23 Jun 2013 15:48:20 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Sun, 23 Jun 2013 12:48:20 -0700
Message-ID: <05209F2D24AD48348599D707CB5F659F@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac5wSpz4Rg6V3J6dRXKGluEQFnKSgg==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068827047ee0e261123f80e6752d9f132040350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: linux-yocto-rt and cgroups
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
X-List-Received-Date: Sun, 23 Jun 2013 19:48:22 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I built core-image-base with Tom Zanussi's Cedartrail BSP for Dylan, which
worked fine. (Thanks, Tom.) Then, I switched over to linux-yocto-rt, and it
still worked fine. Then, I tried to switch to systemd, and it complains
bitterly on startup that there is no cgroup support in the kernel.

I'd like to use an RT kernel, so that I can squeeze out as many notes as
possible (it's a musical instrument) before getting sound driver underruns.
And I'd like to use systemd, so that it boots fast. Do I have to choose one
or the other? Is there some reason cgroups are left out of linux-yocto-rt?
If not, is there an easy way to put it back in, without becoming an expert
in kernel configuration?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


