Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-junco.atl.sa.earthlink.net
	(elasmtp-junco.atl.sa.earthlink.net [209.86.89.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7A45E00348
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 23:20:23 -0800 (PST)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=oR2kM1mN3c2XMmaD3MpLcNvC8kZ9GF9B/wPU1YFPfQuC+gzAJf+yvrmuD8pswb16;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-junco.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UBKGU-0002Kk-RH; Fri, 01 Mar 2013 02:20:23 -0500
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>,
	"'McClintock Matthew-B29882'" <B29882@freescale.com>
References: <D5D8A4D8397140AB98A5568853482737@PAULD><70CC66F5C30A414DADDA6973E4CA391A893FEA@039-SN1MPN1-001.039d.mgd.msft.net><334AC94BF95946418CA0230883C97349@PAULD>
	<70CC66F5C30A414DADDA6973E4CA391A8941C9@039-SN1MPN1-001.039d.mgd.msft.net>
In-Reply-To: <70CC66F5C30A414DADDA6973E4CA391A8941C9@039-SN1MPN1-001.039d.mgd.msft.net>
Date: Thu, 28 Feb 2013 23:20:00 -0800
Message-ID: <5AB755758E8440BD89B53CC5C11F53AC@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AQHOFjRpJMxVZDuwe0SPIz2Q/qtEOJiQaL8Q
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688ccd1c7929647afc46a7c05466db723df350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Re: Newbie trying to get started
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Mar 2013 07:20:24 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Well, I'm making progress.

I discovered one mysterious cockpit error: my addition of meta-intel and
meta-intel/meta-cedartrail to bblayers.conf had somehow gotten lost. When I
added those lines again, the error concerning the invalid MACHINE
disappeared. I also found the recipe files for the various images, in meta
rather than meta-intel, so now I know that what I really want is something
called core-image-base, which is a console-based image that supports all
features of the machine except the graphics stuff.

Setting it up this way immediately complained that it couldn't find a file
called io32-base.inc, and a search found that this file doesn't exist
anywhere in my poky tree, even though Gumstix builds this tree by fetching
from the git repos, and I had just done a sync. However, I downloaded the
poky-danny-8.0 tarball, and it does include this file. It looks like my hope
that I could use the same poky tree that the Gumstix build fetched was a
pipe dream. Oh, well...

Anyway, "bitbake core-image-base" at least gets started. We'll see if it
makes it all the way through, some time tomorrow.

Thanks for your help.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


