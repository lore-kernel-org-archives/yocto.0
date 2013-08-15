Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-junco.atl.sa.earthlink.net
	(elasmtp-junco.atl.sa.earthlink.net [209.86.89.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 964D6E0073F
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 15:38:33 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=KcHCiE8nMqm6SYpJrPbai3AT2DxhnmOC2kAdG//tL74mHstc0XfjW5QYCQi85MEk;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-junco.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1VA6Bc-0004r6-De; Thu, 15 Aug 2013 18:38:32 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Paul Eggleton'" <paul.eggleton@linux.intel.com>,
	"'Saul Wold'" <sgw@linux.intel.com>
References: <D2ED8A5A8E3F4F688EF59142D375B80B@PAULD><520D3044.6000904@linux.intel.com><AA5214DFE7484C72896D4D472906185A@PAULD>
	<2117185.3I4JUhGDnT@helios>
In-Reply-To: <2117185.3I4JUhGDnT@helios>
Date: Thu, 15 Aug 2013 15:38:37 -0700
Message-ID: <8D8C809E9ACF41CF9227B7A89C675A27@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6aAI3MuSaGVBEtSeSe4bHOcyWuuAABZBaw
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606884a9e9cc04f3378d02b5b24a5f405e27a350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: My stuff is missing from rootfs
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
X-List-Received-Date: Thu, 15 Aug 2013 22:38:35 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Paul Eggleton
> 
> On Thursday 15 August 2013 13:01:54 Paul D. DeRocco wrote:
> > This smells like one of those situations where nuking tmp 
> > and rebuilding
> > will fix it, and we'll never know what was wrong. I'll let 
> > you know if
> > that fixes it.
> 
> If you keep on doing this we'll never figure out what the 
> problem is. Wiping 
> out tmp just removes any way we might have to diagnose the issue.

I didn't wipe it out, I renamed it to something else, so I can switch back
to it if I need to. I certainly don't have the faintest idea about how to
diagnose it, beyond the naive steps I've already taken. And I need to get
back to my real job, which is writing apps for this system, instead of
building the distro. If there's anything you can think of that I should
try, I'd be happy to do so.

That said, rebuilding tmp (preserving downloads and sstate-cache) did
indeed fix that problem, but it was replaced with another. Now, do_rootfs
is failing, complaining that it "cannot satisfy the following dependencies
for samba: libpam (>= 1.1.6)". Yet there's libpam, version 1.1.6, right
where it's always been in the metadata. Doing a clean and a cleansstate on
libpam didn't help. Now I'm trying rebuilding samba, but that's a huge
package so it will take a while.

The only way I can get any real work done at the moment is to make manual
changes to the last good build I had.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


