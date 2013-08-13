Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-junco.atl.sa.earthlink.net
	(elasmtp-junco.atl.sa.earthlink.net [209.86.89.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28E7CE01405
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 01:23:27 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=Xm4I/nHwrps7Rc9qnpMKzW6GTEkhoyTtEhyqdpBaOVPJr6HlEVaTrh8YksavP2zM;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-junco.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1V99t0-0001wF-GQ
	for yocto@yoctoproject.org; Tue, 13 Aug 2013 04:23:26 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Tue, 13 Aug 2013 01:23:27 -0700
Message-ID: <786BA08D82F34C369B54F9C7F14533C9@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6X/mMEvWyOi0hMRTa61v890VQ9jA==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068860c6541737c17fee79830d2a263dc5b5350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Another X11 without a desktop
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
X-List-Received-Date: Tue, 13 Aug 2013 08:23:28 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm also trying to do something similar. I want an X server, but no desktop,
so I can run GTK (actually PyGTK) programs from the serial console that
essentially own the screen. In my case, I'm running a Gumstix board with a
4.3" LCD and a touchscreen.

I began with the gumstix-xfce-image, with a few irrelevant additions, like
Samba. Out of the box, it puts up a "greeter" login screen. However, at the
serial console prompt, I can set DISPLAY to :0 and then run a PyGTK program,
and it puts its stuff on top of the greeter screen.

The greeter is provided by GDM. I killed that process, and the display
reverted to its own text-based pseudo-terminal. In this state, PyGTK
couldn't access the screen, because there was no X session running.

After a bunch of tinkering, I found that the minimum I needed to do to
create a dummy X session, so that PyGTK had something available to scribble
on, was to run xinit like this:

    xinit /bin/sleep 1000000d -- /usr/bin/X :0

This uses the sleep command as a dummy "client". And it all works fine.

So now: how do I build a system that doesn't have all that useless XFCE and
GDM crud? I looked at gumstix-xfce-image, and it basically adds a whole lot
of XFCE-related stuff, and a few X utilities, to gumstix-console-image. I
changed my image so that it is based on gumstix-console-image, and found
that the latter utilities aren't enough to pull in the X server.

Poking around, I found something called packagegroup-core-x11-base, whose
comment says "Packages required to set up a basic working X11 session". I
included it in my build, and it did indeed give me an X server. But when I
run the above xinit command, I get a bunch of errors about a failure to load
modules extmod, dbe, glx, record, dri and dri2. The log file indicates that
these modules are "enabled by default", and some are also specified in
xorg.conf. Then I get an error saying it can't open /dev/fb, no such file or
directory. (The right name should be /dev/fb0.) Oh, and there were error
messages about font directories not existing, resulting in an empty font
path.

So it appears a bunch of stuff is missing. I guess the idea that these
dependencies are all handled automatically isn't really true. Does anyone
know what I should be specifying in order to get a functional X server?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


