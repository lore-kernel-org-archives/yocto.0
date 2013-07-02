Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBCECE013B0
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2013 10:40:05 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=qGabxtGt+IX4ndWJ0P9muhOv+NqiDcfGyutpjn8RZdbpJ5z5QVDSG+eewmqlR1Sr;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1Uu4Yd-0003zR-SG
	for yocto@yoctoproject.org; Tue, 02 Jul 2013 13:40:04 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Tue, 2 Jul 2013 10:40:06 -0700
Message-ID: <7AFA3235764547DFB27795FD58368F44@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac53SzBzUGxk+06qTje+1NXs+SxxnQ==
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606881d96bb64cae2fe4dadbf8e9b0ff31017350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: systemd configuration
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
X-List-Received-Date: Tue, 02 Jul 2013 17:40:08 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've switched to systemd, in a core-image-base build for an Atom
(Cedartrail), and it boots fine. Now I want to make my own daemon start up.
I'm new to systemd, and the way it seems to be set up is different from the
way the systemd docs say it is usually set up.

The docs say that systemd, when booting up, usually activates a target
called default.target, which is symlinked to either multi-user.target or
graphical.target. (It would be the former in this GUI-less system.) Then, if
I want to cause my daemon to be started, I would add a symlink to its
systemd unit file to the .wants directory associated with multi-user.target.

But I can't find these things. They're not in the trees under /etc/systemd
or /run/systemd. Oh, and when I do "systemctl list-unit-files", it shows
both default.target and multi-user.target as disabled.

What makes this difficult to figure out is that the tools I have for
perusing the target system are so primitive. There's no editor in the target
that I'm aware of, and I can't network into the system and use an external
editor to examine various files. So my question is this: is there someplace
in build/tmp on my build system where the full target file system exists as
a directory tree, so that I can pore through it and see how systemd is
really configured?

Or perhaps someone can just tell me what target gets activated on bootup,
where its .wants directory is, and what directory I should put my daemon's
unit file into.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


