Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-curtail.atl.sa.earthlink.net
	(elasmtp-curtail.atl.sa.earthlink.net [209.86.89.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB046E014E4
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 00:52:24 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=nCibchVtv+ekNdqCJpVem0SXuW+XxeD9DpdjIKh7nj+2Qn58gpjoKPy395SgockE;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-curtail.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1V2cp6-00006p-7D
	for yocto@yoctoproject.org; Fri, 26 Jul 2013 03:52:24 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
References: <4BBE71D4458246399621B90F7774B917@PAULD>
In-Reply-To: <4BBE71D4458246399621B90F7774B917@PAULD>
Date: Fri, 26 Jul 2013 00:52:31 -0700
Message-ID: <D72F16BEC5FB4DA3A3BAD8544CA18AF5@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6JdFKPwqpx3724TXmSDgfnhzVg8gAXFAng
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606885a630e3a9f6739900457754f71618405350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Re: How to enable UDHCP?
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
X-List-Received-Date: Fri, 26 Jul 2013 07:52:25 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Paul D. DeRocco
> 
> My build is an Intel Cedartrail system based on Dylan, using 
> systemd. It
> appears to have udhcp available from busybox, but it's not 
> running. systemd
> reports that it is "masked", because
> /etc/systemd/system/busybox-udhcpc.service is linked to 
> /dev/null. What
> creates this link, and how do I get the DHCP client enabled 
> in my build? Is
> there something else I need to include?

It appears this is masked by a post-install script in
meta/recipes-core/systemd/system-compat-units.bb. The comment says "Units to
make systemd work better with existing sysvinit scripts." Doesn't seem like
it's doing that in this case. However, if I tweak the recipe so that the
systemd service unit for busybox-udhcpc isn't masked, it doesn't reveal a
valid service unit, I wind up with nothing. That suggests that there should
be a sysvinit script somewhere else for starting udhcpc, but I can't find
anything under /etc that contains the string "udhcpc" other than the script
that udhcpc calls when an interface changes state.

I also find that I can manually run udhcpc with the appropriate interface
parameter, and it works fine; my Samba server from OE becomes accessible
from a Windows machine, and everything seems happy. So how is udhcpc
normally supposed to be launched? I could hack it in any number of ways, but
I'd like to know the right way, because I'd like it to be able to assign an
address if someone plugs in a USB WiFi dongle, too, and that's beyond my
ability.

Or is this just something that works with sysvinit, but no one's gotten
around to figuring out how to integrate it into systemd, and I'm on my own?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


