Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64E69E002E2
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 12:05:09 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=pf/fa1kgsq0PJaIfMkVdg53j5aph60+cRJwHtm4uvJ2OpTNL3whVFgnuvabDqaQd;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1V4bhs-0003t3-Cu; Wed, 31 Jul 2013 15:05:08 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Paul Barker'" <paul@paulbarker.me.uk>
References: <CANyK_8fY=7P0MvFOJ1mSxwL0N7xDBQetfaoCiLZZTMU5khcKdg@mail.gmail.com>
In-Reply-To: <CANyK_8fY=7P0MvFOJ1mSxwL0N7xDBQetfaoCiLZZTMU5khcKdg@mail.gmail.com>
Date: Wed, 31 Jul 2013 12:05:12 -0700
Message-ID: <CE0856ADE8A744CEAC1C4CBAFA219FFE@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6OFCRPPJU3Z+OBQ163HaJ9Jg6dMgAC9tmA
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606886624d13f7ee8bb5fb9efad59b07172db350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: Minnowboard
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
X-List-Received-Date: Wed, 31 Jul 2013 19:05:12 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Paul Barker
> 
> So I've just read about the Minnowboard, an Atom E640T 
> single-board computer.
> 
> http://uk.farnell.com/circuitco/minnowboard/atom-e640t-platfor
> m-sbc/dp/2319581
> 
> The datasheet says "Yocto Project 1.3 compatible" so I think 
> I'll be buying one!
> 
> Does anyone know what layer the support for this will be in? I'm
> wondering whether it's in meta-yocto, meta-intel or something
> Angstrom-specific.

It's a pretty wimpy Atom, but still useful. One interesting thing is that
the EG20T support chip includes one USB device port. But the git server
doesn't show any code for it, and Intel only provides a Windows driver for
it (which supports high speed, but not isochronous). Writing a Linux driver
for that looks like a major project.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


