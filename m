Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-banded.atl.sa.earthlink.net
	(elasmtp-banded.atl.sa.earthlink.net [209.86.89.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF3E5E01409
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 12:51:04 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=bhSrYRE9/Apc+SIht+9B6AV0qbDwO+tFos2BonLm4PhC9X7uZiRHFr4Yi0TVd/hV;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-banded.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1Umr4O-0003DG-SF; Wed, 12 Jun 2013 15:51:01 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Paul Eggleton'" <paul.eggleton@linux.intel.com>,
	"'Rifenbark, Scott M'" <scott.m.rifenbark@intel.com>
References: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD><bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org>
	<1875741.cStO1T6C1g@helios>
In-Reply-To: <1875741.cStO1T6C1g@helios>
Date: Wed, 12 Jun 2013 12:51:05 -0700
Message-ID: <58DC6CADE1A5492E9E712C310E6C9019@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-index: Ac5nZF8WZwn7v+oQRZWmm9VvV57JUwAQLC/A
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688439d32ba6556bd41962b9d6ea3c5dcbc350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: Need clarification on some terms
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
X-List-Received-Date: Wed, 12 Jun 2013 19:51:05 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Paul Eggleton
> 
> gcc-cross-intermediate is gone as of 1.3; as I understand it 
> current versions 
> of glibc can be compiled using gcc-cross-initial so the 
> intermediate step is 
> no longer required. We should remove mention of this from the 
> documentation 
> (other than in the migration section that is).

Okay, so now there are two stages to each cross-compilation, so there's
gcc-cross-initial producing gcc-cross, and also gcc-crosssdk-initial
producing gcc-crosssdk. But is the difference between those two pairs that
the first pair ultimately produces a cross-compiler that runs on the host,
and the second pair ultimately produces a native compiler that runs on the
target? From what I can gather about the various references to "SDK", it
sounds like it's supposed to be a set of native tools that runs on the
target and produces output for the target. If that's true, then the new
descriptions are still wrong. Shouldn't gcc-cross be described as a "cross"
package rather than a "native", and shouldn't gcc-crosssdk be described as a
"native" binary that runs on the target? Or am I still fundamentally
misinterpreting these things?

For now, I really just need to know if I'm interested in the SDK, since I
have no intention of ever running compilations on my target system.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


