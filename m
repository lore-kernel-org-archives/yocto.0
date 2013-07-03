Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-scoter.atl.sa.earthlink.net
	(elasmtp-scoter.atl.sa.earthlink.net [209.86.89.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE2A3E013CB
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 01:26:02 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=XPwJwBeBRsMn6OtWPNUXFRbcLmmq/C5kVEjoYvSqys2JWeasI/VPKZDI6JEhBUmp;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-scoter.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UuIO1-0003J5-Dk; Wed, 03 Jul 2013 04:26:01 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Burton, Ross'" <ross.burton@intel.com>
References: <6915E88EED1243A0989D0097AC115254@PAULD>
	<CAJTo0LbEzXwXK5MCvRqFeotATAgnBpJGboLH4KvebyNZbKAFzg@mail.gmail.com>
In-Reply-To: <CAJTo0LbEzXwXK5MCvRqFeotATAgnBpJGboLH4KvebyNZbKAFzg@mail.gmail.com>
Date: Wed, 3 Jul 2013 01:26:04 -0700
Message-ID: <698B637504BE4C3C83BA8EC60B0D77E8@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac53xWLKZahCl1HmQteT/aLINbgaaAAAP6BQ
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068833465a7235fae53ba1c16675f25211fe350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: Creating a volatile image
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
X-List-Received-Date: Wed, 03 Jul 2013 08:26:05 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Burton, Ross
> 
> You can set the "read-only-rootfs" image feature (never tried it
> myself, so YMMV), 

That would certainly be the simplest thing to try.

> but if you turn off atime writes to / you won't be
> making that many writes to / anyway.

How does one turn off atime? By modifying /etc/fstab? How is that done? By
supplying a different source file to get copied into the image, or by
overwriting the built-in one in my own recipe? I need to do that anyway,
since I have a second partition to mount.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


